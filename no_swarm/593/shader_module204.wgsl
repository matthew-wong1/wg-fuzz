struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<bool, 15>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = !global0.x;
    global1 = array<bool, 15>();
    var var_1 = _wgslsmith_mod_i32(-_wgslsmith_mod_i32(-26902i, ~(-3193i | u_input.b)), (i32(-1i) * -69780i) ^ -(_wgslsmith_dot_vec2_i32(vec2<i32>(-12655i, u_input.b), vec2<i32>(u_input.c, 2147483647i)) & 1i));
    let var_2 = (firstTrailingBit(1i) << (abs(abs(10033u | u_input.d)) % 32u)) << (~(~u_input.d) % 32u);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1391f + arg_0.a))) + -1000f))), global0.x, arg_0.c, arg_0.d);
    return vec2<bool>(false, select(any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), !select(true, true, false | arg_0.b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<i32>) -> vec3<u32> {
    global1 = array<bool, 15>();
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(abs(i32(-1i) * -u_input.a), _wgslsmith_add_i32(max(u_input.a << (52647u % 32u), u_input.c), firstLeadingBit(abs(arg_3.x)))), arg_3.ww);
    var var_1 = 520f;
    let var_2 = vec4<bool>(global0.x, global1[_wgslsmith_index_u32(abs(min(u_input.d, ~u_input.d)), 15u)], !(!arg_1), 14738i < ~u_input.b);
    let var_3 = Struct_1(1000f, true, var_2.wz, !select(!var_2, var_2, !(!var_2)));
    return select(reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(18034u, u_input.d, u_input.d), vec3<u32>(u_input.d, 636u, 0u))), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.d, 4294967295u), reverseBits(vec3<u32>(u_input.d, u_input.d, u_input.d))), reverseBits(vec3<u32>(u_input.d, 0u, 4294967295u) << (vec3<u32>(0u, u_input.d, u_input.d) % vec3<u32>(32u)))), global0.x) | firstLeadingBit(select(~abs(vec3<u32>(0u, 1u, 36359u)), vec3<u32>(u_input.d, ~u_input.d, u_input.d), vec3<bool>(true, !arg_2.x, u_input.d <= 0u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<f32>) -> Struct_1 {
    global1 = array<bool, 15>();
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(abs(~(-vec4<i32>(u_input.c, -70549i, 2147483647i, 1i))), vec4<i32>(~(-1i), u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a), 2147483647i)), firstTrailingBit(~vec4<i32>(u_input.c, -2147483647i, _wgslsmith_div_i32(u_input.c, -40957i), countOneBits(u_input.a))));
    var var_1 = arg_0;
    global0 = !arg_0.c;
    var var_2 = u_input.c;
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = func_4(Struct_1(arg_0.a, false, select(vec2<bool>(!global0.x, true), !select(arg_0.d.wx, vec2<bool>(false, false), vec2<bool>(true, false)), all(vec3<bool>(arg_0.c.x, global0.x, arg_0.b))), !arg_0.d), func_3(arg_0.d.ww, false, select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 15u)]), arg_0.d.xw, vec2<bool>(global0.x, true)), func_2(arg_0), u_input.a < -2147483647i), vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c, u_input.c), vec3<i32>(-35316i, u_input.b, -1i)), ~(-21099i), 0i)) << (_wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, u_input.d), vec3<u32>(u_input.d, u_input.d, 1u), vec3<u32>(1u, 1u, u_input.d)), ~vec3<u32>(4294967295u, 50850u, u_input.d), vec3<u32>(firstLeadingBit(52134u), abs(16836u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 9662u, 1u, u_input.d), vec4<u32>(u_input.d, 1u, 0u, 34369u)))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1128f, arg_0.a), vec2<f32>(-951f, arg_0.a))) + vec2<f32>(arg_0.a, arg_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a)))))));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 4294967295u), func_3(vec2<bool>(var_1.d.x, var_0.b), global0.x, var_0.c, vec4<i32>(2882i, -25152i, u_input.a, u_input.b)).yz), ~abs(u_input.d)), firstLeadingBit(~vec2<u32>(4294967295u, u_input.d) | abs(vec2<u32>(u_input.d, 1u)))), ~(~(~vec2<u32>(0u, 4294967295u))));
    var var_3 = vec2<bool>(firstTrailingBit(_wgslsmith_mult_i32(u_input.c, -u_input.a)) < _wgslsmith_add_i32(~(~(-59827i)), u_input.c), true);
    let var_4 = _wgslsmith_sub_u32(~var_2.x, 1u);
    return vec3<bool>(u_input.d < ~_wgslsmith_sub_u32(countOneBits(1u), var_4), true, all(vec3<bool>(global0.x, 1000f <= _wgslsmith_f_op_f32(sign(2023f)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(all(!(!func_1(Struct_1(896f, true, vec2<bool>(global0.x, global0.x), vec4<bool>(global1[_wgslsmith_index_u32(1u, 15u)], true, global0.x, true))))), true);
    global1 = array<bool, 15>();
    let var_0 = func_4(func_4(Struct_1(_wgslsmith_f_op_f32(-func_4(Struct_1(619f, false, vec2<bool>(global0.x, global0.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 15u)], global0.x, global1[_wgslsmith_index_u32(29500u, 15u)], global1[_wgslsmith_index_u32(u_input.d, 15u)])), vec3<u32>(u_input.d, 1u, u_input.d), vec2<f32>(158f, -188f)).a), _wgslsmith_f_op_f32(floor(1431f)) < _wgslsmith_f_op_f32(-1501f - -930f), !(!vec2<bool>(global1[_wgslsmith_index_u32(30579u, 15u)], false)), !vec4<bool>(false, global0.x, global1[_wgslsmith_index_u32(u_input.d, 15u)], false)), abs(~vec3<u32>(u_input.d, 90279u, 1u)) << (_wgslsmith_mod_vec3_u32(func_3(vec2<bool>(global0.x, false), global1[_wgslsmith_index_u32(11920u, 15u)], vec2<bool>(false, true), vec4<i32>(u_input.b, u_input.a, 2147483647i, u_input.a)), vec3<u32>(1u, u_input.d, u_input.d)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 958f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-832f, 244f))))), vec3<u32>(max(u_input.d, ~4294967295u), min(_wgslsmith_div_u32(func_3(vec2<bool>(global1[_wgslsmith_index_u32(104079u, 15u)], true), true, vec2<bool>(false, true), vec4<i32>(-62232i, u_input.a, -23866i, 2147483647i)).x, u_input.d), 21032u), ~0u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(2029f + -474f), -1882f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1860f, -147f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-812f, -698f)))))));
    global0 = vec2<bool>(29927i > ~(-u_input.b), global0.x);
    var var_1 = !select(!var_0.d, select(vec4<bool>(true, var_0.c.x, var_0.a >= var_0.a, global0.x), vec4<bool>(false, true, false, all(vec2<bool>(var_0.c.x, true))), var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - 1187f)) > 1268f);
    var var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(var_0.a * 1090f), _wgslsmith_f_op_f32(-var_0.a), 145f)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a))), 284f);
    global0 = !var_1.wy;
    let var_4 = any(vec2<bool>(true, select(global0.x, all(var_1.yxz) || (global1[_wgslsmith_index_u32(u_input.d, 15u)] | true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(abs(vec2<i32>(-6906i, u_input.a) >> (vec2<u32>(36511u, 35184u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(max(315f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.a)))))));
}

