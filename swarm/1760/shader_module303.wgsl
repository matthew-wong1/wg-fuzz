struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(0u, 63226u, 21221u, 0u, 580u, 74741u, 30794u, 1u, 1u, 32105u, 0u, 29111u, 1u, 4294967295u, 9929u, 0u, 54566u);

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-2093f, vec3<f32>(682f, 327f, -1065f), 0u), Struct_1(-1000f, vec3<f32>(-356f, -1130f, 1503f), 72342u), Struct_1(1351f, vec3<f32>(-1000f, -1144f, -638f), 22188u), Struct_1(-188f, vec3<f32>(-103f, 1140f, -226f), 62978u), Struct_1(-1000f, vec3<f32>(-756f, -352f, 404f), 39497u), Struct_1(-1000f, vec3<f32>(1841f, 651f, 144f), 4294967295u), Struct_1(-987f, vec3<f32>(-567f, 360f, -597f), 0u), Struct_1(780f, vec3<f32>(1048f, 479f, 1439f), 93842u), Struct_1(-755f, vec3<f32>(1000f, 384f, -1642f), 18116u), Struct_1(-1613f, vec3<f32>(799f, 1994f, 384f), 31353u), Struct_1(364f, vec3<f32>(-907f, -450f, 845f), 60647u), Struct_1(-410f, vec3<f32>(-234f, -300f, 1080f), 20042u), Struct_1(2675f, vec3<f32>(361f, -292f, -767f), 1u), Struct_1(-299f, vec3<f32>(1222f, 600f, -338f), 0u), Struct_1(1127f, vec3<f32>(874f, -751f, -323f), 0u), Struct_1(-380f, vec3<f32>(-243f, -783f, -290f), 18655u), Struct_1(-234f, vec3<f32>(-1000f, 343f, -372f), 4294967295u), Struct_1(230f, vec3<f32>(-1189f, 197f, 1235f), 19534u), Struct_1(-661f, vec3<f32>(-208f, -130f, 731f), 52371u), Struct_1(115f, vec3<f32>(-1000f, -929f, -1865f), 4016u), Struct_1(-429f, vec3<f32>(-1125f, 240f, 589f), 1u), Struct_1(-262f, vec3<f32>(-289f, -1000f, -991f), 4294967295u));

