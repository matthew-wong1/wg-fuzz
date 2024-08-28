struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26>;

var<private> global1: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(1u, 1u, 0u, 1386u), vec4<u32>(0u, 24005u, 4294967295u, 22422u), vec4<u32>(0u, 38314u, 4294967295u, 1u), vec4<u32>(0u, 0u, 28509u, 1u), vec4<u32>(141720u, 29798u, 17285u, 73318u), vec4<u32>(63116u, 1u, 0u, 34375u), vec4<u32>(6793u, 0u, 50128u, 11789u), vec4<u32>(35578u, 4294967295u, 99205u, 38977u), vec4<u32>(6390u, 4294967295u, 12812u, 0u), vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(20975u, 91550u, 1u, 3478u), vec4<u32>(1u, 32637u, 24977u, 0u), vec4<u32>(525u, 4294967295u, 1u, 57232u), vec4<u32>(13816u, 2938u, 0u, 17166u), vec4<u32>(62882u, 0u, 19995u, 35496u), vec4<u32>(1u, 94963u, 51735u, 4294967295u), vec4<u32>(52796u, 38271u, 0u, 111116u), vec4<u32>(1u, 4294967295u, 4294967295u, 161296u), vec4<u32>(11945u, 37563u, 24075u, 48399u), vec4<u32>(1u, 1u, 1289u, 41292u), vec4<u32>(73835u, 1u, 56284u, 61736u), vec4<u32>(56010u, 27855u, 8622u, 13983u), vec4<u32>(29545u, 4871u, 0u, 0u), vec4<u32>(6221u, 79440u, 474u, 91339u), vec4<u32>(4294967295u, 7991u, 34282u, 0u), vec4<u32>(4294967295u, 0u, 13851u, 9794u), vec4<u32>(30575u, 97841u, 1u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 52960u), vec4<u32>(4294967295u, 1325u, 145572u, 3090u));

var<private> global2: Struct_1 = Struct_1(1000f, vec2<f32>(649f, 247f), -1000f, vec2<bool>(true, false));

