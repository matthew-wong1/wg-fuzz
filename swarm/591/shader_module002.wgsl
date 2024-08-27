struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(1370f, -1349f, -246f, -404f), vec4<f32>(-913f, 1451f, -488f, -1301f), vec4<f32>(-1657f, 153f, 289f, -543f), vec4<f32>(-964f, -1595f, -384f, 434f), vec4<f32>(-717f, -1178f, 815f, 812f), vec4<f32>(-150f, 117f, 309f, 194f), vec4<f32>(-1000f, 693f, -723f, -522f), vec4<f32>(-1828f, 1493f, -507f, -2514f), vec4<f32>(-589f, -314f, -596f, 361f), vec4<f32>(-1000f, -142f, 1000f, 623f), vec4<f32>(-962f, -1000f, 525f, -717f), vec4<f32>(499f, 368f, 303f, -1737f), vec4<f32>(1000f, -802f, -1205f, 666f), vec4<f32>(-1409f, 1529f, -138f, -844f), vec4<f32>(-107f, 1000f, 199f, -724f), vec4<f32>(-727f, -1000f, -815f, -284f), vec4<f32>(-794f, 521f, 1427f, 168f), vec4<f32>(217f, -1461f, -1562f, 904f), vec4<f32>(503f, -1000f, 1448f, -1563f), vec4<f32>(737f, 827f, 1023f, 2016f), vec4<f32>(328f, -1643f, -501f, -128f), vec4<f32>(235f, -634f, -659f, -1000f), vec4<f32>(112f, -1371f, 528f, -541f), vec4<f32>(-313f, 1504f, -201f, 419f), vec4<f32>(-1134f, 369f, 309f, -1888f), vec4<f32>(-849f, -237f, 718f, -876f), vec4<f32>(-1540f, 1000f, -1000f, 235f), vec4<f32>(977f, -224f, -352f, 487f), vec4<f32>(-619f, 1152f, 475f, 1442f));

var<private> global2: array<u32, 3>;

var<private> global3: vec3<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.zx)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -1000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.yw)))) - _wgslsmith_div_vec2_f32(arg_0.ww, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(325f, 1216f)))))));
    var var_1 = vec3<i32>(u_input.b & _wgslsmith_dot_vec3_i32((vec3<i32>(0i, 28073i, 0i) >> (vec3<u32>(37122u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.x, 3u)], 3u)], u_input.c) % vec3<u32>(32u))) ^ firstLeadingBit(vec3<i32>(u_input.b, u_input.b, 2147483647i)), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(43276i, u_input.b, u_input.b)))), -3496i | max(u_input.b, _wgslsmith_div_i32(u_input.b, u_input.b) ^ -u_input.b), 17569i);
    var var_2 = Struct_2(-(~select(vec3<i32>(u_input.b, var_1.x, -27401i), vec3<i32>(-11721i, 86714i, u_input.b), true)) << (vec3<u32>(u_input.a | (20362u ^ global3.x), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global3.x, 3u)], 3u)], ~u_input.a), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global3.x, 3u)], 8106u, 23085u, u_input.c), vec4<u32>(u_input.a, 4294967295u, global2[_wgslsmith_index_u32(u_input.c, 3u)], 4294967295u)), 27089u)) % vec3<u32>(32u)));
    let var_3 = vec3<u32>(_wgslsmith_clamp_u32(1u, ~abs(0u), ~1u), 1u, global3.x);
    var_2 = global0[_wgslsmith_index_u32(~1u, 25u)];
    return -1i;
}

fn func_2() -> f32 {
    var var_0 = Struct_2(-vec3<i32>(-13729i, abs(func_3(vec4<f32>(1809f, 682f, -1000f, -203f), vec4<bool>(true, false, false, false))), -28960i));
    var var_1 = Struct_3(_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(~17221u, 3u)], u_input.a), Struct_2(vec3<i32>(-u_input.b, i32(-1i) * -u_input.b, 1i)), Struct_2(var_0.a << (((vec3<u32>(0u, 1u, global3.x) | vec3<u32>(global2[_wgslsmith_index_u32(1u, 3u)], global3.x, u_input.a)) & vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], global2[_wgslsmith_index_u32(51413u, 3u)], 0u)) % vec3<u32>(32u))));
    var var_2 = 717f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -422f), -1545f, 18963u >= u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -384f)))));
    let var_3 = min(~var_0.a | ~vec3<i32>(var_0.a.x, i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(var_0.a.xy, var_1.b.a.xx)), _wgslsmith_mod_vec3_i32(abs(select(vec3<i32>(2147483647i, 1i, var_0.a.x), select(var_0.a, vec3<i32>(u_input.b, u_input.b, 0i), vec3<bool>(false, true, false)), false)), firstLeadingBit(vec3<i32>(var_0.a.x, var_0.a.x, _wgslsmith_mod_i32(0i, u_input.b)))));
    global0 = array<Struct_2, 25>();
    return _wgslsmith_f_op_f32(select(296f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1207f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-728f, _wgslsmith_f_op_f32(trunc(344f))))), !(2084f != _wgslsmith_f_op_f32(trunc(-717f)))));
}

fn func_1() -> vec3<u32> {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(703f * -778f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-475f, -136f))))));
    global0 = array<Struct_2, 25>();
    global1 = array<vec4<f32>, 29>();
    let var_1 = vec3<u32>(global2[_wgslsmith_index_u32(global3.x, 3u)], ~u_input.a, 5029u) << (firstLeadingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 3u)], global3.x, global3.x), vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 3u)], 0u) | vec3<u32>(global3.x, global3.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]))) % vec3<u32>(32u));
    global0 = array<Struct_2, 25>();
    return ~vec3<u32>(_wgslsmith_mod_u32(30744u, 1u), u_input.c, ~(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = abs(func_1());
    var var_0 = _wgslsmith_mult_i32(u_input.b, ~u_input.b);
    let var_1 = -(~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(4294967295u, 4294967295u), ~select(vec2<u32>(global3.x & 4294967295u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27799u, 3u)], 3u)], 0u)), ~vec2<u32>(u_input.a, 82001u), _wgslsmith_f_op_f32(sign(-918f)) == -800f));
}

