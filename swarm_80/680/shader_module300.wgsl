struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

var<private> global1: Struct_1 = Struct_1(false, vec2<u32>(28200u, 17422u));

var<private> global2: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(vec3<f32>(-1609f, -208f, -1005f)), Struct_4(vec3<f32>(-407f, -465f, -299f)), Struct_4(vec3<f32>(198f, -685f, -728f)), Struct_4(vec3<f32>(1510f, 505f, -1000f)), Struct_4(vec3<f32>(-576f, -307f, -1832f)), Struct_4(vec3<f32>(-1070f, 1000f, 488f)), Struct_4(vec3<f32>(1653f, -1027f, 1029f)), Struct_4(vec3<f32>(-1000f, 506f, 757f)), Struct_4(vec3<f32>(1981f, 1000f, 128f)), Struct_4(vec3<f32>(-2321f, -2418f, -1194f)), Struct_4(vec3<f32>(-321f, 276f, -341f)), Struct_4(vec3<f32>(-1418f, -921f, -1664f)), Struct_4(vec3<f32>(-346f, -1000f, -970f)), Struct_4(vec3<f32>(677f, -1089f, 1241f)), Struct_4(vec3<f32>(-209f, 2102f, 1000f)), Struct_4(vec3<f32>(-603f, 1366f, -1546f)), Struct_4(vec3<f32>(291f, -1371f, -319f)), Struct_4(vec3<f32>(-1470f, 517f, 1000f)), Struct_4(vec3<f32>(-684f, 1160f, -1045f)), Struct_4(vec3<f32>(1885f, -1012f, -1182f)), Struct_4(vec3<f32>(-2170f, -1899f, 1567f)), Struct_4(vec3<f32>(361f, 298f, -310f)), Struct_4(vec3<f32>(-761f, -635f, -1013f)), Struct_4(vec3<f32>(351f, -770f, -1262f)), Struct_4(vec3<f32>(259f, -1549f, 504f)), Struct_4(vec3<f32>(-703f, 1531f, -953f)), Struct_4(vec3<f32>(764f, 693f, -442f)), Struct_4(vec3<f32>(1694f, -339f, -1000f)));

var<private> global3: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(vec3<f32>(-2446f, -1204f, -769f)), Struct_4(vec3<f32>(-1000f, -1666f, 420f)), Struct_4(vec3<f32>(-1000f, 149f, -1000f)), Struct_4(vec3<f32>(-1110f, 1080f, -696f)), Struct_4(vec3<f32>(-2160f, -1279f, -771f)), Struct_4(vec3<f32>(720f, -1000f, -445f)), Struct_4(vec3<f32>(1230f, 129f, 217f)), Struct_4(vec3<f32>(-654f, -1093f, -1316f)), Struct_4(vec3<f32>(1060f, -313f, -376f)), Struct_4(vec3<f32>(263f, 923f, 979f)), Struct_4(vec3<f32>(977f, -347f, 647f)), Struct_4(vec3<f32>(-392f, -287f, -1000f)), Struct_4(vec3<f32>(1016f, -2519f, -424f)), Struct_4(vec3<f32>(928f, -1069f, -191f)), Struct_4(vec3<f32>(-290f, -544f, 925f)), Struct_4(vec3<f32>(692f, 1006f, 1098f)), Struct_4(vec3<f32>(-334f, -190f, -1215f)), Struct_4(vec3<f32>(382f, -248f, 889f)), Struct_4(vec3<f32>(109f, -178f, 1035f)), Struct_4(vec3<f32>(-1154f, 203f, 879f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = !(!(!(!select(vec4<bool>(global1.a, global1.a, true, global1.a), vec4<bool>(global1.a, global1.a, global1.a, true), vec4<bool>(false, false, global1.a, true)))));
    let var_1 = u_input.e.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(327f, 1000f, -339f, -1000f))))));
    var var_3 = var_1;
    let var_4 = min(_wgslsmith_clamp_u32(countOneBits(u_input.c.x << (0u % 32u)), ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.b.x, 4294967295u, 0u), vec4<u32>(global1.b.x, u_input.a, global1.b.x, 7562u))), min(~_wgslsmith_clamp_u32(11464u, 11692u, 55057u), 1u & _wgslsmith_sub_u32(global1.b.x, 0u))), u_input.c.x);
    return ~22768u;
}

