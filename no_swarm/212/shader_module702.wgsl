struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: f32,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(vec4<i32>(0i, 2147483647i, -1i, 19175i), Struct_2(8298i, vec3<u32>(2576u, 1u, 1u)), 928f), Struct_4(vec4<i32>(0i, 20427i, -1i, -1i), Struct_2(-35234i, vec3<u32>(21433u, 0u, 19418u)), -291f), Struct_4(vec4<i32>(-15885i, -51215i, 0i, 2919i), Struct_2(-31302i, vec3<u32>(0u, 1u, 4294967295u)), 229f), Struct_4(vec4<i32>(-37766i, -50208i, 0i, i32(-2147483648)), Struct_2(-35757i, vec3<u32>(4294967295u, 72985u, 57152u)), 948f), Struct_4(vec4<i32>(11176i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), Struct_2(37439i, vec3<u32>(0u, 4294967295u, 77423u)), 260f), Struct_4(vec4<i32>(28178i, 29145i, -13443i, 0i), Struct_2(-1134i, vec3<u32>(24319u, 1u, 11584u)), -201f), Struct_4(vec4<i32>(1i, -7796i, 2147483647i, 14031i), Struct_2(-1i, vec3<u32>(0u, 0u, 4294967295u)), -298f), Struct_4(vec4<i32>(1i, 1i, 1i, 37594i), Struct_2(2147483647i, vec3<u32>(0u, 44169u, 33942u)), -158f), Struct_4(vec4<i32>(8215i, 28783i, -11378i, -21066i), Struct_2(-55746i, vec3<u32>(4294967295u, 49723u, 1u)), 307f), Struct_4(vec4<i32>(28540i, 1i, i32(-2147483648), -9330i), Struct_2(0i, vec3<u32>(34765u, 4294967295u, 2656u)), -395f), Struct_4(vec4<i32>(10681i, 2147483647i, 0i, 64438i), Struct_2(-3424i, vec3<u32>(37102u, 4294967295u, 1u)), 261f), Struct_4(vec4<i32>(i32(-2147483648), 46182i, 0i, -47455i), Struct_2(2147483647i, vec3<u32>(1u, 0u, 0u)), 574f), Struct_4(vec4<i32>(0i, i32(-2147483648), -1i, 1i), Struct_2(2147483647i, vec3<u32>(0u, 31765u, 0u)), 1000f), Struct_4(vec4<i32>(i32(-2147483648), 2147483647i, -30280i, -1i), Struct_2(2532i, vec3<u32>(23918u, 14859u, 0u)), -123f), Struct_4(vec4<i32>(1i, -7842i, 0i, 2147483647i), Struct_2(-38406i, vec3<u32>(4294967295u, 31369u, 1u)), -171f));

