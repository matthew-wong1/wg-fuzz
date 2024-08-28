struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-1053f, 4294967295u, Struct_2(true), true);

var<private> global1: f32;

var<private> global2: array<bool, 32>;

var<private> global3: array<vec4<bool>, 1>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> vec2<bool> {
    return vec2<bool>(false, !(!(!global2[_wgslsmith_index_u32(~u_input.c.x, 32u)])));
}

fn func_1() -> Struct_2 {
    let var_0 = global0.c;
    let var_1 = Struct_2(!var_0.a | any(select(!vec2<bool>(false, global2[_wgslsmith_index_u32(global0.b, 32u)]), func_2(), vec2<bool>(false, false))));
    let var_2 = 501f;
    global3 = array<vec4<bool>, 1>();
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_mult_u32(abs(~(u_input.b.x >> (global0.b % 32u))), ~(~(~u_input.b.x))), var_1, var_0.a || global2[_wgslsmith_index_u32(~firstLeadingBit(u_input.c.x), 32u)]);
    return Struct_2(false);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec2_i32(~(abs(~u_input.d) << (vec2<u32>(arg_0.b, firstLeadingBit(16187u)) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.d.x, u_input.d.x), firstTrailingBit(u_input.d.x), u_input.d.x), 1i & u_input.d.x));
    let var_1 = arg_0;
    let var_2 = func_1();
    var var_3 = func_1();
    var var_4 = vec2<bool>(any(!(!(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 32u)], arg_0.c.a, false)))), true);
    return !(!(!select(!vec3<bool>(global2[_wgslsmith_index_u32(17652u, 32u)], true, true), select(vec3<bool>(var_2.a, false, true), vec3<bool>(global0.d, true, global2[_wgslsmith_index_u32(28097u, 32u)]), var_2.a), !vec3<bool>(global0.c.a, var_1.d, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~75175u, 0u), 32u)] && true);
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~(~min(global0.b, 27207u)), 21770u), ~global0.b);
    global1 = global0.a;
    global1 = _wgslsmith_f_op_f32(-global0.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(818f, -511f, _wgslsmith_f_op_f32(1534f - 702f), global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(203f, 702f, global0.a, global0.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + 696f)), _wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), 712f)));
    var var_3 = all(select(func_3(Struct_3(_wgslsmith_f_op_f32(395f + -506f), max(u_input.c.x, u_input.b.x), Struct_2(false), false), func_1(), !(u_input.d.x >= u_input.d.x)), vec3<bool>(all(select(vec2<bool>(global2[_wgslsmith_index_u32(var_1, 32u)], true), vec2<bool>(var_0.a, global0.c.a), false)), func_1().a, true), vec3<bool>(_wgslsmith_mult_u32(38604u, var_1) < 4294967295u, !all(vec3<bool>(true, var_0.a, global0.d)), true)));
    var var_4 = ~vec3<i32>(16956i, ~(-(~u_input.d.x)), u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(~((global0.b << (u_input.a.x % 32u)) | 45091u) << (var_1 % 32u), _wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(~u_input.a.wxy, u_input.a.wzx), ~(~abs(vec3<u32>(var_1, 30675u, u_input.b.x)))), _wgslsmith_mod_u32(u_input.b.x, global0.b), 1u, var_1);
}

