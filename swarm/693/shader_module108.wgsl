struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 10>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = array<vec2<i32>, 10>();
    var var_0 = Struct_1(_wgslsmith_add_u32(~83729u, ~u_input.c.x >> (u_input.c.x % 32u)), !(!arg_0.a.x), vec3<i32>(u_input.a.x, _wgslsmith_add_i32(~u_input.a.x, _wgslsmith_sub_i32(-10574i, 1i << (u_input.c.x % 32u))), reverseBits(2147483647i ^ _wgslsmith_dot_vec3_i32(u_input.a.yyw, vec3<i32>(-7791i, u_input.a.x, 4729i)))), -(~(-39686i)), ~u_input.b.x);
    global0 = array<vec2<i32>, 10>();
    var var_1 = ~vec4<u32>(4294967295u, ~countOneBits(firstTrailingBit(65833u)), _wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.c.x), u_input.c.x, ~var_0.e), ~countOneBits(u_input.b.wzx)), max(~_wgslsmith_add_u32(0u, u_input.b.x), var_0.a));
    var_0 = Struct_1(~60019u, all(vec4<bool>(true, true, true, any(arg_0.a.zx))), abs(var_0.c), i32(-1i) * -u_input.a.x, 1u ^ _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b.yxw, u_input.c.yxx), _wgslsmith_add_u32(25201u, select(var_1.x, 4294967295u, true))));
    return ~(~var_1.x);
}

fn func_2() -> Struct_3 {
    let var_0 = false;
    let var_1 = Struct_4(~0u, 1f, true);
    let var_2 = Struct_1(min(_wgslsmith_add_u32(~4294967295u, 4294967295u), 1820u), (~func_3(Struct_3(vec3<bool>(true, true, var_0))) >= 33927u) | true, u_input.a.zwy, ~(-abs(u_input.a.x)), 27970u);
    global0 = array<vec2<i32>, 10>();
    global0 = array<vec2<i32>, 10>();
    return Struct_3(!vec3<bool>(all(vec4<bool>(var_1.c, false, var_2.b, true)) & (false | var_2.b), !var_2.b, var_2.b | var_0));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var_0 = Struct_3(var_0.a);
    var var_1 = Struct_4(4294967295u, -601f, var_0.a.x);
    var var_2 = select(var_0.a.yy, var_0.a.zx, var_0.a.x || false);
    let var_3 = min(vec3<u32>(~(~1u), _wgslsmith_dot_vec3_u32(u_input.b.xzw, ~countOneBits(u_input.c.xwy)), var_1.a), ~u_input.c.yyx);
    return Struct_1(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, 284f)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b), -143f)), u_input.a.wyw, max(-2147483647i, _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -25157i, u_input.a.x, u_input.a.x), u_input.a, u_input.a), u_input.a)), 4668u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = -57310i;
    var_0 = _wgslsmith_clamp_i32(~min(u_input.a.x, -(-1i & arg_1.c.x)), _wgslsmith_div_i32(-31112i, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.d, -1i, u_input.a.x, arg_1.d), ~vec4<i32>(arg_1.d, arg_0.c.x, arg_2, u_input.a.x))), -(~(func_1().d << (u_input.b.x % 32u))));
    var var_1 = Struct_4(u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1868f, 253f)) - -1000f)))), !((~u_input.b.x ^ 1u) >= ~(19637u | u_input.c.x)));
    var_1 = Struct_4(58051u, 1235f, arg_1.b);
    var_0 = _wgslsmith_dot_vec2_i32(arg_1.c.xx, ~(vec2<i32>(_wgslsmith_clamp_i32(2147483647i, arg_2, u_input.a.x), ~19299i) & arg_1.c.yx));
    return arg_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(countOneBits(func_4(func_1(), func_1(), -32665i)), -(~_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, -35996i), u_input.a.zx)));
    var var_1 = 67124u;
    var var_2 = Struct_4(~(~_wgslsmith_sub_u32(17160u, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 871f, all(vec2<bool>(false, true)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -881f), _wgslsmith_f_op_f32(f32(-1f) * -1036f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f), -1000f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2336f * -1154f)))));
    let var_3 = vec4<u32>(0u, var_2.a, u_input.b.x, 1u);
    var var_4 = var_0.x;
    let var_5 = !(!select(func_2().a.yz, select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, var_2.c, var_2.c)), vec2<bool>(!var_2.c, select(var_2.c, var_2.c, false))));
    var var_6 = abs(29057i) << (~u_input.b.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(min(func_4(Struct_1(func_1().e, select(false, false, true), ~vec3<i32>(-8678i, -6341i, u_input.a.x), -2147483647i, 1u), Struct_1(1u, u_input.a.x < -34823i, u_input.a.yzx, ~(-2147483647i), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.a, var_2.a), u_input.b.yzw)), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), i32(-1i) * -76340i), vec2<f32>(-724f, 166f), reverseBits(u_input.a.yx));
}

