struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(0i, 0i, -23212i, -1i, -22053i, 1i, -1i, i32(-2147483648), i32(-2147483648), -1i, 32433i, -36421i, -5468i, 25337i, -69i, i32(-2147483648), -1i, 23227i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> u32 {
    global0 = array<i32, 18>();
    let var_0 = 0u & _wgslsmith_mult_u32(firstTrailingBit(~u_input.b) | (u_input.a.x << (min(1u, u_input.c) % 32u)), u_input.a.x);
    var var_1 = arg_2;
    return 71775u;
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    global0 = array<i32, 18>();
    return 52173u & func_3(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - 274f) < 214f, arg_0);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_3 {
    global0 = array<i32, 18>();
    var var_0 = false;
    var var_1 = vec3<u32>(arg_0.b, arg_0.b, arg_1.x);
    var_1 = vec3<u32>(_wgslsmith_div_u32(arg_0.b, _wgslsmith_clamp_u32(firstTrailingBit(4294967295u), _wgslsmith_mod_u32(7152u, 1u), ~u_input.a.x)) >> (~reverseBits(var_1.x) % 32u), 37820u, u_input.b);
    var_1 = vec3<u32>(~min(min(u_input.a.x ^ arg_0.b, ~1u), ~_wgslsmith_mult_u32(1u, u_input.c)), ~(~firstLeadingBit(arg_0.b)) >> (reverseBits(u_input.b) % 32u), _wgslsmith_mod_u32(19195u, _wgslsmith_mod_u32(arg_0.b, u_input.a.x << (~var_1.x % 32u))));
    return Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1124f + -1458f) - _wgslsmith_f_op_f32(trunc(-131f)))))), firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~global0[_wgslsmith_index_u32(13149u, 18u)], 2147483647i), 2147483647i << (~var_1.x % 32u))), vec4<f32>(1915f, _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -440f) + -243f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(814f)))), -1243f));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f) + _wgslsmith_f_op_f32(exp2(arg_0.c.x))) - _wgslsmith_f_op_f32(max(arg_0.a, 1091f))));
    global0 = array<i32, 18>();
    let var_1 = func_4(arg_3, ~_wgslsmith_clamp_vec2_u32(max(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.a), u_input.a | vec2<u32>(u_input.b, 35698u)), arg_2, select(vec2<u32>(58896u, 25737u), abs(u_input.a), arg_3.a)));
    var var_2 = arg_3;
    let var_3 = _wgslsmith_mult_u32(~countOneBits(4294967295u), ~(~(arg_3.b >> (33090u % 32u))));
    return var_1.a;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(Struct_2(select(false, false, false), firstLeadingBit(1u)), vec2<u32>(countOneBits(0u), func_2(Struct_3(arg_2.x, global0[_wgslsmith_index_u32(u_input.a.x, 18u)], vec4<f32>(1061f, -1005f, -2044f, arg_2.x)), true, Struct_1(vec2<bool>(true, false), vec2<bool>(true, false), false), arg_2.zy))), !(true | (0u >= u_input.c)), vec2<u32>(1u, _wgslsmith_add_u32(func_2(Struct_3(arg_0.b, -1i, vec4<f32>(arg_2.x, 235f, -993f, arg_0.b)), false, Struct_1(vec2<bool>(false, true), vec2<bool>(true, false), true), arg_2.xz), u_input.b)), Struct_2(all(vec3<bool>(false, true, false)), arg_0.a))));
    var var_1 = Struct_1(vec2<bool>(true, false), select(vec2<bool>(all(vec2<bool>(false, false)) == true, any(vec2<bool>(true, true))), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), any(vec4<bool>(true, true, true, any(vec4<bool>(false, false, false, false))))), arg_0.b >= arg_2.x);
    var var_2 = arg_0;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(func_4(Struct_2(all(vec2<bool>(false, var_1.c)), 4294967295u), max(u_input.a, ~vec2<u32>(var_2.a, 32460u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b + arg_0.b), -1000f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + arg_2.x), vec2<u32>(~arg_0.a, ~var_2.a), Struct_2(any(var_1.b), var_2.a))), 1208f);
    var_0 = arg_2.x;
    return max(~var_2.a, max(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x, ~arg_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 0u, 28989u, var_2.a), vec4<u32>(arg_0.a, arg_0.a, u_input.a.x, 4294967295u))), _wgslsmith_sub_u32(func_3(Struct_3(-1470f, global0[_wgslsmith_index_u32(32497u, 18u)], vec4<f32>(-1676f, arg_0.b, -278f, var_2.b)), false, Struct_3(var_2.b, global0[_wgslsmith_index_u32(var_2.a, 18u)], vec4<f32>(-963f, -361f, 144f, arg_2.x))), ~var_2.a)), 1u));
}

fn func_6(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_2(all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), true)) && all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true))), arg_0.a);
    var var_1 = ~abs(~abs(~vec2<u32>(0u, 124771u)));
    var_0 = Struct_2(!all(vec4<bool>(var_0.a, true, var_0.a, true)), 39110u);
    var var_2 = Struct_1(!vec2<bool>((i32(-1i) * -1i) > global0[_wgslsmith_index_u32(24482u, 18u)], false), !select(select(!vec2<bool>(true, var_0.a), select(vec2<bool>(var_0.a, true), vec2<bool>(false, var_0.a), false), any(vec4<bool>(var_0.a, var_0.a, true, var_0.a))), !select(vec2<bool>(false, var_0.a), vec2<bool>(false, var_0.a), false), true), !(!any(select(vec4<bool>(var_0.a, false, false, true), vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(true, false, true, var_0.a)))));
    global0 = array<i32, 18>();
    return Struct_1(select(!vec2<bool>(true, any(vec2<bool>(true, var_0.a))), !var_2.b, true || var_2.c), select(!select(vec2<bool>(var_0.a, false), vec2<bool>(true, true), !vec2<bool>(var_2.b.x, false)), vec2<bool>(var_0.a, true), var_2.a.x), var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(4294967295u, 18u)]);
    global0 = array<i32, 18>();
    var var_1 = false;
    var var_2 = max(_wgslsmith_mult_i32(var_0.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, var_0.x, 5816i, var_0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(49538u, 18u)], 13064i, 2147483647i, 43118i), vec4<i32>(global0[_wgslsmith_index_u32(14377u, 18u)], var_0.x, -1i, 40130i))) & global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), ~(28784i & global0[_wgslsmith_index_u32(u_input.b, 18u)]));
    let var_3 = func_6(Struct_4(~func_1(Struct_4(u_input.b, 582f), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 2147483647i), vec3<f32>(1377f, 618f, 132f)) << (u_input.c % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -604f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1099f - -147f), _wgslsmith_f_op_f32(-1000f * 811f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(298f - -1634f) - _wgslsmith_f_op_f32(f32(-1f) * -969f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-422f + 793f), _wgslsmith_f_op_f32(f32(-1f) * -345f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1767f, 674f) - func_4(Struct_2(false, 19558u), u_input.a).c.xx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -647f))));
    var_1 = !all(var_3.a);
    var var_4 = !(!var_3.c);
    let var_5 = var_3.b.x;
    let var_6 = Struct_4(~3405u, 420f);
    let x = u_input.a;
    s_output = StorageBuffer(-712f, ~0i, 19834u, var_6.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.b, -670f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_6.b * var_6.b), var_6.b)))));
}

