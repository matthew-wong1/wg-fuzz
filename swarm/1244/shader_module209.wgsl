struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 2>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: bool) -> vec4<bool> {
    global0 = array<Struct_2, 29>();
    let var_0 = Struct_3(Struct_2(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.d, 1u)) | 8736u), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, arg_0), 2u)], -u_input.e);
    global2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = global0[_wgslsmith_index_u32(~arg_0, 29u)];
    var var_2 = min(~vec4<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.b.a, 57677u), vec3<u32>(4294967295u, var_0.a.a, 16755u)), 0u, var_1.a >= var_0.b.a), 31292u, var_1.a, ~(~55887u)), ~(~(~vec4<u32>(10106u, 13790u, 1u, u_input.c))));
    return vec4<bool>(21546i == -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, 1i) << (u_input.a.yx % vec2<u32>(32u)), min(vec2<i32>(4252i, 29059i), vec2<i32>(u_input.e, -1i))), false, true, all(!select(vec2<bool>(true, arg_1), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true)));
}

fn func_2() -> f32 {
    global3 = array<Struct_2, 2>();
    global3 = array<Struct_2, 2>();
    let var_0 = func_3(max(u_input.b | ~u_input.c, max(1u, 60813u)), true);
    let var_1 = Struct_2(~(~31869u));
    global2 = Struct_1(global2.a);
    return global2.a;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    global3 = array<Struct_2, 2>();
    let var_0 = vec4<bool>(all(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-global2.a)))) > global1.a, true, !all(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), true)));
    global1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2()))));
    var var_1 = global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(~countOneBits(u_input.c), 19133u, abs(0u), u_input.b), vec4<u32>(~_wgslsmith_div_u32(arg_0.x, 75726u), ~arg_0.x << (arg_0.x % 32u), _wgslsmith_mult_u32(arg_0.x, u_input.b ^ 4294967295u), ~_wgslsmith_mod_u32(65152u, u_input.c)))), 2u)];
    var var_2 = (33087i << (_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_1.a, ~5222u), ~(~0u)) % 32u)) > (_wgslsmith_div_i32(-(~u_input.e), _wgslsmith_sub_i32(u_input.e, 1i)) ^ 2147483647i);
    return Struct_1(_wgslsmith_f_op_f32(func_2()));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: i32) -> vec2<bool> {
    global2 = arg_0;
    var var_0 = _wgslsmith_mod_u32(u_input.a.x, select(_wgslsmith_add_u32(arg_2.a, ~u_input.a.x), 4294967295u, true)) | countOneBits(~(~84484u));
    global2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.a)), -163f))) - -1806f));
    let var_1 = ~_wgslsmith_add_u32(~max(1u, arg_2.a), arg_2.a);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -533f) - _wgslsmith_f_op_f32(global2.a - 819f)));
    return select(vec2<bool>(false, !select(any(vec3<bool>(false, false, true)), false, true)), vec2<bool>(all(func_3(18249u, true)), any(vec3<bool>(false, true, any(vec2<bool>(false, false))))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    global3 = array<Struct_2, 2>();
    var var_0 = 87474u;
    var var_1 = vec4<bool>(any(func_4(func_1(vec3<u32>(0u, u_input.c, u_input.d)), vec3<f32>(global1.a, global2.a, -2270f), global3[_wgslsmith_index_u32(35975u, 2u)], u_input.e)) || any(vec4<bool>(all(vec3<bool>(true, false, false)), any(vec4<bool>(true, false, false, true)), all(vec4<bool>(false, true, true, false)), all(vec4<bool>(false, false, true, true)))), (select(true, true, false) | !select(false, false, false)) || true, any(!func_3(1u, true).yy) | true, !func_4(Struct_1(-1518f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, 1907f, -1000f) + vec3<f32>(global1.a, global1.a, -818f))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b, ~u_input.c), 2u)], -u_input.e).x);
    var_0 = _wgslsmith_mult_u32(u_input.a.x, ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(10761u, 3714u, u_input.a.x, u_input.b), vec4<u32>(78020u, u_input.d, 0u, u_input.a.x), var_1.x) & _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.d, 56085u, 0u), vec4<u32>(u_input.c, u_input.a.x, 60229u, u_input.b), vec4<u32>(u_input.d, 1u, 17479u, u_input.d)), vec4<u32>(11211u, 64791u, 4294967295u, u_input.b) >> (vec4<u32>(8469u, 15727u, 17720u, u_input.b) % vec4<u32>(32u))));
    global1 = func_1(vec3<u32>(~(_wgslsmith_add_u32(u_input.c, 15260u) >> (countOneBits(48501u) % 32u)), u_input.c, 27756u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(1i, u_input.e), i32(-1i) * -1i), -1i, u_input.e), u_input.d, global2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global1.a, global2.a, global2.a)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a, global2.a, global1.a, global2.a), vec4<f32>(331f, -1815f, -521f, 1310f)))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, 1000f, global2.a, global1.a), vec4<f32>(global1.a, 380f, global1.a, global2.a)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(148f, global2.a, -1865f, 1195f))))))), vec4<f32>(165f, global1.a, global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)))));
}

