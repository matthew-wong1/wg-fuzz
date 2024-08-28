struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_2(vec2<i32>(1i ^ (2147483647i >> (u_input.a.x % 32u)), ~_wgslsmith_div_i32(16472i ^ u_input.b, -u_input.c.x)), _wgslsmith_f_op_f32(sign(267f)), u_input.a, u_input.c.x << ((u_input.a.x >> (20581u % 32u)) % 32u), reverseBits(~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u)));
    var var_1 = !select(vec4<bool>(1u == (9154u << (var_0.c.x % 32u)), arg_0, !all(vec4<bool>(arg_0, arg_0, arg_0, true)), arg_0), select(vec4<bool>(false, !arg_0, all(vec4<bool>(true, arg_0, arg_0, arg_0)), false), select(select(vec4<bool>(arg_0, true, true, false), vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(arg_0, false, false, arg_0)), select(vec4<bool>(false, true, arg_0, true), vec4<bool>(arg_0, false, arg_0, false), true), 0u <= u_input.a.x), select(false, !arg_0, var_0.a.x > 5242i)), abs(u_input.a.x & 1u) == ~(~u_input.a.x));
    var_1 = vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, arg_0, true), false)), true, arg_0, true);
    let var_2 = Struct_3(countOneBits(-53191i));
    var var_3 = !select(vec4<bool>(1645u < (48298u & var_0.c.x), !var_1.x, false, true & any(var_1.yz)), vec4<bool>(true, true, true, true), any(vec2<bool>(var_1.x, arg_0 | true)));
    return 0u;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(firstLeadingBit(u_input.c), _wgslsmith_f_op_f32(abs(1000f)), vec2<u32>(~_wgslsmith_mod_u32(~u_input.a.x, ~u_input.a.x), ~u_input.a.x), 2147483647i, _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(~1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 1u), vec3<u32>(1u, u_input.a.x, u_input.a.x)) % 32u), _wgslsmith_div_u32(4294967295u, abs(71119u)), u_input.a.x, func_3(true))));
    let var_1 = 1474i;
    let var_2 = -1421f;
    var var_3 = !select(!select(vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), true), vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, all(vec3<bool>(false, true, false))), vec3<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(false, false)), false)));
    var var_4 = !(!any(!(!vec3<bool>(true, var_3.x, var_3.x))));
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec3<i32> {
    return -(~_wgslsmith_div_vec3_i32(-max(vec3<i32>(arg_0.a.x, -34379i, u_input.c.x), vec3<i32>(0i, -1i, arg_1.d)), ~vec3<i32>(arg_0.d, arg_0.d, -1i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> vec4<bool> {
    var var_0 = -vec2<i32>(_wgslsmith_dot_vec3_i32(func_4(func_2(), func_2()), ~(-vec3<i32>(arg_2, 14155i, -1i))), 33776i);
    var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(min(54151i, -2147483647i), var_0.x), min(_wgslsmith_add_vec2_i32(~arg_3.xy, u_input.c), vec2<i32>(_wgslsmith_mult_i32(1i, -12315i), -arg_3.x)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(abs(-u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(~u_input.c, -u_input.c), ~(~8000i), countOneBits(u_input.c.x)), select(vec3<i32>(select(-1i, 8545i, false), u_input.b << (u_input.a.x % 32u), u_input.b ^ u_input.c.x), abs(vec3<i32>(u_input.b, u_input.c.x, u_input.c.x)), any(func_1(vec4<bool>(false, false, false, true), Struct_1(671f, vec3<i32>(0i, -1i, u_input.b), true), -2672i, vec3<i32>(5589i, 46620i, u_input.b))))));
    let var_1 = func_2();
    let var_2 = any(select(!func_1(vec4<bool>(true, true, true, true), Struct_1(330f, vec3<i32>(var_0, 38526i, 1i), true), i32(-1i) * -3875i, _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.d, var_1.a.x, 1i), vec3<i32>(var_0, var_1.a.x, 11604i))).yx, vec2<bool>(true, -11648i < var_1.a.x), true));
    let var_3 = Struct_3(var_1.d);
    var var_4 = vec3<u32>(var_1.c.x, ~1u, var_1.c.x);
    var_4 = _wgslsmith_mult_vec3_u32(var_1.e.wzz, vec3<u32>(23140u, 1u, ~33991u));
    let var_5 = select(!(!vec4<bool>(true, any(vec3<bool>(var_2, false, var_2)), any(vec3<bool>(false, var_2, var_2)), false)), !select(vec4<bool>(all(vec4<bool>(var_2, var_2, var_2, false)), true, true, true), func_1(vec4<bool>(true, var_2, true, false), Struct_1(var_1.b, vec3<i32>(u_input.b, 0i, 2147483647i), true), var_0, func_4(Struct_2(u_input.c, 531f, vec2<u32>(1u, var_4.x), 1i, var_1.e), Struct_2(u_input.c, var_1.b, var_4.yy, 2147483647i, vec4<u32>(81996u, 42512u, 1u, var_1.c.x)))), vec4<bool>(!var_2, true, 1u <= var_1.c.x, !var_2)), vec4<bool>(any(!select(vec4<bool>(false, false, var_2, var_2), vec4<bool>(true, false, false, var_2), true)), ~4294967295u < _wgslsmith_sub_u32(~4294967295u, var_1.e.x << (1u % 32u)), var_2, true));
    var_4 = ~(~vec3<u32>(1u, firstLeadingBit(firstLeadingBit(u_input.a.x)), _wgslsmith_mult_u32(u_input.a.x, var_1.c.x)));
    var_4 = ~_wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(abs(vec3<u32>(0u, var_4.x, 74320u)), func_2().e.xww), ~var_1.e.yxy);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(var_1.b - -642f)), _wgslsmith_f_op_f32(1095f * -967f)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2569f, 692f) + vec2<f32>(var_1.b, var_1.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(982f, 398f) - vec2<f32>(var_1.b, var_1.b)))))), 645f, ~reverseBits(_wgslsmith_sub_vec4_i32(~vec4<i32>(9107i, 2147483647i, -1i, var_1.a.x), vec4<i32>(-2147483647i, u_input.b, var_3.a, 0i) >> (vec4<u32>(8462u, var_4.x, var_4.x, 1u) % vec4<u32>(32u)))));
}

