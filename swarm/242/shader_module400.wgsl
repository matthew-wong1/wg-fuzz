struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = -836f;
    var var_1 = 2147483647i;
    let var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(1u, 4294967295u, 0u))), abs(min(vec3<u32>(u_input.a, 72849u, u_input.a), vec3<u32>(0u, 18857u, 10462u)))), vec3<u32>(firstTrailingBit(35752u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(0u, u_input.a)), abs(605u)) | ~vec3<u32>(33926u, u_input.a, u_input.a)), vec3<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 46526u)), ~(~vec2<u32>(0u, u_input.a))), ~4294967295u, countOneBits(u_input.a)));
    let var_3 = Struct_1(-1000f);
    let var_4 = arg_0;
    return _wgslsmith_div_u32(~u_input.a, ~((19417u ^ u_input.a) & var_2.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(-1000f);
    var var_1 = Struct_1(var_0.a);
    var var_2 = ~select(arg_1.x, func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1401f))), false);
    var_2 = abs(86052u);
    let var_3 = ~u_input.b.zx;
    return Struct_1(-1876f);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = arg_1 | (_wgslsmith_clamp_u32(1u, ~_wgslsmith_mult_u32(13599u, 1u), firstLeadingBit(~u_input.a)) > ~abs(1u));
    var var_1 = func_1(vec2<u32>(~_wgslsmith_sub_u32(4294967295u, u_input.a), 66645u), vec4<u32>(min(_wgslsmith_mult_u32(u_input.a, u_input.a), ~0u) ^ 13032u, u_input.a, u_input.a, ~u_input.a));
    var_1 = func_1(abs(vec2<u32>(4294967295u, ~1u)), vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(7355u, u_input.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 15318u))), u_input.a, max(func_2(arg_0), ~(~8360u))));
    var_1 = func_1(max(~firstTrailingBit(vec2<u32>(17217u, u_input.a)), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), firstLeadingBit(vec2<u32>(u_input.a, 0u)))), vec4<u32>(u_input.a, u_input.a, _wgslsmith_mult_u32(reverseBits(u_input.a), abs(u_input.a)), max(u_input.a, u_input.a) << (func_2(Struct_1(arg_0.a)) % 32u)) & _wgslsmith_div_vec4_u32(min(_wgslsmith_mod_vec4_u32(vec4<u32>(34264u, 1526u, 0u, 8253u), vec4<u32>(4294967295u, 1u, u_input.a, 56693u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, 64857u, u_input.a), vec4<u32>(4294967295u, 29823u, u_input.a, u_input.a))), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.a, u_input.a, 1u, 22980u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 35597u), vec4<u32>(0u, 1u, u_input.a, u_input.a), vec4<u32>(8930u, u_input.a, u_input.a, 88524u)))));
    let var_2 = func_1(~(~abs(vec2<u32>(u_input.a, u_input.a))), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(1u, 0u, u_input.a, u_input.a), vec4<u32>(7916u, u_input.a, 34244u, 1u), var_0), vec4<u32>(48370u, u_input.a, u_input.a, 3988u)), countOneBits(vec4<u32>(0u, u_input.a, 21724u, 10342u)) << (firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 61199u)) % vec4<u32>(32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(42857u, 62887u), _wgslsmith_div_u32(u_input.a, u_input.a), u_input.a), ~vec4<u32>(u_input.a, 1u, 43703u, u_input.a)), ~21834u, max(4600u, ~(~u_input.a))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.a, -211f)) + -1337f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-723f, 195f, true)), -104f)))))));
    var_0 = true;
    var var_2 = func_3(func_1(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(0u, 0u)), countOneBits(abs(vec2<u32>(u_input.a, u_input.a)))), firstTrailingBit(vec4<u32>(0u, u_input.a, ~u_input.a, _wgslsmith_add_u32(0u, 31823u)))), true != ((u_input.b.x << (countOneBits(79764u) % 32u)) <= u_input.b.x), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true))), vec4<bool>(var_1.a != var_1.a, u_input.a == 62836u, true, 370f == var_1.a), vec4<bool>(true, true, true, true)), select(true, -17757i > _wgslsmith_clamp_i32(-4599i, 6700i, 1i), true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-836f, -394f), var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1448f))));
    var var_4 = vec2<i32>(reverseBits(19248i), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.yy, u_input.b, var_3.zx, firstLeadingBit(_wgslsmith_div_vec3_i32(~_wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(2147483647i, var_4.x, -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-29934i, var_4.x, -8424i), vec3<i32>(1i, var_4.x, 13641i), u_input.b ^ u_input.b))));
}

