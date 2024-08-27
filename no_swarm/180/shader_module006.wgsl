struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec4<u32> {
    var var_0 = 1u;
    let var_1 = u_input.a.zx;
    let var_2 = max(~(_wgslsmith_dot_vec2_u32(vec2<u32>(25825u, 44310u), select(vec2<u32>(4294967295u, 70685u), vec2<u32>(1u, 1u), false)) << ((1u << (1u % 32u)) % 32u)), abs(1u));
    let var_3 = Struct_2(select(!vec4<bool>(true, 2147483647i > var_1.x, true, select(false, false, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), firstTrailingBit(2147483647i) > var_1.x), any(vec3<bool>(any(vec3<bool>(true, true, false)), true, any(vec2<bool>(true, true))))), Struct_1(vec3<f32>(1f, 1f, 1f), u_input.a.x, ~vec3<u32>(var_2, _wgslsmith_add_u32(1u, var_2), ~1u)), all(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true)))));
    var_0 = ~4294967295u;
    return vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_2, ~abs(var_3.b.c.x)), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b.c.x, var_2, var_2, 0u), vec4<u32>(var_2, 4294967295u, 0u, 0u)), 1u), 12575u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, firstLeadingBit(63066u)), max(vec2<u32>(_wgslsmith_add_u32(6005u, 1u), _wgslsmith_div_u32(4294967295u, var_3.b.c.x)), vec2<u32>(var_2, 10493u))), 107328u, abs(firstLeadingBit(~0u)));
}

fn func_2(arg_0: i32) -> vec4<i32> {
    var var_0 = 0u;
    var_0 = 1u | _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 680u, 1617u), vec4<u32>(17910u, 1111u, 30567u, 20376u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), ~3140u, reverseBits(~4294967295u)), func_3());
    let var_1 = false;
    let var_2 = Struct_3(true);
    var_0 = 4294967295u;
    return abs((vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 0i, 46889i, -2147483647i)) << (select(~vec4<u32>(657u, 15500u, 4294967295u, 1u), vec4<u32>(1u, 1u, 1u, 1u), !vec4<bool>(var_2.a, var_1, var_2.a, true)) % vec4<u32>(32u))) | -(~_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-9053i, arg_0, -54175i, u_input.a.x), vec4<i32>(u_input.a.x, -2152i, 0i, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 0i, u_input.a.x, 17547i), vec4<i32>(-2147483647i, 1i, u_input.a.x, arg_0)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, -29654i, 2147483647i, u_input.a.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    var var_0 = -_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(func_2(firstTrailingBit(arg_1.b)), ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.b, 1742i, arg_1.b, -6856i), vec4<i32>(arg_1.b, arg_1.b, 2147483647i, u_input.a.x))), vec4<i32>(50456i, arg_2.b | -18517i, ~(-arg_1.b), arg_1.b));
    let var_1 = Struct_3(false);
    let var_2 = Struct_2(!(!vec4<bool>(true, true, select(arg_0.x, var_1.a, true), any(arg_0))), Struct_1(vec3<f32>(207f, arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x)), arg_2.b, vec3<u32>(~arg_1.c.x, arg_2.c.x ^ arg_1.c.x, ~1u)), arg_0.x);
    let var_3 = vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(324f, arg_2.a.x)))) - -434f) + -974f), arg_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(191f, -701f)) * _wgslsmith_f_op_f32(sign(-428f)))) * arg_2.a.x));
    let var_4 = _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b, -1i, 1i), vec3<i32>(var_0.x, 24037i, 0i)), _wgslsmith_mod_i32(-38187i, 34639i), -13752i)), reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.b.b, arg_1.b, 2147483647i) >> (vec3<u32>(4294967295u, 42815u, 4294967295u) % vec3<u32>(32u)), -vec3<i32>(u_input.a.x, 1i, var_0.x), firstLeadingBit(vec3<i32>(arg_2.b, -2147483647i, -1i)))), vec3<i32>(arg_2.b, 1i, 0i >> (arg_1.c.x % 32u))) ^ vec3<i32>(var_2.b.b >> (var_2.b.c.x % 32u), (arg_2.b & abs(-2147483647i)) ^ firstLeadingBit(-arg_1.b), -(var_0.x & arg_1.b) ^ ~3278i);
    return Struct_3(~15219u <= _wgslsmith_div_u32(4294967295u, 1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1535u, 22260u), var_2.b.c)));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    var var_0 = firstLeadingBit(-_wgslsmith_sub_vec2_i32(~(u_input.a.yx << (vec2<u32>(1u, 33566u) % vec2<u32>(32u))), countOneBits(vec2<i32>(8996i, -2147483647i))));
    let var_1 = reverseBits(5688i);
    var var_2 = ~(~(~1u));
    var var_3 = arg_0;
    var_0 = vec2<i32>(-max(var_0.x, func_2(-var_0.x).x), _wgslsmith_mod_i32(var_1, var_1));
    return func_1(!vec2<bool>(true, all(vec2<bool>(var_3.a, var_3.a))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(607f, -1000f, -892f)))))), ~79759i, ~vec3<u32>(0u, select(29469u, 53699u, false), _wgslsmith_mult_u32(0u, 4294967295u))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -260f)), -1111f, _wgslsmith_f_op_f32(trunc(793f))), _wgslsmith_add_i32(3494i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.yx, u_input.a.xx), u_input.a.xx)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(17843u, 33929u, 95948u), select(vec3<u32>(0u, 1u, 28378u), vec3<u32>(4294967295u, 9281u, 4283u), arg_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-745f, 1000f, 1037f))))), 1i, reverseBits(vec3<u32>(1u, 0u, 19443u))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(479f, -100f, 253f) + vec3<f32>(961f, 1380f, 792f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-175f, 282f, -1214f) - vec3<f32>(212f, -1709f, 1895f))), ~(-u_input.a.x), ~(~vec3<u32>(30788u, 5266u, 24951u)))));
    var var_1 = 1u;
    var var_2 = ~_wgslsmith_add_u32(abs(~1u), 1u);
    let var_3 = _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 1u, 1u)), select(select(abs(vec3<u32>(59080u, 22666u, 0u)), firstLeadingBit(vec3<u32>(1u, 72375u, 4294967295u)), !vec3<bool>(true, var_0.a, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(41568u, 5708u, 40024u), vec3<u32>(21120u, 1u, 26517u)), select(select(vec3<bool>(var_0.a, true, false), vec3<bool>(false, var_0.a, true), true), !vec3<bool>(false, var_0.a, true), !vec3<bool>(false, var_0.a, var_0.a)))) << (39692u % 32u);
    let var_4 = vec3<u32>(abs(select(var_3, _wgslsmith_add_u32(var_3, ~96463u), false)), ~firstLeadingBit(51991u), ~(~firstTrailingBit(var_3)) & var_3);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec2<f32>(369f, 1f));
}

