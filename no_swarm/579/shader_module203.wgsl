struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<f32>, 22>;

var<private> global2: vec4<f32> = vec4<f32>(1000f, 127f, 965f, -470f);

var<private> global3: array<i32, 9>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: f32) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_3)), -340f, true)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) - _wgslsmith_f_op_f32(global2.x * 600f)), arg_1.a))), 20029u, vec2<f32>(_wgslsmith_f_op_f32(135f * global2.x), arg_3), true);
    global1 = array<vec4<f32>, 22>();
    global2 = vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(floor(var_0.c.x)), -650f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a * var_0.c.x) + var_0.c.x) * var_0.a)));
    let var_1 = !var_0.d;
    let var_2 = _wgslsmith_f_op_f32(-arg_3);
    return select(vec2<bool>(all(vec4<bool>(u_input.d <= arg_0.x, all(vec4<bool>(arg_1.d, arg_1.d, false, true)), var_0.d, any(vec2<bool>(var_1, false)))), true), !(!(!(!vec2<bool>(false, arg_1.d)))), select(select(!(!vec2<bool>(false, arg_1.d)), vec2<bool>(true, var_0.d & true), !vec2<bool>(true, var_0.d)), select(!(!vec2<bool>(var_1, false)), select(vec2<bool>(true, true), vec2<bool>(arg_1.d, var_1), arg_1.d), var_1), var_1));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = array<vec4<f32>, 22>();
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 9u)] >> ((0u << (u_input.e.x % 32u)) % 32u), _wgslsmith_mod_i32(1i, select(global0.x, -1i, false))) ^ ~vec2<i32>(u_input.c.x, abs(2640i)), vec2<i32>(-1i) * -select(u_input.c.yy, vec2<i32>(global0.x, -21159i) ^ u_input.c.zy, vec2<bool>(true, true)));
    var var_0 = vec2<i32>(firstTrailingBit(global0.x), global3[_wgslsmith_index_u32(u_input.e.x << (3553u % 32u), 9u)]);
    var var_1 = Struct_2(abs(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.e.x, u_input.e.x, 40055u, u_input.e.x)), countOneBits(vec4<u32>(u_input.e.x, 100921u, u_input.e.x, u_input.e.x)))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1611f - arg_0) + -713f))), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.e.x, u_input.e.x, 52293u) | u_input.e), vec3<u32>(0u, u_input.e.x, 0u)), global2.yz, any(vec3<bool>(true, true, true))), Struct_1(_wgslsmith_f_op_f32(trunc(893f)), ~(u_input.e.x | u_input.e.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 843f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(361f, 416f))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global2.xy, global2.xx), global2.yz))), all(vec4<bool>(true, true, true, select(true, false, false)))), Struct_1(705f, ~4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-363f, -747f) + vec2<f32>(arg_0, 1423f)), _wgslsmith_f_op_vec2_f32(select(global2.yx, vec2<f32>(global2.x, arg_0), vec2<bool>(false, false))))), all(func_3(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(u_input.e.x, 9u)], -12122i), Struct_1(arg_0, u_input.e.x, global2.wz, false), ~vec2<u32>(16847u, u_input.e.x), _wgslsmith_f_op_f32(f32(-1f) * -901f)))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(global0.x, global3[_wgslsmith_index_u32(52743u, 9u)], 49585i, u_input.b), vec4<i32>(_wgslsmith_div_i32(-2147483647i, global0.x), -1i, _wgslsmith_mod_i32(0i, -1640i), min(-44533i, var_0.x)), countOneBits(vec4<i32>(-1i, global3[_wgslsmith_index_u32(u_input.e.x, 9u)], 0i, var_0.x))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, _wgslsmith_sub_u32(u_input.e.x, 4294967295u), u_input.e.x, _wgslsmith_sub_u32(22644u, 1u)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 358u, u_input.e.x, u_input.e.x), vec4<u32>(42806u, u_input.e.x, 4294967295u, 0u), vec4<u32>(0u, u_input.e.x, u_input.e.x, 36361u)), vec4<u32>(7234u, 13859u, u_input.e.x, u_input.e.x))) % vec4<u32>(32u)));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global1[_wgslsmith_index_u32(65170u, 22u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(174f, var_1.d.a, -337f, -133f) + global1[_wgslsmith_index_u32(var_1.b.b, 22u)])) + global1[_wgslsmith_index_u32(var_1.c.b ^ (var_1.a >> (var_1.a % 32u)), 22u)]))));
    return Struct_1(1000f, var_1.d.b, vec2<f32>(-415f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.c.x) * _wgslsmith_f_op_f32(global2.x - global2.x)))), true);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(global2.x, u_input.e.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global2.wx, _wgslsmith_f_op_vec2_f32(vec2<f32>(1187f, global2.x) * global2.yy))))), false);
    var_0 = func_2(571f);
    global2 = _wgslsmith_f_op_vec4_f32(min(global1[_wgslsmith_index_u32(var_0.b, 22u)], _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-682f, 622f, var_0.c.x, 103f))))))));
    return func_2(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = global3[_wgslsmith_index_u32(1u, 9u)];
    let var_2 = abs(_wgslsmith_mod_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(45655u, var_0.b, 1u, 115009u), _wgslsmith_sub_vec4_u32(vec4<u32>(42475u, 24025u, 0u, 520u), vec4<u32>(21088u, 34615u, var_0.b, var_0.b))), ~16233u, !var_0.d), 0u));
    let var_3 = Struct_2(_wgslsmith_add_u32(42770u, ~(~var_0.b)), var_0, var_0, var_0, reverseBits(countOneBits(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 1i, -1i), vec4<i32>(-53888i, 0i, u_input.b, 10037i))))));
    let var_4 = func_2(func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.c.c.x - global2.x), -1000f))).c.x);
    var var_5 = ~(~(var_3.e.wyx & var_3.e.yxz));
    var var_6 = var_3.e.yw << (vec2<u32>(_wgslsmith_dot_vec4_u32(min(abs(vec4<u32>(12196u, var_2, 0u, 61634u)), select(vec4<u32>(u_input.e.x, 58222u, 0u, var_3.c.b), vec4<u32>(0u, 24861u, 15874u, 0u), true)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.b.b, 1u, 1u, var_2), vec4<u32>(42804u, 49752u, u_input.e.x, 74027u)), vec4<u32>(u_input.e.x, 59534u, 1u, var_3.c.b), -151f < var_0.c.x)), var_2) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(global2.x, _wgslsmith_f_op_f32(trunc(216f)), global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1508f + -751f) - var_3.b.c.x), -360f))));
}

