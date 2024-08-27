struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: vec2<i32>;

var<private> global2: f32 = -1282f;

var<private> global3: u32 = 14978u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec4<i32>) -> vec4<i32> {
    let var_0 = vec4<bool>(!any(select(select(vec4<bool>(arg_2.d, true, arg_1.x, false), vec4<bool>(arg_1.x, arg_2.b.x, arg_2.d, arg_1.x), arg_1.x), select(arg_1, arg_1, true), true)), !any(select(select(arg_1, vec4<bool>(arg_1.x, arg_2.b.x, arg_2.d, arg_2.d), arg_1.x), vec4<bool>(arg_2.d, false, true, true), any(arg_1.wy))), any(arg_1.wzx), !(all(!vec2<bool>(false, arg_2.b.x)) && true));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-171f * -1431f)), u_input.b);
    let var_2 = 2270u;
    var_1 = arg_0.e;
    return min(~(~(-arg_3)), _wgslsmith_div_vec4_i32(vec4<i32>(select(-1i, global1.x, u_input.a >= arg_0.d), 20975i, -46799i & (arg_0.b.x >> (25562u % 32u)), arg_3.x), arg_3));
}

fn func_3() -> vec3<f32> {
    var var_0 = u_input.c;
    var var_1 = Struct_4(vec2<i32>(min(-3704i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(10983i, -19651i, -30047i, global1.x), vec4<i32>(var_0.x, var_0.x, global1.x, u_input.c.x)))), 1883i), ~_wgslsmith_div_vec3_i32(~(-vec3<i32>(26217i, 0i, 23423i)), ~(vec3<i32>(var_0.x, u_input.b, global1.x) ^ vec3<i32>(-2147483647i, u_input.c.x, var_0.x))), vec2<i32>(firstTrailingBit(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global1.x), vec2<i32>(-70901i, -2147483647i))), i32(-1i) * -15984i), u_input.a, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-500f * _wgslsmith_f_op_f32(abs(100f)))), var_0.x));
    let var_2 = Struct_4(u_input.c, reverseBits(~(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, var_0.x), vec3<i32>(0i, 10166i, global1.x)) >> (max(vec3<u32>(50648u, 32678u, var_1.d), vec3<u32>(u_input.a, 0u, var_1.d)) % vec3<u32>(32u)))), -select(min(vec2<i32>(global1.x, var_1.a.x), vec2<i32>(-21533i, -58083i)) & -vec2<i32>(global1.x, 4785i), -var_1.b.xx, true), _wgslsmith_dot_vec2_u32(min(firstLeadingBit(vec2<u32>(25276u, 0u)), ~vec2<u32>(u_input.a, var_1.d)) ^ vec2<u32>(_wgslsmith_add_u32(u_input.a, 0u), _wgslsmith_mult_u32(var_1.d, 1u)), vec2<u32>(var_1.d, ~(var_1.d << (48533u % 32u)))), var_1.e);
    var var_3 = Struct_1(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, false)))), 38299u, ~(~firstTrailingBit(0u)));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -746f))), 1714f)), -1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(231f, _wgslsmith_f_op_f32(select(238f, 2027f, false))))))), var_2.e.a);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(736f + -1204f), _wgslsmith_f_op_f32(-2099f - -1126f), -574f) - vec3<f32>(_wgslsmith_div_f32(var_1.e.a, -1492f), _wgslsmith_f_op_f32(-374f - var_1.e.a), var_2.e.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(1165f)), -2183f, _wgslsmith_f_op_f32(453f - var_4.x)))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -534f, -1544f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1125f, -388f, 378f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1267f), 812f, _wgslsmith_f_op_f32(f32(-1f) * -1137f))), false)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(vec3<f32>(-494f, -227f, -1032f) * vec3<f32>(417f, -223f, -391f)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))))));
    var var_1 = ~(-1i) ^ _wgslsmith_dot_vec2_i32(arg_2.xx, arg_2.wz);
    global3 = _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(arg_0, arg_0, 4294967295u, 9439u)) ^ vec4<u32>(39403u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(1u, 0u, 36907u)), ~1u, arg_0)), firstTrailingBit(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 27745u, u_input.a, arg_0)), ~(~vec4<u32>(u_input.a, 0u, u_input.a, 71059u)))));
    var_1 = -1i;
    let var_2 = Struct_3(var_0.x, 2147483647i);
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: u32) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-964f + -657f), -1942f, arg_0.x & !arg_0.x))), -global1.x);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>) -> StorageBuffer {
    global1 = vec2<i32>(min(arg_0.b >> (u_input.a % 32u), 1i), ~min(u_input.b, arg_1.x) | min(firstLeadingBit(~(-1i)), -(~19835i)));
    global0 = array<Struct_1, 11>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-825f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a, 124f)) * _wgslsmith_f_op_f32(f32(-1f) * -697f)))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(305f * 220f), _wgslsmith_f_op_f32(1495f - 195f), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -680f), -683f)))));
    var var_0 = arg_0;
    var var_1 = all(!(!vec2<bool>(true, u_input.a != u_input.a)));
    return StorageBuffer(vec4<i32>(arg_1.x, 44377i, arg_1.x, 42789i), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_i32(-(vec4<i32>(~global1.x, u_input.b, countOneBits(global1.x), global1.x) ^ (vec4<i32>(-1i, global1.x, u_input.b, u_input.c.x) | ~vec4<i32>(u_input.c.x, global1.x, global1.x, -32117i))), -abs(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, global1.x, -1i, u_input.b) ^ vec4<i32>(16750i, u_input.c.x, -95610i, u_input.b), func_1(Struct_4(vec2<i32>(-2147483647i, 2147483647i), vec3<i32>(-1i, 20185i, -1897i), u_input.c, u_input.a, Struct_3(-245f, u_input.b)), vec4<bool>(true, false, true, true), Struct_2(vec3<u32>(u_input.a, u_input.a, u_input.a), vec2<bool>(false, true), vec2<u32>(96911u, u_input.a), true, vec4<f32>(-340f, -110f, -340f, 1000f)), vec4<i32>(u_input.b, u_input.c.x, -43150i, -2147483647i)))));
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = func_5(func_4(vec4<bool>(true, _wgslsmith_f_op_f32(func_2(4294967295u, global1.x, vec4<i32>(1i, -6085i, var_0.x, u_input.b))) < -451f, true & all(vec4<bool>(true, true, true, true)), true), u_input.a), _wgslsmith_div_vec3_i32(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, 33688i, u_input.c.x), var_0.xzw)), func_1(Struct_4(firstTrailingBit(vec2<i32>(-24422i, var_0.x)), vec3<i32>(-41979i, global1.x, u_input.c.x), firstLeadingBit(vec2<i32>(13468i, global1.x)), 41577u, func_4(vec4<bool>(true, true, true, true), u_input.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false))), Struct_2(~vec3<u32>(u_input.a, u_input.a, u_input.a), vec2<bool>(false, true), ~vec2<u32>(u_input.a, u_input.a), true, vec4<f32>(301f, 639f, -827f, 196f)), var_0).wxx));
}

