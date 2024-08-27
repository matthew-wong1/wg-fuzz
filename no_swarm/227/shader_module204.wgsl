struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(60294i, 50180i, 1i, -7845i, 2147483647i, -1i, 2147483647i, -1i, -41802i, 15101i, i32(-2147483648), -18585i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec4<i32> {
    var var_0 = min(~vec2<u32>(~9769u >> (~arg_1.x % 32u), 35403u), u_input.b.xx);
    var_0 = select(vec2<u32>(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), max(34589u, ~arg_1.x)), select(_wgslsmith_div_u32(1u, 106682u), u_input.b.x, false)), vec2<u32>(u_input.c, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), false);
    var_0 = select(~max(~(~vec2<u32>(64967u, 1u)), u_input.b.xz), max(select(~arg_1.yx, u_input.b.zx, vec2<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, false, false, true)))), vec2<u32>(~var_0.x, _wgslsmith_add_u32(abs(u_input.b.x), _wgslsmith_mod_u32(var_0.x, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(808f, -1619f)))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-2174f, 3577f, false)))), _wgslsmith_f_op_f32(min(196f, _wgslsmith_f_op_f32(step(326f, -838f))))));
    let var_1 = abs(arg_1.yxx);
    var var_2 = true;
    return -vec4<i32>(~(~19997i), u_input.a.x | 0i, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0, arg_0, -2147483647i), abs(vec3<i32>(arg_0, arg_0, global0[_wgslsmith_index_u32(var_0.x, 12u)]))), arg_0) & ~(vec4<i32>(~23502i, -2147483647i, -39219i, ~0i) & -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 46766i, u_input.a.x, global0[_wgslsmith_index_u32(var_1.x, 12u)]), vec4<i32>(-2217i, global0[_wgslsmith_index_u32(1u, 12u)], arg_0, 1i), vec4<i32>(45831i, u_input.a.x, -15329i, global0[_wgslsmith_index_u32(4294967295u, 12u)])));
}

fn func_2() -> f32 {
    let var_0 = select(false, -1i > ~(~reverseBits(u_input.a.x)), true);
    var var_1 = abs(func_3(_wgslsmith_sub_i32(countOneBits(abs(u_input.a.x)), u_input.a.x), vec4<u32>(0u, 27942u, ~41537u, 39090u)));
    let var_2 = Struct_2(!vec4<bool>(!var_0, var_0, any(select(vec3<bool>(false, var_0, false), vec3<bool>(var_0, false, true), false)), var_0), Struct_1(select(select(!vec2<bool>(var_0, false), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(var_0, true), true)), !vec2<bool>(true, var_0), all(vec3<bool>(true, true, true))), u_input.b.xx), Struct_1(select(select(!vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, true))), vec2<bool>(all(vec4<bool>(var_0, var_0, var_0, true)), true), !var_0), firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.c), ~u_input.b.yz, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.b.x, 67649u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(362f, _wgslsmith_div_f32(-195f, 284f)))) + -177f));
    global0 = array<i32, 12>();
    var var_3 = u_input.a.x;
    return 1671f;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_3(u_input.c, 504f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(-1124f, 317f)), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-330f, -454f), vec2<f32>(1135f, -932f)))), vec2<bool>(any(vec3<bool>(arg_2.x, arg_1.x, arg_2.x)), true)))), Struct_1(select(vec2<bool>(false | arg_2.x, false), arg_2, arg_2.x), select(_wgslsmith_div_vec2_u32(u_input.b.yz, vec2<u32>(6034u, u_input.c)), vec2<u32>(u_input.c, 9634u), arg_2.x | false) ^ ~_wgslsmith_div_vec2_u32(vec2<u32>(25589u, u_input.c), vec2<u32>(u_input.c, u_input.b.x))));
    var var_1 = var_0.d;
    var var_2 = ~firstLeadingBit(~(-vec4<i32>(u_input.a.x, -1i, 1i, arg_0.x) & -vec4<i32>(2458i, 0i, 6146i, arg_0.x)));
    var var_3 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b)))));
    let var_4 = Struct_2(!vec4<bool>(any(vec4<bool>(arg_1.x, false, var_1.a.x, var_0.d.a.x)), false, any(var_0.d.a), select(false, false, arg_1.x)), var_0.d, Struct_1(select(select(select(vec2<bool>(var_1.a.x, arg_1.x), arg_2, var_0.d.a.x), !vec2<bool>(arg_2.x, false), all(var_0.d.a)), var_1.a, arg_1.x), _wgslsmith_add_vec2_u32(max(vec2<u32>(var_1.b.x, 54982u), ~vec2<u32>(var_0.a, 1u)), abs(abs(var_1.b)))), _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b))))));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1355f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(108f * -2934f), _wgslsmith_f_op_f32(-512f - 286f))))))));
    let var_1 = func_1(vec2<i32>(select(-global0[_wgslsmith_index_u32(14090u, 12u)], i32(-1i) * -2147483647i, false), (_wgslsmith_add_i32(global0[_wgslsmith_index_u32(4294967295u, 12u)], -19160i) | ~u_input.a.x) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 11926u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.c, u_input.c, u_input.b.x, u_input.b.x) & vec4<u32>(u_input.c, 43024u, u_input.c, u_input.c)) % 32u)), vec2<bool>(true, !any(vec3<bool>(false, true, false))), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), vec2<bool>(true, true), true));
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    var var_2 = -42515i;
    let var_3 = -abs(~_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, -1i), ~global0[_wgslsmith_index_u32(82352u, 12u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~(~124789u), 1i, u_input.b.x);
}

