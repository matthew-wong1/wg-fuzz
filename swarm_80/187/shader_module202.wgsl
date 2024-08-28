struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false));

var<private> global1: f32 = -990f;

var<private> global2: array<Struct_5, 11>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = _wgslsmith_sub_u32(arg_0.x, 39233u);
    global2 = array<Struct_5, 11>();
    var var_1 = !all(vec4<bool>(true, false, false, true)) && true;
    let var_2 = -1522f;
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-688f, var_2, var_2, var_2) * vec4<f32>(var_2, var_2, -814f, 936f)))), vec4<i32>(u_input.c, ~_wgslsmith_clamp_i32(u_input.d, u_input.d, 0i), u_input.c, -2147483647i), 4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, -1622f) + vec2<f32>(592f, var_2))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-999f, var_2))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-735f, -1000f)))))), Struct_2(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-224f, var_2, var_2, var_2)), countOneBits(-vec4<i32>(-11666i, u_input.c, u_input.d, 1i)), 91056u), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(var_2 * var_2), 395f, -485f, _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2, 726f, var_2, var_2), vec4<f32>(1000f, var_2, var_2, var_2)))))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(114f, -1000f, var_2, var_2), vec4<f32>(var_2, 1859f, var_2, var_2))))), -vec4<i32>(2147483647i, -738i, u_input.d, 8988i), firstLeadingBit(~arg_0.x)), countOneBits(u_input.c >> (u_input.b % 32u))));
    return 12456u;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_2) -> f32 {
    let var_0 = arg_0;
    global2 = array<Struct_5, 11>();
    let var_1 = ~select(func_3(~u_input.a) >> (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x, arg_2.b.c, arg_0.c.b.c), 0u) % 32u), ~(~73015u) ^ ~_wgslsmith_div_u32(26950u, var_0.c.d.c), select(!any(vec2<bool>(true, true)), true, var_0.c.a.x && (arg_0.a.c > var_0.a.c)));
    return _wgslsmith_f_op_f32(-664f + -869f);
}

fn func_1() -> vec3<bool> {
    global0 = array<vec4<bool>, 21>();
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1601f))) >= _wgslsmith_f_op_f32(-230f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-350f)))), true | (_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_4(Struct_1(vec4<f32>(744f, 295f, -123f, 176f), vec4<i32>(-1i, u_input.d, 0i, u_input.c), u_input.b), vec2<f32>(-636f, 1700f), Struct_2(vec3<bool>(false, false, false), Struct_1(vec4<f32>(808f, 1457f, 1000f, 975f), vec4<i32>(20089i, u_input.c, u_input.d, -5283i), 131100u), vec4<f32>(144f, -157f, -617f, -2263f), Struct_1(vec4<f32>(1984f, -812f, -1237f, -154f), vec4<i32>(u_input.d, -2147483647i, 0i, 1i), 26766u), 2147483647i)), vec4<u32>(u_input.b, 24126u, u_input.a.x, u_input.a.x), Struct_2(vec3<bool>(false, true, true), Struct_1(vec4<f32>(337f, 174f, -1372f, -439f), vec4<i32>(1i, u_input.c, 1i, u_input.d), u_input.b), vec4<f32>(-498f, -350f, -1102f, -286f), Struct_1(vec4<f32>(-1036f, -1310f, -2346f, -238f), vec4<i32>(u_input.d, 21742i, 59672i, -35931i), 17989u), -2147483647i))), _wgslsmith_f_op_f32(trunc(-249f))) <= 1499f));
    var var_1 = Struct_5(Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(716f, 693f, 937f, -232f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1263f, -321f, -131f) * vec4<f32>(978f, 781f, 1000f, 439f))), vec4<i32>(2937i, u_input.c, 9882i, u_input.c) ^ vec4<i32>(0i, 33296i, u_input.d, -18111i), 73142u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(827f, 1600f) * vec2<f32>(465f, -244f))))), Struct_2(vec3<bool>(true, false, true), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1368f, -156f, 2446f, -438f)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, 0i, u_input.d), vec4<i32>(-8786i, 2147483647i, 31119i, u_input.c)), 32986u & u_input.a.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2653f, -177f, -810f, -693f)))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(770f, 760f, 2214f, 614f)), -vec4<i32>(-1i, 0i, u_input.d, u_input.d), u_input.a.x), -44794i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f) - -577f));
    var var_2 = 1u;
    global1 = var_1.a.a.a.x;
    return var_1.a.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = ~(~u_input.d);
    var var_2 = max(vec4<i32>(_wgslsmith_mod_i32(0i, 1i), _wgslsmith_sub_i32(~(i32(-1i) * -26906i), u_input.c), -16550i, 1i), vec4<i32>(-22338i, 2147483647i, -35507i, -17541i));
    let var_3 = Struct_2(select(!func_1(), vec3<bool>(func_1().x, any(vec3<bool>(true, var_0.x, var_0.x)), true), true), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(267f, 1110f, -833f, -1000f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1801f, 867f, 703f, -404f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(321f, -363f, 1538f, 158f)))), vec4<i32>(-31687i, var_2.x, 3194i & countOneBits(u_input.c), reverseBits(_wgslsmith_mod_i32(-8415i, u_input.c))), ~62605u), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-1000f - 1195f), _wgslsmith_f_op_f32(-455f - _wgslsmith_div_f32(-899f, _wgslsmith_f_op_f32(f32(-1f) * -349f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2230f * _wgslsmith_f_op_f32(abs(-639f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1257f, _wgslsmith_div_f32(1430f, 714f), _wgslsmith_div_f32(-1042f, 133f), 882f) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1338f, -1000f, 1358f, -2391f) + vec4<f32>(143f, 581f, -1898f, -1121f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-219f, -255f, -1226f, -1333f))))), _wgslsmith_add_vec4_i32(vec4<i32>(~1623i, -var_2.x, u_input.c, var_2.x), ~vec4<i32>(-1i, 0i, u_input.c, 34390i)), min(_wgslsmith_clamp_u32(u_input.b, 0u, 1u), 1u) >> (52891u % 32u)), 1i);
    let var_4 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(min(~9888u, max(min(_wgslsmith_mult_u32(0u, u_input.a.x), abs(0u)), ~_wgslsmith_mult_u32(102975u, u_input.a.x))), var_2.x, var_4.c | _wgslsmith_clamp_u32(67899u, _wgslsmith_add_u32(~0u, ~u_input.b), abs(firstLeadingBit(57360u))), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.c.x)))));
}