var<private> global3: f32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -203f);
    var var_0 = Struct_1(global2.c, _wgslsmith_f_op_vec2_f32(-global2.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.a)), _wgslsmith_f_op_f32(max(global2.b.x, global2.b.x)))))), select(select(select(select(global2.d, vec2<bool>(global2.d.x, true), vec2<bool>(global2.d.x, false)), vec2<bool>(true, global2.d.x), true), !select(vec2<bool>(false, global2.d.x), global2.d, vec2<bool>(true, false)), global2.d), global2.d, !global2.d));
    var var_1 = -5013i;
    var_1 = ~(-_wgslsmith_add_i32(~(~0i), 1i));
    let var_2 = global2.d.x;
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32, arg_3: vec2<f32>) -> vec4<f32> {
    global1 = array<vec4<u32>, 29>();
    global3 = _wgslsmith_f_op_f32(sign(-751f));
    global2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -809f), arg_3, 105f, vec2<bool>(true, arg_1.x));
    let var_0 = arg_0;
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(1831f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global2.c)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1465f, global2.b.x)), !all(vec2<bool>(arg_1.x, arg_0.d.x)))), _wgslsmith_f_op_f32(f32(-1f) * -552f), 807f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 1310f, 1098f, arg_2) * vec4<f32>(-1071f, 1061f, -331f, -1530f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, -679f, arg_3.x, global2.c))), vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(sign(-1000f)), -2215f, _wgslsmith_div_f32(arg_2, -1631f)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 85539u, 15973u), vec3<u32>(99398u, u_input.b, 1u)) <= u_input.b))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, -638f))), _wgslsmith_f_op_f32(trunc(-350f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), var_1.x)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec4<i32> {
    global3 = arg_3.c;
    var var_0 = !arg_3.d;
    var_0 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b.x))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_3.c)), _wgslsmith_f_op_f32(-global2.b.x)))) != _wgslsmith_f_op_f32(floor(global2.c)), arg_2);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.b - _wgslsmith_f_op_vec2_f32(-arg_3.b)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_3.c)), _wgslsmith_f_op_f32(-1709f * arg_1.c)), arg_3.b))));
    let var_2 = _wgslsmith_f_op_vec4_f32(func_4(arg_1, select(vec2<bool>(true, arg_3.d.x), select(arg_3.d, !select(vec2<bool>(false, true), global2.d, global2.d), select(vec2<bool>(false, false), !arg_1.d, !arg_1.d.x)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * -1837f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.a + 997f), var_1.x) * arg_1.b))));
    return vec4<i32>(-_wgslsmith_mod_i32(-1i | arg_0.x, ~(25880i & arg_0.x)), _wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, 1i, 8901i, arg_0.x), ~vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_dot_vec4_i32(abs(global0[_wgslsmith_index_u32(~u_input.b, 26u)]), -(~vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))), min(arg_0.x, _wgslsmith_mult_i32(min(~arg_0.x, -15873i), _wgslsmith_sub_i32(-39814i, _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(-1i, 1i, 2147483647i))))), arg_0.x);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = arg_1.d.x;
    global1 = array<vec4<u32>, 29>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(global2.c, arg_1.b, -2297f, !arg_1.d), vec2<bool>(!var_0, true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-911f + arg_1.a))), vec2<f32>(_wgslsmith_f_op_f32(round(arg_0)), -1000f))).x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -738f) - _wgslsmith_div_f32(global2.c, arg_1.b.x)) * arg_1.c)), _wgslsmith_f_op_f32(sign(294f)));
    var var_2 = arg_1;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_4(arg_1, vec2<bool>(var_0, true), _wgslsmith_f_op_f32(global2.c - var_1.x), global2.b)).wx))), _wgslsmith_div_f32(753f, _wgslsmith_f_op_f32(round(arg_1.c))), select(global2.d, vec2<bool>(!(!global2.d.x), global2.d.x), !all(vec3<bool>(true, false, global2.d.x))));
    return arg_1;
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~(~(~vec4<u32>(abs(u_input.b), u_input.a, ~10143u, 18040u)));
    global0 = array<vec4<i32>, 26>();
    global0 = array<vec4<i32>, 26>();
    var var_1 = _wgslsmith_sub_vec2_u32(~(~abs(vec2<u32>(u_input.b, var_0.x))), var_0.yx);
    var var_2 = true;
    return func_5(arg_1.b.x, arg_1, _wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 1i, arg_0), vec3<i32>(arg_0, -80257i, arg_0)), i32(-1i) * -3631i, _wgslsmith_div_i32(2147483647i, arg_0), i32(-1i) * -1i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -global0[_wgslsmith_index_u32(1u, 26u)], vec4<i32>(~2147483647i, -53868i, arg_0, 12985i))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>) -> Struct_1 {
    global1 = array<vec4<u32>, 29>();
    global1 = array<vec4<u32>, 29>();
    global2 = func_6(abs(26451i), func_5(_wgslsmith_f_op_f32(ceil(-1297f)), Struct_1(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_vec2_f32(abs(global2.b)), -226f, vec2<bool>(any(vec4<bool>(true, true, false, global2.d.x)), global2.d.x)), _wgslsmith_div_vec4_i32(~global0[_wgslsmith_index_u32(828u, 26u)], -func_2(vec3<i32>(arg_0.x, 0i, -2147483647i), Struct_1(-129f, vec2<f32>(-2192f, -760f), global2.a, global2.d), false, Struct_1(arg_1.x, arg_1.zx, -1000f, global2.d)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-515f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.b.x)))), arg_1.xy, _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-714f * -2032f)), vec2<bool>(global2.d.x == (arg_0.x != arg_0.x), !all(vec2<bool>(true, global2.d.x)))));
    var var_0 = abs(~_wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(1u, 29u)], vec4<u32>(6330u, u_input.b, 10045u, u_input.b)));
    global1 = array<vec4<u32>, 29>();
    return Struct_1(global2.c, arg_1.zx, _wgslsmith_f_op_f32(step(1920f, global2.b.x)), func_6(_wgslsmith_div_i32(countOneBits(2147483647i), select(-12923i, min(-1i, 14800i), global2.d.x)), func_6(-2147483647i, func_5(_wgslsmith_div_f32(971f, global2.a), Struct_1(global2.c, global2.b, -833f, global2.d), vec4<i32>(arg_0.x, -2147483647i, -2147483647i, arg_0.x)), Struct_1(_wgslsmith_f_op_f32(global2.c * arg_1.x), _wgslsmith_f_op_vec2_f32(-global2.b), global2.a, select(vec2<bool>(true, global2.d.x), global2.d, false))), func_5(arg_1.x, Struct_1(_wgslsmith_f_op_f32(global2.b.x + arg_1.x), _wgslsmith_f_op_vec2_f32(floor(global2.b)), global2.a, vec2<bool>(true, global2.d.x)), -(vec4<i32>(arg_0.x, 52530i, arg_0.x, arg_0.x) ^ vec4<i32>(-1i, arg_0.x, arg_0.x, 0i)))).d);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global2 = arg_0;
    let var_0 = 0u;
    global3 = global2.c;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - arg_1.a) - _wgslsmith_f_op_f32(max(-1381f, _wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_div_f32(-485f, arg_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 563f)), arg_0.b.x, global2.d), global2.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, 557f)), func_5(_wgslsmith_f_op_f32(func_3()), arg_1, vec4<i32>(1i, -2147483647i, 299i, -789i)).b)).x)));
    return abs(0i) ^ ~(func_2(~vec3<i32>(2147483647i, -1i, -71492i), func_5(803f, Struct_1(1750f, vec2<f32>(196f, arg_1.a), arg_0.c, arg_1.d), vec4<i32>(-1i, -40536i, 2147483647i, -17393i)), arg_0.d.x, func_6(-10787i, Struct_1(836f, vec2<f32>(var_1, arg_0.c), -832f, arg_1.d), arg_0)).x ^ -reverseBits(1828i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 26>();
    let var_0 = ~u_input.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(min(-608f, -827f))))), _wgslsmith_f_op_f32(818f + global2.c), _wgslsmith_f_op_f32(abs(690f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-301f + _wgslsmith_f_op_f32(round(global2.c))), _wgslsmith_div_f32(_wgslsmith_div_f32(global2.a, global2.a), global2.a), _wgslsmith_f_op_f32(min(-1000f, global2.a)))), global2.d.x));
    var var_2 = vec4<i32>(max(1i, -48960i), -func_7(func_1(vec2<i32>(1i, 11278i), vec3<f32>(1379f, 498f, var_1.x)), Struct_1(_wgslsmith_f_op_f32(-global2.b.x), global2.b, _wgslsmith_f_op_f32(func_3()), vec2<bool>(global2.d.x, false))), ~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(59270u, 26u)], vec4<i32>(-1i, -40705i, 1i, 15196i)) | _wgslsmith_add_i32(29049i, 15737i), -_wgslsmith_clamp_i32(49673i, -53020i, -2147483647i)), -min(12847i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(1i, 13521i))) & -3677i);
    let var_3 = func_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.x ^ var_2.x, 0i), -(~var_2.xx), abs(_wgslsmith_div_vec2_i32(var_2.yy, vec2<i32>(var_2.x, var_2.x)))) | var_2.xz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-681f, _wgslsmith_f_op_f32(abs(-2609f)), 563f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1123f, -1000f, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-876f, global2.c, global2.c))))));
    let var_4 = Struct_1(global2.a, vec2<f32>(1547f, -1231f), global2.a, var_3.d);
    global3 = 495f;
    let x = u_input.a;
    s_output = StorageBuffer(~0i, _wgslsmith_f_op_f32(trunc(-898f)));
}

