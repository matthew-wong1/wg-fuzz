struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: u32 = 39394u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = 70u;
    let var_1 = vec3<bool>(false, arg_1.a && (arg_1.c.x < u_input.c.x), arg_1.a);
    var var_2 = any(select(!(!select(vec4<bool>(true, var_1.x, arg_1.a, false), vec4<bool>(true, true, var_1.x, arg_1.a), true)), select(select(!vec4<bool>(false, false, true, arg_1.a), !vec4<bool>(arg_1.a, true, arg_1.a, arg_1.a), select(vec4<bool>(var_1.x, arg_1.a, arg_1.a, false), vec4<bool>(arg_1.a, false, false, false), false)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(var_1.x, false, false, arg_1.a), arg_1.a), select(vec4<bool>(false, true, true, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, false), true), !vec4<bool>(false, arg_1.a, true, false)), select(arg_1.a, true, false)), !vec4<bool>(true, true, any(vec3<bool>(var_1.x, false, true)), true)));
    let var_3 = true;
    let var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f * -1137f))))) >= 501f;
    return ~(~(~(~u_input.d)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b.x, u_input.d.x, ~4294967295u & _wgslsmith_sub_u32(u_input.b.x, 1u), ~(26200u << (u_input.c.x % 32u))) | reverseBits(func_3(1i, Struct_1(true, vec4<u32>(arg_2.c.x, arg_2.b.x, 1u, arg_2.c.x), u_input.d))), countOneBits(arg_2.b));
    var var_1 = arg_2;
    global0 = array<Struct_1, 6>();
    let var_2 = arg_2.c.wxw;
    var var_3 = select(select(!select(vec4<bool>(arg_2.a, var_1.a, false, arg_2.a), select(vec4<bool>(var_1.a, var_1.a, arg_2.a, var_1.a), vec4<bool>(var_1.a, false, arg_2.a, var_1.a), arg_2.a), !vec4<bool>(arg_2.a, var_1.a, var_1.a, var_1.a)), !(!select(vec4<bool>(arg_2.a, true, arg_2.a, false), vec4<bool>(var_1.a, var_1.a, var_1.a, arg_2.a), true)), vec4<bool>(false, true, any(vec2<bool>(var_1.a, var_1.a)), true)), vec4<bool>(var_1.a | arg_2.a, true, arg_2.a, any(select(select(vec4<bool>(var_1.a, arg_2.a, true, true), vec4<bool>(false, var_1.a, var_1.a, false), vec4<bool>(false, true, true, var_1.a)), vec4<bool>(arg_2.a, arg_2.a, true, var_1.a), vec4<bool>(false, arg_2.a, var_1.a, arg_2.a)))), vec4<bool>(var_1.a, ~42584u == (~u_input.c.x | 1u), true, false == var_1.a));
    return _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(u_input.a, countOneBits(firstTrailingBit(2147483647i))), u_input.a, 9751i);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = arg_0.yx;
    global1 = firstTrailingBit(_wgslsmith_mod_u32((5536u ^ reverseBits(arg_1.c.x)) & abs(arg_1.b.x), ~u_input.c.x));
    let var_1 = u_input.c.x;
    return vec4<i32>(-10994i, _wgslsmith_div_i32(~(-6095i | (u_input.a >> (u_input.b.x % 32u))), -25698i), u_input.a, func_2(vec4<f32>(408f, var_0.x, -1568f, _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1257f, var_0.x)))), global0[_wgslsmith_index_u32(~(var_1 ^ var_1), 6u)]));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    global0 = array<Struct_1, 6>();
    return ~34290u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~_wgslsmith_mod_u32(func_4(max(func_1(vec4<f32>(2724f, -232f, -1429f, -614f), global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), abs(vec4<i32>(u_input.a, -7255i, 0i, 33629i))), Struct_1(false, ~vec4<u32>(u_input.d.x, 1u, 55288u, 1u), countOneBits(u_input.d)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1768f, 394f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-472f, -124f) - vec2<f32>(-844f, -194f)), false))), 1u);
    let var_0 = Struct_1(true, ~(~vec4<u32>(u_input.b.x, func_3(-22793i, global0[_wgslsmith_index_u32(u_input.d.x, 6u)]).x, u_input.c.x, 6586u)), firstLeadingBit(select(abs(u_input.d), _wgslsmith_mod_vec4_u32(u_input.d, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 0u, 1u, u_input.d.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.c.x))), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)))));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(abs(-5567i), 1i), _wgslsmith_dot_vec3_i32((vec3<i32>(u_input.a, -70463i, 8831i) >> (vec3<u32>(u_input.c.x, u_input.c.x, 49795u) % vec3<u32>(32u))) | -vec3<i32>(-43797i, 0i, u_input.a), select(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)), -vec3<i32>(1i, 2147483647i, u_input.a), var_0.a))), -u_input.a);
    global0 = array<Struct_1, 6>();
    var var_2 = vec4<bool>(false, all(vec4<bool>(false, false & any(vec3<bool>(var_0.a, false, var_0.a)), true, any(select(vec3<bool>(true, false, true), vec3<bool>(var_0.a, var_0.a, true), false)))), !(u_input.c.x <= var_0.b.x), select(var_0.a, !var_0.a & !any(vec3<bool>(var_0.a, false, var_0.a)), false));
    let var_3 = var_0.b.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1061f, 119f), vec2<f32>(-217f, -560f)))))));
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2127f - var_4.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_4.x, -1000f))), var_4.x)) - _wgslsmith_f_op_f32(abs(var_4.x))), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-570f, 239f, var_4.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, -415f, var_4.x))), true))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1801f, _wgslsmith_f_op_f32(855f - var_4.x), _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(f32(-1f) * -600f))))));
}

