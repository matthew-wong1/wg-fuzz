struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = arg_0;
    let var_1 = var_0;
    let var_2 = Struct_1(-1000f, _wgslsmith_div_vec4_i32(~(_wgslsmith_mod_vec4_i32(arg_0.b, vec4<i32>(17848i, var_0.b.x, 5795i, 20127i)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(var_1.b, vec4<i32>(~u_input.a.x, _wgslsmith_div_i32(var_1.b.x, var_0.b.x), ~2147483647i, u_input.a.x), -(~var_0.b))));
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-301f, -286f)))))))));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(528f, ~(-vec4<i32>(u_input.a.x, firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), -u_input.a.x)));
    var_0 = Struct_1(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-var_0.a)), var_0.b);
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -383f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(-456f, var_0.b), true)))), -abs(reverseBits(vec4<i32>(-2147483647i, var_0.b.x, 29168i, 1i))) | vec4<i32>(_wgslsmith_dot_vec2_i32(max(var_0.b.zw, var_0.b.wx), var_0.b.xz), -1i, min(~u_input.a.x, var_0.b.x), -1i));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(min(var_1.a, -106f)), select(-(abs(vec4<i32>(-1i, var_0.b.x, var_0.b.x, var_0.b.x)) ^ abs(var_0.b)), var_1.b, vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), any(vec3<bool>(false, false, true)), all(vec4<bool>(true, true, false, false)))));
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(select(u_input.a.x, var_2.b.x, true) >> (firstTrailingBit(144589u) % 32u)), -reverseBits(var_0.b.x ^ 30498i), -5118i, 2147483647i), min(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-24916i, var_1.b.x), vec2<i32>(var_2.b.x, 4030i)), vec2<i32>(-38355i, var_2.b.x)), u_input.a.x, var_2.b.x), select(vec4<i32>(~var_2.b.x, -var_0.b.x, firstLeadingBit(var_0.b.x), _wgslsmith_mult_i32(var_2.b.x, 1i)), _wgslsmith_mod_vec4_i32(var_2.b, vec4<i32>(var_2.b.x, var_1.b.x, var_2.b.x, -57046i) >> (vec4<u32>(1u, 44058u, 101973u, 12006u) % vec4<u32>(32u))), all(vec4<bool>(false, false, true, true)))));
    return ~countOneBits(~0u);
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = vec4<u32>(func_2(), 1u & select(_wgslsmith_div_u32(~22345u, 1u), abs(10773u), true && any(vec4<bool>(false, false, false, true))), abs(~(~1u)), countOneBits(~4294967295u));
    var_0 = vec4<u32>(~(~53260u), var_0.x, ~61591u, var_0.x);
    let var_1 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(false, false)), true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, all(vec2<bool>(true, true)), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), var_0.x >= 73739u)), !any(vec3<bool>(false, false, false)) || all(vec2<bool>(true, true)));
    var var_2 = !any(select(vec2<bool>(true, var_1.x), vec2<bool>(false, var_1.x), false)) | true;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1546f))) * _wgslsmith_f_op_f32(f32(-1f) * -384f)) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(-345f, 425f, false))))), _wgslsmith_f_op_f32(abs(-993f)), !all(select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), var_1, var_1))));
    return countOneBits(max(var_0.x, ~var_0.x) & _wgslsmith_mult_u32(var_0.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, var_0.x), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(func_1(u_input.a.x), abs(abs(firstLeadingBit(1u))), ~9926u), vec3<u32>(~abs(~11222u), 1u, _wgslsmith_mult_u32(~1u, _wgslsmith_mult_u32(firstTrailingBit(37061u), 11460u))));
    let var_1 = 2147483647i;
    let var_2 = -254f;
    let var_3 = Struct_1(-1123f, vec4<i32>(reverseBits(-31967i), -1i ^ u_input.a.x, u_input.a.x, ~((2147483647i ^ u_input.a.x) << (var_0.x % 32u))));
    var var_4 = select(select(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, var_3.a <= var_2, false), true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), vec3<bool>(true, true && all(vec2<bool>(true, false)), true)), select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), vec3<bool>(false, false, false), true), vec3<bool>(true, all(vec4<bool>(true, true, true, false)), true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), true);
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2))))), _wgslsmith_mult_vec4_i32(var_3.b, var_3.b) & (_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 7065i, 0i), var_3.b) ^ var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(~(var_0.x | var_0.x));
}

