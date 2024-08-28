struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1600f, _wgslsmith_f_op_f32(303f - 669f))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -637f)) + 933f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(451f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -393f, 525f, 213f)))));
    var var_1 = arg_3;
    var_1 = Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(firstTrailingBit(abs(vec4<i32>(arg_3.a.x, u_input.a.x, 34202i, -2147483647i))), ~(arg_3.a ^ vec4<i32>(-40662i, arg_3.a.x, 6545i, -4388i)), ~arg_1.a), vec4<i32>(~(i32(-1i) * -3246i), max(-80253i | arg_3.a.x, _wgslsmith_mod_i32(arg_2, arg_1.a.x)), abs(~arg_1.a.x), ~arg_1.a.x)));
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var var_3 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(57508u, 27617u), select(1u, _wgslsmith_mod_u32(14891u, 1u), var_1.a.x > -36524i)), 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(~0u, 4294967295u, ~_wgslsmith_mult_u32(1u, 1u)), vec3<u32>(~1794u, _wgslsmith_mod_u32(select(0u, 4294967295u, false), _wgslsmith_sub_u32(1u, 0u)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(789u, 24060u), vec2<u32>(9371u, 3510u))))));
    return var_3.x == min(_wgslsmith_mod_u32(_wgslsmith_div_u32(~0u, countOneBits(var_3.x)), 1u), 51158u);
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1363f + -744f), _wgslsmith_f_op_f32(-1927f + 869f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, -1192f))), func_3(Struct_1(u_input.a), Struct_1(vec4<i32>(u_input.a.x, -11585i, u_input.b, u_input.b)), ~u_input.a.x, Struct_1(vec4<i32>(46390i, u_input.a.x, u_input.a.x, 0i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(951f * _wgslsmith_f_op_f32(max(140f, -324f)))), -538f));
    let var_1 = Struct_1(_wgslsmith_add_vec4_i32(-vec4<i32>(abs(u_input.b), ~(-10271i), 43979i, 0i), firstLeadingBit(vec4<i32>(1i, select(u_input.a.x, -1i, arg_0.x), u_input.a.x, 1i))));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-180f, -791f))), _wgslsmith_f_op_f32(step(1490f, -587f)))))));
    let var_2 = var_1;
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), -421f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)))));
    return 5912u;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> vec2<u32> {
    let var_0 = vec4<u32>(func_2(!(!select(vec4<bool>(arg_2, true, true, true), vec4<bool>(false, arg_2, false, false), vec4<bool>(true, arg_2, false, arg_2)))), reverseBits(0u) | (~_wgslsmith_dot_vec4_u32(vec4<u32>(522u, 0u, 30251u, 17932u), vec4<u32>(1u, 4294967295u, 9562u, 1u)) << (1u % 32u)), ~0u, ~(~20243u));
    var var_1 = _wgslsmith_dot_vec2_i32(arg_0.yz, -vec2<i32>(-arg_1.a.x >> (firstLeadingBit(var_0.x) % 32u), _wgslsmith_div_i32(-93i, _wgslsmith_mult_i32(-21400i, 6355i))));
    var_1 = -(~_wgslsmith_clamp_i32(69775i, ~52987i, arg_1.a.x)) >> (~countOneBits(_wgslsmith_dot_vec2_u32(~var_0.yw, _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0.yz))) % 32u);
    var_1 = -(0i ^ ~arg_1.a.x);
    var_1 = _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_dot_vec2_i32(max(_wgslsmith_div_vec2_i32(~arg_0.yx, abs(vec2<i32>(22685i, arg_1.a.x))), arg_0.xx), vec2<i32>(_wgslsmith_dot_vec4_i32(arg_1.a, vec4<i32>(u_input.b, -5196i, 89787i, 10592i)), firstLeadingBit(0i))), ~_wgslsmith_mod_i32(0i, arg_0.x));
    return var_0.wz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 402f;
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(u_input.a.x, 2147483647i)), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, 28039i), -19206i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), vec2<i32>(u_input.a.x, 16683i)))) ^ _wgslsmith_sub_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -27193i), _wgslsmith_sub_vec2_i32(u_input.a.wy, u_input.a.yw)), _wgslsmith_mult_vec2_i32(u_input.a.yx, u_input.a.zw));
    let var_2 = Struct_1(countOneBits(min(vec4<i32>(_wgslsmith_sub_i32(u_input.b, var_1.x), var_1.x, -47387i ^ var_1.x, _wgslsmith_mult_i32(1i, u_input.a.x)), ~(vec4<i32>(1i, u_input.a.x, 0i, u_input.a.x) >> (vec4<u32>(369u, 0u, 63383u, 52948u) % vec4<u32>(32u))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1359f, -458f, var_0, -688f), vec4<f32>(var_0, -961f, var_0, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, 566f)))))));
    var var_4 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 12048u), vec2<u32>(_wgslsmith_sub_u32(~33467u, 66333u), _wgslsmith_mult_u32(~19082u, _wgslsmith_dot_vec2_u32(vec2<u32>(29826u, 4294967295u), vec2<u32>(14158u, 113502u))) & 8423u), max(vec2<u32>(1u, 1u), ~_wgslsmith_sub_vec2_u32(func_1(var_2.a, var_2, false), ~vec2<u32>(42444u, 4003u))));
    var_1 = var_2.a.zx;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(18947u, var_4.x), ~72638u)), countOneBits(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_4.x, 0u, 0u, 4294967295u), vec4<u32>(1u, 4294967295u, var_4.x, var_4.x) >> (vec4<u32>(var_4.x, var_4.x, var_4.x, 1u) % vec4<u32>(32u))))), vec4<f32>(var_3.x, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1530f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(880f)) + -288f)))));
}

