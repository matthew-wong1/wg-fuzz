struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: Struct_5) -> i32 {
    var var_0 = Struct_3(~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(82873u, 1u), ~u_input.b.yx), ~abs(vec2<u32>(0u, 23072u))));
    let var_1 = Struct_4(_wgslsmith_mod_i32(32390i, reverseBits((i32(-1i) * -2147483647i) >> (var_0.a.x % 32u))), Struct_2(vec3<i32>(~(-48781i), reverseBits(u_input.d.x), _wgslsmith_sub_i32(-2147483647i, -1i) << ((0u >> (0u % 32u)) % 32u))), -894f, 21896i << (abs(arg_0 << (arg_0 % 32u)) % 32u));
    var_0 = Struct_3(vec2<u32>(arg_3.b.x, ~61705u));
    var var_2 = !select(!vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, !all(vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(arg_1, arg_1))));
    var var_3 = Struct_2(max(-var_1.b.a, var_1.b.a) | _wgslsmith_mult_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, var_1.b.a.x, var_1.a), var_1.b.a), vec3<i32>(~19043i, abs(2147483647i), -1i | var_1.a)));
    return -64657i;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: vec2<i32>) -> bool {
    let var_0 = firstLeadingBit(_wgslsmith_mult_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, u_input.b.x), vec4<u32>(24658u, u_input.b.x, u_input.b.x, u_input.b.x)), abs(vec4<u32>(u_input.b.x, u_input.c, 0u, 4294967295u))), ~(vec4<u32>(0u, 0u, 12556u, 4294967295u) & vec4<u32>(u_input.b.x, 4294967295u, u_input.c, u_input.c)))) << (vec4<u32>(reverseBits(~u_input.b.x), _wgslsmith_mult_u32(~0u, _wgslsmith_mult_u32(abs(u_input.b.x), ~u_input.c)), u_input.c, abs(0u)) % vec4<u32>(32u));
    var var_1 = -(_wgslsmith_mod_vec4_i32(reverseBits(select(vec4<i32>(-2147483647i, 60882i, 0i, arg_3.x), vec4<i32>(2147483647i, 17996i, 17246i, arg_3.x), vec4<bool>(false, false, false, true))), ~(vec4<i32>(-1883i, -1i, 2147483647i, arg_3.x) >> (vec4<u32>(10261u, 37975u, 1u, 19996u) % vec4<u32>(32u)))) & ~(-vec4<i32>(-15522i, 14845i, arg_0.a.x, -26132i)));
    var_1 = -_wgslsmith_mult_vec4_i32(abs(vec4<i32>(23525i << (1u % 32u), _wgslsmith_sub_i32(-63055i, var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -13734i, 1i, 2147483647i), vec4<i32>(arg_3.x, arg_2, arg_3.x, arg_0.a.x)), -u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -2147483647i, 1i, arg_2) | vec4<i32>(u_input.a, -2147483647i, 20243i, -7127i), vec4<i32>(arg_0.a.x, arg_0.a.x, u_input.d.x, 25407i)) ^ vec4<i32>(~arg_1.a.x, -23564i, -u_input.d.x, arg_2));
    var var_2 = firstTrailingBit(vec2<i32>(abs(u_input.a), (arg_3.x ^ arg_1.a.x) << (4294967295u % 32u)) & arg_1.a.yz);
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -126f, -1441f), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -598f, -595f), vec3<f32>(-884f, -1000f, 314f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -445f, -1124f) * vec3<f32>(-141f, -1240f, 1380f)), _wgslsmith_div_vec3_f32(vec3<f32>(-482f, -482f, 1000f), vec3<f32>(1148f, 1000f, 493f)))))))));
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: bool) -> Struct_3 {
    let var_0 = u_input.c | select(62562u, 79060u, true & func_4(Struct_2(vec3<i32>(u_input.a, -11797i, 1i)), Struct_2(vec3<i32>(40700i, 2147483647i, -4614i)), func_3(1u, false, arg_1.a.x, Struct_5(arg_1.a, vec3<u32>(60488u, 4294967295u, 16443u))), max(vec2<i32>(u_input.d.x, 58190i), vec2<i32>(u_input.a, -1i))));
    let var_1 = Struct_4(21764i, Struct_2(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 4324i, -42801i), vec3<i32>(u_input.a, -21054i, u_input.a)) | (vec3<i32>(u_input.d.x, -40552i, 42157i) << (u_input.b % vec3<u32>(32u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1098f - -352f))), u_input.d.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c, -583f, var_1.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2779f, var_1.c, var_1.c))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, var_1.c, -1174f) - vec3<f32>(-666f, var_1.c, -648f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 532f, var_1.c), vec3<f32>(var_1.c, var_1.c, -516f))), arg_0))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1267f * _wgslsmith_f_op_f32(-1691f + 405f)), -1322f, 819f))));
    var var_3 = vec4<i32>(var_1.b.a.x, _wgslsmith_add_i32(19744i, -u_input.d.x), var_1.d, firstTrailingBit(_wgslsmith_dot_vec2_i32(firstLeadingBit(var_1.b.a.xz), ~vec2<i32>(-26521i, 25377i) | vec2<i32>(u_input.a, var_1.a))));
    let var_4 = true | (reverseBits(38973i) < u_input.a);
    return Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.a.x, var_0), arg_1.a));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(672f, _wgslsmith_f_op_f32(f32(-1f) * -671f))))));
    var var_1 = vec3<i32>(-u_input.d.x, 1i, -u_input.d.x);
    var var_2 = reverseBits(firstTrailingBit(abs(~vec2<u32>(arg_1.a.x, u_input.b.x))));
    var var_3 = _wgslsmith_f_op_f32(step(1377f, _wgslsmith_f_op_f32(trunc(var_0.x))));
    var_2 = ~u_input.b.xy;
    return Struct_5(firstLeadingBit(vec2<u32>(arg_1.b.x, u_input.b.x >> (u_input.b.x % 32u))), vec3<u32>(~var_2.x, arg_0.a.x, firstLeadingBit(~64308u | max(11248u, var_2.x))));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec2<f32>) -> f32 {
    var var_0 = vec3<bool>(true, !func_4(Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), arg_1.a)), arg_1, ~(~arg_1.a.x), min(_wgslsmith_div_vec2_i32(arg_1.a.yy, vec2<i32>(u_input.a, -2147483647i)), u_input.d)), !all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))));
    var var_1 = -(-select(vec3<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<i32>(arg_1.a.x, u_input.d.x, 40782i), vec3<bool>(var_0.x, true, true)) << (vec3<u32>(1u, u_input.c, u_input.b.x) % vec3<u32>(32u))) >> (~firstTrailingBit(~(vec3<u32>(0u, u_input.b.x, arg_0.a.x) ^ vec3<u32>(4294967295u, 15293u, 2125u))) % vec3<u32>(32u));
    var var_2 = true;
    var_0 = select(select(select(select(vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, var_0.x, false), !vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(arg_2.x <= arg_2.x, var_0.x, true), false & func_4(arg_1, arg_1, -34232i, arg_1.a.yy)), vec3<bool>(!any(vec2<bool>(var_0.x, var_0.x)), any(select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, false), var_0.x)), any(vec3<bool>(var_0.x, var_0.x, false))), false), select(select(select(select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, var_0.x, true), true), !vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), false)), vec3<bool>(true, var_0.x & false, any(vec3<bool>(var_0.x, true, true))), vec3<bool>(var_0.x, true, all(vec3<bool>(var_0.x, var_0.x, var_0.x)))), vec3<bool>(true, var_0.x, !var_0.x), !vec3<bool>(!var_0.x, u_input.a < var_1.x, var_0.x)), false);
    var_1 = _wgslsmith_div_vec3_i32(arg_1.a, arg_1.a);
    return arg_2.x;
}

