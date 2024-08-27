struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: u32) -> vec3<u32> {
    let var_0 = true;
    let var_1 = !(!(!select(vec4<bool>(false, var_0, true, false), vec4<bool>(var_0, var_0, var_0, false), !vec4<bool>(false, var_0, var_0, var_0))));
    var var_2 = Struct_3(vec2<u32>(_wgslsmith_sub_u32(109661u, 30869u), arg_2 << (select(1u, 59792u, var_1.x != true) % 32u)));
    let var_3 = Struct_3(min(vec2<u32>(1u, ~max(4294967295u, 25411u)), _wgslsmith_sub_vec2_u32(var_2.a, u_input.d)));
    var_2 = var_3;
    return vec3<u32>(1u, _wgslsmith_div_u32(arg_2, abs(1u) << (1u % 32u)), ~var_3.a.x);
}

fn func_2() -> i32 {
    let var_0 = Struct_2(Struct_1(func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), _wgslsmith_mod_vec3_i32(u_input.b.xxw, vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i)), ~vec3<i32>(4384i, u_input.b.x, 1i)), -u_input.b.x, _wgslsmith_mult_u32(u_input.a.x, reverseBits(u_input.a.x))), abs(u_input.b.zy), countOneBits(1i), _wgslsmith_add_vec2_i32(~u_input.b.yy, vec2<i32>(u_input.b.x, 31226i) >> (vec2<u32>(u_input.c, 72729u) % vec2<u32>(32u))) | u_input.b.zw), Struct_1(u_input.a.wxw, -vec2<i32>(_wgslsmith_add_i32(u_input.b.x, 2147483647i), u_input.b.x), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b.x, u_input.b.x >> (1u % 32u)), 0i), abs(u_input.b.zy)), min(-41389i, _wgslsmith_clamp_i32(min(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, u_input.b.x), u_input.b.xyz), -u_input.b.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(-52699i, u_input.b.x, u_input.b.x), u_input.b.zwz), 1i)));
    return 41762i;
}

fn func_4(arg_0: i32) -> vec2<bool> {
    var var_0 = ~(~(~13224u));
    var var_1 = Struct_3(func_3(vec3<i32>(max(-17064i, u_input.b.x) >> (u_input.d.x % 32u), arg_0, select(arg_0, ~arg_0, any(vec4<bool>(true, true, true, true)))), -reverseBits(-2147483647i), u_input.a.x).yy);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1341f)), -227f))))) != -754f;
    var var_3 = true & !(-1i >= (select(-587i, 0i, true) ^ -u_input.b.x));
    var var_4 = vec2<i32>(min(countOneBits(abs(~u_input.b.x)), 0i), _wgslsmith_clamp_i32(firstLeadingBit(u_input.b.x), _wgslsmith_add_i32(-51287i, ~u_input.b.x), 11002i));
    return vec2<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), true);
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(~u_input.a.zyw, vec2<i32>(~_wgslsmith_mod_i32(u_input.b.x, u_input.b.x) ^ -71911i, ~max(countOneBits(arg_0.b.b.x), 2147483647i)), _wgslsmith_clamp_i32(~(firstTrailingBit(arg_0.a.d.x) ^ u_input.b.x), 2147483647i, firstLeadingBit(2147483647i)), vec2<i32>(-1i) * -vec2<i32>(i32(-1i) * -13036i, -2147483647i));
    var var_1 = false;
    var_1 = all(select(!vec2<bool>(var_0.a.x == arg_0.b.a.x, true), select(vec2<bool>(select(true, false, false), true), func_4(func_2()), !select(true, true, true)), false));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(125f, -331f)))) <= _wgslsmith_f_op_f32(1177f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1203f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, 560f)), _wgslsmith_f_op_f32(-2230f + -1244f)), -1566f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2040f))))))));
    return Struct_3(min(~firstLeadingBit(vec2<u32>(78503u, var_0.a.x)), _wgslsmith_sub_vec2_u32(u_input.a.xx, vec2<u32>(~arg_0.b.a.x, _wgslsmith_div_u32(arg_0.b.a.x, 65086u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(Struct_1(u_input.a.wxz, vec2<i32>(u_input.b.x, -2147483647i), min(u_input.b.x, _wgslsmith_clamp_i32(44262i, 1i, 1i)), countOneBits(u_input.b.zy << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)))), Struct_1(vec3<u32>(4294967295u, 1u, ~4294967295u), ~u_input.b.wx, u_input.b.x >> (firstLeadingBit(1u) % 32u), reverseBits(~u_input.b.wz)), ~u_input.b.x));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1297f, _wgslsmith_f_op_f32(select(-184f, 223f, true)))))) + -1155f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2500f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-227f + -1044f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f))))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(ceil(-459f)))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = ~vec4<u32>(~_wgslsmith_div_u32(var_0.a.x, 44604u), ~reverseBits(23390u), ~var_0.a.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), 4294967295u)) & vec4<u32>(reverseBits(60581u), u_input.e, firstLeadingBit(~select(u_input.c, u_input.a.x, false)), _wgslsmith_sub_u32(var_0.a.x, _wgslsmith_div_u32(reverseBits(var_0.a.x), var_0.a.x)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-var_1.yz);
    let x = u_input.a;
    s_output = StorageBuffer(12161u, select(u_input.b.zyz, vec3<i32>(40548i, ~(-5350i), ~u_input.b.x) | u_input.b.wyy, vec3<bool>(true, true, true)), vec2<i32>(u_input.b.x ^ (abs(u_input.b.x) & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b.x, 13650i, 44833i), vec4<i32>(-2147483647i, u_input.b.x, 17423i, u_input.b.x))), -u_input.b.x << (7163u % 32u)));
}

