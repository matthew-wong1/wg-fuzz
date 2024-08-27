struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_2(4294967295u, ~vec4<u32>(_wgslsmith_mult_u32(arg_3.a.x, u_input.b), _wgslsmith_mult_u32(4294967295u, arg_2.a), arg_3.c.d, ~77753u) >> (_wgslsmith_mod_vec4_u32(arg_3.c.b, ~(~arg_3.a)) % vec4<u32>(32u)), arg_3.c.c, 1u, arg_2);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1216f), arg_0)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b, -1037f) + vec2<f32>(-664f, arg_0))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1282f, 701f), vec2<f32>(arg_3.b, -687f), vec2<bool>(arg_3.c.c, false))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, arg_3.b))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b, 1634f) - vec2<f32>(arg_0, arg_0)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_3.b, arg_3.b)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - -619f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-773f, 721f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-790f, -867f, arg_3.b)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-183f, -984f, arg_3.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-568f, var_1.x, -1545f), vec3<f32>(arg_0, -1733f, 942f), arg_3.c.c))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-920f, arg_0, 1000f) - vec3<f32>(arg_3.b, -281f, -399f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1186f, -1334f, var_1.x))))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(sign(-1020f)), -768f));
    let var_3 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_2.a, 1u, 4294967295u, u_input.a) & arg_3.c.b), ~reverseBits(select(~vec4<u32>(arg_1, 17949u, 1781u, 1u), vec4<u32>(arg_1, arg_2.a, 89190u, 0u), vec4<bool>(false, false, false, var_0.c))));
    return i32(-1i) * -2147483647i;
}

