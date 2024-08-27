struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -14014i;

var<private> global1: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(Struct_4(Struct_3(true, vec2<bool>(true, false), vec3<i32>(-55005i, 0i, -1i), vec3<f32>(1000f, 1612f, -266f)), 27386u, vec2<u32>(1u, 19364u)), vec3<i32>(43282i, 20341i, -1i)), Struct_5(Struct_4(Struct_3(true, vec2<bool>(true, false), vec3<i32>(2147483647i, 0i, 0i), vec3<f32>(832f, -1513f, 2519f)), 4294967295u, vec2<u32>(4294967295u, 1u)), vec3<i32>(1i, -4078i, i32(-2147483648))), Struct_5(Struct_4(Struct_3(false, vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -14515i, -1i), vec3<f32>(-819f, 230f, -335f)), 34487u, vec2<u32>(4294967295u, 60437u)), vec3<i32>(i32(-2147483648), 74302i, -43075i)), Struct_5(Struct_4(Struct_3(false, vec2<bool>(true, true), vec3<i32>(2147483647i, i32(-2147483648), -9764i), vec3<f32>(294f, -1043f, 1000f)), 0u, vec2<u32>(1u, 77277u)), vec3<i32>(-70278i, -92969i, 47491i)), Struct_5(Struct_4(Struct_3(false, vec2<bool>(false, false), vec3<i32>(-1i, -27783i, -1i), vec3<f32>(-1877f, 111f, 256f)), 11194u, vec2<u32>(17716u, 0u)), vec3<i32>(-12442i, -19094i, -19272i)), Struct_5(Struct_4(Struct_3(true, vec2<bool>(true, false), vec3<i32>(i32(-2147483648), 1i, 0i), vec3<f32>(-244f, -504f, -390f)), 44137u, vec2<u32>(45677u, 1u)), vec3<i32>(19621i, -5826i, 2147483647i)), Struct_5(Struct_4(Struct_3(true, vec2<bool>(false, false), vec3<i32>(52639i, -9249i, 66358i), vec3<f32>(-1179f, 495f, -1716f)), 35744u, vec2<u32>(4294967295u, 4294967295u)), vec3<i32>(2711i, -1i, i32(-2147483648))), Struct_5(Struct_4(Struct_3(true, vec2<bool>(false, false), vec3<i32>(1i, 2147483647i, -17077i), vec3<f32>(716f, 1654f, 794f)), 42267u, vec2<u32>(0u, 41659u)), vec3<i32>(10226i, 17017i, 24005i)), Struct_5(Struct_4(Struct_3(false, vec2<bool>(true, false), vec3<i32>(43911i, -12793i, 36170i), vec3<f32>(704f, -1359f, 2020f)), 1u, vec2<u32>(1u, 32416u)), vec3<i32>(18006i, 17453i, -1i)), Struct_5(Struct_4(Struct_3(true, vec2<bool>(false, false), vec3<i32>(-21804i, -15552i, i32(-2147483648)), vec3<f32>(-1191f, 525f, 588f)), 14519u, vec2<u32>(37552u, 38867u)), vec3<i32>(14244i, 0i, 0i)), Struct_5(Struct_4(Struct_3(false, vec2<bool>(true, true), vec3<i32>(-4030i, 30699i, -56341i), vec3<f32>(934f, -1000f, -1199f)), 70878u, vec2<u32>(23156u, 0u)), vec3<i32>(3852i, -1i, -15028i)), Struct_5(Struct_4(Struct_3(false, vec2<bool>(false, false), vec3<i32>(-35688i, 0i, i32(-2147483648)), vec3<f32>(575f, 571f, -141f)), 21306u, vec2<u32>(22592u, 103535u)), vec3<i32>(i32(-2147483648), 5993i, 2147483647i)), Struct_5(Struct_4(Struct_3(true, vec2<bool>(true, true), vec3<i32>(7329i, -10823i, 20411i), vec3<f32>(-169f, 935f, 401f)), 21673u, vec2<u32>(4294967295u, 0u)), vec3<i32>(21734i, 8107i, 1i)), Struct_5(Struct_4(Struct_3(true, vec2<bool>(false, false), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<f32>(-310f, 958f, -586f)), 41334u, vec2<u32>(31125u, 4294967295u)), vec3<i32>(1i, -27556i, i32(-2147483648))), Struct_5(Struct_4(Struct_3(false, vec2<bool>(true, true), vec3<i32>(i32(-2147483648), -7895i, 0i), vec3<f32>(-920f, 1474f, 660f)), 4294967295u, vec2<u32>(4294967295u, 4592u)), vec3<i32>(-29735i, i32(-2147483648), 1i)), Struct_5(Struct_4(Struct_3(false, vec2<bool>(true, true), vec3<i32>(26317i, 1i, -3182i), vec3<f32>(-1429f, 216f, -1414f)), 4294967295u, vec2<u32>(3623u, 4294967295u)), vec3<i32>(1i, 0i, -17233i)), Struct_5(Struct_4(Struct_3(false, vec2<bool>(true, true), vec3<i32>(1515i, 18543i, 46813i), vec3<f32>(1834f, -962f, -900f)), 0u, vec2<u32>(44658u, 34348u)), vec3<i32>(1i, 1i, i32(-2147483648))), Struct_5(Struct_4(Struct_3(false, vec2<bool>(true, false), vec3<i32>(5133i, 2147483647i, 35328i), vec3<f32>(-1000f, 689f, 246f)), 53859u, vec2<u32>(4294967295u, 51951u)), vec3<i32>(1i, -1i, 10295i)), Struct_5(Struct_4(Struct_3(true, vec2<bool>(false, true), vec3<i32>(-1i, -11159i, 56153i), vec3<f32>(1547f, -627f, 889f)), 1u, vec2<u32>(41295u, 1063u)), vec3<i32>(-73220i, 1i, i32(-2147483648))), Struct_5(Struct_4(Struct_3(true, vec2<bool>(false, false), vec3<i32>(8774i, 1i, 951i), vec3<f32>(-904f, 257f, -686f)), 55699u, vec2<u32>(4294967295u, 4294967295u)), vec3<i32>(-65482i, i32(-2147483648), 10885i)), Struct_5(Struct_4(Struct_3(true, vec2<bool>(false, false), vec3<i32>(2147483647i, -13271i, 0i), vec3<f32>(-1221f, -228f, 322f)), 26591u, vec2<u32>(0u, 1u)), vec3<i32>(1i, 2147483647i, 8625i)), Struct_5(Struct_4(Struct_3(false, vec2<bool>(false, true), vec3<i32>(2147483647i, 2147483647i, 51832i), vec3<f32>(759f, -1000f, 394f)), 17726u, vec2<u32>(39232u, 4294967295u)), vec3<i32>(-9614i, -18488i, 23276i)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(356f)), _wgslsmith_f_op_f32(f32(-1f) * -868f), -1754f)))));
    global1 = array<Struct_5, 22>();
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), var_0.x)), 805f), var_0.x, -613f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = Struct_1(~(countOneBits(~vec4<u32>(57870u, 1u, u_input.b, u_input.b)) | ~vec4<u32>(u_input.b, 1u, 0u, u_input.b)), 1u, abs(vec4<i32>(u_input.d.x, arg_0, 11126i, u_input.d.x)));
    var var_3 = 33415i;
    return ~46874u;
}

