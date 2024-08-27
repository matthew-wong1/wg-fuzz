struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<Struct_1, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_clamp_vec3_i32(-(~(-vec3<i32>(-1i, u_input.a.x, u_input.a.x))), vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.b | vec4<i32>(u_input.b.x, -11637i, u_input.b.x, u_input.a.x), -u_input.b)), ~u_input.b.x, -u_input.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 33716i), u_input.b.yzy));
    global2 = array<Struct_1, 1>();
    let var_1 = ~(_wgslsmith_dot_vec2_u32(global0.yz | ~vec2<u32>(4294967295u, global0.x), abs(select(global0.xz, global0.wz, vec2<bool>(true, true)))) & ~0u);
    global2 = array<Struct_1, 1>();
    var var_2 = vec4<u32>(global0.x, ~(~select(4294967295u, ~var_1, true)), ~abs(global0.x), global0.x);
    return ~1u;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = -1641f;
    global0 = vec4<u32>(_wgslsmith_mod_u32(reverseBits(24684u), ~func_3(_wgslsmith_f_op_f32(-arg_1.a.x), Struct_1(arg_1.a))), 1u, global0.x, global0.x);
    var var_1 = abs(_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, global0.x << (global0.x % 32u)) & ~_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, global0.x), global0.xx), global0.ww));
    var_1 = global0.zx;
    global2 = array<Struct_1, 1>();
    return ~66772u;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, global0.x, 1u, global0.x)) ^ vec4<u32>(35092u, _wgslsmith_mult_u32(func_2(15132i, global2[_wgslsmith_index_u32(global0.x, 1u)], 17852i, true), global0.x), ~1u, ~0u), countOneBits(vec4<u32>(_wgslsmith_add_u32(4147u, ~global0.x), 63282u, 28564u, global0.x)));
    var var_1 = select(abs(-8286i), ~(-17811i), 2147483647i < _wgslsmith_div_i32(u_input.b.x ^ (i32(-1i) * -1i), -19265i));
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -141f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-329f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(636f, 1426f)) - _wgslsmith_f_op_f32(f32(-1f) * -1233f))))));
    let var_3 = select(select(select(vec4<bool>(true, var_2.a.x < 1421f, any(vec4<bool>(false, false, false, true)), true), vec4<bool>(true, u_input.b.x >= 2147483647i, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, false, true), true)), vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(false, false, false, false)))), !(!vec4<bool>(true, true, true, any(vec3<bool>(false, false, false)))), vec4<bool>(!(any(vec3<bool>(false, false, false)) || all(vec4<bool>(true, false, true, true))), any(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, true)), !all(vec3<bool>(false, true, true)) & false));
    global2 = array<Struct_1, 1>();
    return Struct_1(var_2.a);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = max(i32(-1i) * -19844i, arg_0);
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_f_op_f32(-arg_1.a.x)), u_input.a.x != _wgslsmith_mod_i32(1i, u_input.a.x)))), var_1.a.x));
    global0 = firstLeadingBit(vec4<u32>(global0.x, 1u ^ global0.x, 7160u ^ (3623u ^ global0.x), firstTrailingBit(1u))) << (vec4<u32>(global0.x, _wgslsmith_dot_vec3_u32(global0.yxw, global0.xyy), _wgslsmith_mult_u32(abs(global0.x), ~34208u), global0.x) % vec4<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1667f - var_1.a.x), arg_3.a.x, 239f, _wgslsmith_f_op_f32(arg_3.a.x - 876f)));
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> vec4<f32> {
    global1 = array<Struct_1, 23>();
    let var_0 = func_1();
    let var_1 = 4294967295u;
    let var_2 = u_input.a.x;
    let var_3 = vec4<bool>(arg_3.x, true, arg_2, all(select(!select(arg_3, arg_3, arg_3.x), vec4<bool>(true && arg_2, arg_2, false, arg_3.x || arg_2), _wgslsmith_add_i32(u_input.b.x, var_2) == firstLeadingBit(-14875i))));
    return vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(989f * _wgslsmith_f_op_f32(round(arg_0.a.x))))), 183f, _wgslsmith_f_op_f32(floor(1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-400f, 972f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(691f, 254f) + vec2<f32>(660f, -1089f))))), func_4(-49062i, func_1(), vec2<i32>(reverseBits(u_input.b.x), countOneBits(u_input.b.x)), global1[_wgslsmith_index_u32(global0.x, 23u)]), true, select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true), any(vec2<bool>(false, true))), vec4<bool>(true, true, true, true)), !vec4<bool>(false, false, all(vec2<bool>(false, false)), true), !vec4<bool>(true, false, any(vec3<bool>(false, false, false)), true))));
    var var_1 = var_0.x;
    let var_2 = global0.x;
    global2 = array<Struct_1, 1>();
    global0 = ~(~vec4<u32>(0u, func_3(var_0.x, Struct_1(vec2<f32>(-1780f, var_0.x))), ~_wgslsmith_clamp_u32(4294967295u, 4294967295u, global0.x), 4294967295u));
    global0 = ~((abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, global0.x, 0u), vec4<u32>(global0.x, global0.x, 1u, global0.x))) >> ((~vec4<u32>(1u, global0.x, 8890u, 1u) & vec4<u32>(global0.x, 10715u, global0.x, 9499u)) % vec4<u32>(32u))) >> (abs(~(~vec4<u32>(1u, 34638u, global0.x, 1u))) % vec4<u32>(32u)));
    var var_3 = (func_1().a.x > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(ceil(-1063f))))) && true;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + -466f) - _wgslsmith_f_op_f32(step(1078f, _wgslsmith_f_op_f32(-var_0.x))));
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(28831u, 18477u, global0.x), global0.xzz), ~vec3<u32>(global0.x, global0.x, 31874u))), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, _wgslsmith_div_u32(14165u, global0.x)), ~vec2<u32>(global0.x, 1u)), 0u, _wgslsmith_div_u32(global0.x, 1u) << (global0.x % 32u)), vec4<u32>(~global0.x, _wgslsmith_sub_u32(~_wgslsmith_div_u32(global0.x, global0.x), select(abs(global0.x), global0.x, u_input.a.x > u_input.b.x)), global0.x, reverseBits(92086u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x - 897f), _wgslsmith_f_op_f32(f32(-1f) * -616f), _wgslsmith_f_op_f32(-var_4), 187f))), _wgslsmith_f_op_f32(-func_1().a.x), abs(~max(min(vec4<u32>(global0.x, global0.x, 107353u, global0.x), vec4<u32>(global0.x, 4294967295u, 0u, global0.x)), vec4<u32>(15833u, 4294967295u, global0.x, global0.x) >> (vec4<u32>(global0.x, 1u, global0.x, 37026u) % vec4<u32>(32u)))));
}

