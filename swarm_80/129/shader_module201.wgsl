struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30>;

var<private> global1: array<Struct_3, 2>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global3: bool = true;

var<private> global4: vec4<i32> = vec4<i32>(-59434i, 2147483647i, 23124i, 2147483647i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: vec2<i32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.c.b.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_1.c.a.a.x, _wgslsmith_f_op_f32(trunc(831f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -409f)))));
    var var_1 = -466f;
    global1 = array<Struct_3, 2>();
    var var_2 = ~firstTrailingBit(select(u_input.a.x, arg_0 >> (83834u % 32u), global2.x) ^ _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, arg_0), 1u));
    var_2 = ~(~(~0u));
    return -vec4<i32>(arg_2.x, -_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(arg_2.x, -5238i, 41460i)), ~vec3<i32>(2147483647i, 1i, global4.x)), arg_2.x, -35195i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1596f, -455f, 277f, -228f), vec4<f32>(184f, -806f, -513f, -1795f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-887f, -843f, 533f, -1009f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(937f, 137f, 588f, 1123f))))), ~func_1(2502u, Struct_4(Struct_2(Struct_1(vec4<f32>(312f, 2983f, 1000f, -1744f), vec4<i32>(u_input.b.x, global4.x, global4.x, global4.x), vec4<f32>(1278f, 459f, 129f, -1511f), vec2<u32>(1u, u_input.a.x), vec3<f32>(-1285f, -286f, -1503f)), Struct_1(vec4<f32>(1000f, -2033f, -1000f, -1000f), vec4<i32>(45448i, global4.x, -2147483647i, 2147483647i), vec4<f32>(1000f, -731f, -259f, -526f), vec2<u32>(u_input.a.x, 4294967295u), vec3<f32>(-472f, 342f, -1000f))), 22581u, Struct_2(Struct_1(vec4<f32>(-990f, 412f, 841f, 853f), vec4<i32>(-16736i, 0i, u_input.b.x, u_input.b.x), vec4<f32>(176f, 161f, 2031f, -420f), vec2<u32>(u_input.a.x, 0u), vec3<f32>(1830f, 744f, -735f)), Struct_1(vec4<f32>(2040f, 1000f, -1397f, -726f), vec4<i32>(-2417i, global4.x, u_input.b.x, 0i), vec4<f32>(-334f, 1485f, -850f, -545f), global0[_wgslsmith_index_u32(1u, 30u)], vec3<f32>(-578f, -1000f, -2440f))), Struct_1(vec4<f32>(-630f, -1198f, -890f, 1062f), vec4<i32>(global4.x, global4.x, u_input.b.x, global4.x), vec4<f32>(340f, -295f, -617f, -837f), vec2<u32>(u_input.a.x, u_input.a.x), vec3<f32>(733f, 972f, -650f))), u_input.b.yx) << (_wgslsmith_mod_vec4_u32(~u_input.a, select(u_input.a, vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x), vec4<bool>(global2.x, global2.x, true, true))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-720f, -1223f, -1459f, 446f)), vec4<f32>(-598f, -251f, -545f, -1596f)) + vec4<f32>(-1357f, _wgslsmith_div_f32(383f, 658f), _wgslsmith_f_op_f32(-133f + 443f), -387f)), ~(~u_input.a.yz), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 496f, 220f))))))));
    var var_1 = vec3<u32>(var_0.a.d.x, _wgslsmith_mult_u32(u_input.a.x, abs(~121019u)), var_0.a.d.x);
    global3 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, u_input.b.x, 0i, -1i ^ abs(u_input.b.x));
}

