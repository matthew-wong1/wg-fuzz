struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    return _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, abs(2147483647i)), u_input.a), i32(-1i) * -1i);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(4294967295u, 1u)) | (~u_input.d | firstTrailingBit(1u)), ~55856u >> (abs(1u) % 32u), max(12126u, 51370u), _wgslsmith_sub_u32(~reverseBits(u_input.d), u_input.d)), -5182i);
    var_0 = Struct_1(var_0.a, -reverseBits(i32(-1i) * -var_0.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-637f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-788f, 358f)), 1f, select(false, false, true)))))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1328f), _wgslsmith_div_f32(-1137f, 1f)));
    let var_2 = ~vec4<i32>(func_3(false, -883f < _wgslsmith_f_op_f32(516f * var_1.x)), ~_wgslsmith_mult_i32(~31564i, 8i), u_input.c.x, countOneBits(~(-u_input.a.x)));
    var_0 = Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~(var_0.a >> (var_0.a % vec4<u32>(32u))), vec4<u32>(1u, 0u, var_0.a.x, 14758u) | min(var_0.a, vec4<u32>(1u, var_0.a.x, var_0.a.x, 1u)), var_0.a | reverseBits(var_0.a)), _wgslsmith_mult_vec4_u32(~(~var_0.a), _wgslsmith_mod_vec4_u32(~vec4<u32>(52932u, var_0.a.x, u_input.d, 2172u), ~vec4<u32>(var_0.a.x, 1u, var_0.a.x, u_input.d)))), func_3(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))) & true, !any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)))));
    return Struct_1(vec4<u32>(810u, abs(var_0.a.x & firstLeadingBit(u_input.d)), ~abs(u_input.d), 4822u), -(i32(-1i) * -45324i));
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a.x, abs(4294967295u), ~u_input.d | ~arg_0.a.x) | arg_0.a.yzy, firstLeadingBit(vec3<u32>(14813u, arg_0.a.x, 67717u)), select(arg_0.a.yyx, arg_0.a.yzy, !vec3<bool>(true, false, select(false, true, true))));
    let var_1 = func_2();
    var_0 = select(vec3<u32>(~_wgslsmith_mod_u32(99731u, 1578u), ~arg_0.a.x, 16219u), (vec3<u32>(~16732u, u_input.d, 4294967295u) << (reverseBits(var_1.a.xxz) % vec3<u32>(32u))) & ~_wgslsmith_div_vec3_u32(arg_0.a.yyx, var_1.a.zyy), !all(vec2<bool>(true, true)));
    var var_2 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 321f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(298f + -289f))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(386f * _wgslsmith_f_op_f32(abs(792f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-265f, -1542f)))), all(vec4<bool>(arg_0.b != u_input.b.x, true, true, true)) | all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))));
    var var_3 = Struct_1(var_1.a, 1i);
    return vec4<i32>(var_3.b, arg_0.b, _wgslsmith_add_i32(var_3.b, var_3.b), 25809i) ^ min(abs(vec4<i32>(var_3.b << (u_input.d % 32u), 47685i, u_input.c.x, 0i & var_3.b)), firstTrailingBit(vec4<i32>(0i, var_3.b, u_input.a.x, u_input.b.x)) ^ firstLeadingBit(firstTrailingBit(vec4<i32>(-2147483647i, u_input.a.x, -21497i, u_input.a.x))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(~8316i, 1i, reverseBits(_wgslsmith_clamp_i32(144920i, u_input.c.x, 76005i)), u_input.a.x), vec4<i32>(27172i, -7004i, 1i, reverseBits(i32(-1i) * -928i))), ~(-6113i), 10581i);
    var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(select(var_0.x, firstLeadingBit(u_input.c.x), true), ~select(2330i, 2147483647i, arg_0), 32393i, -5268i) >> (min(vec4<u32>(_wgslsmith_add_u32(u_input.d, 0u), ~1u, u_input.d, 4294967295u & u_input.d), reverseBits(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d))) % vec4<u32>(32u)), func_4(func_2()));
    var_0 = -_wgslsmith_add_vec4_i32(vec4<i32>(func_2().b, ~u_input.b.x >> (~38476u % 32u), 2147483647i, select(firstTrailingBit(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 64760i, -43991i, 1i), vec4<i32>(14646i, var_0.x, u_input.b.x, -31201i)), all(vec4<bool>(arg_0, false, false, arg_0)))), _wgslsmith_div_vec4_i32(select(vec4<i32>(-2147483647i, -7365i, u_input.c.x, u_input.a.x), ~vec4<i32>(u_input.c.x, 59290i, 19219i, u_input.a.x), arg_0), vec4<i32>(~u_input.b.x, 127969i, 33111i & u_input.c.x, var_0.x)));
    let var_1 = Struct_1(~(~(_wgslsmith_mult_vec4_u32(vec4<u32>(74839u, 4294967295u, 4294967295u, 13820u), vec4<u32>(u_input.d, u_input.d, 0u, 43283u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<u32>(27419u, 47964u, 17792u, u_input.d), vec4<u32>(u_input.d, 85408u, u_input.d, u_input.d)) % vec4<u32>(32u)))), firstLeadingBit(_wgslsmith_mult_i32(reverseBits(~u_input.a.x), firstLeadingBit(firstTrailingBit(-67051i)))));
    var_0 = firstTrailingBit(func_4(func_2()) >> (vec4<u32>(countOneBits(var_1.a.x), ~(~var_1.a.x), 49003u | ~u_input.d, _wgslsmith_div_u32(~u_input.d, 4294967295u & var_1.a.x)) % vec4<u32>(32u)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1420f;
    var var_1 = func_1(!(!(all(vec3<bool>(false, true, false)) != all(vec2<bool>(false, true)))));
    var_1 = Struct_1(~var_1.a, max(_wgslsmith_add_i32(~(~var_1.b), func_2().b), _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(-76142i, var_1.b)), -1i)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-156f, -1342f) * -813f);
    var_1 = func_1(true);
    var var_2 = func_1(!(~1i <= (max(u_input.b.x, u_input.c.x) ^ ~(-30144i))));
    var var_3 = Struct_1(~var_1.a, max(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, 31428i), vec3<i32>(reverseBits(var_2.b), u_input.b.x, -884i)), u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstTrailingBit(-_wgslsmith_mult_i32(var_2.b, -50283i)), func_1(true != all(vec2<bool>(false, true))).b, 1i, min(u_input.c.x, func_2().b)), abs(51700u), min(vec3<i32>(~_wgslsmith_sub_i32(var_1.b, u_input.a.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-35398i, -22539i), u_input.b), _wgslsmith_clamp_i32(u_input.b.x, i32(-1i) * -1i, firstLeadingBit(var_3.b))), (u_input.a ^ ~vec3<i32>(var_1.b, u_input.c.x, var_1.b)) << (var_3.a.wwz % vec3<u32>(32u))), firstTrailingBit(abs(_wgslsmith_div_vec2_u32(firstTrailingBit(var_2.a.yw), _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_2.a.x), var_1.a.yx)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + vec2<f32>(-200f, 1359f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-306f, -1628f)), !select(vec2<bool>(false, false), vec2<bool>(false, true), true)))));
}

