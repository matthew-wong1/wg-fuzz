struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> vec2<i32> {
    var var_0 = Struct_5(arg_0, vec4<bool>(arg_2, true, false, arg_2));
    var var_1 = select(vec4<i32>(select(countOneBits(-1i), min(~(-30223i), _wgslsmith_clamp_i32(-22312i, -31105i, 1i)), true), -11779i, _wgslsmith_sub_i32(-2147483647i, 1i), -2147483647i), max(vec4<i32>(-28150i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 11717i), vec2<i32>(-1i, 0i)), -1i, -2147483647i), reverseBits(min(vec4<i32>(-1i, 43476i, 19574i, 1082i), vec4<i32>(-2530i, -19522i, 0i, -12637i)))), all(!var_0.b.yw) | true);
    var_0 = Struct_5(Struct_3(arg_1, ~14080u, vec4<f32>(var_0.a.c.x, var_0.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(max(840f, 443f)))))), !select(vec4<bool>(arg_2 & true, !var_0.b.x, true, var_0.b.x), select(!var_0.b, !var_0.b, !var_0.b.x), !all(var_0.b)));
    var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, var_1.x, _wgslsmith_sub_i32(abs(var_1.x), 0i & var_1.x), var_1.x), vec4<i32>(_wgslsmith_add_i32(var_1.x >> (arg_0.b % 32u), reverseBits(-3680i)), var_1.x, 0i, -select(1i, var_1.x, arg_2))), -(~_wgslsmith_add_vec4_i32(-vec4<i32>(var_1.x, var_1.x, -1751i, -6604i), ~vec4<i32>(-2147483647i, var_1.x, var_1.x, var_1.x))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.c.x))));
    return _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -2147483647i, var_1.x, -1469i) << (vec4<u32>(4294967295u, u_input.a, 0u, arg_0.a) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 0i, 1i), vec4<i32>(0i, var_1.x, 1i, var_1.x)))), 1i), min(_wgslsmith_div_vec2_i32(vec2<i32>(0i, firstLeadingBit(var_1.x)), var_1.wz), var_1.xx));
}

fn func_2(arg_0: vec4<f32>) -> vec2<u32> {
    var var_0 = Struct_1(~(~vec2<i32>(-55598i, 31695i >> (u_input.a % 32u))));
    let var_1 = Struct_4(~1u);
    var_0 = Struct_1(_wgslsmith_div_vec2_i32(func_3(Struct_3(4294967295u, 4294967295u, vec4<f32>(arg_0.x, arg_0.x, 994f, arg_0.x)), abs(var_1.a), true), _wgslsmith_mod_vec2_i32(vec2<i32>(42070i, 41778i), select(vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(-2147483647i, 30803i), true))) >> (~_wgslsmith_mult_vec2_u32(~vec2<u32>(74167u, 0u), vec2<u32>(u_input.a, 1u) & vec2<u32>(0u, 70174u)) % vec2<u32>(32u)));
    var var_2 = firstLeadingBit(~select(vec4<u32>(0u ^ var_1.a, ~4294967295u, 1u, 1u), vec4<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_div_u32(u_input.a, var_1.a), var_1.a, var_1.a), vec4<bool>(select(false, true, false), 45491u >= u_input.a, all(vec4<bool>(false, true, true, true)), all(vec2<bool>(false, true)))));
    var_0 = Struct_1(-select(~(-var_0.a), ~vec2<i32>(-2147483647i, var_0.a.x), true));
    return reverseBits(var_2.wx);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<f32>) -> vec4<u32> {
    let var_0 = !(!select(!vec4<bool>(arg_1, arg_1, false, arg_1), select(!vec4<bool>(arg_1, arg_1, arg_1, true), select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, false, arg_1, arg_1), true), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1), true)), !any(vec2<bool>(arg_1, arg_1))));
    var var_1 = func_2(arg_2);
    let var_2 = select(var_0.ww, !vec2<bool>(arg_1, true), all(select(vec2<bool>(any(var_0), !var_0.x), !select(var_0.xx, vec2<bool>(true, false), vec2<bool>(var_0.x, true)), select(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), true, true))));
    var_1 = ~vec2<u32>(0u, select(var_1.x, reverseBits(~4294967295u), true));
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_0);
    return max(vec4<u32>(countOneBits(var_1.x), 0u, ~_wgslsmith_mult_u32(u_input.a, abs(39816u)), firstTrailingBit(4294967295u)), vec4<u32>(1u, ~reverseBits(u_input.a), _wgslsmith_mod_u32(min(u_input.b >> (var_1.x % 32u), 0u), var_1.x), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(~4294967295u, ~u_input.b, ~u_input.a, u_input.b ^ 0u)), ~vec4<u32>(~u_input.b, _wgslsmith_div_u32(u_input.b, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.b, 4294967295u), vec4<u32>(u_input.b, u_input.a, u_input.b, 46032u)), u_input.a ^ u_input.a)), firstLeadingBit(_wgslsmith_mult_vec4_u32(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 124f) + vec2<f32>(118f, 669f)), any(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2211f, -125f, 1000f, -546f))), ~max(vec4<u32>(u_input.b, u_input.b, 4294967295u, 33043u), vec4<u32>(9053u, 52815u, 4294967295u, 63608u)))));
    var var_1 = Struct_1(vec2<i32>(~(-2147483647i), 15650i));
    var_1 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, ~abs(var_1.a.x)), vec2<i32>(1i, -_wgslsmith_mod_i32(var_1.a.x, 39179i))));
    var_1 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, _wgslsmith_mult_i32(0i, var_1.a.x)), ~(~vec2<i32>(2147483647i, 2147483647i))), -40528i));
    let var_2 = min(-_wgslsmith_sub_i32(0i, -(~var_1.a.x)), -2147483647i);
    var_1 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-443f + -360f)))))), reverseBits(var_0.x), -1459i);
}

