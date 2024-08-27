struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), all(vec2<bool>(false, true))), vec3<bool>(true, true, true)), true));
    var_0 = !(!(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))) | true));
    var_0 = true;
    let var_1 = Struct_2(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)), false, any(vec2<bool>(false, true)), true), vec4<bool>(true, true, all(vec4<bool>(false, true, false, true)), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-775f, _wgslsmith_f_op_f32(abs(612f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-700f + _wgslsmith_f_op_f32(f32(-1f) * -916f)), _wgslsmith_f_op_f32(641f - 1565f)))), Struct_1(vec4<bool>(true, true, any(vec4<bool>(true, false, true, false)), true)), ~1u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -753f), _wgslsmith_f_op_f32(-var_1.b)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, var_1.b) * _wgslsmith_f_op_vec2_f32(vec2<f32>(386f, var_1.b) * vec2<f32>(-492f, var_1.b))))));
    return _wgslsmith_mult_u32(firstTrailingBit(0u), arg_0.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_5 {
    var var_0 = Struct_3(Struct_2(arg_1, 1f, Struct_1(arg_1.a), 11504u));
    var_0 = Struct_3(Struct_2(arg_1, 330f, Struct_1(!var_0.a.a.a), var_0.a.d));
    let var_1 = _wgslsmith_add_vec2_i32(firstLeadingBit(abs(-vec2<i32>(-11717i, u_input.a))), select(vec2<i32>(-77223i, u_input.a), arg_0, var_0.a.a.a.x) | select(_wgslsmith_div_vec2_i32(vec2<i32>(33337i, 25012i), arg_2.xy), abs(vec2<i32>(-1i, -1i)), select(vec2<bool>(false, true), arg_1.a.xw, false))) | (~select(vec2<i32>(2147483647i, 10299i), arg_0, !var_0.a.a.a.x) << ((vec2<u32>(var_0.a.d, func_3(vec3<u32>(0u, var_0.a.d, var_0.a.d))) & vec2<u32>(_wgslsmith_mod_u32(48434u, var_0.a.d), 58660u)) % vec2<u32>(32u)));
    let var_2 = ~_wgslsmith_div_i32(-7935i >> (1u % 32u), _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_2.x, -1i) ^ ~u_input.a, 33266i));
    return Struct_5(!var_0.a.a.a.x, select(true, arg_1.a.x, false == arg_1.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(388f - _wgslsmith_f_op_f32(-var_0.a.b)))))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(Struct_1(select(!vec4<bool>(true, arg_1.b, false, arg_0.a), select(vec4<bool>(arg_1.a, false, true, arg_1.a), vec4<bool>(true, arg_0.b, arg_0.a, false), vec4<bool>(false, true, false, arg_0.b)), arg_1.b)), arg_1.c, Struct_1(!vec4<bool>(arg_0.b, arg_0.b, false, arg_1.b)), min(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(17320u, 2195u), ~21150u, 0u), 59473u)));
    var var_1 = -(~u_input.a);
    let var_2 = Struct_2(var_0.a.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1020f))))), Struct_1(select(vec4<bool>(func_2(vec2<i32>(u_input.a, u_input.a), Struct_1(vec4<bool>(true, true, arg_0.b, arg_1.a)), vec3<i32>(2147483647i, u_input.a, u_input.a)).b, !var_0.a.a.a.x, true, false), !var_0.a.c.a, all(!var_0.a.c.a))), 1u);
    let var_3 = select(vec3<u32>(var_0.a.d, ~select(firstLeadingBit(16962u), 1u, var_0.a.a.a.x), var_0.a.d), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_2.d, var_0.a.d), vec3<u32>(5719u, var_0.a.d, var_0.a.d)), ~vec3<u32>(var_2.d, 0u, var_2.d), vec3<u32>(var_2.d, 4294967295u, 4294967295u) | vec3<u32>(29315u, 0u, 0u)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.d, var_2.d, var_2.d), vec3<u32>(50983u, 46076u, var_0.a.d)), vec3<u32>(var_0.a.d, 15656u, 31452u))), ~vec3<u32>(~var_2.d, 36103u ^ var_0.a.d, 1u)), var_0.a.c.a.zyx);
    return Struct_3(Struct_2(Struct_1(select(var_0.a.c.a, vec4<bool>(var_0.a.c.a.x, false, true, arg_1.b), var_2.a.a.x)), 570f, var_2.c, ~_wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, var_2.d), var_3.yz), ~vec2<u32>(45917u, var_3.x))));
}

fn func_1() -> vec4<f32> {
    var var_0 = func_4(func_2(-max(firstTrailingBit(vec2<i32>(0i, -2147483647i)), vec2<i32>(37510i, u_input.a)), Struct_1(vec4<bool>(true, true, true, true)), -(vec3<i32>(-1i, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, 2147483647i, 2147483647i))), Struct_5(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), -434f));
    let var_1 = func_2(vec2<i32>(0i, -2147483647i), func_4(func_2((vec2<i32>(-6114i, -10326i) >> (vec2<u32>(var_0.a.d, var_0.a.d) % vec2<u32>(32u))) & vec2<i32>(u_input.a, -2147483647i), Struct_1(var_0.a.a.a), ~abs(vec3<i32>(51033i, -2147483647i, u_input.a))), Struct_5(true, var_0.a.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1034f - var_0.a.b) * _wgslsmith_f_op_f32(var_0.a.b * -130f)))).a.c, -vec3<i32>(~u_input.a >> (~1u % 32u), firstTrailingBit(u_input.a), 20831i));
    let var_2 = func_4(func_2(vec2<i32>(~u_input.a, u_input.a ^ u_input.a) & (vec2<i32>(u_input.a, u_input.a) >> ((vec2<u32>(var_0.a.d, var_0.a.d) & vec2<u32>(33783u, var_0.a.d)) % vec2<u32>(32u))), Struct_1(select(vec4<bool>(false, false, var_0.a.c.a.x, false), var_0.a.a.a, true)), vec3<i32>(reverseBits(abs(16937i)), ~(-2147483647i), u_input.a)), Struct_5(true, var_0.a.c.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.a.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.b * 1201f), _wgslsmith_f_op_f32(var_0.a.b - var_0.a.b)))))));
    let var_3 = ~53426u;
    var_0 = Struct_3(Struct_2(Struct_1(vec4<bool>(!var_0.a.c.a.x, 294f == var_2.a.b, any(vec2<bool>(var_0.a.a.a.x, var_0.a.c.a.x)), !var_2.a.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-807f + 801f) * var_2.a.b), func_4(var_1, func_2(-vec2<i32>(u_input.a, u_input.a), Struct_1(var_0.a.a.a), _wgslsmith_mod_vec3_i32(vec3<i32>(2042i, 15679i, u_input.a), vec3<i32>(1i, -30801i, u_input.a)))).a.a, ~var_0.a.d));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.b, var_0.a.b, 904f, var_0.a.b) * vec4<f32>(1151f, 1787f, -1665f, var_1.c)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c, var_1.c, 1426f, -669f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(-614f, 194f, var_0.a.b, var_2.a.b), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-889f, var_0.a.b, var_1.c, 722f)))))), vec4<bool>(var_2.a.c.a.x, var_2.a.a.a.x, var_1.b, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(true);
    let var_1 = vec2<bool>(-u_input.a > 13033i, false);
    let var_2 = _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(1u, 98635u)), ~vec2<u32>(1u, 1u));
    var var_3 = var_2;
    var_3 = var_2;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-54604i, -15702i), vec2<i32>(u_input.a, u_input.a))), -1i, -2147483647i));
}