fn func_7(arg_0: f32, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = u_input.d.x;
    let var_1 = _wgslsmith_f_op_f32(-arg_0);
    var var_2 = Struct_3(~(~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.zz, u_input.b.yy), u_input.b.xx << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)))));
    var_2 = Struct_3(abs(vec2<u32>(4294967295u, var_2.a.x)));
    var var_3 = Struct_2(firstLeadingBit(reverseBits(max(select(vec3<i32>(var_0, var_0, -1i), vec3<i32>(u_input.d.x, u_input.a, u_input.a), arg_1.x), vec3<i32>(u_input.d.x, 76864i, -1i)))));
    return Struct_2(var_3.a);
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = Struct_4(2147483647i, func_7(_wgslsmith_f_op_f32(func_6(func_5(func_2(true, Struct_3(u_input.b.yy), true), Struct_5(vec2<u32>(0u, u_input.c), u_input.b)), Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a, -6739i), vec3<i32>(2100i, 0i, u_input.d.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1514f) * vec2<f32>(arg_0, arg_0)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 469f) + vec2<f32>(arg_0, -539f))))), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), true, abs(u_input.b.x) <= ~13134u, false)), _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_dot_vec3_i32(select(firstLeadingBit(vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x)), _wgslsmith_mod_vec3_i32(~vec3<i32>(-31404i, 10927i, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 4606i, u_input.a), vec3<i32>(29131i, -4984i, -26472i))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))), vec3<i32>(-45293i, 15394i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), reverseBits(vec3<i32>(0i, 35063i, u_input.a))))));
    let var_1 = var_0.b.a;
    let var_2 = true;
    let var_3 = func_2(var_2, Struct_3(~vec2<u32>(1u, 1615u)), true);
    var var_4 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, arg_0))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, -168f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-735f, 1571f)), _wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 186f)), vec2<f32>(-226f, -982f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, -319f))) - vec2<f32>(-1000f, 385f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1244f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, 786f), vec2<f32>(var_0.c, var_0.c)))))), !select(select(vec2<bool>(true, false), vec2<bool>(var_2, false), var_2), !vec2<bool>(var_2, false), vec2<bool>(var_2, true))))));
    return _wgslsmith_dot_vec3_u32(~(~firstTrailingBit(u_input.b)), _wgslsmith_add_vec3_u32(vec3<u32>(68290u, arg_1, _wgslsmith_mod_u32(23088u, 64025u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, u_input.c, u_input.b.x, u_input.b.x), vec4<u32>(arg_1, u_input.c, u_input.c, 4294967295u))), vec3<u32>(select(min(arg_1, 1u), 17824u, false), 71813u & u_input.c, 20198u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(reverseBits(vec4<u32>(select(~u_input.c, u_input.b.x, true), func_1(1073f, _wgslsmith_mult_u32(14106u, u_input.b.x)), u_input.c, _wgslsmith_dot_vec2_u32(u_input.b.yz, ~u_input.b.zy))), ~(~(~(~vec4<u32>(80254u, 0u, u_input.b.x, 1u)))), !(22108u == u_input.c) & select(func_4(func_7(1478f, vec4<bool>(false, false, false, false)), Struct_2(vec3<i32>(-10466i, u_input.d.x, -2147483647i)), 1795i, u_input.d), true, true));
    var_0 = (vec4<u32>(~(~1u), ~_wgslsmith_div_u32(50324u, var_0.x), ~u_input.c, var_0.x) | vec4<u32>(_wgslsmith_mult_u32(~var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(35745u, u_input.b.x, 5492u), vec3<u32>(var_0.x, u_input.c, var_0.x))), _wgslsmith_mod_u32(5573u, u_input.b.x) & 52396u, abs(0u), max(95287u, u_input.b.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(4294967295u, 4294967295u)))) << (~(~select(vec4<u32>(u_input.b.x, 0u, 4294967295u, 40533u), vec4<u32>(4294967295u, u_input.b.x, 51383u, 36982u) ^ vec4<u32>(u_input.b.x, 14197u, 6421u, 105762u), false)) % vec4<u32>(32u));
    let var_1 = 1472f;
    var var_2 = Struct_4(-u_input.d.x, func_7(_wgslsmith_f_op_f32(-1962f * _wgslsmith_f_op_f32(func_6(Struct_5(vec2<u32>(u_input.c, u_input.c), vec3<u32>(18764u, 0u, 49728u)), func_7(var_1, vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1, 1229f), vec2<f32>(-367f, var_1)))))), vec4<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(ceil(var_1)) != _wgslsmith_f_op_f32(662f + 564f), !(var_1 == -376f))), var_1, -u_input.d.x);
    var_0 = vec4<u32>(var_0.x, 41430u, ~(~_wgslsmith_clamp_u32(51835u, u_input.b.x, u_input.c)) << ((~_wgslsmith_clamp_u32(4294967295u, 45944u, var_0.x) << (~_wgslsmith_mod_u32(var_0.x, var_0.x) % 32u)) % 32u), func_2(!func_4(Struct_2(var_2.b.a), func_7(110f, vec4<bool>(false, false, true, false)), ~u_input.d.x, _wgslsmith_mod_vec2_i32(var_2.b.a.zx, vec2<i32>(1i, var_2.b.a.x))), Struct_3(~select(var_0.xy, vec2<u32>(u_input.b.x, var_0.x), vec2<bool>(false, true))), true).a.x);
    var_2 = Struct_4(~(~(u_input.a ^ u_input.a)), var_2.b, var_1, -abs(1i) >> (~((var_0.x | 46119u) | _wgslsmith_div_u32(25501u, u_input.c)) % 32u));
    var_2 = Struct_4(firstTrailingBit(u_input.d.x), var_2.b, -213f, u_input.d.x);
    var_2 = Struct_4(~(-2147483647i), func_7(_wgslsmith_f_op_f32(-1509f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.c)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false)), _wgslsmith_f_op_f32(f32(-1f) * -1684f), -_wgslsmith_mod_i32(-u_input.d.x, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-537f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f), var_2.c) - _wgslsmith_f_op_f32(f32(-1f) * -1586f))));
}

