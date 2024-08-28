struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(-47247i, Struct_1(true, 118f, 4294967295u), -36366i, -1000f, Struct_1(false, -513f, 7649u)), Struct_2(42622i, Struct_1(false, -1000f, 0u), -14856i, -394f, Struct_1(false, -1316f, 1u)), Struct_2(-1i, Struct_1(false, -282f, 1u), 74569i, -285f, Struct_1(true, 1332f, 23869u)), Struct_2(-33356i, Struct_1(true, 686f, 11191u), i32(-2147483648), -815f, Struct_1(true, -104f, 6151u)), Struct_2(6702i, Struct_1(false, -1270f, 52002u), -55890i, 404f, Struct_1(false, -1166f, 1u)), Struct_2(-1i, Struct_1(false, 2887f, 8186u), 27553i, 182f, Struct_1(true, -1103f, 4294967295u)), Struct_2(71336i, Struct_1(true, -438f, 25872u), 43174i, 1079f, Struct_1(true, -1000f, 1u)), Struct_2(1i, Struct_1(true, -739f, 1u), 15560i, 816f, Struct_1(true, 352f, 52816u)), Struct_2(-16887i, Struct_1(true, 114f, 0u), -80135i, -125f, Struct_1(true, 139f, 28297u)), Struct_2(13458i, Struct_1(true, -184f, 17691u), -1i, -383f, Struct_1(true, 492f, 0u)), Struct_2(2147483647i, Struct_1(true, 166f, 4294967295u), -12372i, -861f, Struct_1(false, 176f, 26949u)), Struct_2(0i, Struct_1(true, -410f, 457u), -1i, -962f, Struct_1(true, 308f, 1u)), Struct_2(18817i, Struct_1(false, -469f, 0u), 0i, -787f, Struct_1(false, 486f, 14162u)), Struct_2(12265i, Struct_1(true, -2171f, 47127u), 1i, 212f, Struct_1(false, -624f, 40885u)), Struct_2(-22579i, Struct_1(true, 822f, 1u), 1i, -1418f, Struct_1(false, -1000f, 4294967295u)), Struct_2(7392i, Struct_1(false, -774f, 4294967295u), 18261i, -1562f, Struct_1(false, -170f, 0u)), Struct_2(i32(-2147483648), Struct_1(true, 157f, 4294967295u), 13697i, 1088f, Struct_1(true, -894f, 1u)), Struct_2(-38891i, Struct_1(true, -1144f, 0u), i32(-2147483648), 491f, Struct_1(false, -999f, 16169u)), Struct_2(2147483647i, Struct_1(true, 226f, 0u), 2147483647i, 1000f, Struct_1(true, -466f, 18540u)), Struct_2(49238i, Struct_1(true, 3178f, 4294967295u), -19891i, -757f, Struct_1(true, -2424f, 0u)));

var<private> global1: f32 = 1002f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1((_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-677f)), _wgslsmith_f_op_f32(f32(-1f) * -1545f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-829f + 2048f) * -487f)) != any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 2491f) * _wgslsmith_f_op_f32(step(-859f, -962f))), _wgslsmith_f_op_f32(-1f)))), max(u_input.c.x | ~89279u, _wgslsmith_sub_u32(reverseBits(u_input.b.x), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.b.x))) << (u_input.c.x % 32u)));
    var var_1 = Struct_1(!(true | !var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1532f) - 474f)), _wgslsmith_mult_u32(1u, var_0.c));
    let var_2 = -1587f;
    var var_3 = var_1.a;
    global0 = array<Struct_2, 20>();
    return -760f;
}

fn func_2() -> bool {
    global1 = _wgslsmith_div_f32(-388f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1095f, _wgslsmith_f_op_f32(f32(-1f) * -1539f)))) - _wgslsmith_f_op_f32(func_3())));
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(-1123f + -730f), select(1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(41262u, u_input.a.x), ~u_input.a.x) ^ max(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 4294967295u, u_input.a.x), u_input.c)), false));
    let var_1 = global0[_wgslsmith_index_u32(abs(~4294967295u), 20u)];
    var_0 = var_1.e;
    let var_2 = var_0.c & abs(~u_input.c.x);
    return var_0.a;
}

fn func_1() -> bool {
    let var_0 = select(select(vec4<bool>(!any(vec2<bool>(false, true)), true, true, func_2()), select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), false), vec4<bool>(true, true, select(false, true, false), true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, any(vec2<bool>(true, true))))), !vec4<bool>(select(true, true, true), true, true & any(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, true))), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true), func_2()), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), u_input.b.x != 4294967295u))));
    let var_1 = any(select(vec4<bool>(var_0.x, true, all(var_0.xyw) & true, any(!vec4<bool>(var_0.x, false, var_0.x, var_0.x))), !(!vec4<bool>(var_0.x, var_0.x, false, true)), vec4<bool>(var_0.x, any(select(vec3<bool>(true, true, false), var_0.yzy, vec3<bool>(false, true, var_0.x))), true, true)));
    global1 = _wgslsmith_f_op_f32(func_3());
    global0 = array<Struct_2, 20>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -276f) - -585f), -155f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))) + 1330f));
    return true;
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    global1 = 1446f;
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1963f, -1112f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1302f, -542f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -259f)))), 787f, _wgslsmith_f_op_f32(max(arg_3.b, _wgslsmith_f_op_f32(abs(833f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, arg_2.x, -460f, -107f), vec4<f32>(1159f, arg_0.x, arg_1, arg_3.b))), vec4<f32>(-245f, arg_1, arg_1, arg_0.x)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(429f))));
    let var_2 = u_input.c.zw;
    let var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 20u)];
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-834f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-394f - -1000f))), -2946f)), _wgslsmith_f_op_f32(320f - -1334f));
    var var_1 = -152f;
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-628f, -173f)), _wgslsmith_f_op_f32(-var_0.x))) - vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.x)), var_0.x)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1634f + 1899f) * _wgslsmith_f_op_f32(select(var_0.x, 1024f, true))))), vec4<f32>(_wgslsmith_f_op_f32(874f * var_0.x), _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-732f, _wgslsmith_div_f32(-161f, var_0.x))) + _wgslsmith_f_op_f32(f32(-1f) * -2415f)), var_0.x), Struct_1(func_1(), 721f, _wgslsmith_mod_u32(~47253u, _wgslsmith_mult_u32(u_input.b.x, 29482u)) & u_input.a.x));
    global1 = var_2.b;
    var var_3 = countOneBits(abs(select(-vec3<i32>(-1i, -6116i, -23704i), ~vec3<i32>(2147483647i, -2147483647i, -1i), all(vec3<bool>(var_2.a, false, false))))) & ~(~vec3<i32>(23384i, abs(10165i), _wgslsmith_clamp_i32(0i, -45481i, 13952i)));
    let var_4 = Struct_2(-56766i, var_2, ~select(0i, abs(~var_3.x), var_2.a), var_0.x, Struct_1(false, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_sub_u32(4294967295u, 0u)));
    let var_5 = -var_3.x >> (u_input.a.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1231f, -1087f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-612f + var_0.x))))), -(~reverseBits(vec2<i32>(var_5, -58420i))));
}

