struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: u32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<vec3<bool>, 3>;

var<private> global2: Struct_3;

var<private> global3: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(-877f, 1229f, 677f, 1016f), vec4<f32>(-669f, 613f, -346f, 1227f), vec4<f32>(-274f, 245f, -1864f, -839f), vec4<f32>(-1638f, 524f, 1200f, -1000f), vec4<f32>(-384f, -196f, 1131f, 1170f), vec4<f32>(1000f, -103f, -2157f, 849f), vec4<f32>(-2186f, -1069f, 1000f, 1030f), vec4<f32>(906f, 1000f, -764f, 849f), vec4<f32>(-734f, -2137f, 1513f, 1000f), vec4<f32>(3141f, -926f, -1114f, -943f), vec4<f32>(697f, 310f, -439f, 558f), vec4<f32>(-490f, 1679f, -1607f, 414f), vec4<f32>(718f, -1000f, -405f, -1000f), vec4<f32>(172f, 552f, 1432f, -1423f), vec4<f32>(-1621f, -1522f, -1395f, 339f), vec4<f32>(1035f, -305f, -494f, -417f), vec4<f32>(-343f, 569f, 761f, -138f), vec4<f32>(-1055f, -881f, 576f, 1038f), vec4<f32>(467f, -1175f, -735f, -280f), vec4<f32>(266f, 445f, 1011f, -1876f), vec4<f32>(739f, -478f, 729f, -1652f), vec4<f32>(-1146f, -245f, -642f, -696f));

var<private> global4: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(Struct_2(-30379i, true, 23727u, vec3<u32>(67434u, 0u, 0u), false), 2147483647i, -1190f), Struct_3(Struct_2(2147483647i, false, 55023u, vec3<u32>(18898u, 63411u, 1u), false), -104223i, 893f), Struct_3(Struct_2(-21307i, true, 45741u, vec3<u32>(60522u, 4294967295u, 0u), false), 8519i, 394f), Struct_3(Struct_2(-39861i, true, 68630u, vec3<u32>(38448u, 4294967295u, 4294967295u), true), -56016i, -216f), Struct_3(Struct_2(0i, false, 4294967295u, vec3<u32>(1u, 1u, 73262u), false), 32669i, -752f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(996f - 1808f);
    global1 = array<vec3<bool>, 3>();
    global0 = array<Struct_1, 32>();
    var var_1 = u_input.b.zyy;
    var var_2 = global2.c;
    return _wgslsmith_div_f32(646f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-403f, -1130f)) + _wgslsmith_f_op_f32(1101f - var_0)))) + _wgslsmith_f_op_f32(max(1002f, var_0))));
}

fn func_3() -> f32 {
    var var_0 = u_input.a.x;
    global4 = array<Struct_3, 5>();
    global2 = global4[_wgslsmith_index_u32(1u, 5u)];
    var var_1 = vec4<bool>(true, true, all(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(14593u, 73959u), 1u) & ~(~global2.a.c), 3u)]), select(select(true, global2.a.e || all(vec4<bool>(true, global2.a.e, true, false)), true), (31052u != (u_input.d ^ 4294967295u)) | global2.a.e, false));
    global3 = array<vec4<f32>, 22>();
    return _wgslsmith_f_op_f32(global2.c - 1633f);
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: Struct_2) -> vec4<bool> {
    global2 = Struct_3(Struct_2(arg_3.a, true, ~_wgslsmith_div_u32(~u_input.a.x, 4294967295u & arg_3.d.x), u_input.a.wwy ^ ~u_input.a.xxy, ~u_input.d > 27946u), i32(-1i) * -18903i, arg_0);
    global3 = array<vec4<f32>, 22>();
    var var_0 = global0[_wgslsmith_index_u32(1u, 32u)];
    var var_1 = (min(vec2<u32>(1u, u_input.c), global2.a.d.zx) >> (vec2<u32>(~countOneBits(0u), ~(~var_0.a)) % vec2<u32>(32u))) | u_input.a.yz;
    return select(vec4<bool>(_wgslsmith_add_i32(_wgslsmith_sub_i32(10316i, u_input.b.x), 7054i) > ~(~(-16409i)), global2.a.e, any(!(!vec4<bool>(global2.a.b, arg_3.b, global2.a.e, false))), select(true, global2.c == _wgslsmith_f_op_f32(arg_0 * arg_0), true)), vec4<bool>(!arg_3.b, all(!select(vec3<bool>(true, arg_3.b, true), global1[_wgslsmith_index_u32(arg_3.c, 3u)], vec3<bool>(global2.a.e, false, global2.a.e))), all(select(global1[_wgslsmith_index_u32(global2.a.d.x, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], select(vec3<bool>(global2.a.e, false, global2.a.e), vec3<bool>(arg_3.b, global2.a.b, true), global1[_wgslsmith_index_u32(global2.a.c, 3u)]))), arg_3.e), false);
}

fn func_2(arg_0: bool, arg_1: bool) -> f32 {
    global0 = array<Struct_1, 32>();
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3())))) + global2.c), vec3<f32>(_wgslsmith_f_op_f32(global2.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1790f - global2.c))), global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(trunc(global2.c)), global2.c))), global2.a);
    var var_1 = _wgslsmith_mod_u32(4294967295u, u_input.c);
    var var_2 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~u_input.a.x, ~u_input.a.x), global2.a.d.x, 27529u, firstLeadingBit(30775u)), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(40631u, 18141u, 0u, global2.a.c) & u_input.a, ~u_input.a)));
    var var_3 = global2.c;
    return global2.c;
}