fn func_2() -> Struct_5 {
    global1 = array<Struct_5, 22>();
    global1 = array<Struct_5, 22>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(658f)), _wgslsmith_f_op_f32(587f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = Struct_1(max(vec4<u32>(~u_input.b, 119131u, ~u_input.a.x, u_input.c), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 0u), vec4<u32>(1u, 1u, 1u, u_input.b)), vec4<u32>(u_input.a.x, 1u, 0u, 34693u))) ^ ~vec4<u32>(_wgslsmith_add_u32(0u, 14059u), 16643u, ~u_input.b, func_3(u_input.d.x)), ~_wgslsmith_add_u32(35538u, abs(0u)), ~abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-8723i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, 47729i, -23735i, u_input.d.x))));
    var var_2 = Struct_3(true, vec2<bool>(false, true), -countOneBits(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, 12281i, u_input.d.x), var_1.c.xyx))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-167f, var_0, var_0), vec3<f32>(var_0, var_0, var_0)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(132f, 1452f, var_0))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-555f, -521f, 510f), vec3<f32>(var_0, -553f, 272f), vec3<bool>(false, true, true))))))));
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(min(func_3(_wgslsmith_clamp_i32(u_input.d.x, -7955i, u_input.d.x)) | 1u, abs(~1u)), firstTrailingBit(0u)), 22u)];
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(arg_1.c, arg_1.c), select(arg_1.c, ~arg_1.c, select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, false, true), any(vec2<bool>(true, true))), vec4<bool>(u_input.d.x >= 2147483647i, true, true, true), true)));
    var var_1 = Struct_5(Struct_4(Struct_3(false, vec2<bool>(true, true), vec3<i32>(max(49915i, -1i), 0i, 0i), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(arg_0.yxz))))), ~290u, _wgslsmith_sub_vec2_u32(vec2<u32>(57302u, ~u_input.b), select(firstTrailingBit(u_input.a), _wgslsmith_sub_vec2_u32(arg_1.a.yx, vec2<u32>(u_input.a.x, 0u)), true))), var_0.yyx);
    var_1 = func_2();
    var var_2 = false;
    var var_3 = !select(!select(vec3<bool>(true, var_1.a.a.b.x, true), vec3<bool>(true, true, var_1.a.a.b.x), !vec3<bool>(var_1.a.a.b.x, var_1.a.a.a, true)), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, var_1.a.a.b.x, false), vec3<bool>(false, var_1.a.a.b.x, var_1.a.a.a))), select(vec3<bool>(true, all(vec3<bool>(var_1.a.a.b.x, var_1.a.a.a, var_1.a.a.b.x)), !var_1.a.a.a), vec3<bool>(any(vec3<bool>(true, var_1.a.a.b.x, false)), true, true), (var_1.a.a.a && var_1.a.a.b.x) | (var_1.a.a.a | true)));
    return var_1.a.a;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -352f), arg_1.a.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1276f)))));
    global1 = array<Struct_5, 22>();
    global0 = reverseBits(u_input.d.x);
    global1 = array<Struct_5, 22>();
    let var_1 = u_input.a.x;
    return ~(~_wgslsmith_add_i32(2147483647i, u_input.d.x));
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = !vec2<bool>(arg_3.a, false);
    var var_1 = reverseBits(select(arg_2.c.a, ~vec4<u32>(61563u, u_input.a.x, arg_2.c.b, 30974u), !select(select(vec4<bool>(arg_3.b.x, true, true, var_0.x), vec4<bool>(true, true, arg_3.b.x, false), false), vec4<bool>(arg_3.b.x, var_0.x, var_0.x, arg_3.b.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, true))));
    let var_2 = arg_3.d.x;
    let var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(-(-u_input.d.x >> (var_1.x % 32u)), -1i, _wgslsmith_add_i32((10484i >> (u_input.b % 32u)) >> (max(31518u, arg_2.c.b) % 32u), arg_3.c.x)), arg_2.c.c.yzw);
    let var_4 = -1000f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.a))))), arg_2.b.x, !(~87394u != var_1.x)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(490f, arg_3.d.x, 1000f, 981f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, arg_3.d.x, -1328f, -1618f)), true)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, arg_3.d.x, -172f, arg_3.d.x) - vec4<f32>(-1843f, arg_2.a, -1409f, var_2)) * vec4<f32>(var_2, 605f, arg_2.a, arg_3.d.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_2, 1269f, -733f, arg_2.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1679f, arg_2.a, var_2, -248f) + vec4<f32>(arg_2.b.x, -1000f, 512f, 137f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(53996i, vec2<i32>(~(~u_input.d.x), func_4(Struct_4(func_1(vec4<f32>(-1260f, -1208f, 129f, 539f), Struct_1(vec4<u32>(159752u, 1u, 117289u, u_input.c), 20059u, vec4<i32>(u_input.d.x, u_input.d.x, -1i, 0i)), vec2<i32>(17558i, -1i)), 1u, firstLeadingBit(vec2<u32>(1u, 4294967295u))), func_2(), firstTrailingBit(u_input.d.x))), Struct_2(_wgslsmith_f_op_f32(454f + _wgslsmith_f_op_f32(select(2049f, -127f, true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-629f * 299f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-583f, -1887f)))), Struct_1(~abs(vec4<u32>(36985u, u_input.c, 4294967295u, u_input.b)), ~51096u, vec4<i32>(1i, 2147483647i, 2826i, u_input.d.x) & _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, u_input.d.x, 55891i), vec4<i32>(u_input.d.x, u_input.d.x, -53160i, u_input.d.x), vec4<i32>(-13427i, 2147483647i, 65905i, u_input.d.x)))), Struct_3(func_2().a.a.b.x, vec2<bool>(true, true), vec3<i32>(0i, i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, 2147483647i, u_input.d.x)), reverseBits(vec3<i32>(u_input.d.x, -44200i, 46065i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(117f, 903f, -1000f))))));
    global0 = u_input.d.x;
    global0 = firstLeadingBit(firstLeadingBit(u_input.d.x));
    global1 = array<Struct_5, 22>();
    var var_1 = ~(-55337i);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec4_i32(abs(vec4<i32>(22555i, u_input.d.x, 1i, u_input.d.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, 1i), vec4<i32>(-54402i, u_input.d.x, -1i, -2147483647i))) ^ _wgslsmith_clamp_i32(max(min(u_input.d.x, u_input.d.x), 1i ^ u_input.d.x), reverseBits(5719i), reverseBits(reverseBits(47171i))), -5442i, abs(vec3<i32>(-4746i, u_input.d.x, -9334i)));
}

