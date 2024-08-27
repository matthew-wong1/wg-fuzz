struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: i32,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), -6477i, -1i, i32(-2147483648));

var<private> global1: array<i32, 26>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, all(vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.xxx - arg_0.yzz) * _wgslsmith_f_op_vec3_f32(-arg_0.wxx)));
    global1 = array<i32, 26>();
    global1 = array<i32, 26>();
    var var_1 = var_0.b.yx;
    global1 = array<i32, 26>();
    return var_0;
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3;
    var var_1 = arg_3;
    return _wgslsmith_mult_u32(u_input.c.x, u_input.c.x ^ 4294967295u);
}

fn func_2() -> i32 {
    var var_0 = ~func_3(62732u, !all(vec2<bool>(false, true)), -1000f, Struct_2(vec3<bool>(false, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false), -67593i, vec3<bool>(true, true, true), _wgslsmith_mod_vec3_u32(vec3<u32>(43413u, u_input.c.x, u_input.c.x), u_input.c.wyw))) << (~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.c.x), firstTrailingBit(vec2<u32>(u_input.c.x, 4294967295u)))) % 32u);
    var var_1 = 1u;
    let var_2 = ~countOneBits(vec2<i32>(_wgslsmith_sub_i32(firstTrailingBit(-1i), u_input.b.x), ~1i));
    let var_3 = firstTrailingBit(u_input.c.xx);
    global0 = ~(~vec4<i32>(_wgslsmith_clamp_i32(43468i, _wgslsmith_sub_i32(u_input.a.x, -2147483647i), global1[_wgslsmith_index_u32(4294967295u, 26u)]), 2147483647i, select(-56786i, select(global0.x, global1[_wgslsmith_index_u32(31760u, 26u)], true), true), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(4294967295u, 26u)] ^ -1071i, u_input.a.x, global1[_wgslsmith_index_u32(75181u, 26u)])));
    return _wgslsmith_dot_vec3_i32(-reverseBits(~global0.ywx), vec3<i32>(abs(~8627i), _wgslsmith_mult_i32(-10501i, firstTrailingBit(-1i)), -u_input.a.x) & ~countOneBits(vec3<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global0.x, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(374f, 626f, 1194f, 695f), vec4<f32>(1215f, 474f, -853f, -105f), false)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -188f, -792f, 1120f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-359f, -660f, -617f, -727f), vec4<f32>(-1000f, -329f, -2303f, -174f), false)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1670f, -643f, -106f, -516f) - vec4<f32>(211f, 1661f, -1000f, 750f))))));
    let var_1 = (-(func_2() ^ _wgslsmith_dot_vec3_i32(vec3<i32>(26585i, global1[_wgslsmith_index_u32(0u, 26u)], -676i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], u_input.b.x, global1[_wgslsmith_index_u32(u_input.c.x, 26u)]))) != _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(22305u, u_input.c.x, u_input.c.x)), 26u)], 44892i, -(u_input.b.x ^ -2147483647i))) | true;
    var var_2 = select(max(~53459u, 8604u), u_input.c.x, true);
    var_2 = 1u;
    let var_3 = var_0.a.x;
    global1 = array<i32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x, reverseBits(~max(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], 12230i), u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.x)))));
}

