struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(-23073i, -4505i, -4943i, 25503i, 1i, 11173i);

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<bool, 13> = array<bool, 13>(false, false, false, true, false, false, false, true, true, false, true, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global2 = array<bool, 13>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.d, _wgslsmith_mult_u32(42954u, u_input.d)), u_input.a.x), 20u)];
    global2 = array<bool, 13>();
    var var_1 = global1[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(15039u, (~u_input.a.x << (select(u_input.a.x, u_input.d, false) % 32u)) << (u_input.d % 32u)), 1u), 20u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.ww), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.b, var_1.b))))), arg_0.ww, vec2<bool>(false, true)));
    return u_input.c;
}

fn func_2() -> u32 {
    global0 = array<i32, 6>();
    global1 = array<Struct_1, 20>();
    var var_0 = global1[_wgslsmith_index_u32(4686u, 20u)];
    let var_1 = true;
    let var_2 = _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(func_3(vec4<f32>(var_0.b, var_0.b, var_0.a, var_0.b)), 0u, ~69490u) << (u_input.a.xzx % vec3<u32>(32u))), ~vec3<u32>(u_input.d, u_input.a.x, u_input.c));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(abs(u_input.a), vec4<u32>(4294967295u, var_2, var_2, 1u) & vec4<u32>(30917u, u_input.c, 0u, 1u)), 1u, abs(u_input.d ^ 1u)), vec4<u32>(50681u, ~var_2 ^ 1u, var_2, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 40426u, u_input.a.x), vec3<u32>(var_2, 1u, 0u)))) & _wgslsmith_mult_u32(5276u, 0u);
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> StorageBuffer {
    let var_0 = !global2[_wgslsmith_index_u32(~0u, 13u)];
    global0 = array<i32, 6>();
    let var_1 = select(!select(vec4<bool>(true, var_0 && true, true, true), select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 13u)], true, false, global2[_wgslsmith_index_u32(1u, 13u)]), vec4<bool>(true, var_0, var_0, true), false), all(select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec3<bool>(false, false, var_0), global2[_wgslsmith_index_u32(u_input.c, 13u)]))), !select(vec4<bool>(true, true, var_0, arg_2.a > arg_2.b), select(select(vec4<bool>(true, true, false, var_0), vec4<bool>(var_0, false, true, true), true), vec4<bool>(false, var_0, global2[_wgslsmith_index_u32(792u, 13u)], true), true), !(!global2[_wgslsmith_index_u32(50982u, 13u)])), select(select(select(!vec4<bool>(false, false, var_0, global2[_wgslsmith_index_u32(u_input.d, 13u)]), vec4<bool>(true, false, var_0, true), global2[_wgslsmith_index_u32(52869u, 13u)]), !select(vec4<bool>(global2[_wgslsmith_index_u32(arg_3, 13u)], false, true, true), vec4<bool>(var_0, false, var_0, false), true), false), select(select(vec4<bool>(false, var_0, var_0, var_0), !vec4<bool>(true, global2[_wgslsmith_index_u32(80871u, 13u)], true, false), true), select(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 13u)], var_0, var_0, true), select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.d, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<bool>(false, false, false, var_0), var_0), var_0), vec4<bool>(var_0, true, !global2[_wgslsmith_index_u32(459u, 13u)], var_0)), !select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(27720u, 13u)], var_0), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)]), select(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 13u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(102044u, 13u)], true, false, false), vec4<bool>(var_0, global2[_wgslsmith_index_u32(u_input.c, 13u)], global2[_wgslsmith_index_u32(69028u, 13u)], true)))));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-616f, -1019f)))))), 125f);
    return StorageBuffer(countOneBits(firstTrailingBit(u_input.a.yyz)));
}

fn func_1() -> StorageBuffer {
    global2 = array<bool, 13>();
    global0 = array<i32, 6>();
    global2 = array<bool, 13>();
    let var_0 = i32(-1i) * -(~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(4294967295u, 6u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.d, 6u)]) | _wgslsmith_dot_vec3_i32(u_input.b.yyy, _wgslsmith_sub_vec3_i32(u_input.b.yyx, u_input.b.xzw)));
    var var_1 = u_input.a.x;
    return func_4(_wgslsmith_f_op_f32(-1188f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1440f)))), abs(u_input.b), global1[_wgslsmith_index_u32(countOneBits(select(func_2(), _wgslsmith_mod_u32(1u, ~83193u), true)), 20u)], _wgslsmith_dot_vec4_u32(u_input.a, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(919f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(820f)) * -507f) * 226f), -782f));
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 20u)];
    let var_2 = Struct_1(_wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x);
    var var_3 = Struct_1(641f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(sign(var_2.b))))));
    var var_4 = (false & !(~u_input.a.x < u_input.a.x)) & false;
    let x = u_input.a;
    s_output = func_1();
}

