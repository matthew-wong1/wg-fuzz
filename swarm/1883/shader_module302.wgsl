struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    var var_0 = arg_1.b.x;
    var var_1 = u_input.a.ww;
    global1 = array<vec4<bool>, 26>();
    global1 = array<vec4<bool>, 26>();
    global0 = !(!(arg_1.b.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1750f * 291f) * 1f)));
    return ~(~_wgslsmith_dot_vec2_u32(~select(vec2<u32>(arg_0, arg_0), arg_2, true), arg_2));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> vec2<f32> {
    global0 = true;
    global0 = false;
    var var_0 = Struct_2(arg_1);
    global1 = array<vec4<bool>, 26>();
    let var_1 = !any(select(vec2<bool>(any(vec2<bool>(false, false)), u_input.b == 0u), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), true), vec2<bool>(any(vec2<bool>(true, true)), true)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, -307f) + vec2<f32>(arg_1.b.x, 592f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(var_0.a.b.xy)), vec2<f32>(-833f, arg_1.b.x)))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(582f + var_0.a.b.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-711f, var_0.a.a.x)) - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -555f))));
}

fn func_2() -> f32 {
    var var_0 = !any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(886f, 618f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-4071f, _wgslsmith_f_op_f32(f32(-1f) * -1094f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(115f, -843f)) + 618f), _wgslsmith_f_op_f32(f32(-1f) * -1241f), -2393f)));
    let var_2 = Struct_3(_wgslsmith_mult_u32(_wgslsmith_add_u32(~_wgslsmith_add_u32(u_input.b, 37255u), countOneBits(u_input.c.x)), u_input.b), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1417f, var_1.b.x) + vec2<f32>(-2536f, var_1.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(731f, var_1.b.x, 1094f, 229f)))), u_input.a.x, _wgslsmith_f_op_f32(trunc(255f)), any(!vec4<bool>(true, all(global1[_wgslsmith_index_u32(0u, 26u)]), 508u < u_input.c.x, true)));
    var_0 = var_2.e;
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(vec2<u32>(~u_input.c.x, func_3(firstLeadingBit(u_input.b), Struct_1(var_1.a, var_2.b.a.b), abs(vec2<u32>(var_2.a, var_2.a)))), var_2.b.a)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.b.a.b.x, -1551f, var_2.b.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.b.a.a.x)) + var_2.b.a.a.x)))));
    return -1235f;
}

fn func_1() -> vec4<f32> {
    global1 = array<vec4<bool>, 26>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-215f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -154f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-360f)));
    var var_2 = abs(select(vec2<i32>(2147483647i, 9672i), vec2<i32>(_wgslsmith_mod_i32(5055i, -13401i), _wgslsmith_dot_vec3_i32(u_input.a.xww, u_input.a.zwy)), any(vec2<bool>(true, true))));
    let var_3 = -vec3<i32>(41781i, 1i, 11651i);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -114f)) + _wgslsmith_f_op_f32(-var_1)), 1783f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(664f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-981f, _wgslsmith_f_op_f32(ceil(-281f)), false)))) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1287f, _wgslsmith_f_op_f32(trunc(689f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1467f, -804f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(654f, 849f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1424f, 714f) + vec2<f32>(-567f, 120f))) - vec2<f32>(-610f, _wgslsmith_f_op_f32(-600f - -858f)))));
    let var_1 = 33982u;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-391f)), _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -748f) * vec2<f32>(-412f, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), all(vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_1())))));
    var var_3 = Struct_2(var_2.a);
    let var_4 = Struct_3(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1, 73641u), u_input.c.x), var_2, -_wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 25930i), vec4<i32>(-1i, 1460i, 1i, u_input.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_2.a.a.x, _wgslsmith_f_op_f32(-var_0.x), u_input.a.x >= u_input.a.x)))), var_3.a.a.x), !any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_mod_vec2_i32(u_input.a.xz, vec2<i32>(-1i, 1i)) ^ (vec2<i32>(20610i, var_4.c) >> (vec2<u32>(3386u, 1u) % vec2<u32>(32u)))) | _wgslsmith_clamp_vec2_i32(u_input.a.xz, reverseBits(-vec2<i32>(25215i, 8915i)), u_input.a.wy), _wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(var_4.c, var_4.c)) ^ firstLeadingBit(-42982i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.b.a.b.zxy), vec3<f32>(_wgslsmith_f_op_f32(func_2()), var_2.a.b.x, var_0.x)), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_clamp_vec2_u32(u_input.c.xx, _wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.b, 4294967295u), u_input.c.yw, vec2<bool>(var_4.e, true)), u_input.c.wy), u_input.c.wz), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(-210f, -705f)), _wgslsmith_f_op_f32(trunc(-238f))), _wgslsmith_f_op_vec4_f32(-var_2.a.b)))).x, u_input.a.wxw);
}

