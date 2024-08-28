struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec2<u32>(50228u, 78894u), Struct_1(vec3<f32>(757f, 331f, 457f)), vec3<bool>(true, true, true)), Struct_2(vec2<u32>(42571u, 10171u), Struct_1(vec3<f32>(-772f, 1376f, 328f)), vec3<bool>(true, false, true)), Struct_2(vec2<u32>(25114u, 1u), Struct_1(vec3<f32>(-927f, -1553f, 346f)), vec3<bool>(false, false, true)), Struct_2(vec2<u32>(15940u, 0u), Struct_1(vec3<f32>(679f, -1000f, -1874f)), vec3<bool>(false, true, false)), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(vec3<f32>(1400f, 1288f, -282f)), vec3<bool>(true, true, true)), Struct_2(vec2<u32>(0u, 29462u), Struct_1(vec3<f32>(-832f, 795f, -1043f)), vec3<bool>(false, true, true)), Struct_2(vec2<u32>(14727u, 0u), Struct_1(vec3<f32>(-1399f, 707f, -1000f)), vec3<bool>(true, true, true)), Struct_2(vec2<u32>(41926u, 0u), Struct_1(vec3<f32>(121f, 769f, -211f)), vec3<bool>(false, false, true)), Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(vec3<f32>(-1130f, -1065f, -548f)), vec3<bool>(true, false, false)), Struct_2(vec2<u32>(1u, 39083u), Struct_1(vec3<f32>(-1000f, 1593f, -876f)), vec3<bool>(false, false, false)), Struct_2(vec2<u32>(16994u, 1u), Struct_1(vec3<f32>(2041f, 1207f, 1487f)), vec3<bool>(true, true, false)), Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(vec3<f32>(1721f, 278f, 933f)), vec3<bool>(false, false, false)), Struct_2(vec2<u32>(60850u, 4294967295u), Struct_1(vec3<f32>(-772f, 423f, 1000f)), vec3<bool>(false, true, false)), Struct_2(vec2<u32>(0u, 8190u), Struct_1(vec3<f32>(-1787f, 234f, -311f)), vec3<bool>(false, true, true)), Struct_2(vec2<u32>(0u, 8810u), Struct_1(vec3<f32>(666f, -378f, 1048f)), vec3<bool>(false, false, true)), Struct_2(vec2<u32>(1u, 1u), Struct_1(vec3<f32>(418f, 428f, -702f)), vec3<bool>(true, true, true)));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec4<bool>) -> vec4<u32> {
    global0 = array<Struct_2, 16>();
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(global1.a + vec3<f32>(_wgslsmith_f_op_f32(1191f * global1.a.x), _wgslsmith_div_f32(1051f, _wgslsmith_f_op_f32(step(global1.a.x, 107f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a.x, 373f, true)) * global1.a.x))));
    global0 = array<Struct_2, 16>();
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_1.x, 1u), 16u)], Struct_2(vec2<u32>(0u, arg_1.x), Struct_1(vec3<f32>(330f, _wgslsmith_f_op_f32(f32(-1f) * -1014f), global1.a.x)), arg_2.zzy), -(i32(-1i) * -16979i), arg_1.x, (-441f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a.x, global1.a.x)))) || !(arg_2.x && true));
    global0 = array<Struct_2, 16>();
    return countOneBits(vec4<u32>(var_0.d, arg_1.x, ~_wgslsmith_div_u32(abs(var_0.d), ~u_input.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 12837u), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1.x, 1u, var_0.a.a.x, arg_1.x), vec4<u32>(arg_1.x, 50772u, u_input.c.x, arg_1.x)))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = ~(~u_input.c.x);
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, 0u, u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c.xx | ~vec2<u32>(1u, arg_0), vec2<u32>(1u, ~arg_0))), firstLeadingBit(func_3(Struct_4(arg_3), _wgslsmith_sub_vec2_u32(~u_input.c.zx, countOneBits(vec2<u32>(arg_0, arg_0))), select(select(vec4<bool>(false, true, arg_3, false), vec4<bool>(arg_3, arg_3, arg_3, arg_3), arg_3), select(vec4<bool>(true, false, arg_3, true), vec4<bool>(arg_3, true, false, arg_3), false), vec4<bool>(arg_3, false, arg_3, false)))));
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    let var_1 = arg_2.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.a + _wgslsmith_f_op_vec3_f32(-global1.a)));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_2(u_input.c.x, arg_2, vec3<i32>(countOneBits(0i), -arg_1.x, _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(u_input.b, arg_0, arg_1.x, arg_1.x))), u_input.c.x < 1u).a.zx + global1.a.xy), arg_2.a.zx));
    var var_1 = Struct_3(Struct_2(u_input.c.yx, func_2(u_input.a, Struct_1(_wgslsmith_f_op_vec3_f32(arg_2.a - vec3<f32>(global1.a.x, global1.a.x, -739f))), arg_1.ywz, select(all(vec3<bool>(true, true, true)), false, all(vec3<bool>(false, false, true)))), select(vec3<bool>(true, all(vec2<bool>(true, true)), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))), Struct_2(vec2<u32>(u_input.c.x ^ u_input.a, ~_wgslsmith_mult_u32(1u, u_input.a)), arg_2, vec3<bool>(true, true, true)), -2147483647i, 1u, (all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)) && (true & any(vec2<bool>(true, true)))) | all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), false)));
    var_0 = _wgslsmith_f_op_vec2_f32(max(func_2(38214u, Struct_1(var_1.b.b.a), vec3<i32>(var_1.c, u_input.b & -2147483647i, countOneBits(i32(-1i) * -7883i)), true).a.xy, _wgslsmith_f_op_vec2_f32(arg_3 + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_1.b.b.a.x)) * _wgslsmith_f_op_vec2_f32(-arg_2.a.xx)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.a.b.a.xy, vec2<f32>(arg_3.x, 480f), false)) + vec2<f32>(var_0.x, -739f))))));
    global0 = array<Struct_2, 16>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_3.x)), 171f, _wgslsmith_f_op_f32(var_1.b.b.a.x + var_1.a.b.a.x))) - vec3<f32>(1112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -962f) + _wgslsmith_f_op_f32(select(441f, arg_3.x, var_1.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x) - 335f))));
    return var_1.c;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec2<u32>) -> Struct_4 {
    var var_0 = arg_2;
    global0 = array<Struct_2, 16>();
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(~3069i, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b, -1i) ^ _wgslsmith_mult_i32(u_input.b, -50538i), _wgslsmith_mult_i32(u_input.b, -7963i)), 16020i << (u_input.c.x % 32u)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), vec3<i32>(43878i, u_input.b, 0i)), vec3<i32>(u_input.b, u_input.b, 0i) >> (u_input.c % vec3<u32>(32u))), abs(vec3<i32>(u_input.b, 0i, u_input.b)) | min(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 2147483647i)), vec3<i32>(~u_input.b, 0i, ~u_input.b)), vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(4236i, u_input.b, u_input.b), vec3<i32>(0i, 23246i, 0i)), u_input.b | 0i, -(~u_input.b))));
    let var_2 = !(!(!any(!vec4<bool>(false, false, var_0.x, true))));
    var var_3 = Struct_4(false & !arg_0);
    return Struct_4(4294967295u <= _wgslsmith_mod_u32(20211u, min(11424u, u_input.c.x)));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec4<bool>) -> vec4<i32> {
    let var_0 = func_5(u_input.b == -func_4(i32(-1i) * -2147483647i, vec4<i32>(arg_0.c, 1i, 1i, 56004i), func_2(arg_0.b.a.x, arg_0.b.b, vec3<i32>(arg_0.c, -5766i, -10276i), false), vec2<f32>(global1.a.x, -342f)), func_2(1u, arg_0.a.b, ~_wgslsmith_mod_vec3_i32(max(vec3<i32>(-19014i, 2147483647i, 1i), vec3<i32>(arg_0.c, 11626i, u_input.b)), firstTrailingBit(vec3<i32>(u_input.b, arg_0.c, arg_0.c))), !all(!vec4<bool>(arg_2.x, arg_2.x, false, false))), arg_2.ywz, u_input.c.zz);
    global0 = array<Struct_2, 16>();
    let var_1 = arg_2.yyz;
    return _wgslsmith_sub_vec4_i32(-(~(-(~vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b)))), -countOneBits(select(vec4<i32>(u_input.b, -1i, 0i, arg_0.c) | vec4<i32>(-8447i, arg_0.c, u_input.b, 3260i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, 22550i, -1i), vec4<i32>(arg_0.c, arg_0.c, 0i, u_input.b)), select(arg_2, vec4<bool>(true, arg_0.b.c.x, true, var_1.x), arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1581f));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(global1.a)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) + 1178f), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * global1.a.x))), any(vec4<bool>(select(true, false, false), true, 1u == u_input.a, true)))));
    let var_1 = ~(vec4<i32>(-1i) * -func_1(Struct_3(Struct_2(u_input.c.zx, Struct_1(global1.a), vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(0u, 16u)], u_input.b, u_input.a, true), 1u, vec4<bool>(true, false, true, false))) >> (select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.c.x, u_input.a) | abs(vec4<u32>(u_input.a, 42830u, u_input.a, 4294967295u)), ~vec4<u32>(35492u, u_input.c.x, 4294967295u, u_input.a) & ~vec4<u32>(4294967295u, u_input.a, 29420u, u_input.c.x)), ~(~vec4<u32>(37128u, u_input.a, 3674u, 11316u) << (~vec4<u32>(u_input.c.x, 4389u, u_input.a, u_input.a) % vec4<u32>(32u))), (any(vec3<bool>(true, false, true)) || false) || (~(-26869i) < (u_input.b << (34808u % 32u)))) % vec4<u32>(32u));
    var var_2 = vec3<bool>(true, !(u_input.b <= _wgslsmith_mod_i32(var_1.x, var_1.x)) && true, _wgslsmith_f_op_f32(-var_0) == _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1026f + 779f) - _wgslsmith_f_op_f32(-var_0))));
    global0 = array<Struct_2, 16>();
    var var_3 = !select(!vec4<bool>(var_2.x | var_2.x, true, var_2.x, true), vec4<bool>(false, all(!vec3<bool>(false, var_2.x, var_2.x)), !var_2.x, func_5(true, func_2(u_input.c.x, Struct_1(vec3<f32>(610f, var_0, 536f)), vec3<i32>(0i, var_1.x, -1i), false), !vec3<bool>(var_2.x, false, var_2.x), abs(vec2<u32>(u_input.a, 0u))).a), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1.x, -16669i) >> (max(u_input.c.x, 4294967295u) % 32u), ~_wgslsmith_div_i32(var_1.x, -30841i))), -1329f, 2147483647i, max(u_input.b, u_input.b), u_input.b);
}

