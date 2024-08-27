struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec4<f32>) -> u32 {
    let var_0 = !(~4294967295u >= arg_1.e) && true;
    return 1u;
}

fn func_3() -> vec4<u32> {
    let var_0 = -340f;
    var var_1 = -653f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(step(907f, 1f)));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))))));
    let var_3 = -(~u_input.c.xz);
    return _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(min(countOneBits(vec4<u32>(4294967295u, 64459u, 3578u, 39436u)), firstLeadingBit(vec4<u32>(41944u, 33118u, 0u, 29851u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, 1u, 67279u), ~vec4<u32>(44695u, 41823u, 4294967295u, 2502u), firstLeadingBit(vec4<u32>(52814u, 0u, 41327u, 3838u)))), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 62861u, 1u, 0u), vec4<u32>(64598u, 98712u, 72208u, 11033u)), 4294967295u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(39968u, 1u, 4294967295u, 15001u)), ~vec4<u32>(5969u, 4294967295u, 21586u, 70543u)), 1u)), vec4<u32>(~select(1u, ~1u, true), 1u, 1u, countOneBits(_wgslsmith_mult_u32(108150u, 1u))));
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, 1456f, 325f), vec3<f32>(arg_0.c, arg_0.c, 120f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, arg_0.c, 795f))))), vec3<f32>(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c)) - _wgslsmith_div_f32(227f, arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -286f))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, 366f, arg_0.c), vec3<f32>(arg_0.c, arg_0.c, -917f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, arg_0.c, -920f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-133f, arg_0.c, arg_0.c), vec3<f32>(arg_0.c, 166f, 231f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(305f, arg_0.c, arg_0.c))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(select(844f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_0.c)), _wgslsmith_f_op_f32(f32(-1f) * -356f))), all(vec3<bool>(true, true, false))))), _wgslsmith_f_op_f32(ceil(1722f)), var_0.x);
    var_0 = vec3<f32>(-453f, _wgslsmith_div_f32(-1526f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(-var_0.x))));
    let var_1 = _wgslsmith_mult_vec4_u32(arg_0.a | ~arg_0.a, ~(~(~vec4<u32>(arg_0.d, 4294967295u, 0u, arg_0.b.a.x))));
    let var_2 = Struct_3(-(select(~u_input.b, i32(-1i) * -11500i, true) | ~_wgslsmith_add_i32(u_input.c.x, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x * -816f)))))));
    return var_2;
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<bool>) -> bool {
    let var_0 = func_4(Struct_4(reverseBits(vec4<u32>(4294967295u, ~4294967295u, func_2(2209f, Struct_4(vec4<u32>(22412u, 15996u, 63040u, 4294967295u), Struct_1(vec3<u32>(38328u, 56200u, 1u)), 110f, 1u, 51597u), Struct_3(1i, -1429f, -207f), vec4<f32>(200f, 744f, -1442f, 1357f)), min(62256u, 61480u))), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 13483u, 0u), vec3<u32>(45847u, 1u, 131817u), vec3<u32>(1u, 1u, 1u))), -662f, ~1u, _wgslsmith_dot_vec4_u32(func_3(), abs(vec4<u32>(54307u, 0u, 1u, 1u)))));
    let var_1 = Struct_4(~(~max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(71312u, 15475u, 1u, 24838u))), Struct_1(~vec3<u32>(_wgslsmith_mult_u32(4294967295u, 1u), min(1u, 43432u), ~4294967295u)), _wgslsmith_f_op_f32(ceil(518f)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(15402u, 5766u), vec2<u32>(1u, 1u))), func_3().x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-459f, -335f, var_1.c) + vec3<f32>(-331f, -135f, -103f))))))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1495f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-1096f + -235f), arg_1.x <= arg_0))), -1172f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-701f - 915f) * _wgslsmith_f_op_f32(var_1.c * -830f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, -1671f))) * var_2.x));
    let var_3 = ~(-arg_0 ^ u_input.a);
    return true;
}

