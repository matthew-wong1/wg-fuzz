struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<u32, 2>;

var<private> global2: vec3<u32>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(global3.b, _wgslsmith_f_op_f32(f32(-1f) * -418f)));
    global0 = array<Struct_1, 10>();
    global1 = array<u32, 2>();
    let var_1 = arg_1;
    var var_2 = var_1;
    return arg_3;
}

fn func_3() -> vec4<bool> {
    var var_0 = !vec4<bool>(all(vec3<bool>(true, true, true)) | true, false, any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, false, false), true)), false);
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.b, global3.b, global3.b, -556f), vec4<f32>(-922f, -363f, 336f, -1669f), vec4<bool>(var_0.x, var_0.x, var_0.x, false))))))) + vec4<f32>(_wgslsmith_f_op_f32(abs(1296f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1178f)) * -1000f), global3.b, 169f))));
    let var_2 = global0[_wgslsmith_index_u32(~(~(33861u ^ ~(global2.x << (1u % 32u)))), 10u)];
    global2 = ~(min(vec3<u32>(~global3.c, ~145u, global1[_wgslsmith_index_u32(1u, 2u)]), vec3<u32>(func_2(vec4<u32>(global2.x, global1[_wgslsmith_index_u32(global3.c, 2u)], 4294967295u, 4294967295u), Struct_1(var_2.a, -809f, global3.c), 23507u, global0[_wgslsmith_index_u32(107609u, 10u)]).c, 0u, _wgslsmith_add_u32(0u, 0u))) << (~vec3<u32>(global3.c, ~0u, _wgslsmith_div_u32(global2.x, global1[_wgslsmith_index_u32(4294967295u, 2u)])) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(28016i, global3.a.x), var_2.a.x, ~var_2.a.x, select(1i, 1585i, all(var_0.zxx))), abs(_wgslsmith_mod_vec4_i32(select(vec4<i32>(1i, u_input.a, 1i, 0i), vec4<i32>(global3.a.x, u_input.b, global3.a.x, -28869i), vec4<bool>(false, false, true, true)), vec4<i32>(var_2.a.x, -14408i, 37306i, global3.a.x))) & vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.a.x, u_input.b, 40603i, -2147483647i), -vec4<i32>(var_2.a.x, -5268i, -1737i, -1i)), min(-1i | var_2.a.x, _wgslsmith_mult_i32(var_2.a.x, u_input.b)), 1i, -1i));
    return vec4<bool>(global1[_wgslsmith_index_u32(30065u, 2u)] < ~var_2.c, all(var_0.xz), true, var_0.x);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(arg_2.c, 10u)];
    let var_1 = func_2(~vec4<u32>(_wgslsmith_mod_u32(0u, global2.x << (11175u % 32u)), arg_2.c, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(3843u, 2u)], 63414u), firstLeadingBit(vec3<u32>(global3.c, 4294967295u, global2.x))), ~_wgslsmith_add_u32(global3.c, 31u)), Struct_1(var_0.a, 847f, 85568u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(max(4294967295u, 10217u), 2u)], _wgslsmith_div_u32(1u, ~1u), 0u), abs(select(vec3<u32>(0u, 5183u, var_0.c), vec3<u32>(global1[_wgslsmith_index_u32(47951u, 2u)], global2.x, 28574u), arg_1) & firstTrailingBit(vec3<u32>(arg_2.c, 1u, 18326u)))), Struct_1(vec2<i32>(_wgslsmith_mult_i32(arg_2.a.x, -72064i), _wgslsmith_div_i32(arg_0, -27875i)), _wgslsmith_f_op_f32(f32(-1f) * -1466f), 30806u));
    let var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-837f, _wgslsmith_f_op_f32(exp2(var_0.b)), all(vec2<bool>(arg_1, false)))), var_0.b, var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1348f))));
    var var_4 = vec4<bool>(all(func_3()), false, arg_1, arg_1);
    return -var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 10>();
    var var_0 = ~_wgslsmith_clamp_i32(~(i32(-1i) * -41678i), -func_1(u_input.a, true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 29075u), 10u)]), _wgslsmith_sub_i32(-(u_input.a & -9161i), 6814i));
    global0 = array<Struct_1, 10>();
    var var_1 = global0[_wgslsmith_index_u32(abs(4294967295u), 10u)];
    var var_2 = global0[_wgslsmith_index_u32(global2.x, 10u)];
    var var_3 = _wgslsmith_f_op_f32(trunc(-860f)) <= _wgslsmith_div_f32(1006f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-457f)) * var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(global3.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.b * 539f), var_1.b))));
}

