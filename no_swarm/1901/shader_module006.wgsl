struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(1000f, 1458f, 326f, -687f, 118f, 1000f, 2344f, -727f, -1649f, -557f, 842f, -1487f, -1642f, -1064f, 101f, 1327f, -1217f, -461f, 1592f, -198f, -294f, -1080f, -746f);

var<private> global1: array<vec3<f32>, 7>;

var<private> global2: f32 = 909f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> bool {
    global2 = _wgslsmith_f_op_f32(round(-2277f));
    global2 = arg_1.a.a;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 23u)] - 117f)))), true);
    let var_1 = 0i > (_wgslsmith_sub_i32(-_wgslsmith_mod_i32(-2147483647i, arg_2.x), _wgslsmith_sub_i32(arg_2.x, 1i)) ^ -34719i);
    var var_2 = 1u;
    return false;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> i32 {
    return _wgslsmith_clamp_i32(~select(1i, ~1i, func_3(true, arg_0, select(vec2<i32>(27023i, 43593i), vec2<i32>(5239i, 64179i), true))), -35376i, ~1i & _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 30349i) ^ firstTrailingBit(vec2<i32>(-1i, -20114i)), vec2<i32>(0i, countOneBits(67769i))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>) -> vec4<i32> {
    global2 = global0[_wgslsmith_index_u32(u_input.a.x, 23u)];
    global0 = array<f32, 23>();
    var var_0 = _wgslsmith_sub_i32(func_4(Struct_2(Struct_1(_wgslsmith_div_f32(503f, global0[_wgslsmith_index_u32(arg_0.x, 23u)]), func_3(false, Struct_2(Struct_1(1536f, false)), vec2<i32>(4467i, 53949i)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)] * -343f) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 23u)] - -951f)), true), true), -2147483647i);
    global0 = array<f32, 23>();
    var var_1 = vec2<i32>(0i, _wgslsmith_sub_i32(1i, -(~countOneBits(0i))));
    return vec4<i32>(_wgslsmith_sub_i32(var_1.x, _wgslsmith_clamp_i32(-2147483647i, -(~var_1.x), abs(var_1.x) >> (_wgslsmith_dot_vec2_u32(arg_1, arg_1) % 32u))), select(var_1.x, -max(_wgslsmith_div_i32(-1i, var_1.x), abs(2147483647i)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))) || true), var_1.x, var_1.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: i32, arg_3: Struct_5) -> f32 {
    global2 = arg_0.x;
    global1 = array<vec3<f32>, 7>();
    let var_0 = ~(~func_2(u_input.a.wzy, ~vec2<u32>(44227u, 0u)) ^ reverseBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 47247i, -11539i, arg_1.b.x), vec4<i32>(arg_2, -1i, arg_3.b.x, arg_2))));
    global1 = array<vec3<f32>, 7>();
    var var_1 = -1i;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3.a.b.a.a), -522f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 7>();
    global0 = array<f32, 23>();
    global2 = -398f;
    var var_0 = u_input.a.xxy;
    var_0 = u_input.a.yyx;
    let var_1 = true;
    global0 = array<f32, 23>();
    global2 = _wgslsmith_div_f32(global0[_wgslsmith_index_u32(37898u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(40211u, 23u)], 1000f), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(47657u, 23u)])))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 23u)]))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(vec2<f32>(161f, global0[_wgslsmith_index_u32(var_0.x, 23u)]), Struct_5(Struct_3(2147483647i, Struct_2(Struct_1(435f, var_1)), false), vec2<i32>(41595i, -39107i)), 27027i, Struct_5(Struct_3(2147483647i, Struct_2(Struct_1(316f, false)), true), vec2<i32>(-579i, -2147483647i)))))))), -945f), var_0.yx & u_input.a.zy);
}

