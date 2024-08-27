struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 119855u;

var<private> global1: array<Struct_4, 21>;

var<private> global2: array<f32, 20>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = 4294967295u;
    let var_1 = vec3<u32>(var_0, ~var_0, 41219u);
    let var_2 = Struct_2(arg_0, arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(-260f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)]) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(624f, _wgslsmith_f_op_f32(f32(-1f) * -2035f)))), ~_wgslsmith_add_vec2_i32(abs(arg_0.a), (vec2<i32>(arg_0.a.x, arg_0.a.x) >> (u_input.a.xz % vec2<u32>(32u))) >> ((var_1.zz >> (var_1.xy % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_3 = arg_0.a.x;
    let var_4 = arg_0;
    return _wgslsmith_mult_i32(var_3, -1i);
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = 701f;
    global0 = ~12851u;
    var_0 = global2[_wgslsmith_index_u32(~u_input.a.x, 20u)];
    let var_1 = u_input.d.x;
    let var_2 = -434f;
    return Struct_2(Struct_1(-u_input.d.xy), Struct_1(vec2<i32>(_wgslsmith_sub_i32(~var_1, -31618i), -func_3(Struct_1(vec2<i32>(1i, -14693i))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1020f, var_2), _wgslsmith_div_vec2_f32(vec2<f32>(var_2, -313f), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(0u, 20u)])))) - vec2<f32>(var_2, global2[_wgslsmith_index_u32(countOneBits(62793u), 20u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], 669f))) + vec2<f32>(-925f, -298f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(46879u, 20u)]), vec2<f32>(854f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)])))))))), ~vec2<i32>(2147483647i, var_1));
}

fn func_1(arg_0: bool) -> u32 {
    global2 = array<f32, 20>();
    let var_0 = 1u;
    global1 = array<Struct_4, 21>();
    var var_1 = func_2(vec3<bool>(all(!(!vec4<bool>(false, arg_0, false, arg_0))), arg_0, arg_0));
    let var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.a.zw, u_input.a.wx), 0u);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(_wgslsmith_dot_vec2_u32(reverseBits(u_input.a.xy), reverseBits(vec2<u32>(1u, ~44014u))));
    global2 = array<f32, 20>();
    global2 = array<f32, 20>();
    var var_0 = !select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true), vec2<bool>(true, true)), vec2<bool>(_wgslsmith_mod_i32(-2147483647i, u_input.b) != reverseBits(68350i), true), vec2<bool>(false, !any(vec2<bool>(true, true))));
    var var_1 = min(vec4<u32>(select(u_input.a.x, 9462u, true), ~_wgslsmith_clamp_u32(0u, 11903u, u_input.a.x) ^ func_1(false), u_input.a.x, ~_wgslsmith_div_u32(_wgslsmith_mult_u32(6103u, u_input.a.x), 96730u)), vec4<u32>(_wgslsmith_sub_u32(u_input.a.x << (1u % 32u), 1u), _wgslsmith_sub_u32(u_input.a.x, max(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 17692u), u_input.a.yz))), u_input.a.x, abs(~(~30796u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x ^ 28301u, global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(5676u, abs(u_input.a.x), var_1.x), 20u)], 35754i, ~u_input.c.zz, u_input.d.x);
}

