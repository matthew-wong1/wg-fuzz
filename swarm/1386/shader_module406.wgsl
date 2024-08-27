struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<f32> = vec4<f32>(161f, 376f, -941f, 1384f);

var<private> global2: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(-1i, -1i, 9031i, -9155i), vec4<i32>(-11329i, 3727i, -19179i, -22771i), vec4<i32>(1i, 1i, -45420i, 2147483647i), vec4<i32>(-9059i, i32(-2147483648), 0i, 0i), vec4<i32>(29133i, 40041i, 1i, 2147483647i), vec4<i32>(-6392i, 0i, -58492i, i32(-2147483648)), vec4<i32>(0i, -3020i, -63892i, 1i), vec4<i32>(16759i, -22508i, 0i, -40307i), vec4<i32>(13633i, 2147483647i, 8595i, 1i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 37742i), vec4<i32>(-19431i, 51023i, 33712i, i32(-2147483648)), vec4<i32>(-23034i, 1i, -1i, 10750i), vec4<i32>(-92842i, 25054i, 42969i, 0i), vec4<i32>(-17817i, -29949i, 6076i, 990i), vec4<i32>(-1i, 8966i, -53009i, -19967i), vec4<i32>(-37162i, 38568i, i32(-2147483648), 36394i), vec4<i32>(0i, 18401i, 26591i, 13529i));

var<private> global3: array<vec3<f32>, 6>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_1() -> vec3<i32> {
    return vec3<i32>(max(~(~u_input.b.x), 2147483647i) & 0i, _wgslsmith_sub_i32(-26682i >> (reverseBits(_wgslsmith_sub_u32(u_input.a, 4294967295u)) % 32u), _wgslsmith_div_i32(u_input.b.x, ~u_input.b.x)), u_input.b.x);
}

fn func_3() -> u32 {
    global2 = array<vec4<i32>, 17>();
    global2 = array<vec4<i32>, 17>();
    var var_0 = Struct_2(Struct_1(all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false), true))), Struct_1(false), vec2<bool>(true, all(vec4<bool>(true, false, false, true)) && true), Struct_1(true));
    var var_1 = u_input.b.x;
    var_0 = Struct_2(var_0.d, var_0.d, var_0.c, var_0.a);
    return ~4294967295u;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<i32>, arg_3: vec2<i32>) -> bool {
    var var_0 = Struct_2(Struct_1(true), Struct_1(_wgslsmith_dot_vec2_i32(abs(u_input.b), vec2<i32>(1i, arg_0)) > max(~1i, _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(global0.x, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)]))), !select(!vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, false), vec2<bool>(true, !arg_1)), Struct_1(false));
    global0 = vec2<u32>(func_3(), ~global0.x);
    let var_1 = Struct_2(Struct_1(any(!var_0.c)), var_0.a, var_0.c, Struct_1(arg_1));
    var_0 = Struct_2(var_1.a, Struct_1(!(arg_3.x > -59127i) & var_1.d.a), vec2<bool>(false, false), Struct_1(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(global1.x - global1.x)) != _wgslsmith_div_f32(-712f, 862f)));
    let var_2 = Struct_1(select(false, var_1.d.a, var_1.c.x));
    return 1i < -(~arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 17>();
    let var_0 = select(vec3<i32>(select(u_input.b.x, u_input.b.x, true), 0i, u_input.b.x | (u_input.b.x >> (39483u % 32u))), reverseBits(min(~vec3<i32>(-9146i, u_input.b.x, 14403i), func_1()) << (~(~vec3<u32>(39447u, global0.x, 67558u)) % vec3<u32>(32u))), vec3<bool>(false, false, func_2(_wgslsmith_add_i32(u_input.b.x | u_input.b.x, 2147483647i), all(vec3<bool>(true, true, true)), ~(vec3<i32>(1i, -23390i, -39430i) & vec3<i32>(-2147483647i, 1i, u_input.b.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 0i), u_input.b)))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1046f, global1.x, global1.x) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1159f, global1.x, -2090f, -3203f)))))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -843f), _wgslsmith_f_op_f32(step(713f, _wgslsmith_f_op_f32(global1.x - 1270f))), -418f)));
    let var_1 = select(~u_input.b.x, var_0.x, !(!(!any(vec4<bool>(true, false, true, false)))));
    global2 = array<vec4<i32>, 17>();
    let var_2 = !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false));
    let var_3 = 5505u;
    let var_4 = Struct_3(_wgslsmith_add_u32(~(global0.x << (4294967295u % 32u)), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-669f)), global1.x, (var_2.x && true) != (true || any(var_2)))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.b, min(~u_input.b, firstTrailingBit(u_input.b))), vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, 5647i)), -1066f, ~u_input.b, _wgslsmith_mod_vec2_i32(u_input.b >> (max(~vec2<u32>(15337u, 0u), vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)), ~vec2<i32>(u_input.b.x, -2147483647i ^ u_input.b.x)));
}

