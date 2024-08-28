struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<bool>;

var<private> global2: array<vec2<i32>, 20>;

var<private> global3: i32 = 2147483647i;

var<private> global4: array<i32, 30> = array<i32, 30>(2147483647i, -14031i, -24300i, 0i, 3063i, 62321i, 0i, 72370i, 2147483647i, i32(-2147483648), 46465i, 2147483647i, 0i, -18574i, 1i, i32(-2147483648), 2147483647i, 0i, -1i, i32(-2147483648), i32(-2147483648), -1i, 1i, -363i, 18544i, 9676i, -1266i, -4548i, 15818i, -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec2<i32> {
    let var_0 = ~_wgslsmith_mult_i32(abs(arg_1.x) << ((u_input.c.x >> ((u_input.c.x ^ 4294967295u) % 32u)) % 32u), ~((i32(-1i) * -2147483647i) & (global4[_wgslsmith_index_u32(0u, 30u)] | arg_1.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-134f * arg_3.x));
    global3 = -abs(var_0);
    let var_2 = ~(select(2147483647i, 1i, true) | 65949i);
    var var_3 = Struct_1(vec4<bool>(min(-2147483647i, arg_1.x) < arg_2.x, true, any(vec4<bool>(global1.x, global1.x, !global1.x, false)), global1.x));
    return select(abs(vec2<i32>(global4[_wgslsmith_index_u32(u_input.b, 30u)], 7623i) ^ _wgslsmith_mult_vec2_i32(arg_2, vec2<i32>(-2147483647i, -12295i))) ^ ~vec2<i32>(~84353i, 1i), arg_2, vec2<bool>(global1.x, true));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = abs(_wgslsmith_sub_vec2_i32(vec2<i32>(20337i, -(u_input.d & -1i)), -_wgslsmith_div_vec2_i32(func_3(global0.x, vec3<i32>(2147483647i, global4[_wgslsmith_index_u32(15754u, 30u)], global4[_wgslsmith_index_u32(u_input.c.x, 30u)]), vec2<i32>(29558i, -48364i), vec3<f32>(-719f, global0.x, global0.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 20u)])));
    var var_1 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -261f)))));
    var var_2 = Struct_1(!arg_0.a);
    global3 = u_input.d;
    global1 = vec3<bool>(var_2.a.x && (u_input.b >= u_input.c.x), global1.x, false);
    return Struct_2(~max(~(~vec2<u32>(1u, u_input.a.x)), u_input.c.zx), 106466u);
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = func_2(Struct_1(vec4<bool>(global1.x, false, false, true)));
    global4 = array<i32, 30>();
    var var_1 = global2[_wgslsmith_index_u32(1u, 20u)];
    var var_2 = 0i;
    global4 = array<i32, 30>();
    return !global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(vec2<bool>(func_1(global4[_wgslsmith_index_u32(u_input.c.x, 30u)]), any(!vec4<bool>(false, false, global1.x, true))), vec2<bool>(global1.x | true, global1.x), global1.xz));
    let var_1 = func_2(Struct_1(vec4<bool>(any(vec2<bool>(global1.x, global1.x)), var_0, !(!global1.x), false)));
    let var_2 = vec4<bool>(any(!(!global1.yy)), all(select(select(vec4<bool>(false, var_0, global1.x, false), vec4<bool>(true, var_0, true, false), false), !vec4<bool>(true, true, var_0, global1.x), true)) | (countOneBits(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(u_input.a.x, 30u)], 1i)) == -1i), any(select(!(!global1.zx), vec2<bool>(var_1.a.x != u_input.b, func_1(-1i)), global1.zz)), false);
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(global0.x * -537f), global0.x < global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -180f))), -729f));
    let var_3 = var_1;
    global3 = ~u_input.d;
    let var_4 = global0.x;
    var var_5 = _wgslsmith_f_op_f32(f32(-1f) * -1187f);
    global4 = array<i32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(0u, 30u)], 38290i, u_input.d, global4[_wgslsmith_index_u32(var_3.a.x, 30u)]), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, global4[_wgslsmith_index_u32(u_input.a.x, 30u)], global4[_wgslsmith_index_u32(1u, 30u)], 0i), vec4<i32>(21362i, 1900i, u_input.d, 45669i)))), u_input.a);
}

