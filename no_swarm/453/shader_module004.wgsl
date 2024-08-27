struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> bool {
    let var_0 = ~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(select(u_input.e, u_input.e, false), u_input.e, -22328i), countOneBits(vec3<i32>(0i, 21593i, u_input.e) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x) % vec3<u32>(32u)))), abs(vec3<i32>(-1i) * -vec3<i32>(u_input.e, -592i, u_input.e)));
    var var_1 = u_input.c;
    var var_2 = ~u_input.a.x;
    let var_3 = Struct_1(-_wgslsmith_add_i32(~u_input.e, var_0.x) << (~(1u & u_input.a.x) % 32u));
    return any(vec3<bool>(!all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false)), true, true));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(select(max(~u_input.a.x, u_input.c.x), firstTrailingBit(_wgslsmith_mod_u32(u_input.c.x, 4294967295u)), all(vec2<bool>(true, true))), u_input.b.x, _wgslsmith_div_u32(7921u << (~4294967295u % 32u), 4294967295u), max(~(~2576u), ~u_input.b.x)), ~u_input.d);
    let var_1 = func_3();
    let var_2 = select(u_input.d.xxx, var_0.yzx, vec3<bool>(var_1, var_1, var_1));
    var var_3 = ~vec3<u32>(~(u_input.b.x & 0u) >> (_wgslsmith_sub_u32(1u, var_2.x & 4294967295u) % 32u), ~reverseBits(_wgslsmith_mod_u32(26173u, var_0.x)), u_input.b.x);
    var_3 = vec3<u32>(14204u, var_2.x, ~var_3.x);
    return Struct_4(!((min(var_3.x, 39835u) == (20026u >> (0u % 32u))) | var_1));
}

fn func_1(arg_0: bool, arg_1: u32) -> u32 {
    var var_0 = func_2();
    let var_1 = func_2();
    var var_2 = Struct_2(vec2<i32>(u_input.e, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.e, 19976i, u_input.e), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.e, -50468i, u_input.e), vec3<i32>(9909i, 1i, u_input.e)))), false, countOneBits(u_input.b.x & u_input.d.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(690f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(482f)))) + vec2<f32>(1f, 1f)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(516f, 2170f), var_2.d, false))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(482f, var_2.d.x)) + vec2<f32>(var_2.d.x, -422f)))), -396f, ~(~(~max(u_input.d.xxw, vec3<u32>(4294967295u, 1u, 27429u)))), Struct_1(var_2.a.x), Struct_2(-vec2<i32>(u_input.e << (27400u % 32u), 0i >> (1u % 32u)), !(!func_3()), ~arg_1, vec2<f32>(_wgslsmith_f_op_f32(abs(2374f)), _wgslsmith_div_f32(var_2.d.x, _wgslsmith_f_op_f32(ceil(var_2.d.x))))));
    var_2 = Struct_2(var_3.e.a, true, _wgslsmith_dot_vec2_u32(max(~min(var_3.c.xz, vec2<u32>(59089u, 0u)), u_input.a), var_3.c.xy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.e.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1006f * -786f), 670f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.d), var_2.d, arg_0)))));
    return ~(~var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true, ~u_input.b.x);
    var var_1 = func_2();
    var var_2 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, ~12729i, u_input.e), _wgslsmith_add_vec3_i32(reverseBits(max(vec3<i32>(-78120i, u_input.e, u_input.e), vec3<i32>(u_input.e, 24514i, u_input.e))), -vec3<i32>(1i, u_input.e, u_input.e) & (vec3<i32>(-2147483647i, u_input.e, -2147483647i) & vec3<i32>(-2147483647i, 59107i, -2147483647i)))), firstLeadingBit(-(reverseBits(vec3<i32>(u_input.e, -1i, u_input.e)) >> (u_input.c % vec3<u32>(32u)))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(713f, -2275f))))), -635f, ~(~vec3<u32>(select(u_input.d.x, var_0, var_1.a), var_0 ^ u_input.d.x, abs(u_input.c.x))), Struct_1(1i), Struct_2(var_2.yy, func_2().a, ~(~(~6229u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(280f, -1425f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-2213f, 574f) - vec2<f32>(874f, 244f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(2174f, -366f), vec2<f32>(1366f, -142f)))))));
    var_1 = Struct_4(var_1.a);
    var var_4 = -_wgslsmith_sub_i32(-31370i, _wgslsmith_mult_i32(var_2.x << (1u % 32u), firstLeadingBit(min(1i, -17274i))));
    var var_5 = var_3.d;
    let var_6 = -var_3.e.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x);
}