fn func_5(arg_0: vec4<bool>) -> Struct_4 {
    let var_0 = arg_0.xyy;
    let var_1 = Struct_1(~func_3().yww);
    var var_2 = Struct_4(abs(~vec4<u32>(var_1.a.x, 1u, 35118u, 55509u)) ^ ~(~(~vec4<u32>(var_1.a.x, 1u, 34626u, var_1.a.x))), var_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1312f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1444f * -147f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1097f + _wgslsmith_f_op_f32(-353f + 196f)) + _wgslsmith_div_f32(556f, _wgslsmith_f_op_f32(-1497f - -1227f))))), _wgslsmith_sub_u32(~var_1.a.x, ~var_1.a.x), var_1.a.x);
    var_2 = Struct_4(abs(min(_wgslsmith_add_vec4_u32(vec4<u32>(37522u, var_2.e, 3160u, 43607u), ~var_2.a), ~var_2.a)), Struct_1(var_1.a ^ abs(~vec3<u32>(4294967295u, var_1.a.x, 4294967295u))), _wgslsmith_f_op_f32(step(var_2.c, 367f)), min(var_2.a.x, 50587u), _wgslsmith_dot_vec3_u32(var_2.a.zxw, countOneBits(var_2.b.a)) << (46994u % 32u));
    var_2 = Struct_4(vec4<u32>(~_wgslsmith_dot_vec2_u32(var_1.a.yy, var_1.a.yx | vec2<u32>(var_2.e, 79157u)), 11263u, var_2.b.a.x, ~(var_2.b.a.x >> (_wgslsmith_div_u32(var_2.d, var_1.a.x) % 32u))), Struct_1(vec3<u32>(reverseBits(_wgslsmith_mult_u32(var_2.a.x, var_2.b.a.x)), _wgslsmith_sub_u32(var_1.a.x, 64869u) >> (var_2.b.a.x % 32u), var_2.b.a.x)), -1000f, ~var_2.a.x, ~var_1.a.x);
    return Struct_4(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.a.x, var_2.b.a.x, 0u, 74516u) << (vec4<u32>(firstLeadingBit(0u), var_2.e, var_2.b.a.x, ~var_2.d) % vec4<u32>(32u)), min(_wgslsmith_add_vec4_u32(~var_2.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a.x, var_2.e, var_1.a.x, var_2.b.a.x), var_2.a, var_2.a)), reverseBits(var_2.a >> (vec4<u32>(var_1.a.x, 1u, 0u, var_2.d) % vec4<u32>(32u))))), Struct_1(vec3<u32>(var_1.a.x, 12119u, ~var_2.d & 0u)), 177f, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_2.d, select(~0u, var_2.b.a.x, all(vec3<bool>(var_0.x, false, arg_0.x))), ~26597u), 11816u), var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(u_input.c.x, u_input.c, vec4<bool>(false, true, false, false)))), func_4(Struct_4(vec4<u32>(0u, 0u, 1u, 1u), Struct_1(vec3<u32>(4294967295u, 0u, 1u)), 138f, 14026u, 31376u)).c == _wgslsmith_div_f32(-1164f, _wgslsmith_div_f32(452f, 210f)), all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false))));
    let var_1 = !vec4<bool>(true, any(vec2<bool>(true, true)), all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)))), true);
    var var_2 = u_input.c.yx;
    var var_3 = _wgslsmith_f_op_f32(-1305f - -1132f);
    var_2 = reverseBits(-(_wgslsmith_clamp_vec2_i32(vec2<i32>(49303i, 49130i), u_input.c.yy, vec2<i32>(var_2.x, u_input.c.x)) | -max(u_input.c.yy, vec2<i32>(-15188i, var_2.x))));
    let var_4 = max(firstLeadingBit(u_input.c), vec3<i32>(1i, ~(~u_input.a ^ -u_input.a), 0i));
    var_0 = func_5(var_1);
    var var_5 = func_5(vec4<bool>(true, var_1.x, 2147483647i <= ~(u_input.a >> (24439u % 32u)), true)).a;
    let var_6 = all(select(vec4<bool>(true, true, true, !var_1.x), var_1, select(vec4<bool>(true, false, true, !var_1.x), vec4<bool>(true, var_1.x, true, var_1.x && var_1.x), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.c)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(1000f + var_0.c)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1039f, 839f, var_0.c, var_0.c), vec4<f32>(var_0.c, var_0.c, -1873f, var_0.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 1526f, -587f, var_0.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, -702f, 410f, 481f), vec4<f32>(-499f, var_0.c, var_0.c, var_0.c)), _wgslsmith_div_vec4_f32(vec4<f32>(-480f, var_0.c, -802f, -1111f), vec4<f32>(var_0.c, var_0.c, 1287f, var_0.c))))))));
}

