struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: bool, arg_3: vec4<bool>) -> vec4<u32> {
    let var_0 = arg_2;
    var var_1 = Struct_4(Struct_1(firstLeadingBit(arg_1.b.b.x), arg_1.a.a >> (_wgslsmith_sub_u32(~1u, 0u) % 32u)), arg_1.b);
    var_1 = Struct_4(Struct_1(~(-63626i >> (~arg_1.b.c.x % 32u)), u_input.e >> (0u % 32u)), Struct_2(var_1.b.a, ~vec3<i32>(-59483i, _wgslsmith_mult_i32(arg_1.b.b.x, arg_0.x), -39719i), ~vec4<u32>(var_1.b.c.x, ~var_1.b.c.x, ~var_1.b.c.x, arg_1.b.c.x)));
    var_1 = arg_1;
    var var_2 = ~abs(vec3<u32>(arg_1.b.c.x, var_1.b.c.x, ~0u)) & ~_wgslsmith_mod_vec3_u32(var_1.b.c.zyz, vec3<u32>(~arg_1.b.c.x, arg_1.b.c.x, _wgslsmith_div_u32(0u, arg_1.b.c.x)));
    return vec4<u32>(var_1.b.c.x, var_1.b.c.x, var_2.x, _wgslsmith_clamp_u32(~4294967295u, 39889u, 23613u) | _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(var_1.b.c, arg_1.b.c), abs(vec4<u32>(var_1.b.c.x, 4294967295u, 4294967295u, var_1.b.c.x))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b.c.x, 9857u, u_input.b.x, 4294967295u), vec4<u32>(4294967295u, var_2.x, arg_1.b.c.x, 4294967295u))));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-642f, -296f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-249f, 686f) + vec2<f32>(-448f, 1847f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1149f, -198f) - vec2<f32>(-448f, 1659f)))), vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(826f, 404f), vec2<f32>(1000f, -1167f), false)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-410f, 264f) * vec2<f32>(-285f, -1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-522f, -203f))))))));
    var_0 = vec2<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(-501f, 711f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1657f)))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(153f - 1000f)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1520f, var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2690f, var_0.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(965f, 159f)))), true)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -979f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1252f, _wgslsmith_f_op_f32(-1854f * var_0.x), select(false, true, false))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-735f))))), vec3<i32>(arg_1.d.x, arg_1.a.b, arg_1.d.x), countOneBits(_wgslsmith_sub_vec4_u32(func_2(u_input.a.xxw, Struct_4(Struct_1(19106i, -10051i), Struct_2(arg_1.c.x, vec3<i32>(0i, 2147483647i, 2147483647i), vec4<u32>(arg_1.e, u_input.b.x, arg_1.e, arg_1.e))), false, vec4<bool>(true, true, true, true)) | vec4<u32>(62876u, 4294967295u, 23611u, u_input.c), ~vec4<u32>(arg_1.e, u_input.c, arg_1.e, u_input.c) << (~vec4<u32>(arg_1.e, 4294967295u, 4094u, u_input.b.x) % vec4<u32>(32u)))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(sign(var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(0u, u_input.c, u_input.c, var_0.c.x))) * 1670f)))), -var_0.b, vec4<u32>(~u_input.b.x, arg_1.e, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.e, u_input.c, ~68016u, ~46502u), ~(~var_0.c)), ~(~8785u >> (max(0u, arg_1.e) % 32u))));
    let var_1 = !arg_1.b.x;
    var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), -1684f), arg_1.d.wwz, _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.e, u_input.b.x, reverseBits(arg_1.e), ~(~44349u)), vec4<u32>(var_0.c.x, arg_1.e >> (arg_1.e % 32u), u_input.c, 24537u) >> (vec4<u32>(u_input.c, arg_1.e, _wgslsmith_dot_vec3_u32(vec3<u32>(33169u, arg_1.e, var_0.c.x), vec3<u32>(1u, arg_1.e, u_input.b.x)), 26356u) % vec4<u32>(32u))));
    var_0 = Struct_2(_wgslsmith_div_f32(-840f, arg_0.x), firstTrailingBit(vec3<i32>(19699i, max(arg_1.d.x, 65671i), abs(arg_1.d.x)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, arg_1.e, arg_1.e), ~vec3<u32>(arg_1.e, u_input.b.x, var_0.c.x)) % vec3<u32>(32u))), select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, 0u) & u_input.b.xx, ~var_0.c.wx), 1u, ~(0u << (var_0.c.x % 32u)), _wgslsmith_div_u32(4294967295u, u_input.b.x)), reverseBits(vec4<u32>(~u_input.b.x, arg_1.e & arg_1.e, 4294967295u, ~68560u)), vec4<bool>(false, any(!vec4<bool>(true, true, true, var_1)), var_1, false)));
    return Struct_1(i32(-1i) * -2147483647i, ~min(-arg_1.a.b, -var_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -887f) - -1783f), _wgslsmith_f_op_f32(f32(-1f) * -980f), 458f)), Struct_3(Struct_1(u_input.a.x, _wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_mult_i32(u_input.e, u_input.d))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-131f, 1004f, false)), 433f, 1335f, _wgslsmith_f_op_f32(min(-1313f, 561f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-170f, 1308f, 1000f, 1000f) - _wgslsmith_div_vec4_f32(vec4<f32>(-838f, 857f, -1215f, 812f), vec4<f32>(-499f, 682f, 314f, -451f)))), -vec4<i32>(~u_input.a.x, ~0i, -30255i, ~(-10642i)), 1u));
    let var_1 = vec2<bool>(!(!(!any(vec2<bool>(true, true)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)) || true);
    let var_2 = Struct_3(var_0, var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(655f, _wgslsmith_f_op_f32(754f - 2558f), _wgslsmith_f_op_f32(ceil(-243f)), 422f)) * vec4<f32>(_wgslsmith_f_op_f32(881f + 1629f), _wgslsmith_f_op_f32(-1808f - _wgslsmith_f_op_f32(-241f - 260f)), 1f, -1974f)), _wgslsmith_add_vec4_i32(u_input.a, ~u_input.a), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(125132u, u_input.c, 73761u, u_input.c)), _wgslsmith_sub_vec4_u32((vec4<u32>(u_input.b.x, 71856u, 44187u, u_input.c) << (vec4<u32>(u_input.c, u_input.b.x, 4294967295u, u_input.c) % vec4<u32>(32u))) | select(vec4<u32>(74044u, 4294967295u, u_input.c, 1u), vec4<u32>(31992u, u_input.b.x, u_input.c, 4294967295u), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), firstLeadingBit(countOneBits(vec4<u32>(0u, 32124u, u_input.c, 6627u))))));
    var var_3 = Struct_4(Struct_1(-59872i, select(_wgslsmith_mod_i32(var_2.d.x, var_0.a >> (var_2.e % 32u)), _wgslsmith_sub_i32(max(var_0.a, u_input.e), 16409i), true)), Struct_2(-651f, var_2.d.zxy, vec4<u32>(0u, ~_wgslsmith_sub_u32(25098u, var_2.e), var_2.e, _wgslsmith_clamp_u32(4294967295u, 4294967295u | var_2.e, _wgslsmith_mult_u32(u_input.c, var_2.e)))));
    var var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<u32>(var_3.b.c.x, ~12550u, _wgslsmith_mult_u32(~4294967295u, u_input.b.x) >> (27297u % 32u)), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.yyx, vec3<i32>(var_4.b.x, 65163i, -2147483647i)), -2147483647i), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(8214i, var_0.b), var_4.b.yz), var_2.d.xz))));
}

