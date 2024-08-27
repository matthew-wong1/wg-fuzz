struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(step(-1416f, 776f)));
    let var_1 = 0u;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -839f))));
    let var_3 = _wgslsmith_f_op_f32(var_2.a + 869f);
    let var_4 = var_0;
    return arg_1.b.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(19277i, 2147483647i, 0i)), ~(~vec3<i32>(2147483647i, 9207i, 2147483647i)), ~(~vec3<i32>(-24639i, 0i, -28812i))) ^ (_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -1i, 42232i), vec3<i32>(-23071i, -79787i, 1533i), vec3<i32>(5315i, -1i, 1i)), vec3<i32>(-2147483647i, -15290i, -2147483647i)), vec3<i32>(~(-2147483647i), i32(-1i) * -2147483647i, -32632i)) | countOneBits(~(vec3<i32>(-21587i, 33381i, 1i) << (vec3<u32>(54698u, u_input.a, u_input.b.x) % vec3<u32>(32u)))));
    var_0 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(17626i, var_0.x), vec2<i32>(2147483647i, var_0.x)), 54243i), vec3<i32>(2147483647i, 0i, -2147483647i))), ~(~abs(vec3<i32>(2147483647i, var_0.x, 13903i))), ~(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, var_0.x), vec3<i32>(var_0.x, var_0.x, -34955i) | vec3<i32>(-2147483647i, var_0.x, -2147483647i)) ^ (_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, 1i, var_0.x), vec3<i32>(var_0.x, 1i, 1i)) | vec3<i32>(var_0.x, -47637i, 63542i))));
    let var_1 = true;
    let var_2 = 48723u;
    var_0 = ~firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(-var_0.x, var_0.x | 13746i), _wgslsmith_mod_i32(func_3(Struct_3(678f), Struct_1(0u, vec3<i32>(-20201i, var_0.x, var_0.x), true)), var_0.x & 1i), -var_0.x));
    return Struct_1(u_input.a, vec3<i32>(1i & _wgslsmith_sub_i32(1i, -1i & var_0.x), -(~(1i ^ var_0.x)), var_0.x | 20288i), ~var_2 >= ~(firstLeadingBit(u_input.a) & u_input.a));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~(-vec2<i32>(2147483647i, -firstTrailingBit(0i)));
    var var_1 = Struct_1(~_wgslsmith_mult_u32(arg_0.a, firstTrailingBit(_wgslsmith_add_u32(1u, arg_0.a))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-14460i, ~var_0.x, var_0.x >> (arg_0.b.x % 32u)), countOneBits(min(vec3<i32>(var_0.x, -7735i, -6639i), vec3<i32>(var_0.x, 1i, var_0.x)))), true);
    var_1 = func_2(-487f);
    var_1 = Struct_1(max(abs(firstTrailingBit(4294967295u)) | u_input.a, 0u), vec3<i32>(-22658i << (~(u_input.b.x >> (4616u % 32u)) % 32u), ~(abs(-2147483647i) >> (u_input.b.x % 32u)), var_1.b.x), var_1.c);
    var_1 = Struct_1(_wgslsmith_dot_vec3_u32(~(min(u_input.b, arg_0.b.wxx) | ~u_input.b), vec3<u32>(arg_0.a, 0u, 41404u)), ~(~func_2(157f).b), !any(select(!vec2<bool>(true, var_1.c), vec2<bool>(true, true), vec2<bool>(false, false))));
    return Struct_2(_wgslsmith_mult_u32(firstTrailingBit(countOneBits(arg_0.a ^ 44554u)), (1u >> (1u % 32u)) | u_input.a), (vec4<u32>(1u, abs(var_1.a), 30229u, ~0u) & ~firstTrailingBit(arg_0.b)) | (arg_0.b & abs(~vec4<u32>(13331u, 34665u, 19222u, var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!vec2<bool>(true & all(vec3<bool>(false, true, false)), true));
    var var_1 = _wgslsmith_f_op_f32(-359f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1143f + 541f)))), _wgslsmith_f_op_f32(trunc(-1168f)), any(select(select(vec3<bool>(false, var_0, var_0), vec3<bool>(false, var_0, var_0), false), vec3<bool>(false, var_0, var_0), var_0)))));
    var_1 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(752f)), _wgslsmith_f_op_f32(f32(-1f) * -417f))))));
    var var_2 = func_1(Struct_2((u_input.b.x ^ max(u_input.a, u_input.b.x)) >> (~u_input.a % 32u), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(33476u, 25334u, u_input.b.x, u_input.b.x), min(vec4<u32>(31230u, u_input.a, 0u, u_input.b.x), vec4<u32>(81292u, u_input.a, u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 1112u, u_input.b.x, 4294967295u)))));
    var_2 = func_1(Struct_2(_wgslsmith_sub_u32(1u, ~var_2.a), countOneBits(vec4<u32>(u_input.b.x, 93603u, 1u, 11239u) >> (~vec4<u32>(67753u, 29178u, 4294967295u, 71237u) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(func_2(_wgslsmith_f_op_f32(-968f * -626f)).b, min(vec3<i32>(_wgslsmith_clamp_i32(0i, -2147483647i, 0i), reverseBits(-10441i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 22585i), vec2<i32>(-2147483647i, -38825i))), select(~vec3<i32>(-40836i, 21148i, -1i), vec3<i32>(-1i, 79829i, -27694i), any(vec3<bool>(true, var_0, true))))), ~65172u, u_input.b.x ^ 18157u);
}

