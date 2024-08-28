struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<i32, 20>;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(33886u, 751f, vec2<bool>(true, true)), Struct_1(56312u, -811f, vec2<bool>(true, false)), Struct_1(4294967295u, 996f, vec2<bool>(true, false)), Struct_1(83626u, 197f, vec2<bool>(false, true)), Struct_1(4294967295u, 1357f, vec2<bool>(true, true)), Struct_1(48464u, 267f, vec2<bool>(false, false)), Struct_1(60192u, 876f, vec2<bool>(false, true)), Struct_1(42051u, -329f, vec2<bool>(true, true)), Struct_1(4294967295u, -542f, vec2<bool>(true, true)), Struct_1(8837u, -228f, vec2<bool>(true, false)), Struct_1(17617u, -212f, vec2<bool>(false, false)), Struct_1(4294967295u, -709f, vec2<bool>(false, false)), Struct_1(10610u, -952f, vec2<bool>(true, true)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<i32>) -> f32 {
    global1 = array<i32, 20>();
    let var_0 = _wgslsmith_mod_i32(firstLeadingBit(-17372i), arg_2.x);
    var var_1 = u_input.d.x;
    global1 = array<i32, 20>();
    var_1 = 12705u;
    return -429f;
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-808f, 2480f, true)), -1719f, _wgslsmith_f_op_f32(713f * 105f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1490f), _wgslsmith_f_op_f32(-983f + 827f), _wgslsmith_f_op_f32(floor(278f))) + vec3<f32>(_wgslsmith_f_op_f32(abs(-308f)), _wgslsmith_f_op_f32(-595f * 910f), -1013f)))));
    var var_1 = -39693i;
    var var_2 = _wgslsmith_div_vec2_f32(var_0.yy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-743f)), var_0.x)), var_0.xz, !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_3 = Struct_1(4294967295u, _wgslsmith_f_op_f32(-1044f - var_0.x), vec2<bool>(true, false));
    var var_4 = Struct_1(~u_input.d.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(sign(var_3.b))), select(vec2<bool>(all(!vec3<bool>(false, false, var_3.c.x)), any(vec2<bool>(var_3.c.x, var_3.c.x))), !(!(!var_3.c)), select(vec2<bool>(true, var_3.c.x), select(select(vec2<bool>(var_3.c.x, false), var_3.c, false), vec2<bool>(var_3.c.x, true), !vec2<bool>(true, var_3.c.x)), true)));
    return !select(select(select(vec2<bool>(var_3.c.x, false), vec2<bool>(false, var_3.c.x), select(var_4.c, var_3.c, var_3.c)), var_3.c, true), vec2<bool>(true, true), var_3.c);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    return Struct_1(select(u_input.d.x, u_input.a.x, false) >> (u_input.c % 32u), arg_0.x, func_3());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~global1[_wgslsmith_index_u32(u_input.a.x, 20u)]);
    var var_1 = Struct_1(10381u, _wgslsmith_f_op_f32(trunc(499f)), select(vec2<bool>(_wgslsmith_f_op_f32(round(-1671f)) <= _wgslsmith_f_op_f32(ceil(-245f)), 9168u == u_input.a.x), vec2<bool>(true, true), true));
    var_1 = func_2(vec3<f32>(var_1.b, _wgslsmith_f_op_f32(func_1(u_input.b, reverseBits(vec2<i32>(0i, 38829i)) << (min(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u)), vec2<i32>(-5370i, -u_input.b))), 1000f));
    var var_2 = func_2(vec3<f32>(var_1.b, 354f, 113f));
    let var_3 = _wgslsmith_mod_i32(abs(u_input.b), _wgslsmith_dot_vec3_i32(-vec3<i32>(56234i, countOneBits(u_input.b), -2147483647i), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(1385i, 3555i)), ~(~global1[_wgslsmith_index_u32(1u, 20u)]), reverseBits(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(var_2.a, 20u)], -32845i)))));
    var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(min(var_2.a, _wgslsmith_sub_u32(var_1.a, var_1.a))), ~abs((u_input.a.x >> (u_input.c % 32u)) | 4294967295u)), 4u)];
    var var_4 = _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 1u), var_2.a), 20u)], i32(-1i) * -u_input.b, 0i), ~reverseBits(~abs(vec4<i32>(global1[_wgslsmith_index_u32(0u, 20u)], var_3, -1i, 10713i))));
    var var_5 = ~vec3<u32>(u_input.c, ~(~var_2.a), 30383u);
    var var_6 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1145f, -1825f, var_1.b), vec3<f32>(var_2.b, 1568f, var_1.b), true)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, var_2.b, var_1.b) + vec3<f32>(var_1.b, -126f, -1252f)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_3), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_6.b, var_6.b))))))), 1i);
}