fn func_2() -> vec2<i32> {
    var var_0 = -_wgslsmith_div_vec2_i32(~firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e, 2147483647i), vec2<i32>(u_input.d, u_input.c))), _wgslsmith_add_vec2_i32(-vec2<i32>(23591i, u_input.d) >> (~vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), ~abs(vec2<i32>(16198i, -16544i))));
    var_0 = -vec2<i32>(func_3(_wgslsmith_f_op_f32(-1f), ~u_input.a, Struct_1(_wgslsmith_add_u32(26967u, 31743u), u_input.d), Struct_3(select(vec4<u32>(u_input.a, 0u, 122333u, 32312u), vec4<u32>(19860u, u_input.a, u_input.b, 1u), vec4<bool>(false, false, true, true)), _wgslsmith_f_op_f32(128f + 1000f), Struct_2(u_input.b, vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), true, u_input.b, Struct_1(5545u, var_0.x)))), _wgslsmith_add_i32(var_0.x, 1i));
    let var_1 = vec3<bool>(u_input.c > 30696i, ~_wgslsmith_clamp_u32(min(0u, 4294967295u), firstTrailingBit(u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.a))) >= ~(_wgslsmith_div_u32(25239u, u_input.a) ^ (73860u ^ u_input.b)), false);
    let var_2 = Struct_1(max(u_input.a, u_input.b), var_0.x);
    var var_3 = Struct_1(~50585u, 0i);
    return -vec2<i32>(reverseBits(33946i), -var_3.b);
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = !(((u_input.e | u_input.d) ^ countOneBits(2147483647i)) < ~min(1i, -25225i)) || all(!vec3<bool>(false, true, select(false, false, false)));
    var_0 = false;
    var_0 = func_2().x > u_input.d;
    var_0 = !(!select(true, 2147483647i != u_input.e, u_input.d == 666i)) & true;
    let var_1 = -abs(reverseBits(vec3<i32>(-8100i, -58763i, u_input.e))) ^ -select(vec3<i32>(max(-33532i, 0i), firstTrailingBit(arg_0.x), -7352i), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(12330i, u_input.c, -2147483647i), vec3<i32>(21912i, arg_0.x, arg_0.x), vec3<i32>(u_input.e, -20166i, arg_0.x)), ~vec3<i32>(-47281i, u_input.d, 55425i), vec3<bool>(true, true, true)), vec3<bool>(true, u_input.e != u_input.d, true));
    return Struct_1(4294967295u, arg_0.x);
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !all(select(vec2<bool>(arg_0, true && arg_0), select(!vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), false), any(!vec2<bool>(true, arg_0))));
    var var_1 = -44077i;
    var var_2 = Struct_1(u_input.b, -(~1i << (~(u_input.b >> (u_input.a % 32u)) % 32u)));
    let var_3 = vec2<u32>(u_input.b, arg_1.a);
    var_1 = u_input.e;
    return func_4(func_2());
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    let var_0 = func_1(!(!((551f <= arg_2.b) | false)), arg_2.c.e);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b, -1034f) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(654f, -922f), vec2<f32>(-1222f, arg_2.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b, arg_2.b) * vec2<f32>(arg_2.b, 186f)))))));
    var var_2 = arg_2.c;
    var var_3 = true;
    var_2 = arg_2.c;
    return Struct_1(~2299u, u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(4058u, func_1(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), Struct_1(~firstLeadingBit(4294967295u), ~(7320i ^ u_input.c))), Struct_3(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a)) | ~vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), firstLeadingBit(~vec4<u32>(u_input.b, 69711u, 0u, 7806u))), _wgslsmith_f_op_f32(abs(1000f)), Struct_2(select(1u, 1u & u_input.a, true), vec4<u32>(select(43420u, 1u, true), abs(1u), u_input.b, u_input.b), _wgslsmith_sub_i32(u_input.e, u_input.c) <= ~(-1i), u_input.a, Struct_1(~u_input.b, u_input.d))));
    let var_1 = vec3<f32>(1458f, 683f, 1f);
    let var_2 = 30157u;
    var var_3 = Struct_1(~select(var_2, func_1(all(vec3<bool>(false, true, false)), Struct_1(43375u, 1i)).a, (1000f >= var_1.x) || true), -_wgslsmith_dot_vec2_i32(abs(max(vec2<i32>(2147483647i, -35177i), vec2<i32>(u_input.c, -40037i))), vec2<i32>(7120i, ~u_input.e)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1910f - -769f))));
    var var_5 = ~_wgslsmith_add_vec4_i32(vec4<i32>(select(_wgslsmith_mult_i32(var_3.b, 0i), var_3.b << (var_3.a % 32u), true), var_3.b, firstTrailingBit(7892i), var_3.b), abs(vec4<i32>(-64497i, -9478i, func_2().x, var_0.b)));
    var var_6 = Struct_3(~vec4<u32>(~var_2, u_input.a, var_2, _wgslsmith_div_u32(76000u, ~var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-541f, _wgslsmith_f_op_f32(ceil(var_1.x))))), Struct_2(4294967295u, (~vec4<u32>(3616u, u_input.a, u_input.b, var_0.a) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(var_2, u_input.a, var_2, var_2), vec4<u32>(1u, 40213u, 35270u, u_input.b))) << (vec4<u32>(~u_input.b, func_4(var_5.xy).a, 0u << (var_3.a % 32u), _wgslsmith_mult_u32(41758u, 0u)) % vec4<u32>(32u)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false))), ~(~var_3.a) << (10696u % 32u), Struct_1(u_input.a, -2147483647i)));
    let var_7 = abs(abs(vec2<i32>(~func_4(vec2<i32>(-5110i, var_6.c.e.b)).b, _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.e, var_0.b), func_3(var_6.b, var_6.a.x, Struct_1(var_0.a, -2147483647i), Struct_3(var_6.c.b, 1000f, var_6.c)), var_0.b & -21821i))));
    var_5 = vec4<i32>(abs(countOneBits(_wgslsmith_div_i32(var_5.x, -1i) >> (var_0.a % 32u))), u_input.c, 45983i, -max(var_7.x, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_7.x, max(var_7.x, 1i)), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_6.b)), _wgslsmith_div_f32(400f, _wgslsmith_f_op_f32(910f * _wgslsmith_f_op_f32(-var_1.x)))));
}

