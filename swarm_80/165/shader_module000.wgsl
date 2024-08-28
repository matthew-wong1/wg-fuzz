struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(48992u, 55286u), vec2<u32>(1u, 1u), vec2<u32>(21584u, 4294967295u), vec2<u32>(6098u, 4294967295u), vec2<u32>(0u, 14239u), vec2<u32>(7056u, 0u), vec2<u32>(65617u, 6205u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 46303u), vec2<u32>(0u, 21986u), vec2<u32>(20333u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(8446u, 38175u), vec2<u32>(59874u, 42837u), vec2<u32>(1u, 41179u), vec2<u32>(20228u, 81798u), vec2<u32>(7480u, 1u), vec2<u32>(26950u, 0u), vec2<u32>(0u, 46332u), vec2<u32>(29398u, 1u), vec2<u32>(59249u, 67193u), vec2<u32>(4294967295u, 10932u), vec2<u32>(1u, 24200u), vec2<u32>(16643u, 35437u), vec2<u32>(0u, 4139u), vec2<u32>(0u, 0u), vec2<u32>(47325u, 4294967295u), vec2<u32>(72498u, 65012u), vec2<u32>(4563u, 0u), vec2<u32>(35202u, 4294967295u));

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(Struct_2(vec4<i32>(i32(-2147483648), -21190i, -1i, 1i), 241f), 7768i, Struct_2(vec4<i32>(46379i, -20460i, i32(-2147483648), 47082i), -2977f), vec3<bool>(true, true, true), vec2<f32>(-410f, -1197f)), Struct_3(Struct_2(vec4<i32>(-21153i, 26853i, 0i, 22271i), 874f), 1215i, Struct_2(vec4<i32>(0i, -5542i, -29894i, i32(-2147483648)), 646f), vec3<bool>(true, true, false), vec2<f32>(-266f, 754f)), Struct_3(Struct_2(vec4<i32>(i32(-2147483648), -1i, -14393i, 0i), -725f), -31884i, Struct_2(vec4<i32>(1i, i32(-2147483648), -181i, 2147483647i), -478f), vec3<bool>(true, false, false), vec2<f32>(1639f, -828f)), Struct_3(Struct_2(vec4<i32>(1i, -70455i, 41443i, 41596i), 1080f), 1821i, Struct_2(vec4<i32>(1i, i32(-2147483648), -15644i, 0i), -1386f), vec3<bool>(true, true, false), vec2<f32>(964f, -2023f)));

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 1u, 1u, 33301u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_3) -> vec2<u32> {
    return abs(global3.wx);
}

fn func_1() -> bool {
    var var_0 = u_input.a.x;
    global1 = ~max(abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 10303u), func_2(vec4<f32>(867f, 979f, -747f, 1577f), vec3<bool>(true, true, true), Struct_2(vec4<i32>(1i, -34274i, 28966i, 1i), 331f), Struct_3(Struct_2(vec4<i32>(1i, -51694i, 2147483647i, 6454i), 355f), 1i, Struct_2(vec4<i32>(1i, -1i, -2147483647i, -1i), -884f), vec3<bool>(false, false, true), vec2<f32>(595f, -534f))))), _wgslsmith_clamp_vec2_u32(u_input.a.xz | vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1u, 55045u) ^ _wgslsmith_sub_vec2_u32(u_input.a.wy, global3.yz), vec2<u32>(global1.x >> (global3.x % 32u), _wgslsmith_clamp_u32(global1.x, u_input.a.x, 4294967295u))));
    global2 = array<Struct_3, 4>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-129f, 331f, 316f, 1025f), vec4<f32>(526f, -397f, -706f, -1925f), vec4<bool>(false, false, true, true)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1456f, -648f, -316f, -180f), vec4<f32>(-904f, -1015f, 597f, 1099f))))))));
    let var_2 = global2[_wgslsmith_index_u32(~abs(~(max(4294967295u, 33244u) << (firstLeadingBit(u_input.a.x) % 32u))), 4u)];
    return !any(var_2.d.zz) | (var_2.d.x | !all(select(vec3<bool>(var_2.d.x, false, var_2.d.x), vec3<bool>(true, var_2.d.x, true), true)));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_div_f32(2572f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -167f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(696f * -187f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1143f + _wgslsmith_f_op_f32(trunc(1376f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-916f)) - _wgslsmith_f_op_f32(f32(-1f) * -1286f))));
    let var_1 = !select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(true, true), true);
    var var_2 = var_0.a.x;
    global1 = select(vec2<u32>(4294967295u, ~(~countOneBits(global3.x))), ~(min(vec2<u32>(4294967295u, global3.x), ~vec2<u32>(4120u, 4294967295u)) | firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.a.yy, vec2<u32>(23784u, 1u)))), !var_1);
    var_2 = var_0.a.x;
    return -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstLeadingBit(vec4<i32>(-3720i, 2147483647i, -8916i, 2147483647i)) << (u_input.a % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i))), ~vec4<i32>(-2147483647i, -2147483647i, -12439i, -58040i) | select(vec4<i32>(-7047i, -78073i, -1i, -34518i), ~vec4<i32>(-2147483647i, -1i, -50175i, -2147483647i), 0u == u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 30>();
    let var_0 = vec3<bool>(true, false, func_1());
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(func_3(), -83663i), -_wgslsmith_clamp_i32(i32(-1i) * -384i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, 2147483647i, -2147483647i, -1i), vec4<i32>(-15062i, -3456i, 0i, -34520i), vec4<bool>(false, true, true, var_0.x)), abs(vec4<i32>(-983i, 6448i, -14110i, 0i))), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -22335i, -17379i), vec3<i32>(0i, -1i, 2147483647i)))));
    global1 = ~vec2<u32>(select(_wgslsmith_mult_u32(firstLeadingBit(1u), 0u & global1.x), global1.x, ~(-2147483647i) <= var_1.x), ~(4294967295u << (countOneBits(0u) % 32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(271f)))))));
    global1 = u_input.a.yw;
    global2 = array<Struct_3, 4>();
    let var_3 = vec2<f32>(var_2, _wgslsmith_f_op_f32(var_2 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2))), 411f)));
    var var_4 = ~(~vec4<i32>(var_1.x, _wgslsmith_mult_i32(var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-4299i, -49879i), vec2<i32>(-1i, var_1.x))), 74350i, func_3()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_3));
}

