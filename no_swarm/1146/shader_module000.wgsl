struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    let var_0 = select(vec2<bool>(false, false), select(vec2<bool>(true, true), !vec2<bool>(select(false, false, true), true), true), !(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false))));
    let var_1 = Struct_1(_wgslsmith_div_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 7317i, -31545i), ~vec3<i32>(4697i, -53023i, -393i)), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(44235i, 38900i, 4516i)))));
    var var_2 = vec3<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(37212u, u_input.a.x << (1445u % 32u), reverseBits(_wgslsmith_div_u32(u_input.a.x, 54048u)))), 1u, u_input.a.x);
    var var_3 = _wgslsmith_add_u32(39748u, ~var_2.x) <= _wgslsmith_mult_u32(~max(12591u, reverseBits(var_2.x)), 51828u >> (0u % 32u));
    var_2 = reverseBits(abs(_wgslsmith_mult_vec3_u32(u_input.a, _wgslsmith_clamp_vec3_u32(min(vec3<u32>(44969u, var_2.x, u_input.a.x), u_input.a), u_input.a, vec3<u32>(var_2.x, var_2.x, var_2.x)))));
    return _wgslsmith_add_i32(-(~(~var_1.a.x) | -var_1.a.x), max(-2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_1.a.x, var_1.a.x), var_1.a) & var_1.a, var_1.a)));
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_sub_vec3_u32(u_input.a, u_input.a);
    var var_1 = Struct_1(vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-26290i, -2147483647i, 0i, -2147483647i) >> (vec4<u32>(u_input.a.x, 4294967295u, 1u, var_0.x) % vec4<u32>(32u)), vec4<i32>(-1i, 9565i, -8080i, 1i)), 2147483647i, ~func_3()));
    var_1 = Struct_1(var_1.a);
    var_1 = Struct_1(~var_1.a);
    var var_2 = var_1.a.x;
    return !vec2<bool>(true, false & (-var_1.a.x <= _wgslsmith_sub_i32(-2147483647i, var_1.a.x)));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = !select(func_2(), !func_2(), func_2());
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2096f + -389f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1557f, -232f))))))), -913f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -994f)));
    let var_2 = vec3<bool>(all(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true)), var_0.x, true);
    let var_3 = ~firstTrailingBit(-vec4<i32>(~arg_2.a.x, firstLeadingBit(arg_2.a.x), -31169i, reverseBits(-64528i)));
    var var_4 = var_1.x;
    return 50814u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var_0 = 2147483647i;
    var var_1 = vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(select(u_input.a.x, u_input.a.x, true), ~4013u), max(max(_wgslsmith_mod_u32(func_1(u_input.a.x, u_input.a, Struct_1(vec3<i32>(1i, 1i, -2147483647i))), abs(u_input.a.x)), ~_wgslsmith_mod_u32(u_input.a.x, 1u)), ~u_input.a.x), 68024u);
    var_0 = -min(_wgslsmith_mult_i32(firstLeadingBit(-17587i) >> (1u % 32u), ~(~5000i)), 1i);
    var var_2 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(49393i, 17071i, 1i), vec3<i32>(2147483647i, 4338i, 1i)), max(-43520i, -55448i), 667i)), abs(vec3<i32>(1i, -2147483647i, ~(-22318i))), min(~select(vec3<i32>(-2147483647i, 1i, -1i), vec3<i32>(-1i, -2147483647i, -1i), false), ~firstTrailingBit(vec3<i32>(-2147483647i, 0i, 0i))));
    var var_3 = Struct_2(vec3<i32>(~var_2.x, -2147483647i, countOneBits(i32(-1i) * -var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -_wgslsmith_add_i32(abs(var_2.x), -17788i ^ var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(220f + -489f)) + -1813f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1461f, 1008f)))));
}

