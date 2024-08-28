struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_mod_u32(abs(~((arg_3.b >> (80091u % 32u)) << (~arg_3.b % 32u))), ~(~(~min(1u, arg_3.b))));
    let var_1 = ~arg_3.c.x;
    let var_2 = Struct_2(Struct_1(!vec4<bool>(arg_0.x | arg_0.x, arg_1.x, any(vec2<bool>(arg_2.c.x, false)), true), var_0, arg_3.c), Struct_1(vec4<bool>(true, true, !(!arg_0.x), arg_0.x), 119372u, _wgslsmith_clamp_vec3_i32(vec3<i32>(countOneBits(u_input.a), max(var_1, 0i), min(var_1, -3195i)), ~(~arg_3.c), countOneBits(vec3<i32>(1i, -24738i, arg_3.c.x)))));
    let var_3 = countOneBits(vec4<u32>(arg_2.d.x, arg_2.d.x, ~abs(1u), 92509u));
    var var_4 = abs(-max(var_1, abs(-1i)));
    return arg_0.x;
}

fn func_2() -> Struct_3 {
    var var_0 = vec3<bool>(true, !(!all(vec3<bool>(true, true, true))), any(vec2<bool>(true, true)));
    let var_1 = Struct_2(Struct_1(vec4<bool>(var_0.x, true, func_3(select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), var_0.x), Struct_3(0u, vec4<f32>(-1000f, -711f, 833f, 1000f), vec3<bool>(var_0.x, var_0.x, false), vec3<u32>(23205u, 15469u, 15295u)), Struct_1(vec4<bool>(false, var_0.x, var_0.x, false), 4294967295u, vec3<i32>(u_input.a, u_input.a, -73245i))), func_3(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, true), Struct_3(4294967295u, vec4<f32>(968f, 106f, 171f, 123f), vec3<bool>(var_0.x, var_0.x, false), vec3<u32>(1u, 23691u, 4294967295u)), Struct_1(vec4<bool>(var_0.x, false, var_0.x, true), 51270u, vec3<i32>(u_input.a, u_input.a, -1i)))), 1930u, _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -29001i), vec3<i32>(2147483647i, u_input.a, 1i))) << (~vec3<u32>(34625u, 47211u, 87702u) % vec3<u32>(32u))), Struct_1(!select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, false)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, ~98936u), 1u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(58211u, 0u, 4294967295u, 79130u), vec4<u32>(4294967295u, 1u, 12720u, 1u)), ~79780u)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), select(vec4<i32>(42375i, u_input.a, -4357i, -20789i), vec4<i32>(0i, 2147483647i, u_input.a, u_input.a), vec4<bool>(false, var_0.x, var_0.x, var_0.x))), u_input.a, _wgslsmith_sub_i32(-61409i, -u_input.a))));
    var_0 = select(select(!var_1.a.a.yxw, select(!vec3<bool>(var_1.b.a.x, var_1.a.a.x, false), select(!vec3<bool>(var_0.x, var_1.b.a.x, true), vec3<bool>(true, true, true), true), true), true), vec3<bool>(true, firstTrailingBit(var_1.a.b) == var_1.a.b, var_1.a.a.x), false);
    let var_2 = vec2<bool>(false, var_1.a.a.x);
    let var_3 = 21077u | var_1.a.b;
    return Struct_3(var_3, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(-224f, 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 823f) + -173f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-685f - -383f), _wgslsmith_div_f32(-1315f, 1531f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1837f) * _wgslsmith_f_op_f32(f32(-1f) * -1831f))))), select(var_1.b.a.wxz, var_1.a.a.ywx, var_2.x), ~max(select(vec3<u32>(1u, 4294967295u, var_1.a.b), vec3<u32>(var_3, 1u, var_3), var_1.b.a.zyx) | countOneBits(vec3<u32>(var_1.b.b, 88437u, 146791u)), min(~vec3<u32>(4294967295u, var_3, var_3), firstLeadingBit(vec3<u32>(59225u, var_1.a.b, var_1.b.b)))));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-func_2().b.x);
    var var_1 = _wgslsmith_clamp_u32(~abs(~104514u << (arg_0.d.x % 32u)), 0u, arg_0.d.x);
    var_1 = ~(~_wgslsmith_mod_u32(~abs(4294967295u), _wgslsmith_sub_u32(arg_0.a ^ 0u, 35683u)));
    let var_2 = vec2<bool>(true, true);
    var_1 = abs(~(50494u | arg_0.d.x));
    return Struct_1(vec4<bool>(true, arg_0.c.x || (all(vec2<bool>(true, var_2.x)) && true), false, ~(arg_0.a ^ 67725u) <= (_wgslsmith_clamp_u32(arg_0.a, 4294967295u, arg_0.a) ^ _wgslsmith_mod_u32(arg_0.a, 36116u))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(min(vec4<u32>(34701u, arg_0.a, arg_0.d.x, 3152u), vec4<u32>(arg_0.d.x, 84804u, 26875u, 4294967295u)), abs(vec4<u32>(4294967295u, 27698u, 0u, arg_0.d.x))), select(vec4<u32>(60139u, arg_0.a, 21685u, arg_0.a), vec4<u32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), arg_0.c.x) | vec4<u32>(1u, arg_0.d.x, arg_0.d.x, arg_0.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(arg_1, u_input.a, -28731i)), min(countOneBits(vec3<i32>(arg_1, 40136i, -902i)) | select(vec3<i32>(arg_1, arg_1, 2413i), vec3<i32>(u_input.a, 2147483647i, arg_1), arg_0.c), firstLeadingBit(max(vec3<i32>(39198i, -2147483647i, u_input.a), vec3<i32>(-38940i, 0i, arg_1))))));
}

