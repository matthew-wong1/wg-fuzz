struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

var<private> global0: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(0i, 2832i), vec2<i32>(-1i, 15630i), vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(12315i, -1i), vec2<i32>(0i, -609i), vec2<i32>(1i, -7032i), vec2<i32>(0i, 1i), vec2<i32>(i32(-2147483648), 5640i), vec2<i32>(17002i, 3080i), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), 12166i), vec2<i32>(0i, 18241i), vec2<i32>(23775i, -46109i), vec2<i32>(-36462i, -45820i), vec2<i32>(-4144i, 1i), vec2<i32>(10924i, -10851i), vec2<i32>(24596i, -4970i), vec2<i32>(11999i, -52916i), vec2<i32>(20695i, -1i), vec2<i32>(2147483647i, -38289i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-13383i, 84805i), vec2<i32>(37221i, -34221i), vec2<i32>(1i, 6079i), vec2<i32>(-1i, -1i), vec2<i32>(19896i, i32(-2147483648)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(~(-vec4<i32>(35046i, -2147483647i, 1i, 23510i) ^ vec4<i32>(u_input.a.x, u_input.b, 35128i, -2147483647i)) | ((~vec4<i32>(1i, u_input.a.x, 2147483647i, u_input.b) << (_wgslsmith_div_vec4_u32(vec4<u32>(30634u, 1u, 694u, 0u), vec4<u32>(1988u, 1u, 32632u, 61292u)) % vec4<u32>(32u))) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    var var_1 = Struct_1(var_0.a);
    var_1 = Struct_1(var_0.a);
    let var_2 = var_0;
    var var_3 = var_0.a.x < 2147483647i;
    return var_0;
}

fn func_3(arg_0: bool, arg_1: bool) -> i32 {
    global0 = array<vec2<i32>, 27>();
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(407f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(768f + -1807f), _wgslsmith_f_op_f32(f32(-1f) * -2390f)) - _wgslsmith_f_op_f32(max(-2071f, _wgslsmith_f_op_f32(f32(-1f) * -405f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -776f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-484f * -1586f))))))));
    var var_2 = ~(~1136u);
    var var_3 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(3747i, u_input.b), i32(-1i) * -(~u_input.a.x), _wgslsmith_mult_i32(i32(-1i) * -u_input.a.x, firstLeadingBit(firstLeadingBit(-11498i))), _wgslsmith_clamp_i32(u_input.b, ~0i, ~_wgslsmith_mod_i32(-37941i, u_input.b))));
    return var_3.a.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>) -> u32 {
    let var_0 = func_2();
    let var_1 = Struct_1(~(-var_0.a & _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(12572i, u_input.b, u_input.a.x, arg_0.x), var_0.a), reverseBits(var_0.a))));
    var var_2 = Struct_1(vec4<i32>(func_3(true, true), abs(u_input.a.x), var_1.a.x, ~_wgslsmith_clamp_i32(~arg_0.x, var_0.a.x, u_input.b)));
    var var_3 = Struct_1(reverseBits(vec4<i32>(var_0.a.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), min(-1i, var_1.a.x)), 65903i, arg_0.x)));
    var_2 = func_2();
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec4<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false)), true, true, any(vec2<bool>(true, true))));
    global0 = array<vec2<i32>, 27>();
    global0 = array<vec2<i32>, 27>();
    let var_1 = firstLeadingBit(_wgslsmith_add_u32(func_1(-vec3<i32>(27471i, -2147483647i, u_input.b), vec2<f32>(862f, _wgslsmith_f_op_f32(f32(-1f) * -974f))), _wgslsmith_clamp_u32(532u ^ select(4294967295u, 1u, var_0), ~(~9856u), ~0u)));
    global0 = array<vec2<i32>, 27>();
    global0 = array<vec2<i32>, 27>();
    let var_2 = vec4<u32>((~(var_1 | 1u) ^ countOneBits(4294967295u)) & _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_mult_u32(12838u, var_1)), var_1, (var_1 >> (var_1 % 32u)) | ~var_1), ~(~(~(var_1 & 66636u))), var_1, _wgslsmith_div_u32(3370u, ~(~(~1u))));
    let x = u_input.a;
    s_output = StorageBuffer(-539f);
}