fn func_2() -> Struct_3 {
    var var_0 = vec2<i32>(firstTrailingBit(-_wgslsmith_dot_vec3_i32(max(u_input.e.ywy, vec3<i32>(94648i, u_input.e.x, 18573i)), reverseBits(vec3<i32>(u_input.d, u_input.b.x, -63144i)))), -10179i);
    var_0 = vec2<i32>(9413i, var_0.x);
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-562f, -251f, -349f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1721f, 146f, 2288f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(642f, -169f, -554f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-649f * 303f), -230f, _wgslsmith_f_op_f32(f32(-1f) * -598f)))));
    let var_2 = global1.a;
    var var_3 = u_input.b.wxx;
    return Struct_3(~vec3<u32>(79678u, 4294967295u, u_input.c.x << (func_3() % 32u)), ~select(var_0.x, ~var_3.x, select(true, global1.a, global1.a)) << (global1.b.x % 32u));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> vec2<u32> {
    var var_0 = -vec2<i32>(func_2().b, 1i);
    let var_1 = vec3<i32>(reverseBits(u_input.e.x), 14415i, _wgslsmith_sub_i32(~(~_wgslsmith_clamp_i32(37192i, arg_0.b, -24432i)), reverseBits(arg_0.b) >> (~67310u % 32u)));
    var var_2 = vec3<i32>(_wgslsmith_mod_i32(-(~(i32(-1i) * -22129i)), u_input.e.x), 1i, 1i);
    global3 = array<Struct_4, 20>();
    let var_3 = Struct_4(vec3<f32>(-2247f, arg_3.a.x, -575f));
    return ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(func_2().a.xz, ~vec2<u32>(global1.b.x, 77414u)), vec2<u32>(global1.b.x, abs(_wgslsmith_sub_u32(1u, u_input.c.x))), u_input.c);
}

fn func_1() -> f32 {
    var var_0 = 4294967295u;
    global1 = Struct_1(true, _wgslsmith_mod_vec2_u32(select(~(vec2<u32>(u_input.a, global1.b.x) >> (global1.b % vec2<u32>(32u))), func_4(func_2(), _wgslsmith_f_op_f32(f32(-1f) * -535f), true, Struct_4(vec3<f32>(815f, 1238f, -628f))), !any(global0[_wgslsmith_index_u32(4294967295u, 4u)])), vec2<u32>(u_input.a, ~4294967295u)));
    var var_1 = firstTrailingBit(~(-select(min(vec2<i32>(u_input.b.x, u_input.d), u_input.e.zx), select(u_input.e.zw, vec2<i32>(1i, -1i), global1.a), global1.a & global1.a)));
    global2 = array<Struct_4, 28>();
    var_0 = _wgslsmith_mult_u32(_wgslsmith_add_u32(global1.b.x, ~countOneBits(928u)), ~reverseBits(global1.b.x ^ ~1u));
    return 379f;
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_4) -> Struct_1 {
    let var_0 = func_2();
    global1 = Struct_1(false, ~global1.b);
    global1 = Struct_1(true, _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c.x << (52142u % 32u), ~1223u), u_input.c));
    var var_1 = var_0;
    var var_2 = vec2<bool>(!(~(1u << (u_input.c.x % 32u)) >= max(0u, ~20991u)), max(~(~arg_2.x), reverseBits(abs(global1.b.x))) == ~35004u);
    return Struct_1(true, ~countOneBits(global1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(select(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 1u), 4u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, ~(u_input.a << (4294967295u % 32u))), 4u)], _wgslsmith_f_op_f32(func_1()) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1166f))), global1.a, ~(~vec3<u32>(global1.b.x, global1.b.x, global1.b.x)), global3[_wgslsmith_index_u32(u_input.c.x, 20u)]);
    var var_0 = vec2<bool>(true, 1110f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1508f)))), _wgslsmith_f_op_f32(abs(-789f)), all(select(vec2<bool>(global1.a, false), vec2<bool>(true, true), true)))));
    global3 = array<Struct_4, 20>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1105f, -2384f) - vec3<f32>(1750f, 466f, -1010f)))))));
    let var_2 = ~(~(_wgslsmith_sub_u32(u_input.c.x, 49781u) ^ 30323u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.d, ~(-1i)), ~(~abs(u_input.b.x)), firstTrailingBit(~vec3<u32>(u_input.c.x, global1.b.x | 4294967295u, global1.b.x >> (global1.b.x % 32u))), 492f);
}

