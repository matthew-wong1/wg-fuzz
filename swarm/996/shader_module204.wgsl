struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(0u, 13368u));

var<private> global1: array<vec2<bool>, 23>;

var<private> global2: Struct_4;

var<private> global3: array<vec3<f32>, 10>;

var<private> global4: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> vec4<i32> {
    return u_input.b;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: u32) -> bool {
    var var_0 = arg_0;
    let var_1 = Struct_4(vec4<bool>(true, !(!arg_2.a.x), var_0.b, true));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(674f, 207f) - vec2<f32>(376f, -1715f)) * vec2<f32>(-939f, 378f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -502f) - vec2<f32>(-746f, 454f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -1044f) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1577f, -414f) - vec2<f32>(-664f, -260f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(542f, -2580f) - vec2<f32>(478f, 1375f))))))));
    var var_3 = _wgslsmith_mod_vec2_u32(min(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, arg_3) & arg_1.xz, _wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(arg_1.x, arg_1.x))), ~global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 27198u), vec4<u32>(arg_1.x, u_input.c, 6632u, 0u)), 1u)]), reverseBits(vec2<u32>(4294967295u, ~arg_3)));
    let var_4 = 4294967295u;
    return select(any(vec2<bool>(var_4 >= arg_3, all(!var_1.a.yzx))), any(vec3<bool>(true, true, true)) && all(!global2.a.zz), true);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> vec3<u32> {
    let var_0 = vec4<i32>(arg_1.a, u_input.b.x & _wgslsmith_mod_i32(arg_1.a, -64667i), ~arg_1.a, -(~_wgslsmith_mod_i32(15177i, u_input.b.x))) | func_2(0i, Struct_1(abs(~41063i), select(global2.a.x, all(vec3<bool>(global2.a.x, arg_1.b, true)), all(global2.a.wyz))), arg_1.b, Struct_2(vec3<i32>(47809i, u_input.a.x, -15554i), arg_1));
    let var_1 = arg_1;
    let var_2 = Struct_1(arg_0.x, true);
    var var_3 = Struct_4(vec4<bool>(true, true, func_3(Struct_1(u_input.d ^ arg_1.a, false), vec3<u32>(u_input.c, arg_2, 36319u), Struct_4(!vec4<bool>(global2.a.x, arg_1.b, global2.a.x, var_2.b)), ~arg_2), any(vec3<bool>(all(global2.a.xz), !global2.a.x, var_2.b))));
    global0 = array<vec2<u32>, 1>();
    return _wgslsmith_sub_vec3_u32(~select(~vec3<u32>(u_input.c, 33179u, arg_2), abs(~vec3<u32>(1u, 4294967295u, 1u)), global2.a.x), ~abs(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, 81805u, u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(41537u, u_input.c, arg_2), vec3<u32>(0u, arg_2, 10850u), vec3<u32>(arg_2, 4294967295u, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, -1565f, -383f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-932f, -1289f, -190f, -1010f) * vec4<f32>(-1305f, -1845f, -261f, -546f)))))));
    global2 = Struct_4(!global2.a);
    global4 = abs(1u);
    global2 = Struct_4(global2.a);
    var var_1 = vec2<u32>(u_input.c, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yw, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -583f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(247f * _wgslsmith_f_op_f32(1000f - -983f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 467f)), _wgslsmith_f_op_f32(ceil(var_0.x))), ~func_1(abs(vec3<i32>(u_input.b.x, u_input.a.x, 32456i)), Struct_1(abs(u_input.d), global2.a.x), abs(_wgslsmith_mult_u32(21307u, 0u)), _wgslsmith_f_op_vec3_f32(var_0.yyz * _wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(56123u, 10u)] - var_0.xyy))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x * var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_add_u32(min(_wgslsmith_div_u32(~u_input.c, min(1u, var_1.x)), 3951u), ~(~21118u) >> (_wgslsmith_sub_u32(30273u, u_input.c) % 32u)));
}