fn func_5(arg_0: vec4<f32>) -> f32 {
    let var_0 = -(vec2<i32>(~global2.a.a, ~25396i) | -(u_input.b.yz ^ min(vec2<i32>(global2.a.a, -708i), vec2<i32>(2147483647i, -27279i))));
    global4 = array<Struct_3, 5>();
    global3 = array<vec4<f32>, 22>();
    global3 = array<vec4<f32>, 22>();
    global2 = Struct_3(Struct_2(-2147483647i, true, _wgslsmith_dot_vec2_u32(u_input.a.zz, ~u_input.a.yz), ~vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.c, u_input.c, 10118u), u_input.a.zzx), 0u), true), global2.a.a, arg_0.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) - -613f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 3>();
    let var_0 = global2.a;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c, global2.c)), _wgslsmith_f_op_f32(func_5(vec4<f32>(global2.c, _wgslsmith_f_op_f32(func_1(select(vec4<bool>(var_0.b, var_0.e, var_0.b, global2.a.e), vec4<bool>(false, var_0.e, false, var_0.b), true))), _wgslsmith_f_op_f32(func_1(!vec4<bool>(false, global2.a.b, var_0.b, var_0.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_0.b, var_0.b)) * -411f)))), -258f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1189f, global2.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -867f)))), -201f));
    var var_2 = Struct_3(Struct_2(var_0.a ^ ~(~global2.b), var_0.e, abs(4294967295u), min(firstTrailingBit(u_input.a.zzz), ~u_input.a.zyy) >> ((~global2.a.d | ~var_0.d) % vec3<u32>(32u)), select(true, _wgslsmith_f_op_f32(-var_1.x) <= -1158f, func_4(215f, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, global2.c, -893f) - var_1.xwy), vec2<f32>(var_1.x, 157f), Struct_2(u_input.e.x, global2.a.b, 43391u, vec3<u32>(u_input.a.x, global2.a.d.x, 4294967295u), global2.a.e)).x)), ~1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(var_1.x * -768f))));
    var_2 = global4[_wgslsmith_index_u32(~reverseBits(firstLeadingBit(~var_2.a.c)), 5u)];
    var_1 = _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(global2.a.c, 22u)] + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(~4294967295u, 22u)], _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(1u, 22u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1425f * global2.c), 306f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -332f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c, 847f) + -3748f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1948f, 442f, var_1.x, -864f), global3[_wgslsmith_index_u32(19977u, 22u)]))), global3[_wgslsmith_index_u32(global2.a.c, 22u)]))), _wgslsmith_clamp_vec4_i32(-(countOneBits(vec4<i32>(global2.b, -1i, 73854i, 16728i)) ^ u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 0i, -13891i, var_2.b) ^ vec4<i32>(global2.b, -2147483647i, -13537i, global2.a.a), reverseBits(u_input.b), u_input.b), vec4<i32>(reverseBits(~(-2147483647i)), -2147483647i, -(~2147483647i), u_input.b.x)), _wgslsmith_f_op_f32(-global2.c));
}

