struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(182f, _wgslsmith_f_op_f32(sign(-364f)))))));
    var var_1 = Struct_1(select(~vec3<u32>(22897u, 0u, u_input.a ^ u_input.a), ~(~vec3<u32>(u_input.a, u_input.a, u_input.a)) << ((~vec3<u32>(597u, u_input.a, u_input.a) ^ vec3<u32>(27231u, 4294967295u, u_input.a)) % vec3<u32>(32u)), vec3<bool>(_wgslsmith_f_op_f32(1000f - var_0) > -128f, !(!arg_0), all(vec4<bool>(false, true, false, true)))), ~vec4<u32>(u_input.a | u_input.a, 1u ^ firstLeadingBit(u_input.a), ~select(u_input.a, u_input.a, false), u_input.a));
    var_1 = Struct_1(max(select(~min(vec3<u32>(46529u, 4294967295u, u_input.a), vec3<u32>(12073u, var_1.a.x, 72324u)), select(~var_1.b.zxz, var_1.b.zxw, !vec3<bool>(true, false, arg_0)), vec3<bool>(any(vec2<bool>(arg_0, true)), arg_0 && arg_0, true)), vec3<u32>(~77550u, 77617u & (var_1.a.x | u_input.a), _wgslsmith_sub_u32(u_input.a, 19264u) | var_1.a.x)), vec4<u32>(4294967295u, _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(var_1.b, var_1.b), 1u), _wgslsmith_clamp_u32(var_1.a.x, 4294967295u, u_input.a), _wgslsmith_mult_u32(1u, 1u)));
    let var_2 = select(vec3<bool>(true, all(vec2<bool>(select(false, arg_0, true), arg_0)), false), !(!(!(!vec3<bool>(true, arg_0, true)))), !vec3<bool>(!(u_input.b != 2147483647i), true, true));
    var var_3 = -_wgslsmith_mult_vec2_i32(vec2<i32>(-23776i, -countOneBits(u_input.b)), _wgslsmith_div_vec2_i32(abs(abs(vec2<i32>(u_input.b, u_input.b))), min(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 18568i), vec2<i32>(-2147483647i, u_input.b)), vec2<i32>(u_input.b, u_input.b))));
    return var_1.b.wwy;
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<u32>, 20>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(919f, 596f, 1000f, 1474f)))))));
    global0 = array<vec2<u32>, 20>();
    global0 = array<vec2<u32>, 20>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1761f))) + _wgslsmith_div_f32(1016f, 1397f));
    return Struct_1(~(~(~vec3<u32>(4294967295u, u_input.a, u_input.a) & func_3(true))), max(vec4<u32>(~(~u_input.a), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(125788u, 21115u, 8508u, u_input.a)), ~u_input.a, 48890u ^ u_input.a), (u_input.a | 40413u) & ~u_input.a, 1u), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(37566u, u_input.a, u_input.a, u_input.a)), ~(~vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u)))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    let var_1 = var_0;
    var var_2 = _wgslsmith_add_vec3_u32(abs(_wgslsmith_add_vec3_u32(~(~vec3<u32>(var_0.a.x, 54570u, 46759u)), vec3<u32>(0u, _wgslsmith_add_u32(0u, var_0.a.x), var_0.b.x))), ~abs(abs(reverseBits(vec3<u32>(var_1.a.x, var_0.a.x, u_input.a)))));
    global0 = array<vec2<u32>, 20>();
    global0 = array<vec2<u32>, 20>();
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(abs(-vec3<i32>(u_input.b, -31123i, u_input.b) & vec3<i32>(-4712i, u_input.b, u_input.b)), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.b, -1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(-35229i, 14797i, 0i), vec3<i32>(-8944i, u_input.b, u_input.b))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -15200i), vec3<i32>(8087i, 38999i, u_input.b))))), select(vec3<i32>(u_input.b, reverseBits(10333i), ~12756i), countOneBits(-vec3<i32>(u_input.b, u_input.b, u_input.b)), arg_1.x) >> (func_3(select(!arg_1.x, any(vec4<bool>(arg_1.x, arg_1.x, true, true)), arg_1.x)) % vec3<u32>(32u)), (-(vec3<i32>(-11150i, -1i, u_input.b) >> (arg_0.a % vec3<u32>(32u))) & _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -1i, 3082i), vec3<i32>(-8254i, 22033i, u_input.b))) ^ _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b, u_input.b, -2147483647i) ^ ~vec3<i32>(u_input.b, u_input.b, -2147483647i), (vec3<i32>(u_input.b, -26715i, u_input.b) >> (arg_0.a % vec3<u32>(32u))) | -vec3<i32>(u_input.b, u_input.b, 1i)));
    var var_2 = arg_1.x;
    var var_3 = func_3(any(vec4<bool>(all(!vec4<bool>(true, arg_1.x, false, arg_1.x)), true, false | (false | arg_1.x), all(arg_1.xz)))).x;
    var_3 = _wgslsmith_sub_u32(reverseBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 1u, 47909u, arg_0.b.x)), ~vec4<u32>(4294967295u, 20946u, 1u, arg_0.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 6588u, 68904u), ~vec3<u32>(arg_0.a.x, arg_2.b.x, u_input.a)))), u_input.a);
    return vec4<bool>(!(!arg_1.x), !select(arg_1.x, false, true), true, any(select(select(select(arg_1.xy, vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, arg_1.x)), !vec2<bool>(arg_1.x, true), arg_1.zx), !vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(var_1.x >= -1i, arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-684f - 143f))), -1711f) * -582f);
    let var_1 = Struct_1(select(_wgslsmith_mod_vec3_u32(min(vec3<u32>(8000u, u_input.a, u_input.a), vec3<u32>(38142u, 4294967295u, 4294967295u)) | reverseBits(vec3<u32>(u_input.a, u_input.a, 47138u)), vec3<u32>(4294967295u, 33334u, u_input.a | u_input.a)), min(abs(vec3<u32>(1u, u_input.a, 4294967295u)), ~vec3<u32>(u_input.a, u_input.a, 11723u)), any(vec3<bool>(true, true, any(vec4<bool>(true, true, false, false))))), ~(~(~vec4<u32>(u_input.a, 1u, 33465u, 22209u))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(947f - -731f) - -2009f)), _wgslsmith_div_f32(-1000f, 1000f), false)) - 951f);
    global0 = array<vec2<u32>, 20>();
    let var_3 = ~firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, firstLeadingBit(22106u)), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(var_1.a.zx, vec2<u32>(var_1.a.x, var_1.a.x)), ~vec2<u32>(var_1.b.x, u_input.a))), 20u)]);
    let var_4 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_4(func_1(), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), Struct_1(vec3<u32>(var_3.x, var_3.x, var_1.a.x), vec4<u32>(4294967295u, var_3.x, var_3.x, u_input.a)))), !vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, true));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-858f, _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(var_2 - 188f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -233f))));
    let var_5 = Struct_2(var_1);
    var var_6 = Struct_2(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(291f, u_input.b);
}

