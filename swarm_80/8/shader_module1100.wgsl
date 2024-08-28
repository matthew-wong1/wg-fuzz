struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25>;

var<private> global1: i32 = 10273i;

var<private> global2: array<vec2<f32>, 13>;

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_1(-1446f, arg_0, true, firstTrailingBit(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, -23475i, 2147483647i, -48698i)), abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))) >> (40962u % 32u));
    global2 = array<vec2<f32>, 13>();
    let var_1 = ~(countOneBits(arg_0) << (_wgslsmith_div_u32(firstLeadingBit(~arg_0), firstTrailingBit(~arg_0)) % 32u));
    var var_2 = _wgslsmith_clamp_u32(~4294967295u, 4294967295u, _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, ~(~67402u)), arg_0));
    global0 = array<vec4<f32>, 25>();
    return _wgslsmith_f_op_f32(floor(var_0.a));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x)), 2235f, _wgslsmith_f_op_f32(-arg_0.x))), arg_1, select(arg_2.x, all(vec3<bool>(arg_1.c, arg_2.x, true)), any(vec2<bool>(false, arg_1.c))) & !all(arg_2), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1216f - arg_0.x))), reverseBits(arg_1.b), !all(arg_2.wz), arg_1.d)), (1u >> (arg_1.b % 32u)) ^ arg_1.b, _wgslsmith_f_op_f32(590f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-382f + _wgslsmith_f_op_f32(arg_1.a - -273f)), _wgslsmith_f_op_f32(-475f + _wgslsmith_f_op_f32(361f - arg_1.a))))));
    global0 = array<vec4<f32>, 25>();
    global0 = array<vec4<f32>, 25>();
    global3 = vec3<bool>(true & var_0.a.b.c, all(arg_2.xwx), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1147f * -1000f) - _wgslsmith_f_op_f32(-1714f * arg_0.x)) != 1727f) & any(arg_2));
    var var_1 = var_0;
    return Struct_1(_wgslsmith_f_op_f32(func_3(0u)), arg_1.b, any(vec4<bool>(global3.x, any(vec4<bool>(var_0.a.d.c, false, arg_2.x, var_1.a.c)), false, arg_1.c)), abs(1i) << (1u % 32u));
}

fn func_1(arg_0: f32, arg_1: Struct_5) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0, -616f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), -952f)), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-358f, arg_0, arg_0))), vec3<f32>(arg_0, arg_0, 156f)), Struct_1(534f, abs(1u), !global3.x, -1i), select(select(vec4<bool>(global3.x, true, global3.x, false), vec4<bool>(global3.x, false, true, global3.x), global3.x), !vec4<bool>(false, global3.x, false, global3.x), vec4<bool>(true, false, global3.x, global3.x))), ~arg_1.a.x == arg_1.a.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1364f - -193f) + _wgslsmith_f_op_f32(arg_0 - 1000f)), 45086u, true, ~_wgslsmith_mult_i32(u_input.a.x, 2147483647i))), _wgslsmith_mod_u32(4294967295u, 37738u), 1104f);
    global1 = max(var_0.a.b.d, _wgslsmith_add_i32(var_0.a.d.d, ~u_input.a.x));
    let var_1 = !(!(!var_0.a.d.c | (arg_0 > arg_0))) | !any(vec4<bool>(var_0.a.b.c, true, !global3.x, true));
    let var_2 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, -2231f, 1203f, 191f))), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, var_0.c) + var_0.a.a.yyw), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1452f), var_0.b, func_2(var_0.a.a.zxz, var_0.a.d, vec4<bool>(false, global3.x, false, true)).c, arg_1.a.x), !select(vec4<bool>(true, global3.x, false, false), vec4<bool>(var_1, true, true, global3.x), vec4<bool>(true, var_0.a.b.c, var_1, false))), (-435f != arg_0) & select(var_1, !var_0.a.c, var_1), var_0.a.b), arg_0, vec3<u32>(4294967295u >> (var_0.b % 32u), 4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.b, var_0.a.d.b), _wgslsmith_dot_vec2_u32(vec2<u32>(39350u, var_0.a.d.b), abs(vec2<u32>(22714u, 1u))))), vec3<f32>(1073f, _wgslsmith_f_op_f32(-912f + var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -888f)), Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(var_0.b, 25u)]))))), Struct_1(-553f, 1u, select(var_0.a.d.b, var_0.a.d.b, false) > var_0.b, -var_0.a.b.d), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0)))) <= _wgslsmith_f_op_f32(-1352f - _wgslsmith_f_op_f32(select(1000f, arg_0, true))), func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(967f, var_0.a.d.a, -840f), vec3<f32>(arg_0, var_0.a.b.a, -1049f), vec3<bool>(false, false, false))))), var_0.a.d, select(!vec4<bool>(var_1, true, var_1, global3.x), !vec4<bool>(var_0.a.c, var_1, var_0.a.d.c, var_0.a.b.c), select(vec4<bool>(var_1, global3.x, global3.x, true), vec4<bool>(true, true, true, var_1), true)))));
    let var_3 = _wgslsmith_mult_u32((_wgslsmith_dot_vec3_u32(~var_2.c, vec3<u32>(128612u, 8255u, 4344u) & var_2.c) >> (_wgslsmith_add_u32(var_2.a.b.b, ~44625u) % 32u)) >> (1u % 32u), _wgslsmith_dot_vec2_u32(var_2.c.xz, vec2<u32>(var_2.c.x, ~var_0.b)));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(432f, Struct_5(-firstTrailingBit(vec4<i32>(544i, u_input.a.x, u_input.a.x, 26812i)))), -1000f, ~vec3<u32>(~reverseBits(0u), 19981u, abs(1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1968f * -1000f) - -2369f), 520f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1146f, -170f) + _wgslsmith_f_op_f32(f32(-1f) * -632f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(step(406f, 1087f)), _wgslsmith_f_op_f32(f32(-1f) * -303f), _wgslsmith_f_op_f32(f32(-1f) * -726f)), vec3<bool>(global3.x, false, global3.x && global3.x)))), func_1(-544f, Struct_5(abs(~vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, -44805i)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-648f, var_0.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -370f))))), var_0.d.x, -776f);
    var var_2 = Struct_3(var_0.e, max(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(21822u, 3005u, var_0.c.x, var_0.a.d.b), vec4<u32>(4294967295u, 0u, 1u, 36185u)), countOneBits(1u)), reverseBits(select(~var_0.c.x, var_0.c.x, true))), 1f);
    let var_3 = var_0.c;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(60879u);
}