var<private> global2: f32 = -767f;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> vec3<f32> {
    let var_0 = firstTrailingBit(4294967295u);
    var var_1 = vec4<bool>(!(!all(vec4<bool>(true, false, true, false))) | true, true || !select(all(vec3<bool>(false, false, true)), true, true), !all(vec4<bool>(true, true, true, true)), true || any(vec4<bool>(false, true, 26453u < global0[_wgslsmith_index_u32(var_0, 17u)], true)));
    let var_2 = arg_1;
    var_1 = !(!select(vec4<bool>(all(var_1.yy), var_1.x, true, true), !vec4<bool>(var_1.x, true, var_1.x, var_1.x), !var_1.x));
    var var_3 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(265f)))), _wgslsmith_f_op_f32(exp2(arg_2.a.x))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.b, arg_2.b.x), ~(i32(-1i) * -20518i), u_input.b), _wgslsmith_sub_vec3_i32(firstLeadingBit(arg_2.b), arg_2.b), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_3, u_input.b), 1i), _wgslsmith_mult_i32(~u_input.b, select(1i, arg_2.b.x, var_1.x)), -1i)));
    return vec3<f32>(_wgslsmith_f_op_f32(min(var_3.a.x, var_3.a.x)), var_3.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(2022f, var_3.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1260f, _wgslsmith_f_op_f32(max(2041f, 1487f)))))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global2 = 1000f;
    var var_0 = true || (1i > _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 26334i, -32880i), _wgslsmith_sub_vec3_i32(vec3<i32>(34585i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b))), ~(~vec3<i32>(u_input.b, u_input.b, u_input.b))));
    var var_1 = ~vec2<u32>(select(~(global0[_wgslsmith_index_u32(u_input.a, 17u)] | 4294967295u), 46957u << (firstLeadingBit(4294967295u) % 32u), true), abs(~27668u));
    var_1 = ~vec2<u32>(firstTrailingBit(4294967295u), 15877u) & firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(global0[_wgslsmith_index_u32(9685u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]))));
    let var_2 = arg_0;
    return Struct_1(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(499f, 164f, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a)), Struct_2(vec4<u32>(1u, 4294967295u, u_input.a, 40747u)), Struct_3(vec2<f32>(var_2, var_2), vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_mod_i32(-1i, -53246i))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-294f, arg_0, var_2))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2165f, -234f, var_2))))), countOneBits(83729u) | reverseBits(_wgslsmith_mod_u32(reverseBits(21993u), _wgslsmith_dot_vec4_u32(vec4<u32>(3088u, 0u, 4294967295u, 16378u), vec4<u32>(17383u, u_input.a, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)])))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-_wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(29951i, u_input.b)), u_input.b), abs(~(~vec2<i32>(u_input.b, -7056i))), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(-(vec2<i32>(2147483647i, u_input.b) | vec2<i32>(u_input.b, 34126i)), firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(40712i, 2147483647i), vec2<i32>(u_input.b, 15806i))), -select(vec2<i32>(21365i, u_input.b), vec2<i32>(u_input.b, u_input.b), false)), ~vec2<i32>(1i, u_input.b)));
    var var_1 = func_2(-1263f);
    var_1 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(1u, 1u)), 22u)];
    var_0 = select(~((_wgslsmith_clamp_vec2_i32(vec2<i32>(39806i, 2147483647i), vec2<i32>(u_input.b, 38314i), vec2<i32>(var_0.x, var_0.x)) & vec2<i32>(0i, -20061i)) | abs(vec2<i32>(0i, 0i))), vec2<i32>(u_input.b, 57367i), !select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1031f * var_1.b.x) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1360f)) * var_1.a)))));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(_wgslsmith_f_op_f32(-595f * _wgslsmith_f_op_f32(func_1())) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-569f - -955f) * _wgslsmith_f_op_f32(f32(-1f) * -1115f))), true);
    var var_1 = vec4<i32>(~u_input.b, 40296i, u_input.b, 2147483647i);
    let var_2 = Struct_2(select(vec4<u32>(~global0[_wgslsmith_index_u32(u_input.a, 17u)], u_input.a, global0[_wgslsmith_index_u32(abs(~global0[_wgslsmith_index_u32(1225u, 17u)]), 17u)], global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a) >> ((global0[_wgslsmith_index_u32(1542u, 17u)] & 1u) % 32u), 17u)]), select(reverseBits(~vec4<u32>(6035u, 29792u, 0u, 1u)), vec4<u32>(u_input.a, u_input.a, ~33631u, _wgslsmith_sub_u32(62790u, 11329u)), !select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, true))), select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(any(vec4<bool>(var_0.x, true, true, true)), var_0.x | var_0.x, true, !var_0.x), 0i > _wgslsmith_clamp_i32(u_input.b, -4039i, u_input.b))));
    var_1 = _wgslsmith_sub_vec4_i32(select(vec4<i32>(2147483647i, firstLeadingBit(-42519i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_1.ww, var_1.zw), _wgslsmith_div_vec2_i32(var_1.yy, vec2<i32>(-1i, 9166i))), _wgslsmith_div_i32(var_1.x, u_input.b)), vec4<i32>(25558i, ~(~(-34639i)), _wgslsmith_dot_vec2_i32(-var_1.xy, _wgslsmith_sub_vec2_i32(var_1.zw, vec2<i32>(u_input.b, -1i))), 26961i), var_0.x), -(~min(-vec4<i32>(1i, u_input.b, 1i, -4917i), vec4<i32>(var_1.x, 0i, u_input.b, -15448i) << (var_2.a % vec4<u32>(32u)))));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1384f + 487f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-605f, 1000f))))));
}

