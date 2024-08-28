struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    global0 = array<vec4<bool>, 4>();
    global0 = array<vec4<bool>, 4>();
    var var_0 = arg_2;
    let var_1 = !(!(!vec3<bool>(arg_2.a | arg_1.x, var_0.a, true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-815f * -368f), _wgslsmith_f_op_f32(max(1514f, -516f)), 1f, _wgslsmith_f_op_f32(min(413f, 209f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -449f), 1539f, -286f, _wgslsmith_f_op_f32(-220f * -1006f)))));
    return 194f;
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = array<vec4<bool>, 4>();
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 2147483647i), -vec2<i32>(32634i, u_input.a)), select(!select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, true), vec2<bool>(arg_0.a, false)), !(!vec2<bool>(arg_0.a, arg_0.a)), vec2<bool>(arg_0.b.x <= arg_0.b.x, arg_0.a)), Struct_1(!(3911u < arg_0.b.x), arg_0.b, _wgslsmith_add_vec4_i32(vec4<i32>(212i, u_input.a, arg_0.c.x, -1i), -vec4<i32>(1i, u_input.a, arg_0.c.x, 2147483647i))))), _wgslsmith_f_op_f32(round(1f)), arg_0.a));
    var var_1 = -2147483647i;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(1631f, 1178f)))) - _wgslsmith_f_op_f32(-1435f - _wgslsmith_f_op_f32(min(-2217f, _wgslsmith_f_op_f32(floor(-1397f)))))), -1540f);
    var_0 = var_2;
    return var_2;
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(func_2(Struct_1(arg_3.a, vec3<u32>(0u, arg_3.b.x, arg_3.b.x), arg_3.c))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(539f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1866f - 1003f)))));
    var var_1 = any(arg_1.xxw);
    var_1 = !arg_3.a && select(!(-59686i == _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.c.x, 0i, -9684i), vec3<i32>(49230i, u_input.a, 2147483647i))), any(global0[_wgslsmith_index_u32(arg_3.b.x ^ arg_3.b.x, 4u)]) && arg_3.a, false);
    let var_2 = Struct_1(false, arg_3.b, arg_3.c);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1186f);
    return Struct_1(true, ~vec3<u32>(_wgslsmith_clamp_u32(abs(13272u), _wgslsmith_dot_vec3_u32(var_2.b, vec3<u32>(51999u, 24314u, var_2.b.x)), min(0u, arg_3.b.x)), abs(~var_2.b.x), 0u), vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_0, -59329i, var_2.c.x, arg_0), arg_3.c), reverseBits(_wgslsmith_dot_vec3_i32(var_2.c.ywz & arg_3.c.xzy, select(vec3<i32>(u_input.a, -1i, arg_2.x), arg_3.c.ywx, vec3<bool>(arg_3.a, true, false)))), (u_input.a << (24957u % 32u)) ^ _wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(28699i, 1i))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> Struct_1 {
    global0 = array<vec4<bool>, 4>();
    let var_0 = arg_0;
    var var_1 = vec2<i32>(44478i, -65530i) << (reverseBits(~vec2<u32>(0u, 0u) & arg_0.b.yy) % vec2<u32>(32u));
    global0 = array<vec4<bool>, 4>();
    global0 = array<vec4<bool>, 4>();
    return Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, arg_0.b.x), ~_wgslsmith_add_u32(var_0.b.x, 0u)) >= arg_1.x, _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(firstLeadingBit(14988u), max(28628u, 0u), _wgslsmith_add_u32(var_0.b.x, 66912u))), arg_0.b), vec4<i32>(var_1.x, ~(-1i), _wgslsmith_clamp_i32(var_0.c.x, u_input.a >> (61751u % 32u), -28140i), -11047i));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    global0 = array<vec4<bool>, 4>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -911f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_5(Struct_1(true, vec3<u32>(66133u, 1u, 1u), _wgslsmith_sub_vec4_i32(vec4<i32>(52510i, u_input.a, -1i, u_input.a), vec4<i32>(u_input.a, 4206i, u_input.a, u_input.a))), func_4(func_1(1i, global0[_wgslsmith_index_u32(1u, 4u)], vec2<i32>(637i, 32290i), Struct_1(false, vec3<u32>(8158u, 25183u, 0u), vec4<i32>(-16383i, 0i, -47862i, u_input.a))), ~vec4<u32>(1u, 1u, 0u, 1u), false), vec2<i32>(-1i) * -vec2<i32>(-29606i, 35373i))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1169f)))) + _wgslsmith_f_op_f32(trunc(176f))), _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), ~select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), true)), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), u_input.a), 25850i << (1u % 32u), u_input.a, u_input.a));
    var var_1 = 1i;
    let var_2 = true;
    let var_3 = true;
    let var_4 = var_0;
    let var_5 = func_4(Struct_1(any(vec2<bool>(all(vec3<bool>(false, var_0.a, var_4.a)), var_0.a && false)), firstTrailingBit(select(~var_4.b, ~vec3<u32>(var_0.b.x, var_0.b.x, 4294967295u), select(vec3<bool>(true, var_0.a, true), vec3<bool>(false, false, false), var_2))), var_0.c), min(~(~(~vec4<u32>(1u, var_0.b.x, 7223u, 3161u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, 0u, var_0.b.x, 43637u), ~vec4<u32>(27976u, 743u, var_0.b.x, var_0.b.x))), any(!select(select(vec2<bool>(var_4.a, var_3), vec2<bool>(false, var_3), false), select(vec2<bool>(var_4.a, var_2), vec2<bool>(true, false), true), true)));
    var var_6 = _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(9321u, var_5.b.x), 91477u), ~(~23543u)), 53235u), ~(~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_4.b.x, 66982u, var_4.b.x), ~vec3<u32>(11951u, var_4.b.x, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1098f + _wgslsmith_f_op_f32(524f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_5))))), var_0.c.x);
}

