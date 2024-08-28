struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(401f, -289f);

var<private> global1: array<Struct_1, 26>;

var<private> global2: array<vec4<i32>, 32>;

var<private> global3: i32 = 1i;

var<private> global4: array<u32, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: vec4<bool>) -> u32 {
    global1 = array<Struct_1, 26>();
    let var_0 = -1i;
    global2 = array<vec4<i32>, 32>();
    global2 = array<vec4<i32>, 32>();
    var var_1 = arg_3.x;
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x & (arg_1.x | global4[_wgslsmith_index_u32(arg_2.x, 2u)]), 1u, _wgslsmith_div_u32(u_input.a.x, 0u << (arg_1.x % 32u)), 5619u), vec4<u32>(firstTrailingBit(min(arg_2.x, u_input.a.x)), ~u_input.a.x, ~abs(arg_2.x), ~(~u_input.a.x)) & ~_wgslsmith_clamp_vec4_u32(~arg_2, vec4<u32>(u_input.a.x, 18418u, u_input.a.x, arg_2.x), arg_2 >> (vec4<u32>(arg_1.x, global4[_wgslsmith_index_u32(7467u, 2u)], global4[_wgslsmith_index_u32(2875u, 2u)], global4[_wgslsmith_index_u32(4985u, 2u)]) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = global1[_wgslsmith_index_u32(18462u, 26u)];
    let var_1 = global1[_wgslsmith_index_u32(34299u, 26u)];
    global0 = array<f32, 2>();
    let var_2 = true || (func_3(2147483647i, select(countOneBits(vec3<u32>(4294967295u, arg_0.d, 835u)), min(u_input.a.yww, vec3<u32>(arg_0.d, global4[_wgslsmith_index_u32(0u, 2u)], 9223u)), select(vec3<bool>(true, var_0.b, arg_0.b), vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(false, false, arg_2.b))), u_input.a, select(select(vec4<bool>(false, var_0.b, var_1.b, arg_0.b), vec4<bool>(false, arg_2.b, false, arg_0.b), vec4<bool>(arg_2.b, var_1.b, var_1.b, true)), vec4<bool>(true, true, true, true), any(vec2<bool>(arg_0.b, false)))) <= arg_2.d);
    var var_3 = _wgslsmith_mult_vec2_u32(u_input.a.wx, ~countOneBits(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, arg_0.d, var_0.d, var_1.d), u_input.a), ~u_input.a.x)));
    return ~_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(arg_2.d, var_0.d, ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_3.x, 28967u, var_1.d, arg_2.d)), var_1.d));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = func_4(global1[_wgslsmith_index_u32(func_3(~2147483647i, arg_0.yyy, firstTrailingBit(u_input.a), vec4<bool>(true, true, true, true)), 26u)], vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~arg_0.wyw), 2u)], -2256f), global1[_wgslsmith_index_u32(~abs(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(arg_0.x, 7187u)), min(1u, 1u)), 2u)]), 26u)]);
    var var_1 = global1[_wgslsmith_index_u32(39530u, 26u)];
    global1 = array<Struct_1, 26>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_0.x, 2u)], -1625f)), 118f)), vec2<f32>(1014f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1077f + -885f))), vec2<bool>(any(select(vec2<bool>(var_1.b, false), vec2<bool>(false, var_1.b), true)), var_1.b))), true, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_0.x, (arg_0.x >> (28109u % 32u)) >> (13929u % 32u)), 2u)]), global4[_wgslsmith_index_u32(4294967295u, 2u)]);
    let var_3 = var_2;
    return var_2;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(min(reverseBits(~_wgslsmith_mult_u32(~1u, min(1u, arg_1.d))), firstLeadingBit(u_input.a.x)), 26u)];
    let var_1 = func_2(vec4<u32>(~(~(~1u)), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(u_input.a.zy, vec2<u32>(arg_1.d, u_input.a.x), u_input.a.yz)), abs(~vec2<u32>(87090u, 4294967295u))), 1u, u_input.a.x));
    var var_2 = !select(vec2<bool>(false, false), vec2<bool>(all(!vec3<bool>(false, var_1.b, arg_1.b)), func_2(vec4<u32>(arg_1.d, 4294967295u, 24032u, 70343u)).b), all(!(!vec2<bool>(false, arg_1.b))));
    let var_3 = var_1.b;
    global0 = array<f32, 2>();
    return _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x), var_1.a.x) + arg_1.c) + _wgslsmith_f_op_f32(2834f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 2u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(u_input.a.yx & vec2<u32>(global4[_wgslsmith_index_u32(54118u, 2u)], global4[_wgslsmith_index_u32(select(0u, u_input.a.x, false) & (global4[_wgslsmith_index_u32(28704u, 2u)] ^ u_input.a.x), 2u)]));
    let var_1 = vec2<u32>(global4[_wgslsmith_index_u32(~u_input.a.x, 2u)], select(~(~0u), 4239u, false));
    global4 = array<u32, 2>();
    global0 = array<f32, 2>();
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_div_i32(~firstLeadingBit(u_input.b.x), 0i), -84271i, ~(u_input.b.x & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(23632u, 2u)], 32u)]))), _wgslsmith_mod_vec3_i32(-vec3<i32>(37656i, 2147483647i, u_input.b.x), ~(-(~vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)))));
    var var_3 = global1[_wgslsmith_index_u32(var_0.x | ~(~abs(_wgslsmith_clamp_u32(808u, var_1.x, var_0.x))), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-317f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(var_2, Struct_1(vec2<f32>(2359f, 960f), false, -214f, 56433u)))))))), vec4<i32>(-38725i, -40570i, -22649i, var_2.x), vec2<f32>(_wgslsmith_f_op_f32(select(172f, var_3.a.x, !var_3.b)), 1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1253f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_3.c, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 2u)], 2u)], var_3.b)), -974f, true))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1155f * var_3.c)))), countOneBits(u_input.a.yw));
}

