struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> f32 {
    global1 = Struct_1(vec4<i32>(_wgslsmith_clamp_i32(1i, global1.a.x, -49950i), -global1.a.x, 2147483647i, 66832i));
    global1 = Struct_1(countOneBits(abs(~vec4<i32>(-1i, 25186i, global1.a.x, global0.a.x))));
    var var_0 = 39222u;
    let var_1 = 1u;
    var_0 = _wgslsmith_mod_u32(u_input.a.x, u_input.a.x);
    return 415f;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: vec2<i32>) -> vec4<f32> {
    let var_0 = select(u_input.a.x, ~(~_wgslsmith_div_u32(arg_2.b | 4294967295u, u_input.a.x)), all(!(!(!vec4<bool>(false, arg_2.e.x, arg_2.e.x, false)))));
    var var_1 = -(~arg_3.x);
    let var_2 = 2147483647i;
    global1 = Struct_1(vec4<i32>(-(abs(-34892i) | var_2), _wgslsmith_add_i32(arg_3.x, ~26234i), 1i, 57338i));
    var var_3 = arg_2.b;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 2027f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1039f * _wgslsmith_f_op_f32(-2099f * _wgslsmith_f_op_f32(floor(-535f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1656f) * _wgslsmith_f_op_f32(max(-1687f, -655f)))))), _wgslsmith_f_op_f32(select(-560f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -338f))), !(!(!arg_2.e.x)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1418f) + -226f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-369f, 1000f)))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1230f - 126f), -780f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-917f, -198f))))));
    var var_1 = arg_1.x;
    var_1 = arg_1.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(1727f * var_0.x)))), 1000f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(exp2(var_0.x)))))) - _wgslsmith_f_op_vec4_f32(func_3(vec3<u32>(countOneBits(u_input.a.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(6393u, 4294967295u, 1u), ~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), 11025u), (max(u_input.a, u_input.a) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a) % vec2<u32>(32u))) >> (u_input.a % vec2<u32>(32u)), Struct_4(Struct_1(-vec4<i32>(arg_0.x, global1.a.x, -2147483647i, 14442i)), _wgslsmith_add_u32(4294967295u, firstTrailingBit(2090u)), -13436i, firstLeadingBit(i32(-1i) * -27095i), vec2<bool>(any(vec4<bool>(true, arg_2, arg_2, arg_1.x)), !arg_2)), ~firstTrailingBit(vec2<i32>(global0.a.x, -2773i) & global1.a.yy))));
    var_1 = arg_2;
    return Struct_1(vec4<i32>((i32(-1i) * -1i) << (_wgslsmith_mod_u32(select(26428u, u_input.a.x, arg_1.x), 54368u) % 32u), -49886i, u_input.b, -6537i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    global1 = func_1(global1.a, select(vec2<bool>(~u_input.a.x > u_input.a.x, select(true, false, true)), vec2<bool>((u_input.a.x & 1u) <= 4294967295u, false), !select(all(vec4<bool>(true, false, true, true)), true, false)), any(vec4<bool>(true, true, true, true)));
    var var_1 = false;
    global1 = func_1(~(global1.a | firstLeadingBit(vec4<i32>(global1.a.x, u_input.b, 25149i, -2147483647i))), vec2<bool>(var_0 > ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, -1i, var_0, u_input.b), global1.a), false | any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false))), any(vec2<bool>(select(any(vec3<bool>(false, true, true)), u_input.a.x <= u_input.a.x, true), !any(vec3<bool>(true, true, false)))));
    let var_2 = vec3<u32>(38334u, u_input.a.x, select(15821u, u_input.a.x, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    global1 = Struct_1(vec4<i32>(~u_input.b, 0i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-19316i, -2147483647i, -94859i), _wgslsmith_mult_vec3_i32(global1.a.yzw, vec3<i32>(var_0, u_input.b, 1i))), 2147483647i));
    let var_3 = true;
    var var_4 = ~vec4<u32>(1u, var_2.x, ~(_wgslsmith_mod_u32(var_2.x, var_2.x) ^ 1u), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, _wgslsmith_clamp_u32(1u, 11608u, var_4.x), ~abs(_wgslsmith_div_vec2_i32(global0.a.yz, ~global0.a.xz)));
}

