struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: array<f32, 4> = array<f32, 4>(1000f, 135f, 352f, -543f);

var<private> global2: array<Struct_2, 9>;

var<private> global3: array<f32, 14> = array<f32, 14>(-223f, 1787f, 301f, -181f, 1103f, 1156f, 149f, 186f, 591f, -233f, 1328f, -1475f, 1535f, -1000f);

var<private> global4: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(1733f, -828f, 386f), vec3<f32>(-347f, -830f, -538f), vec3<f32>(-1000f, -238f, -436f), vec3<f32>(426f, -417f, 225f), vec3<f32>(1000f, -497f, 1292f), vec3<f32>(-403f, 317f, 797f), vec3<f32>(-2457f, 582f, -413f), vec3<f32>(-945f, -1000f, 957f), vec3<f32>(-1183f, 1356f, 787f), vec3<f32>(229f, -856f, 1732f), vec3<f32>(-574f, -424f, -503f), vec3<f32>(-976f, 120f, -447f), vec3<f32>(1059f, 1371f, 336f), vec3<f32>(-1000f, -1022f, -936f), vec3<f32>(-247f, 1000f, -1928f), vec3<f32>(-1000f, -1184f, -1865f), vec3<f32>(614f, 1575f, -435f), vec3<f32>(681f, -529f, -282f), vec3<f32>(-175f, 1000f, -447f), vec3<f32>(326f, 911f, 445f), vec3<f32>(434f, 1085f, -119f), vec3<f32>(-1456f, 889f, 344f), vec3<f32>(-187f, -475f, -218f), vec3<f32>(256f, -1000f, -544f), vec3<f32>(-1598f, -285f, -1840f), vec3<f32>(-893f, 473f, 2082f), vec3<f32>(609f, 1204f, 1597f), vec3<f32>(-1466f, 1322f, -1658f), vec3<f32>(590f, -1146f, -771f), vec3<f32>(-2357f, -1658f, -923f), vec3<f32>(-529f, 926f, 1136f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    global1 = array<f32, 4>();
    let var_0 = i32(-1i) * -(~(~1i));
    global0 = array<Struct_3, 7>();
    var var_1 = vec2<u32>(_wgslsmith_add_u32(u_input.a, _wgslsmith_clamp_u32(4294967295u, u_input.a, ~select(u_input.a, 16572u, true))), u_input.a);
    var_1 = vec2<u32>(~(~0u), u_input.a);
    return countOneBits((_wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(4294967295u, 1u)) | ~min(vec2<u32>(var_1.x, 1u), vec2<u32>(var_1.x, var_1.x))) | ~(vec2<u32>(u_input.a, u_input.a) & ~vec2<u32>(u_input.a, var_1.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(global4[_wgslsmith_index_u32(u_input.a, 31u)], _wgslsmith_f_op_f32(abs(1f)));
    var var_1 = all(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), var_0.b > 198f), vec4<bool>(true, global1[_wgslsmith_index_u32(38861u, 4u)] >= 1693f, true, true), true));
    var_1 = all(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), true), vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true)));
    var var_2 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 16002u)), func_3(-342f) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 62798u), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), ~u_input.a);
    var var_3 = _wgslsmith_f_op_f32(-261f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(556f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(377f, 326f, true)) + 134f)), _wgslsmith_f_op_f32(869f * _wgslsmith_f_op_f32(ceil(614f))))));
    return Struct_2(!(!(true & any(vec2<bool>(false, true)))), vec2<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)), true), 4294967295u, 596f);
}

fn func_1() -> u32 {
    var var_0 = -select(2147483647i, 1i, true);
    global3 = array<f32, 14>();
    global1 = array<f32, 4>();
    var var_1 = ~_wgslsmith_mult_vec4_u32(~(~(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, 13331u, 0u, u_input.a) % vec4<u32>(32u)))), countOneBits(~min(vec4<u32>(u_input.a, 131199u, 22607u, 29889u), vec4<u32>(33267u, 0u, 30239u, u_input.a))));
    var var_2 = func_2();
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 9>();
    var var_0 = ~select(_wgslsmith_clamp_vec2_u32(~max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(55972u, 10534u)), vec2<u32>(~u_input.a, func_1()), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 33270u), vec2<u32>(4294967295u, 22324u)), vec2<u32>(49292u, u_input.a))), vec2<u32>(u_input.a, u_input.a), !vec2<bool>(true, any(vec2<bool>(true, false))));
    var var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, countOneBits(u_input.a), 0u, max(var_0.x, 6589u)), min(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), max(vec4<u32>(58104u, var_0.x, var_0.x, 35951u), vec4<u32>(8354u, 42538u, var_0.x, u_input.a))))), 7u)];
    var var_2 = !any(vec3<bool>(true, all(vec4<bool>(true, false, true, false)), true));
    let var_3 = 5486u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, -vec3<i32>(select(1i, -2147483647i, true), ~(-25220i), -8565i));
}

