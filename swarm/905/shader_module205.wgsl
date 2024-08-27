struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1>;

var<private> global1: bool;

var<private> global2: Struct_2;

var<private> global3: Struct_2;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    global1 = false;
    let var_0 = ((_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 570f) + 1203f) <= _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * 616f), true))) && (1274f > arg_0.x)) == true;
    var var_1 = true;
    var var_2 = false;
    global2 = Struct_2(arg_0.x, u_input.a);
    return -1686f;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> vec3<bool> {
    global0 = array<vec4<u32>, 1>();
    global3 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-366f + arg_0.a)))), abs(_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global2.b, arg_2.b, 44305u), vec4<u32>(4294967295u, arg_0.b, 1u, 7345u))), vec4<u32>(~arg_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 14825u, 4294967295u), vec3<u32>(global2.b, 4294967295u, 0u)), 1u, ~arg_0.b))));
    let var_0 = ~vec2<u32>(~(~_wgslsmith_clamp_u32(arg_1.b, u_input.a, arg_2.b)), global2.b);
    global3 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(f32(-1f) * -1856f)))), u_input.a);
    let var_1 = ~((u_input.a | arg_1.b) & max(1u, u_input.a));
    return select(select(select(select(!vec3<bool>(arg_3, true, arg_3), !vec3<bool>(arg_3, arg_3, arg_3), true), vec3<bool>(773f < arg_2.a, arg_3, arg_3), select(!vec3<bool>(arg_3, arg_3, arg_3), vec3<bool>(false, arg_3, true), vec3<bool>(arg_3, arg_3, arg_3))), select(!select(vec3<bool>(arg_3, true, arg_3), vec3<bool>(arg_3, arg_3, true), vec3<bool>(true, false, arg_3)), vec3<bool>(true, !arg_3, arg_3), false), vec3<bool>(!(arg_0.b > arg_0.b), any(select(vec2<bool>(true, arg_3), vec2<bool>(false, true), arg_3)), false)), vec3<bool>(all(!(!vec4<bool>(false, arg_3, false, false))), !(!(!arg_3)), arg_3), select(!arg_3, arg_3, true));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: i32) -> f32 {
    global1 = false;
    let var_0 = !(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a << (33597u % 32u), ~global3.b), _wgslsmith_mult_u32(global2.b, ~93529u)) == 71468u);
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(-26353i, _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_2, 14057i), _wgslsmith_clamp_i32(arg_2, arg_2, arg_2))), abs((vec2<i32>(arg_2, arg_2) & vec2<i32>(arg_2, arg_2)) >> (vec2<u32>(global2.b, global3.b) % vec2<u32>(32u)))) << (vec2<u32>(1u, _wgslsmith_div_u32(global3.b, u_input.a) | _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, global3.b), ~46806u)) % vec2<u32>(32u));
    global1 = arg_1.x;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(global2.a - global3.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2702f - arg_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - -590f) * -331f)) + var_2.a) - _wgslsmith_f_op_f32(f32(-1f) * -2031f));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_3(global3.a);
    global0 = array<vec4<u32>, 1>();
    var var_1 = true;
    let var_2 = ~35904i;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, global2.a, var_0.a), vec3<f32>(global3.a, var_0.a, var_0.a))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), func_3(Struct_2(114f, arg_0.x), Struct_2(2059f, 1u), Struct_2(global3.a, global2.b), true)), ~(-47823i) >> (firstTrailingBit(64427u) % 32u))))) * _wgslsmith_f_op_f32(step(827f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, true)))), 343f)))));
    return Struct_2(1000f, firstTrailingBit(_wgslsmith_div_u32(global2.b & global3.b, arg_0.x | 47328u) << (_wgslsmith_dot_vec4_u32(select(arg_0, arg_0, true), arg_0) % 32u)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> f32 {
    global3 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec3_f32(vec3<f32>(1924f, global2.a, global3.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(457f, arg_2.a, arg_1.a), vec3<f32>(-109f, global3.a, arg_2.a), false))), vec3<bool>(true, all(vec2<bool>(true, false)), arg_3 & false), -firstTrailingBit(58042i))))), global3.b);
    global2 = arg_2;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(135f * arg_2.a));
    let var_1 = func_2(reverseBits(_wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 65100u), vec2<u32>(global2.b, arg_2.b)), 1u)], vec4<u32>(4294967295u, ~0u, _wgslsmith_add_u32(4333u, global2.b), _wgslsmith_mult_u32(0u, global2.b)))), arg_0.wzy, _wgslsmith_mult_vec2_i32(arg_0.xw, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.x, arg_0.x), abs(29687i)), -_wgslsmith_sub_i32(arg_0.x, 2318i))));
    global3 = func_2(vec4<u32>(~(~global2.b), func_2(global0[_wgslsmith_index_u32(12611u, 1u)], _wgslsmith_mod_vec3_i32(min(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(-1i, -1i, arg_0.x)), arg_0.yxz & vec3<i32>(18688i, 1i, arg_0.x)), abs(_wgslsmith_div_vec2_i32(arg_0.zz, arg_0.wx))).b, ~(~max(0u, global3.b)), var_1.b), arg_0.xwx, (arg_0.zx & -vec2<i32>(-17413i, arg_0.x)) << (~countOneBits(~vec2<u32>(0u, 1u)) % vec2<u32>(32u)));
    return 473f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 177f, -354f, 1670f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.a * -276f), -541f))), _wgslsmith_f_op_f32(func_5(abs(vec4<i32>(2147483647i, 2147483647i, 0i, 1i)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -682f)), func_2(~vec4<u32>(49379u, u_input.a, u_input.a, 11239u), vec3<i32>(9011i, 0i, 1077i) >> (vec3<u32>(1u, u_input.a, global2.b) % vec3<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(31738i, -1i), vec2<i32>(-66339i, -434i))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(vec4<i32>(-2147483647i, -31474i, 34095i, -5166i), Struct_3(-144f), func_2(vec4<u32>(global3.b, 82778u, global3.b, 0u), vec3<i32>(2147483647i, 2147483647i, 6661i), vec2<i32>(-2147483647i, -15149i)), true)))), _wgslsmith_clamp_i32(-2147483647i, -_wgslsmith_clamp_i32(-4749i, -26549i, ~0i), -2147483647i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(857f, -1000f, -1113f) - vec3<f32>(global3.a, -825f, global2.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-982f, global2.a, global2.a))), vec3<f32>(_wgslsmith_f_op_f32(exp2(global2.a)), _wgslsmith_f_op_f32(-289f + 1818f), 732f), all(vec2<bool>(true, true)))), global3.b);
}