fn func_1() -> u32 {
    var var_0 = !vec2<bool>(any(vec3<bool>(true, true, true)) | true, true);
    var var_1 = func_4(func_2(), ~(u_input.a | _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, -59069i), ~vec4<i32>(u_input.a, -18775i, 34369i, u_input.a))));
    let var_2 = true;
    let var_3 = Struct_3(33264u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(551f, -1169f, 654f, -181f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1215f, 699f, -1000f, 1000f))) * vec4<f32>(-482f, -1225f, -350f, 193f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-200f, 822f, 282f, -941f) - vec4<f32>(-611f, -818f, 307f, 329f))), _wgslsmith_f_op_vec4_f32(select(func_2().b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1848f, -1000f, -540f, -2255f) + vec4<f32>(-2106f, -708f, 299f, -356f)), !var_1.a))))), var_1.a.zyx, ~abs(vec3<u32>(var_1.b, var_1.b, _wgslsmith_mult_u32(4791u, 0u))));
    var_1 = func_4(Struct_3(func_4(func_2(), -37380i).b, var_3.b, !(!var_3.c), var_3.d), u_input.a >> (var_1.b % 32u));
    return ~4294967295u;
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<u32>, arg_3: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), -1361f, _wgslsmith_f_op_f32(-arg_1))))));
    let var_1 = arg_0.x;
    var var_2 = Struct_2(Struct_1(!vec4<bool>(all(vec3<bool>(false, false, false)), true, func_2().c.x, arg_2.x <= arg_0.x), arg_2.x >> ((arg_0.x & abs(54876u)) % 32u), abs(_wgslsmith_div_vec3_i32(vec3<i32>(arg_3, arg_3, 0i), max(vec3<i32>(arg_3, -1i, -4815i), vec3<i32>(-30491i, arg_3, arg_3))))), func_4(Struct_3(arg_0.x ^ 34032u, _wgslsmith_f_op_vec4_f32(min(func_2().b, _wgslsmith_f_op_vec4_f32(var_0 - var_0))), vec3<bool>(true, true, true), ~arg_2.xxx), -7239i));
    var var_3 = func_2();
    var var_4 = -25634i;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<u32>(~func_1(), 1u, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1191f - -605f), _wgslsmith_f_op_f32(ceil(1202f))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-func_2().b.x)))), vec4<u32>(firstLeadingBit(_wgslsmith_mult_u32(~0u, func_1())), 86567u, 38965u, ~max(reverseBits(1u), abs(1u))), max(0i >> (0u % 32u), firstLeadingBit(1i)));
    var var_1 = 43104u;
    var var_2 = ~(vec3<i32>(min(abs(u_input.a), ~(-33914i)), abs(-17783i), firstLeadingBit(~73636i)) | _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-11868i, -8611i, 28269i) & vec3<i32>(0i, u_input.a, -2147483647i), -vec3<i32>(1i, 31842i, 6693i)), abs(vec3<i32>(u_input.a, 1i, u_input.a))));
    var var_3 = 1u;
    var var_4 = _wgslsmith_f_op_f32(457f * func_2().b.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), max(-var_2.zx ^ ~var_2.zx, select(var_2.xy, vec2<i32>(-7656i, 0i), func_4(var_0, 1i).a.x)) | ~var_2.xz);
}

