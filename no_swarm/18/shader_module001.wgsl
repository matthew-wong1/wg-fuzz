struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31>;

var<private> global1: Struct_5;

var<private> global2: Struct_3 = Struct_3(vec4<f32>(-229f, -1495f, 823f, 440f), Struct_2(Struct_1(true, true, 998f, vec2<u32>(4294967295u, 0u)), Struct_1(true, true, -794f, vec2<u32>(4294967295u, 1u)), vec2<i32>(i32(-2147483648), -13006i), false));

var<private> global3: array<bool, 5> = array<bool, 5>(true, true, true, true, false);

var<private> global4: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    global2 = global1.b;
    var var_0 = select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(global3[_wgslsmith_index_u32(52645u, 5u)], global2.b.d, arg_1.b), vec3<bool>(false, false, false), true))), vec3<bool>(true, all(vec4<bool>(true, global2.b.a.a || arg_1.a, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-921f)) * _wgslsmith_div_f32(global2.b.a.c, arg_1.c)) < global1.b.b.b.c), global3[_wgslsmith_index_u32(1u, 5u)]);
    var var_1 = arg_1.a;
    var_0 = select(!vec3<bool>((global1.b.a.x > -891f) & global2.b.b.b, any(!vec4<bool>(true, arg_1.a, global3[_wgslsmith_index_u32(4294967295u, 5u)], true)), all(!vec3<bool>(var_0.x, true, true))), vec3<bool>(!global1.b.b.b.a, firstLeadingBit(select(arg_2, arg_2, global1.b.b.a.a)) != _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_2, arg_2), -2147483647i), true), !select(select(!vec3<bool>(global3[_wgslsmith_index_u32(arg_1.d.x, 5u)], global3[_wgslsmith_index_u32(24304u, 5u)], global2.b.d), select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, true, false), true), !vec3<bool>(global2.b.a.a, global2.b.d, false)), !(!vec3<bool>(true, global3[_wgslsmith_index_u32(arg_0, 5u)], true)), !select(vec3<bool>(arg_1.b, true, false), vec3<bool>(true, false, global1.b.b.d), true)));
    let var_2 = global2.b;
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global1.b.b.b.a;
    var var_1 = global4.x;
    let var_2 = 2147483647i;
    let var_3 = global2.b;
    global2 = func_1(56517u, Struct_1(false, global1.b.b.d, _wgslsmith_f_op_f32(f32(-1f) * -469f), abs(reverseBits(global4.yz))), 20182i);
    var_0 = false;
    let var_4 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(770f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global1.b.a.wx)))), _wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(global2.b.c.x >> (4294967295u % 32u)), var_4.x, var_4.x), global1.a.zzx), _wgslsmith_mod_u32(u_input.a.x, ~min(global1.b.b.b.d.x >> (2809u % 32u), _wgslsmith_mod_u32(global2.b.b.d.x, global2.b.a.d.x))));
}

