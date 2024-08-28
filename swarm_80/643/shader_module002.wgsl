struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false));

var<private> global1: array<i32, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: i32) -> Struct_2 {
    return Struct_2(Struct_1(false, u_input.a, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -503f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_0), ~_wgslsmith_mod_vec3_i32(~(~vec3<i32>(arg_0, arg_0, -2147483647i)), max(vec3<i32>(arg_0, arg_0, global1[_wgslsmith_index_u32(u_input.a, 30u)]), vec3<i32>(-26645i, arg_0, arg_0))));
}

fn func_1() -> Struct_2 {
    global1 = array<i32, 30>();
    global1 = array<i32, 30>();
    var var_0 = func_2(0i);
    let var_1 = firstLeadingBit(0u);
    var_0 = Struct_2(Struct_1(false, ~abs(~7830u), var_0.a.c, var_0.a.d, _wgslsmith_div_i32(firstTrailingBit(-2147483647i >> (u_input.a % 32u)), -global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(51408u, var_1, var_1, 0u), vec4<u32>(35335u, 108900u, 15982u, u_input.a)), 30u)])), vec3<i32>(-1i) * -(var_0.b << (vec3<u32>(1u, 4294967295u, var_1) % vec3<u32>(32u))));
    return func_2(_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.b.x, global1[_wgslsmith_index_u32(~29312u, 30u)]), ~1i), ~0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: u32, arg_3: vec2<i32>) -> bool {
    global1 = array<i32, 30>();
    global1 = array<i32, 30>();
    let var_0 = arg_1;
    global1 = array<i32, 30>();
    var var_1 = Struct_1(true, 890u, !func_2(~func_1().b.x).a.c, -1000f, -1i);
    return !(!(!func_2(9704i).a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(vec2<f32>(1287f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1995f, _wgslsmith_f_op_f32(min(-1000f, 862f)))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1179f), 449f)))), func_1(), _wgslsmith_add_u32(~35971u, _wgslsmith_clamp_u32(abs(2603u), u_input.a, ~_wgslsmith_mult_u32(0u, u_input.b.x))), ~(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, global1[_wgslsmith_index_u32(22886u, 30u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], -34562i))) << (~u_input.b.xx % vec2<u32>(32u))));
    let var_1 = Struct_2(func_2(12174i).a, _wgslsmith_sub_vec3_i32(vec3<i32>(18736i, i32(-1i) * -1i, global1[_wgslsmith_index_u32(4294967295u, 30u)]), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, global1[_wgslsmith_index_u32(u_input.b.x, 30u)], -1i) ^ vec3<i32>(1i, global1[_wgslsmith_index_u32(13182u, 30u)], 46274i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 30u)], 0i, 0i) ^ _wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(45103u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)], -1i), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)])))));
    var var_2 = var_1.a.b;
    let var_3 = _wgslsmith_f_op_f32(max(-762f, var_1.a.d));
    let var_4 = var_1;
    let var_5 = func_1();
    let var_6 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(var_1.a.d)), _wgslsmith_div_f32(-2215f, var_5.a.d), var_3)))), u_input.b.yx, vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b & reverseBits(u_input.b), u_input.b), 28556u, _wgslsmith_div_u32(~(var_6 << (26275u % 32u)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24601u, var_1.a.b, var_1.a.b, 1u), vec4<u32>(490u, 1u, var_4.a.b, u_input.a)), 49801u))));
}

