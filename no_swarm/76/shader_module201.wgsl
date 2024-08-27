struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mult_u32(~min(_wgslsmith_add_u32(u_input.a, ~u_input.a), ~0u), u_input.a);
    var var_1 = vec4<bool>(all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), true)), !(!all(vec4<bool>(true, true, true, true))), false, false);
    let var_2 = Struct_1(~vec2<u32>(var_0, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, var_0), 14459u)), u_input.a, ~(-_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, 19091i), vec2<i32>(u_input.b.x, 39057i))), 1i, -countOneBits(vec3<i32>(~(-106676i), u_input.b.x << (var_0 % 32u), u_input.b.x)));
    let var_3 = max(-(~firstLeadingBit(~vec4<i32>(var_2.c.x, var_2.c.x, -19059i, -2147483647i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b.x, -32006i, -14922i, u_input.b.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, var_2.e.x, var_2.d), vec4<i32>(24967i, u_input.b.x, 38386i, var_2.e.x)), ~vec4<i32>(var_2.c.x, var_2.d, var_2.c.x, 0i))), ~vec4<i32>(_wgslsmith_add_i32(var_2.e.x, u_input.b.x), -var_2.c.x, min(u_input.b.x, var_2.e.x), 0i), vec4<i32>(u_input.b.x, ~(var_2.d & var_2.c.x), u_input.b.x, _wgslsmith_clamp_i32(1i, -58401i, u_input.b.x | -2147483647i))));
    var var_4 = Struct_3(var_2, vec3<u32>(~firstLeadingBit(5291u >> (var_0 % 32u)), ~_wgslsmith_mod_u32(var_0, 55275u) >> (var_2.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.a), ~4636u), select(var_2.a, firstLeadingBit(vec2<u32>(1u, 0u)), false))), var_2.a, select(-_wgslsmith_div_vec4_i32(var_3, vec4<i32>(2833i, 2147483647i, 1i, u_input.b.x)), -(var_3 | vec4<i32>(u_input.b.x, var_2.e.x, -1i, u_input.b.x)), vec4<bool>(select(var_1.x, var_1.x, var_1.x), true, select(var_1.x, true, var_1.x), true)) ^ (vec4<i32>(2147483647i, u_input.b.x, -var_2.c.x, firstTrailingBit(var_2.d)) | ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.b.x, -16695i, var_2.e.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -60052i))), Struct_1(var_2.a, abs(_wgslsmith_div_u32(var_2.a.x >> (1u % 32u), abs(63981u))), firstLeadingBit(vec2<i32>(var_3.x, 7544i) >> (var_2.a % vec2<u32>(32u))), -23626i, -_wgslsmith_sub_vec3_i32(select(vec3<i32>(var_2.e.x, var_2.d, 0i), vec3<i32>(var_3.x, u_input.b.x, -37156i), var_1.ywx), max(vec3<i32>(-36745i, 1i, u_input.b.x), var_3.wwz))));
    return ~0u;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<u32>) -> f32 {
    var var_0 = arg_0;
    var var_1 = abs(min(~func_3(), 4294967295u));
    var_1 = abs(func_3());
    let var_2 = vec2<i32>(arg_1.x << ((u_input.a >> (arg_2.x % 32u)) % 32u), -2147483647i);
    var_0 = Struct_2(vec2<u32>(var_0.a.x, 14468u), ~1u, vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.c.x)) + _wgslsmith_f_op_f32(min(267f, arg_0.c.x))), var_0.c.x)), -852f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.x)) + 1703f), -1052f), arg_0.c.x));
}

fn func_1() -> Struct_1 {
    let var_0 = !(26563i <= (-_wgslsmith_div_i32(u_input.b.x, -14683i) | select(1i, 0i, false)));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -423f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(vec2<u32>(u_input.a, 82048u), u_input.a, vec4<f32>(-205f, 347f, 1000f, 378f)), vec3<i32>(u_input.b.x, -63205i, u_input.b.x), vec2<u32>(3448u, u_input.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-215f, -854f), _wgslsmith_f_op_f32(select(-474f, 460f, true))))), _wgslsmith_f_op_f32(-497f * 1f), _wgslsmith_f_op_f32(f32(-1f) * -720f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(113f, _wgslsmith_div_f32(-817f, _wgslsmith_f_op_f32(step(755f, -406f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1594f - -1000f)), 1f) + vec4<f32>(1f, 1f, 1f, 1f))));
    var var_2 = !var_0;
    var_2 = var_0;
    let var_3 = Struct_4(Struct_3(Struct_1(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(20797u, u_input.a), vec2<u32>(u_input.a, 4294967295u))), u_input.a, u_input.b, firstLeadingBit(2147483647i), vec3<i32>(u_input.b.x, u_input.b.x, firstLeadingBit(u_input.b.x))), ~vec3<u32>(0u, u_input.a ^ 3969u, firstTrailingBit(u_input.a)), vec2<u32>(1u, reverseBits(u_input.a)) | countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 66125u), vec2<u32>(u_input.a, u_input.a))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(-1i, -2147483647i), u_input.b.x, 1i), vec4<i32>(~48220i, i32(-1i) * -2147483647i, 30631i ^ u_input.b.x, u_input.b.x)), Struct_1(vec2<u32>(u_input.a, 1u) | ~vec2<u32>(u_input.a, u_input.a), ~u_input.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(46847u, 137865u, 4294967295u), vec3<u32>(2931u, u_input.a, u_input.a)) % 32u), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, -1i), u_input.b)), countOneBits(~u_input.b.x), vec3<i32>(-1i, u_input.b.x | u_input.b.x, -u_input.b.x))), vec4<i32>(u_input.b.x, _wgslsmith_add_i32(0i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b.x, 2147483647i), -14982i, 12187i)), -select(0i, 1i, var_0), u_input.b.x));
    return var_3.a.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.b.x, firstTrailingBit(~(-24696i)), min(-u_input.b.x >> (u_input.a % 32u), var_0.e.x), var_0.c.x), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(var_0.a.x, 4294967295u, 40001u) | vec3<u32>(u_input.a, 25445u, 4294967295u)) | _wgslsmith_add_vec3_u32(vec3<u32>(36822u, 4294967295u, var_0.a.x), firstLeadingBit(vec3<u32>(var_0.b, u_input.a, 4294967295u))), _wgslsmith_clamp_vec3_u32(firstTrailingBit(select(vec3<u32>(var_0.b, 0u, 36984u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<bool>(false, false, true))), firstTrailingBit(vec3<u32>(0u, var_0.a.x, 4294967295u) ^ vec3<u32>(var_0.b, u_input.a, var_0.b)), vec3<u32>(~u_input.a, firstLeadingBit(u_input.a), abs(var_0.b)))));
}

