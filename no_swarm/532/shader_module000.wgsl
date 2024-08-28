struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: Struct_2;

var<private> global2: Struct_3 = Struct_3(Struct_2(vec2<f32>(1000f, -290f), vec4<u32>(0u, 75916u, 4294967295u, 1u), -712f, -53245i, vec3<i32>(0i, 2934i, 1i)), true, 1000f, i32(-2147483648), Struct_1(6138u, -442f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_4(global1.e.x, _wgslsmith_dot_vec4_u32(~arg_0.a.b, arg_1.b), global1.b.x);
    var var_1 = Struct_4(-var_0.a, arg_0.a.b.x, ~_wgslsmith_clamp_u32(1u, 0u, ~(~0u)));
    global0 = array<bool, 31>();
    global1 = global2.a;
    var var_2 = Struct_4(2147483647i, 0u, ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(~65441u, arg_0.a.b.x, ~4294967295u), abs(_wgslsmith_add_u32(1u, 0u))));
    return i32(-1i) * -7524i;
}

fn func_3() -> vec3<i32> {
    var var_0 = any(vec3<bool>(global2.b, min(-global1.d, 0i) >= reverseBits(abs(global1.d)), 1u > _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, 1u, global2.e.a, global2.e.a), global1.b)));
    global0 = array<bool, 31>();
    return vec3<i32>(min(global1.d, global2.d ^ 2147483647i), 2147483647i, u_input.b.x) | _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -_wgslsmith_dot_vec3_i32(global2.a.e, vec3<i32>(u_input.b.x, u_input.b.x, global2.a.d)), (u_input.b.x << (global2.e.a % 32u)) & global2.a.e.x), ~select(u_input.b, vec3<i32>(global2.d, -19939i, global1.e.x), true));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_4 {
    var var_0 = func_3();
    global1 = arg_1;
    let var_1 = arg_0;
    let var_2 = arg_1.e.x;
    let var_3 = vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_2.e.b, _wgslsmith_f_op_f32(ceil(-349f)))))), _wgslsmith_f_op_f32(-global2.e.b), global2.e.b);
    return Struct_4(-3181i >> (_wgslsmith_mult_u32(min(4294967295u, _wgslsmith_add_u32(global1.b.x, u_input.c)), ~global2.e.a) % 32u), u_input.a.x, 5558u | (countOneBits(1u << (arg_2.a.b.x % 32u)) << (1u % 32u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: u32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c, -2522f, arg_1)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1139f, arg_1, arg_1), vec3<f32>(global2.e.b, 225f, -1072f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1681f, 1000f, arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1418f, -1204f, -1790f)), vec3<bool>(true, true, true))))));
    var var_1 = func_4(i32(-1i) * -_wgslsmith_add_i32(func_2(Struct_3(global2.a, false, global1.c, -59142i, Struct_1(1u, global1.a.x)), Struct_2(global1.a, vec4<u32>(42159u, 1u, global1.b.x, global1.b.x), global2.e.b, -2147483647i, vec3<i32>(u_input.b.x, 1i, -1i))), -58762i), global2.a, Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-global2.a.a), ~global2.a.b, var_0.x, 2147483647i >> (arg_2 % 32u), func_3()), !all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], true, false)), 1231f, -25287i, Struct_1(_wgslsmith_sub_u32(u_input.a.x, 0u) >> (global2.e.a % 32u), global1.a.x)));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-418f, 786f), global1.a)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1342f, -285f), global1.a)) + global1.a))), vec4<u32>(_wgslsmith_sub_u32(16272u, ~func_4(43143i, Struct_2(vec2<f32>(285f, global2.c), vec4<u32>(u_input.d, 70832u, global1.b.x, global1.b.x), -1185f, 9921i, vec3<i32>(32376i, global2.d, 1i)), Struct_3(global2.a, false, -985f, arg_0.x, global2.e)).b), _wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, 37706u), global1.b.x, ~global1.b.x) ^ 1u, var_1.b, 4294967295u), _wgslsmith_f_op_f32(trunc(-220f)), ~_wgslsmith_div_i32(arg_0.x, -16357i), vec3<i32>(~(-66714i), global2.d, _wgslsmith_div_i32(1i, max(arg_0.x, _wgslsmith_div_i32(0i, arg_0.x)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.x)))))));
    let var_3 = global2.a;
    return Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_vec2_f32(-var_3.a), !vec2<bool>(global0[_wgslsmith_index_u32(global2.a.b.x, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(global1.a)))))), vec4<u32>(_wgslsmith_mod_u32(33893u, 1u), func_4(-52717i, global2.a, Struct_3(Struct_2(global1.a, global2.a.b, 318f, global1.e.x, vec3<i32>(arg_0.x, arg_0.x, global2.d)), global0[_wgslsmith_index_u32(4294967295u, 31u)], -223f, 50974i, Struct_1(u_input.d, var_2))).c, ~var_3.b.x, 4294967295u) >> (~(~global2.a.b) % vec4<u32>(32u)), -701f, ~_wgslsmith_dot_vec2_i32(-vec2<i32>(-32767i, u_input.b.x), _wgslsmith_sub_vec2_i32(global2.a.e.zx, vec2<i32>(2147483647i, global1.d))), vec3<i32>(_wgslsmith_dot_vec3_i32(global1.e, arg_0) << (global2.e.a % 32u), var_1.a & 2147483647i, 0i)), !global2.b, 1143f, -(~(i32(-1i) * -u_input.b.x)), Struct_1(max(4294967295u, ~min(var_1.c, global1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2))) * arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2.a;
    let var_0 = global1.b;
    global2 = func_1(global2.a.e, _wgslsmith_f_op_f32(-global1.a.x), 6734u | ~(_wgslsmith_sub_u32(u_input.c, 4294967295u) ^ 1u));
    let var_1 = Struct_1(global1.b.x, _wgslsmith_f_op_f32(select(-473f, _wgslsmith_f_op_f32(min(global2.a.c, 1842f)), global2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(select(~vec4<i32>(global1.d, u_input.b.x, -58304i, 8898i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.d, 0i, -19979i, global2.a.e.x), vec4<i32>(u_input.b.x, global2.a.e.x, u_input.b.x, global2.d), vec4<i32>(global1.e.x, -1i, -8381i, 28641i)), !vec4<bool>(global2.b, true, global0[_wgslsmith_index_u32(var_0.x, 31u)], false)), ~vec4<i32>(1i, -1i, u_input.b.x, u_input.b.x) >> (~vec4<u32>(u_input.a.x, global1.b.x, 28609u, var_0.x) % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * var_1.b)), _wgslsmith_f_op_f32(2181f + _wgslsmith_f_op_f32(215f * global1.a.x)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(global2.a.d, -984i, u_input.b.x), 253f, 26726u).c + 713f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_div_f32(-170f, global1.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.c + 690f))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1113f * -1102f) + _wgslsmith_f_op_f32(-global1.a.x))), -677f, func_1(u_input.b, 1103f, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global2.a.b.x, 102984u), vec3<u32>(var_0.x, 4294967295u, var_1.a)), vec3<u32>(53489u, global2.a.b.x, 35406u) << (vec3<u32>(u_input.a.x, 1u, var_1.a) % vec3<u32>(32u)))).e.b));
}

