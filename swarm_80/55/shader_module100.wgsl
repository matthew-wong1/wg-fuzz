struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, false, true, false, true, true, true, false, false, true, false, false, false);

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<Struct_1, 22>;

var<private> global3: array<Struct_1, 11>;

var<private> global4: vec2<i32> = vec2<i32>(22104i, -1i);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    return Struct_1(~_wgslsmith_add_i32(_wgslsmith_add_i32(arg_1.a, -2147483647i), ~(-22019i)) & (abs(0i) | arg_0.a));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec4<f32>) -> i32 {
    global3 = array<Struct_1, 11>();
    global2 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1.x, arg_0.x) | arg_1, -u_input.c.xzy) | (arg_0.x | global4.x), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-11248i), global4.x), ~arg_1.xx), u_input.c.x), -_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(arg_1.zz, vec2<i32>(u_input.d, -15933i)), ~arg_1.x, _wgslsmith_div_i32(-2147483647i, 9814i)), vec3<i32>(arg_0.x, -10796i, arg_0.x)));
    global3 = array<Struct_1, 11>();
    let var_1 = vec3<i32>(u_input.c.x, ~1i, max(-11405i, firstTrailingBit(firstTrailingBit(_wgslsmith_add_i32(u_input.a, arg_1.x)))));
    return _wgslsmith_sub_i32(-arg_1.x, 1i);
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    global0 = array<bool, 13>();
    global2 = array<Struct_1, 22>();
    global1 = array<Struct_1, 24>();
    let var_0 = func_2(global1[_wgslsmith_index_u32(select(~(u_input.e.x ^ u_input.e.x) ^ _wgslsmith_div_u32(u_input.e.x >> (1u % 32u), ~u_input.e.x), ~29898u, arg_0), 24u)], Struct_1(i32(-1i) * -2147483647i));
    global4 = (vec2<i32>(2147483647i, select(max(-1i, var_0.a), ~var_0.a, -35328i <= u_input.d)) ^ vec2<i32>(global4.x, _wgslsmith_mod_i32(-2147483647i, -31968i))) | vec2<i32>(max(1i, abs(func_3(vec4<i32>(5385i, -75497i, global4.x, -2147483647i), u_input.c.xzy, vec4<f32>(-212f, -1223f, 203f, -132f)))), _wgslsmith_div_i32(u_input.d, func_2(Struct_1(var_0.a), Struct_1(1i)).a));
    return _wgslsmith_mult_u32(104354u, ~max(~u_input.e.x & u_input.e.x, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(abs(_wgslsmith_div_u32(33356u, 1u)), _wgslsmith_mult_u32(~u_input.e.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(19613u, 44316u, 78809u, u_input.e.x) & vec4<u32>(28106u, u_input.e.x, 0u, u_input.e.x), vec4<u32>(4294967295u, u_input.e.x, 21084u, u_input.e.x))), 1u) ^ func_1(all(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 6702u), 13u)], true, false)), true);
    global1 = array<Struct_1, 24>();
    global2 = array<Struct_1, 22>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 1000f))) * vec2<f32>(212f, _wgslsmith_f_op_f32(f32(-1f) * -745f)))) * vec2<f32>(1f, _wgslsmith_f_op_f32(max(-968f, 1f))));
    var var_2 = u_input.c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~u_input.e.x);
}

