struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: f32;

var<private> global2: array<i32, 17> = array<i32, 17>(-14016i, 3137i, -52104i, 2147483647i, 1i, -8105i, 41304i, i32(-2147483648), 1i, 2147483647i, i32(-2147483648), -25140i, 2147483647i, -17949i, -1994i, 38346i, -2042i);

var<private> global3: array<u32, 16>;

var<private> global4: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec3<u32>) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1932f, -1148f) * vec3<f32>(770f, global0.x, global0.x))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(512f, global0.x, -293f)))))));
    let var_0 = Struct_2(u_input.e.xy, ~u_input.e.x, vec4<i32>(global2[_wgslsmith_index_u32(~(~u_input.c.x), 17u)], min(_wgslsmith_mult_i32(u_input.e.x, 37401i), u_input.e.x), 1i, global2[_wgslsmith_index_u32(35621u, 17u)]) << (u_input.d % vec4<u32>(32u)), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~42791u, arg_2.x & 4294967295u, ~arg_0.x, 0u), u_input.d), ~34004u));
    global3 = array<u32, 16>();
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, -937f, 878f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, -765f, global0.x)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1041f, global0.x, -1078f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(712f, global0.x, -323f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-844f, 297f)) * -326f), global0.x, global0.x), !arg_1))));
    let var_1 = 56358u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(444f, 715f) * _wgslsmith_f_op_f32(trunc(-662f))));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: f32) -> u32 {
    global3 = array<u32, 16>();
    let var_0 = u_input.e.x;
    var var_1 = Struct_1(~vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.x, 41577u), firstTrailingBit(u_input.d.wzy)), 16u)], u_input.c.x ^ max(arg_0.x, 24692u), 0u, ~reverseBits(arg_0.x)), ~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~arg_0.xy, max(u_input.d.zx, vec2<u32>(0u, 27220u))), 16u)] & ~(~1u));
    global4 = all(select(vec2<bool>(arg_2 >= arg_2, arg_1 | false), vec2<bool>(true, true), 36817u < (arg_0.x << (30031u % 32u)))) == select(all(!vec2<bool>(arg_1, arg_1)) && false, true, _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -139f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(199f, arg_2, true))));
    let var_2 = 1170f;
    return ~(_wgslsmith_dot_vec4_u32(firstTrailingBit(var_1.a), ~countOneBits(var_1.a)) >> (global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 3165u), 16u)] % 32u));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: bool, arg_3: u32) -> bool {
    let var_0 = vec3<u32>(arg_3, func_3(u_input.a, _wgslsmith_f_op_f32(func_2(vec3<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 16u)], u_input.d.x, 4294967295u), vec3<bool>(true, true, arg_1.x), vec3<u32>(u_input.a.x, u_input.c.x, 4511u))) <= global0.x, -1258f), ~(~firstTrailingBit(arg_3)));
    global2 = array<i32, 17>();
    let var_1 = vec4<bool>(all(arg_0), arg_2, true, any(arg_1));
    var var_2 = Struct_1(firstLeadingBit(vec4<u32>(var_0.x, u_input.d.x, u_input.d.x, global3[_wgslsmith_index_u32(~var_0.x, 16u)])), countOneBits(var_0.x));
    global2 = array<i32, 17>();
    return any(select(vec4<bool>(any(vec3<bool>(var_1.x, var_1.x, arg_2)), false, _wgslsmith_f_op_f32(func_2(vec3<u32>(1u, 4294967295u, arg_3), vec3<bool>(false, arg_2, false), vec3<u32>(32498u, 0u, 6880u))) > global0.x, arg_2), select(!(!var_1), vec4<bool>(var_0.x > 5188u, !arg_2, any(vec2<bool>(arg_2, arg_2)), true), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_u32(u_input.a.x, u_input.c.x, ~72894u);
    let var_1 = select(vec3<bool>(!any(vec2<bool>(true, true)) & all(vec3<bool>(true, true, true)), true, true), vec3<bool>(true, all(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false), u_input.e.x < 11951i)), any(vec3<bool>(func_1(vec2<bool>(true, true), vec3<bool>(true, false, true), false, 1u), any(vec4<bool>(true, true, true, false)), true))), select(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), false), !vec3<bool>(any(vec3<bool>(false, true, true)), true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_div_f32(472f, _wgslsmith_f_op_f32(-global0.x));
    var var_3 = vec3<u32>(45153u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~4294967295u, 16u)], 16u)], ~_wgslsmith_sub_u32(~u_input.d.x, 4294967295u));
    let var_4 = ~abs(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(15779u, u_input.c.x)), 17u)]);
    let var_5 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.x));
}

