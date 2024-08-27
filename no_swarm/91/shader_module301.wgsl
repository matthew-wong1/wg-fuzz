struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(1745f, -1730f, -569f, 1441f, -505f, -1542f, -410f, -1210f, -898f, -708f, -1325f, 227f, -1037f, 229f, -1000f, 131f, -393f, -144f, 1845f, -993f, -140f, 1513f, 539f, -1152f, -642f, -303f, 1000f);

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(92777u, 71449u, true, vec4<bool>(false, false, false, true), vec3<f32>(329f, 1000f, 448f)), Struct_1(0u, 18096u, false, vec4<bool>(false, true, true, true), vec3<f32>(383f, 2138f, -346f)));

var<private> global2: vec4<f32> = vec4<f32>(633f, -935f, -261f, 673f);

var<private> global3: array<vec4<u32>, 24>;

var<private> global4: vec3<i32> = vec3<i32>(-38728i, -25647i, i32(-2147483648));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    let var_0 = global2.yy;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + -422f))) - 337f));
    global3 = array<vec4<u32>, 24>();
    var var_2 = vec3<f32>(1590f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.e.x))) * 398f));
    let var_3 = global1[_wgslsmith_index_u32(1u, 2u)];
    return 1u;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = ~abs(vec2<u32>(1u >> (u_input.b.x % 32u), min(_wgslsmith_add_u32(101655u, 20301u), _wgslsmith_add_u32(4294967295u, arg_1))));
    var_0 = vec2<u32>(firstTrailingBit(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 4294967295u), arg_1))), ~abs(_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(u_input.b.x, 24u)], arg_0) >> ((arg_0.x << (arg_1 % 32u)) % 32u)));
    var var_1 = global1[_wgslsmith_index_u32(arg_0.x, 2u)];
    global4 = u_input.c;
    var var_2 = vec4<u32>(_wgslsmith_add_u32(0u, func_2(global1[_wgslsmith_index_u32(max(arg_1, 31168u), 2u)], ~select(vec2<i32>(-1i, global4.x), vec2<i32>(0i, global4.x), var_1.d.xw))), _wgslsmith_mult_u32(var_0.x, var_1.a), ~21792u, 4089u);
    return global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(max(1u, ~var_0.x), ~0u), 2u)];
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: bool) -> vec2<i32> {
    global1 = array<Struct_1, 2>();
    global0 = array<f32, 27>();
    global2 = vec4<f32>(arg_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -912f)) + _wgslsmith_f_op_f32(trunc(-655f))) + _wgslsmith_div_f32(-153f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.x, 595f)), 1665f))), _wgslsmith_f_op_f32(f32(-1f) * -934f), 161f);
    return vec2<i32>(arg_1, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-func_3(func_1(~vec4<u32>(20108u, 3212u, u_input.b.x, u_input.b.x), 63617u), ~(~(-8463i)), true, !any(vec2<bool>(false, true))));
    var var_1 = u_input.e;
    global3 = array<vec4<u32>, 24>();
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), -1228f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-128f))) - global2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.b.x, 27u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(468f))))), true && (select(false, true, false) && true))));
    global3 = array<vec4<u32>, 24>();
    global1 = array<Struct_1, 2>();
    let var_2 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(var_2, vec2<i32>(var_0.x, 11154i)), func_3(func_1(global3[_wgslsmith_index_u32(u_input.b.x, 24u)], u_input.b.x), _wgslsmith_sub_i32(var_2.x, -7711i), true, true), _wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, var_2.x), vec2<i32>(var_1.x, 0i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(364f + global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 27u)]) + -851f)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_2.x, 1i), ~(u_input.d & -1i), var_1.x));
}