var<private> global2: array<bool, 25> = array<bool, 25>(true, true, true, true, true, false, false, true, false, false, true, false, true, true, true, true, false, true, false, true, false, true, true, true, false);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = 1822u;
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(-223f, _wgslsmith_div_f32(-566f, -1006f)), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-102f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(trunc(1568f))) * _wgslsmith_f_op_f32(round(-824f)))), all(select(select(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 25u)], false), select(vec2<bool>(false, false), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 25u)]), false), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 25u)], global2[_wgslsmith_index_u32(29646u, 25u)])), vec2<bool>(u_input.d.x < -1i, all(vec2<bool>(false, global2[_wgslsmith_index_u32(110348u, 25u)]))), select(!vec2<bool>(false, global2[_wgslsmith_index_u32(30418u, 25u)]), select(vec2<bool>(global2[_wgslsmith_index_u32(30229u, 25u)], false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 25u)], global2[_wgslsmith_index_u32(u_input.b, 25u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 25u)])), !vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 25u)])))));
    let var_2 = -(vec3<i32>(-(u_input.d.x >> (u_input.b % 32u)), u_input.d.x, u_input.d.x) ^ ~u_input.d.zzz);
    global1 = array<Struct_4, 15>();
    var_0 = 1u;
    return ~(max(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, u_input.c), vec3<u32>(4294967295u, u_input.c, 1u)), vec3<u32>(49636u, 4294967295u, u_input.b)) >> (~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(14656u, u_input.b)), u_input.b & u_input.a, u_input.a) % vec3<u32>(32u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: bool) -> vec2<u32> {
    var var_0 = true;
    var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(~countOneBits(u_input.a), u_input.b, 53008u), func_3()), 25u)];
    var var_1 = _wgslsmith_div_vec2_u32(max(vec2<u32>(u_input.c & u_input.b, _wgslsmith_clamp_u32(u_input.c, 0u, 1u)) << (~(~vec2<u32>(0u, u_input.b)) % vec2<u32>(32u)), ~vec2<u32>(u_input.b, u_input.b) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(19771u, 85949u), vec2<u32>(0u, u_input.a) | vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u))), vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a, 4294967295u, u_input.b), vec4<u32>(u_input.b, 40343u, 19168u, u_input.a))), reverseBits(~36177u)) & ~(~(~vec2<u32>(u_input.a, u_input.b))));
    let var_2 = ~vec4<u32>(1u, 4294967295u, u_input.b, abs(firstTrailingBit(~u_input.a)));
    var var_3 = Struct_2(u_input.d.x, ~reverseBits(~var_2.xzx));
    return ~var_2.zy;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> u32 {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-1248f - -178f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1863f)), _wgslsmith_f_op_f32(-573f - -1603f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(182f, -940f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1522f)))), _wgslsmith_f_op_f32(f32(-1f) * -1360f))), any(vec2<bool>(false, _wgslsmith_mod_u32(u_input.a, 0u) == ~10145u)));
    global0 = u_input.b;
    let var_1 = global1[_wgslsmith_index_u32(var_0.x, 15u)];
    global2 = array<bool, 25>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(trunc(-355f)), var_1.c, -346f)))), false);
    return ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, abs(~u_input.a)), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<i32>(u_input.d.x, abs(2147483647i), u_input.d.x, 2147483647i);
    global2 = array<bool, 25>();
    var var_1 = firstLeadingBit(((1u >> (~u_input.c % 32u)) >> (u_input.a % 32u)) >> (~(~abs(9400u)) % 32u));
    var var_2 = 63139u;
    var_0 = -u_input.d;
    var_1 = ~u_input.a & u_input.a;
    global0 = func_1(-51345i, !(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 25u)], false, u_input.b < 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(223f, -382f, 1000f, -802f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1495f, 750f, 594f, -1996f), vec4<f32>(1028f, -1092f, 1310f, -1670f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-653f)), -1195f, -885f, _wgslsmith_f_op_f32(-428f - 497f)))), ~(abs(_wgslsmith_mod_vec2_i32(u_input.d.zw, vec2<i32>(u_input.d.x, -1i))) << ((_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.a), vec2<u32>(91895u, 58521u)) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.a, u_input.c))) % vec2<u32>(32u))), ~vec2<u32>(u_input.b, u_input.a), vec3<u32>(_wgslsmith_dot_vec2_u32((vec2<u32>(4294967295u, u_input.c) ^ vec2<u32>(u_input.a, u_input.b)) ^ vec2<u32>(4294967295u, 4294967295u), ~(~vec2<u32>(4294967295u, 12251u))), select(max(2257u << (0u % 32u), _wgslsmith_add_u32(1u, u_input.b)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(66859u, u_input.c), u_input.c ^ 4294967295u), false), _wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec2_u32(min(vec2<u32>(53669u, 1u), vec2<u32>(16677u, u_input.a)), func_2(vec3<f32>(-436f, -163f, -1600f), vec2<f32>(312f, -225f), global2[_wgslsmith_index_u32(30724u, 25u)])))));
}

