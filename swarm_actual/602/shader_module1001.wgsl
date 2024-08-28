struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_2 {
    let var_0 = firstTrailingBit(~(~(1u >> (u_input.b % 32u))) ^ select(u_input.c, _wgslsmith_sub_u32(4294967295u << (u_input.a.x % 32u), ~u_input.b), true));
    return Struct_2(~_wgslsmith_mod_vec2_u32(min(vec2<u32>(71202u, var_0) >> (u_input.a % vec2<u32>(32u)), u_input.a), firstLeadingBit(vec2<u32>(4294967295u, 4294967295u))));
}

fn func_3() -> Struct_2 {
    var var_0 = abs(min(vec2<i32>(1i, 11661i), abs(abs(vec2<i32>(1i, 2147483647i)))) << (_wgslsmith_mult_vec2_u32(u_input.a, _wgslsmith_clamp_vec2_u32(u_input.a, countOneBits(vec2<u32>(u_input.c, u_input.c)), firstLeadingBit(vec2<u32>(0u, 101481u)))) % vec2<u32>(32u)));
    var_0 = _wgslsmith_mult_vec2_i32(max(-(~vec2<i32>(1i, 57749i)) >> (~select(u_input.d, u_input.d, true) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(-vec2<i32>(var_0.x, var_0.x), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, -13658i), vec2<i32>(var_0.x, 2147483647i))))), -abs(~_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(32611i, var_0.x))));
    let var_1 = firstLeadingBit(_wgslsmith_mod_i32(select(1i, i32(-1i) * -22558i, all(vec2<bool>(true, false))), 51122i)) << (_wgslsmith_div_u32(max(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 467u, u_input.b), vec3<u32>(u_input.b, u_input.d.x, u_input.a.x)), ~u_input.b), firstTrailingBit(reverseBits(~1u))) % 32u);
    var var_2 = Struct_2(vec2<u32>(u_input.a.x, u_input.a.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(425f, -622f, 1249f)), _wgslsmith_div_vec3_f32(vec3<f32>(-576f, 769f, -796f), vec3<f32>(-475f, 1650f, -857f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(513f, _wgslsmith_f_op_f32(243f * -455f), _wgslsmith_f_op_f32(ceil(1327f))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(537f, 398f, 274f)) - vec3<f32>(695f, -1000f, -358f))))));
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> u32 {
    let var_0 = 46258u;
    var var_1 = Struct_3(Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 0u), select(u_input.a, arg_0.a, vec2<bool>(arg_1.b, false))) | ~_wgslsmith_mult_vec2_u32(arg_0.a, vec2<u32>(0u, arg_0.a.x))), _wgslsmith_f_op_f32(-682f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1282f - 2864f) + -388f))), abs(-2148i) << (~(~u_input.a.x) % 32u), arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-190f, -185f, -1000f, 1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(218f, -213f, -528f, 341f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -578f, -118f, -798f), vec4<f32>(1000f, -1375f, -771f, 892f)))))));
    var_1 = Struct_3(Struct_2(~min(vec2<u32>(4294967295u, arg_0.a.x) & arg_2.a, _wgslsmith_mult_vec2_u32(arg_2.a, arg_2.a))), 747f, abs(var_1.d.c.x), var_1.d, var_1.e);
    var var_2 = Struct_3(Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a.x & u_input.c, func_2().a.x), ~vec2<u32>(arg_2.a.x, var_0))), var_1.e.x, -26622i, var_1.d, vec4<f32>(1005f, _wgslsmith_div_f32(-375f, _wgslsmith_f_op_f32(f32(-1f) * -1102f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.x) - _wgslsmith_f_op_f32(floor(var_1.b))), -756f));
    var_2 = Struct_3(arg_0, 974f, arg_1.c.x | -66644i, var_2.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -716f)), _wgslsmith_f_op_f32(-764f * -259f), var_1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-327f, -1000f))))) - vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b + -206f), -2114f, true)), var_1.e.x, var_2.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.e.x)) + _wgslsmith_f_op_f32(var_1.e.x + var_1.b)))));
    return 4294967295u;
}

fn func_1(arg_0: f32, arg_1: i32) -> vec4<u32> {
    let var_0 = select(!vec4<bool>(select(any(vec4<bool>(true, true, true, true)), true, arg_1 != arg_1), 1u != (24103u & u_input.a.x), true, select(false, true, false)), vec4<bool>(false, !(true || (arg_1 > -23160i)), true, true), true);
    let var_1 = _wgslsmith_sub_u32(func_4(func_2(), Struct_1(var_0.x, false, vec2<i32>(-24859i, arg_1)), func_3(), 1i) & firstTrailingBit(~firstTrailingBit(1u)), ~(u_input.d.x & ~u_input.a.x));
    let var_2 = true == var_0.x;
    let var_3 = vec2<bool>(!var_0.x, var_2 & true);
    let var_4 = vec2<bool>(-112331i == arg_1, !(((true & var_2) & var_0.x) && true));
    return (~(~(~vec4<u32>(u_input.a.x, u_input.a.x, var_1, var_1))) << (vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, var_1, 58594u) >> (u_input.b % 32u), var_1, ~select(3170u, 4294967295u, var_3.x), 1u) % vec4<u32>(32u))) & ~vec4<u32>(1u, abs(u_input.a.x), min(var_1, 1u << (0u % 32u)), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false, true, -vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(12200i, 55668i, -11136i), vec3<i32>(2147483647i, -44948i, 7892i)), 1i));
    var var_1 = ~(~(~abs(vec4<u32>(u_input.a.x, 33258u, u_input.d.x, u_input.d.x)) >> (select(~vec4<u32>(1u, u_input.b, u_input.a.x, 0u), vec4<u32>(u_input.b, 3708u, u_input.b, u_input.a.x), any(vec4<bool>(var_0.a, false, var_0.a, true))) % vec4<u32>(32u))));
    var var_2 = var_0.c.x;
    var_1 = firstLeadingBit(_wgslsmith_mult_vec4_u32(func_1(1f, -11877i), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.a.x, 32528u, u_input.d.x, 1u)), vec4<u32>(~1u, firstTrailingBit(23539u), u_input.a.x, ~67538u), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, var_1.x), _wgslsmith_sub_u32(u_input.b, u_input.d.x), var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 21854u, var_1.x, u_input.d.x), vec4<u32>(111224u, 12348u, 51371u, 0u))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1451f, -247f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1847f)), _wgslsmith_f_op_f32(sign(-452f)), select(!var_0.b, var_0.b | false, true))), _wgslsmith_f_op_f32(905f * -540f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-474f * _wgslsmith_div_f32(-1000f, 2342f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1115f, 1056f))) - 425f), -739f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -1064f) + _wgslsmith_f_op_f32(f32(-1f) * -931f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(230f)))), -1000f));
}

