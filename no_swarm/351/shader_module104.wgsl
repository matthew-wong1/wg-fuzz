struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> f32 {
    var var_0 = arg_0.a.x;
    let var_1 = Struct_1(arg_0.b, _wgslsmith_div_u32(~arg_0.a.x, ~(~_wgslsmith_mod_u32(10081u, arg_0.a.x))), _wgslsmith_f_op_f32(-825f * _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, -224f)) + arg_1), _wgslsmith_f_op_f32(exp2(arg_1)))), 783f);
    let var_2 = ~vec3<u32>(~0u, var_1.b, 38625u);
    var_0 = ~61378u;
    var_0 = var_1.b ^ 19794u;
    return _wgslsmith_f_op_f32(-var_1.d.x);
}

fn func_3(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = vec2<u32>(abs(0u), firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(38286u, 731u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(33949u, 4294967295u, 0u), vec3<u32>(10329u, 0u, 22164u)))));
    let var_1 = var_0.x << (4294967295u % 32u);
    let var_2 = 2826u;
    var var_3 = Struct_1(vec4<bool>(!(!all(vec2<bool>(false, true))), !((22129u | var_0.x) < _wgslsmith_sub_u32(var_0.x, 16672u)), any(vec2<bool>(select(true, true, false), true)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(928f))) != 142f), ~_wgslsmith_mult_u32(var_1, _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.x, 44062u), 66863u, var_0.x)), arg_0.x, arg_0.xz, arg_0.x);
    var_3 = Struct_1(select(var_3.a, var_3.a, var_3.a.x), 80998u, arg_0.x, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.wx + var_3.d)))), var_3.d.x);
    return Struct_2(vec2<u32>(1u, 1u), !(!(!(!vec4<bool>(false, var_3.a.x, var_3.a.x, true)))));
}

fn func_1() -> vec3<u32> {
    var var_0 = func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -907f), _wgslsmith_f_op_f32(sign(-526f)), _wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(1u, 1u)), vec4<bool>(false, true, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -952f)))), -152f));
    var var_1 = Struct_1(var_0.b, 36076u, -1000f, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(341f, 1118f))), vec2<f32>(600f, 287f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1541f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(870f, -1073f)))))));
    let var_2 = Struct_1(!(!(!select(var_0.b, vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true), var_1.a))), var_0.a.x & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(var_1.b, var_1.b, var_1.b), vec3<u32>(var_1.b, 47298u, var_0.a.x)), vec3<u32>(var_0.a.x, var_1.b, 4294967295u) ^ vec3<u32>(0u, var_1.b, 14887u)), var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.e)) + -3700f), vec2<f32>(var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(561f - _wgslsmith_f_op_f32(-240f - 464f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = var_0.b.yw;
    let var_4 = _wgslsmith_mult_i32(-u_input.a, select(_wgslsmith_sub_i32(10946i, -firstTrailingBit(u_input.a)), ~u_input.a, !(!all(var_1.a.wx))));
    return select(vec3<u32>(4294967295u, 0u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.b, var_0.a.x, var_0.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.x, 117189u, 1u), vec3<u32>(48830u, 22038u, var_1.b))), var_2.b)), vec3<u32>(reverseBits(var_1.b), ~var_1.b >> (var_1.b % 32u), reverseBits(0u)) ^ (~(~vec3<u32>(4294967295u, 48460u, var_1.b)) | ((vec3<u32>(var_0.a.x, 7212u, 45162u) & vec3<u32>(var_2.b, 1u, var_1.b)) | select(vec3<u32>(var_0.a.x, 25298u, 72082u), vec3<u32>(var_1.b, var_1.b, 56782u), var_2.a.wxy))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 865f;
    let var_1 = select(~(func_1() | vec3<u32>(4294967295u, ~27755u, ~56849u)), select(~(~vec3<u32>(39446u, 26537u, 37450u)), ~vec3<u32>(1u, 1u, 1u), ~abs(14706u) == _wgslsmith_clamp_u32(~4294967295u, 23737u, 32864u)), true);
    let var_2 = !(_wgslsmith_div_f32(-397f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(144f)) + -1107f)) > 149f);
    var var_3 = -1049f;
    var var_4 = 1i;
    let var_5 = func_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(Struct_2(var_1.xz, vec4<bool>(var_2, var_2, var_2, false)), 963f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f - 943f), _wgslsmith_f_op_f32(-151f - 612f))), _wgslsmith_f_op_f32(1784f - _wgslsmith_f_op_f32(floor(-499f))), 798f))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f), -722f), 1073f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-221f, 1f)), 814f)))), 354f);
    var var_6 = !var_5.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 33659i), vec2<i32>(1i, u_input.a))), _wgslsmith_mult_i32(-49288i, firstTrailingBit(u_input.a)), 0i), _wgslsmith_mult_vec3_i32(-vec3<i32>(2147483647i, -2147483647i, 11936i) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, 8886u, 4294967295u), var_1) % vec3<u32>(32u)), vec3<i32>(~15544i, u_input.a, reverseBits(2147483647i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(565f, -527f, 488f, 1010f), vec4<f32>(-218f, 247f, -1484f, -803f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -652f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1075f + 229f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_5, -448f))), 1058f)));
}

