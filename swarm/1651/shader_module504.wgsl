struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: Struct_3,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1745f, 1030f, -243f, 2170f);

var<private> global1: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<f32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_div_f32(564f, 380f);
    let var_2 = Struct_3(max(-vec3<i32>(2147483647i, _wgslsmith_div_i32(var_0.c, arg_0.e.x), arg_0.e.x ^ 17910i), ~(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.e.x, u_input.e, 0i), vec3<i32>(-43014i, u_input.a, -49549i)) >> (var_0.a.zxw % vec3<u32>(32u)))), u_input.d, Struct_2(-44222i >= (i32(-1i) * -u_input.a), var_0, firstLeadingBit(49098u), firstLeadingBit(_wgslsmith_mult_i32(u_input.a, _wgslsmith_add_i32(u_input.e, -16644i)))));
    global1 = array<vec2<bool>, 28>();
    let var_3 = _wgslsmith_mod_u32(arg_0.a.x, _wgslsmith_dot_vec2_u32(~u_input.b, vec2<u32>(~_wgslsmith_mod_u32(1u, var_0.a.x), 42301u)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1375f, arg_0.b, var_0.b, global0.x)))) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(floor(-262f)), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1341f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(849f, var_1, var_0.b, var_1) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b, 659f, 421f, var_1))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(891f, var_0.b, var_2.c.b.b, -1673f), vec4<f32>(-2094f, -285f, arg_0.b, var_1)), vec4<f32>(-523f, var_2.c.b.b, global0.x, global0.x), select(vec4<bool>(var_2.c.a, false, var_2.c.a, var_2.c.a), vec4<bool>(var_2.c.a, var_2.c.a, true, false), vec4<bool>(false, var_2.c.a, false, var_2.c.a)))), vec4<f32>(_wgslsmith_f_op_f32(select(555f, 1312f, var_2.c.a)), -3297f, _wgslsmith_f_op_f32(select(global0.x, -1812f, false)), _wgslsmith_f_op_f32(-arg_0.b)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: i32) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(func_4(arg_2, func_3(_wgslsmith_div_vec3_f32(global0.wxw, _wgslsmith_f_op_vec3_f32(global0.wzy + vec3<f32>(global0.x, -1034f, arg_2.b))))));
    let var_0 = global0.x;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1923f * global0.x))), _wgslsmith_f_op_f32(round(-1036f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(886f)) + _wgslsmith_f_op_f32(-arg_2.b)))), arg_2.b, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.b - _wgslsmith_div_f32(-272f, -310f))))), -275f);
    global1 = array<vec2<bool>, 28>();
    var var_1 = Struct_3(~arg_0, 35798i, Struct_2(any(vec4<bool>(true, all(vec2<bool>(true, false)), true, all(global1[_wgslsmith_index_u32(arg_2.d.x, 28u)]))), arg_2, arg_2.d.x, -(arg_0.x & select(2147483647i, 4422i, true))));
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, -1000f)) + _wgslsmith_div_f32(arg_2.b, global0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(arg_2, 0u)).x)) * _wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(round(global0.x)))), _wgslsmith_f_op_f32(-134f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -1000f) * var_1.c.b.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(var_1.c.b.b * 531f), 1638f, arg_2.b))), false));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 299f, global0.x, -839f) * vec4<f32>(330f, global0.x, -818f, global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(-vec3<i32>(_wgslsmith_add_i32(u_input.e, u_input.e), abs(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(62211i, 2147483647i, u_input.a))), ~u_input.b, Struct_1(abs(vec4<u32>(u_input.c, 0u, u_input.c, 100638u)), _wgslsmith_f_op_f32(floor(-1319f)), 1i, vec4<u32>(88150u, _wgslsmith_mult_u32(1u, 33258u), u_input.c & 2759u, 34790u), vec2<i32>(2147483647i, u_input.d) >> (u_input.b % vec2<u32>(32u))), _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.e, -36708i), max(1i, i32(-1i) * -57235i)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -1182f, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1084f, global0.x, global0.x, 2179f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(167f, 374f, global0.x, -792f)))))));
    var var_0 = u_input.b.x;
    let var_1 = vec3<u32>(~u_input.b.x, ~(~1u), _wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.b.x, u_input.c), ~u_input.b.x & u_input.c));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global0.wyy * global0.wzx)));
    return _wgslsmith_f_op_f32(abs(-334f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -318f, global0.x, global0.x), vec4<f32>(global0.x, 1000f, global0.x, 1275f), vec4<bool>(true, true, true, true))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(global0.x, global0.x, -1348f, 1305f)))) + vec4<f32>(_wgslsmith_f_op_f32(-120f + -330f), global0.x, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-global0.x))) * vec4<f32>(_wgslsmith_f_op_f32(521f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -414f, -688f, global0.x)) - vec4<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(f32(-1f) * -982f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1145f, _wgslsmith_f_op_f32(global0.x * 1523f)))), _wgslsmith_f_op_f32(step(934f, -1061f))));
    let var_0 = Struct_3(vec3<i32>(_wgslsmith_mult_i32(30501i, _wgslsmith_dot_vec2_i32(vec2<i32>(-26821i, u_input.e), _wgslsmith_mult_vec2_i32(vec2<i32>(42902i, -2147483647i), vec2<i32>(1i, u_input.d)))), _wgslsmith_sub_i32(-15429i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.e, -58391i) ^ vec3<i32>(2147483647i, u_input.a, 11487i), ~vec3<i32>(1i, u_input.e, 1i))), u_input.d), countOneBits(u_input.d), Struct_2(false, Struct_1(~(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<u32>(1u, u_input.c, 0u, 27252u)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.x, global0.x))), max(~u_input.d, u_input.e), _wgslsmith_sub_vec4_u32(select(vec4<u32>(1u, u_input.c, 4294967295u, 62006u), vec4<u32>(28576u, 938u, u_input.c, 1u), vec4<bool>(false, true, false, false)), firstLeadingBit(vec4<u32>(0u, u_input.b.x, 449u, 1u))), (vec2<i32>(-8330i, u_input.e) & vec2<i32>(-47737i, 2147483647i)) | countOneBits(vec2<i32>(u_input.a, 0i))), ~(~0u), _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.e, 27462i, _wgslsmith_sub_i32(u_input.d, -1i), 2147483647i >> (1u % 32u)), -vec4<i32>(1i, u_input.a, u_input.a, u_input.a))));
    var var_1 = Struct_4(-1253f, _wgslsmith_dot_vec3_u32(var_0.c.b.d.zyy, var_0.c.b.d.zxy), var_0, countOneBits(~_wgslsmith_mod_i32(u_input.e, min(1i, var_0.b))), -4979i & ~_wgslsmith_clamp_i32(-18361i, 2147483647i, max(1i, u_input.d)));
    var var_2 = true;
    let var_3 = var_0.c.a;
    global1 = array<vec2<bool>, 28>();
    global1 = array<vec2<bool>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global0.zw), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1615f, -402f))))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.b.b), _wgslsmith_f_op_vec4_f32(func_2(var_0.a, vec2<u32>(var_0.c.b.a.x, var_0.c.b.a.x), var_1.c.c.b, -14770i)).x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(var_1.c.a.x, 0i, var_0.a.x) >> (vec3<u32>(var_1.c.c.b.a.x, var_0.c.b.d.x, var_0.c.c) % vec3<u32>(32u)), vec2<u32>(var_1.c.c.b.a.x, 53537u), Struct_1(vec4<u32>(u_input.b.x, var_0.c.b.a.x, 24622u, var_1.c.c.c), var_0.c.b.b, u_input.d, vec4<u32>(var_1.b, u_input.b.x, 59208u, var_1.b), vec2<i32>(35880i, -1i)), -2147483647i)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1038f - 1882f))))), _wgslsmith_sub_i32(-29850i, _wgslsmith_add_i32(0i, -reverseBits(u_input.e))));
}

