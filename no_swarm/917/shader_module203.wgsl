struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<i32>(32213i, 2147483647i)), Struct_1(vec2<i32>(i32(-2147483648), -36760i)), Struct_1(vec2<i32>(3908i, i32(-2147483648))), Struct_1(vec2<i32>(40504i, 2147483647i)), Struct_1(vec2<i32>(-548i, 27252i)), Struct_1(vec2<i32>(1i, 1i)));

var<private> global1: array<f32, 13> = array<f32, 13>(237f, -447f, -195f, -1497f, -1778f, -1071f, 810f, -2927f, 1000f, -836f, 101f, -365f, 155f);

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<i32>(-1i, 2147483647i)), Struct_1(vec2<i32>(0i, 56979i)), Struct_1(vec2<i32>(66001i, 0i)), Struct_1(vec2<i32>(0i, -10144i)), Struct_1(vec2<i32>(-1i, 1i)), Struct_1(vec2<i32>(-1i, 1i)), Struct_1(vec2<i32>(0i, -1i)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<i32>(-61958i, 16047i)), Struct_1(vec2<i32>(-34097i, 979i)), Struct_1(vec2<i32>(-32816i, i32(-2147483648))), Struct_1(vec2<i32>(53315i, -14176i)), Struct_1(vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec2<i32>(-6233i, 1i)), Struct_1(vec2<i32>(89954i, 1i)), Struct_1(vec2<i32>(0i, 1i)), Struct_1(vec2<i32>(10866i, 2147483647i)), Struct_1(vec2<i32>(-15217i, -8939i)), Struct_1(vec2<i32>(0i, 11391i)), Struct_1(vec2<i32>(1i, 3031i)), Struct_1(vec2<i32>(-1i, 0i)), Struct_1(vec2<i32>(-37946i, -10039i)), Struct_1(vec2<i32>(34537i, i32(-2147483648))));

var<private> global3: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global4: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> vec4<bool> {
    return vec4<bool>(global4.a > (global4.a | global4.a), false, false, true);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    global3 = array<vec3<bool>, 28>();
    var var_0 = Struct_2(4294967295u);
    global1 = array<f32, 13>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(847f)) * 973f) * global1[_wgslsmith_index_u32(countOneBits(1u), 13u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~var_0.a | 59606u, 13u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1073f, 1100f)))) - 1001f))));
}

fn func_3(arg_0: f32, arg_1: f32) -> Struct_3 {
    global1 = array<f32, 13>();
    global0 = array<Struct_1, 6>();
    global3 = array<vec3<bool>, 28>();
    let var_0 = select(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false), any(vec3<bool>(false, true, false)))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), func_1().xw, any(vec4<bool>(false, true, false, true))), !(select(true, true, u_input.b.x > u_input.b.x) | true));
    let var_1 = global0[_wgslsmith_index_u32(global4.a, 6u)];
    return Struct_3(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(global4.a, 83955u), firstLeadingBit(~global4.a)), 13u)]), -84674i, Struct_2(reverseBits(~global4.a)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> u32 {
    var var_0 = -arg_1.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-705f, -715f, 2197f, -720f))) + vec4<f32>(arg_2.a, -2075f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(1u, 13u)])), global1[_wgslsmith_index_u32(111754u, 13u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, arg_2.a, -469f, -2037f) + vec4<f32>(arg_2.a, 134f, arg_2.a, global1[_wgslsmith_index_u32(0u, 13u)])), vec4<f32>(-378f, -512f, arg_1.a, -362f), func_1())))), vec4<bool>(arg_0.x || false, true, arg_0.x, !(!(false != arg_0.x)))));
    global0 = array<Struct_1, 6>();
    var var_2 = _wgslsmith_f_op_f32(-var_1.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.xyx, vec3<f32>(_wgslsmith_f_op_f32(min(1251f, _wgslsmith_f_op_f32(var_1.x - var_1.x))), arg_1.a, global1[_wgslsmith_index_u32(arg_2.c.a, 13u)])));
    return abs(47347u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(!func_1()) != true;
    global0 = array<Struct_1, 6>();
    var var_1 = ~(~u_input.b.x << (func_4(vec2<bool>(true, true), func_3(_wgslsmith_f_op_f32(func_2(var_0, Struct_1(vec2<i32>(u_input.b.x, 0i)), u_input.b.xz)), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(46079u, 13u)], global1[_wgslsmith_index_u32(global4.a, 13u)])), Struct_3(345f, u_input.b.x & u_input.a, Struct_2(1u)), Struct_2(42486u)) % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(global4.a, 13u)], _wgslsmith_f_op_f32(f32(-1f) * -919f)));
    let var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(~46304i, ~(28244i ^ u_input.a)), vec3<f32>(768f, var_2.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(70230u, global4.a), 13u)]));
}

