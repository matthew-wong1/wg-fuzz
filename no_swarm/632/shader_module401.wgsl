struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    let var_0 = abs(~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 79742u, 17089u), vec4<u32>(0u, 1u, 1u, 1u))) & (select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(85419u, 4366u, 46912u, 7693u), vec4<bool>(true, true, true, true)) ^ vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1225f, 1379f, 156f), vec3<f32>(-1148f, 1000f, 531f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(347f, -852f, -812f) + vec3<f32>(1000f, -1000f, -157f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-162f, 242f, 226f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(420f, 1008f, -718f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1322f, 177f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1150f, 165f, 984f)))));
    let var_2 = vec4<u32>(~abs(var_0.x), 21514u, _wgslsmith_mult_u32(select(19776u, 60144u, !(var_0.x == var_0.x)), _wgslsmith_sub_u32(var_0.x, ~var_0.x)), 31010u);
    var var_3 = Struct_1(~(~reverseBits(var_2.ww)) | select(abs(~vec2<u32>(10575u, 20404u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(47864u, 30325u), var_0.xy), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 38640u < var_2.x), true), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, false | all(vec4<bool>(true, true, true, true)), false), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, false, true))));
    var var_4 = Struct_2(var_0);
    return select(!(var_3.b.x || all(!var_3.b.xw)), !all(var_3.b) && (all(vec3<bool>(var_3.b.x, var_3.b.x, var_3.b.x)) || var_3.b.x), var_3.b.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: bool) -> u32 {
    var var_0 = !vec4<bool>(!func_3(), !(firstTrailingBit(4294967295u) <= arg_1.x), true, ~arg_0.x == -_wgslsmith_dot_vec4_i32(arg_0, arg_0));
    var_0 = vec4<bool>(true, any(vec4<bool>(-arg_0.x == select(arg_0.x, 2147483647i, arg_2), false, arg_2, false)), var_0.x, (1u & (arg_1.x >> (1u % 32u))) < arg_1.x);
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 463f));
    var var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec2_i32(arg_0.yw, vec2<i32>(u_input.b, 49641i)), -3205i, min(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, 22126i, 2147483647i), arg_0.wyx), _wgslsmith_add_i32(arg_0.x, 2147483647i))), arg_0.yzz, ~_wgslsmith_mod_vec3_i32(firstLeadingBit(arg_0.ywz), arg_0.wyx & vec3<i32>(u_input.b, -52713i, u_input.b))) ^ firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, -u_input.b, i32(-1i) * -1i), arg_0.xwx));
    return arg_1.x;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(vec4<u32>(firstTrailingBit(func_2(~vec4<i32>(u_input.b, u_input.b, u_input.b, 9303i), abs(vec2<u32>(1u, 0u)), false)), 1u, firstLeadingBit(9708u), _wgslsmith_mod_u32(countOneBits(~31582u), ~(~21591u))));
    var var_1 = 53943u;
    var var_2 = Struct_2(abs(~var_0.a));
    var var_3 = Struct_1(vec2<u32>(var_0.a.x, var_2.a.x), select(vec4<bool>(any(vec3<bool>(false, true, true)), false, true, true), select(vec4<bool>(true, all(vec3<bool>(false, false, false)), true, true), vec4<bool>(true, func_3(), true, false), vec4<bool>(all(vec3<bool>(false, true, false)), true, false, 1u >= var_2.a.x)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -660f))), -460f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1283f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f - -1606f)))));
    return Struct_1(var_0.a.wz, var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!all(vec2<bool>(false, true)), true, true);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1023f), -1093f, 1203f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -417f)) * 260f));
    var var_2 = -(~firstLeadingBit(~(-vec4<i32>(u_input.b, u_input.b, u_input.a, 48839i))));
    let var_3 = func_1();
    var_2 = _wgslsmith_mult_vec4_i32(abs(_wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), vec4<i32>(-20692i, 15139i, u_input.b, 2852i)), reverseBits(vec4<i32>(-19228i, -42555i, u_input.b, var_2.x))) | _wgslsmith_add_vec4_i32(abs(vec4<i32>(-37819i, u_input.a, 59561i, u_input.b)), min(vec4<i32>(1i, u_input.b, -28447i, var_2.x), vec4<i32>(var_2.x, u_input.b, 6697i, 1i)))), vec4<i32>(abs(_wgslsmith_div_i32(-var_2.x, _wgslsmith_clamp_i32(0i, 1i, u_input.b))), min(u_input.a, min(abs(var_2.x), var_2.x)), reverseBits(-54027i), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_i32(select(_wgslsmith_sub_i32(u_input.a, 5325i), -18821i >> (1u % 32u), false), u_input.a), _wgslsmith_sub_i32(_wgslsmith_div_i32(-u_input.a, -32300i), var_2.x)), _wgslsmith_sub_vec4_i32(-(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 46599i, 11582i, u_input.a), vec4<i32>(0i, 4747i, -38066i, 52627i), vec4<i32>(16631i, u_input.a, u_input.a, var_2.x))), max(vec4<i32>(var_2.x, u_input.b, -13212i, ~(-2147483647i)), vec4<i32>(1i, i32(-1i) * -36789i, 19267i, ~u_input.a))));
}

