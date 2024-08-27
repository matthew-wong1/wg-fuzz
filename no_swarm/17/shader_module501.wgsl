struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(1u, 40332u, 19465u, 4294967295u), vec4<u32>(0u, 42942u, 22008u, 31486u), vec4<u32>(4294967295u, 43882u, 4294967295u, 51017u), vec4<u32>(1u, 8742u, 44143u, 3280u), vec4<u32>(4294967295u, 30291u, 68695u, 4294967295u), vec4<u32>(0u, 1u, 1u, 83063u), vec4<u32>(25217u, 4294967295u, 656u, 17043u), vec4<u32>(0u, 1u, 14075u, 1u), vec4<u32>(1u, 40558u, 8312u, 54550u), vec4<u32>(62221u, 0u, 1u, 20931u), vec4<u32>(110626u, 39265u, 31498u, 0u), vec4<u32>(93337u, 37608u, 34223u, 0u), vec4<u32>(0u, 41956u, 1u, 17598u), vec4<u32>(88990u, 4294967295u, 40404u, 9924u), vec4<u32>(6501u, 365u, 101831u, 60734u), vec4<u32>(1u, 38106u, 1u, 1u));

var<private> global1: u32 = 16982u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global1 = 1u;
    global1 = ~select(select(u_input.b, u_input.e.x, true), abs(_wgslsmith_dot_vec2_u32(u_input.e.xy, ~u_input.e.xw)), all(vec2<bool>(true, true)));
    var var_0 = Struct_2(Struct_1(u_input.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-365f + -1954f) - _wgslsmith_f_op_f32(969f + -484f)))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-549f, 1600f, false)))), 679f, _wgslsmith_f_op_f32(select(889f, _wgslsmith_f_op_f32(f32(-1f) * -165f), any(vec2<bool>(true, true))))), ~_wgslsmith_sub_u32(abs(50204u), 1u)), select(~vec3<u32>(~0u, u_input.e.x, ~u_input.c), vec3<u32>(~u_input.e.x, ~61918u, 8517u), vec3<bool>(false, false, false)), ~(~countOneBits(~u_input.e.xz)));
    var var_1 = _wgslsmith_f_op_f32(abs(157f));
    var var_2 = var_0.a.c;
    return ~24513u;
}

fn func_2() -> Struct_3 {
    let var_0 = select(!select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, select(true, true, true), any(vec4<bool>(false, false, false, false))), true), vec4<bool>(true, true, true, true), select(!vec4<bool>(false, any(vec2<bool>(false, true)), true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false), any(vec4<bool>(false, false, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))), !(!(2147483647i < u_input.a))));
    global1 = func_3();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -256f);
    let var_2 = false;
    global0 = array<vec4<u32>, 16>();
    return Struct_3(Struct_2(Struct_1(u_input.c, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1, -133f), _wgslsmith_f_op_f32(ceil(var_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 587f, 303f) * vec3<f32>(-590f, var_1, var_1)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 2007f, 963f))), ~u_input.b >> (u_input.b % 32u)), reverseBits(~u_input.d), _wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.d.xz & u_input.e.wz), _wgslsmith_mult_vec2_u32(u_input.e.yz >> (u_input.e.zw % vec2<u32>(32u)), ~u_input.d.zz))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -217f, 137f, var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(445f, -831f, 1322f, var_1), vec4<f32>(var_1, 576f, -197f, -120f), vec4<bool>(true, var_2, true, var_2)))), !vec4<bool>(true, true, var_2, true))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 309f, 222f, -414f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, var_1) - vec4<f32>(448f, var_1, var_1, -227f))))), select(!var_0, !vec4<bool>(all(var_0.ywz), true, all(vec4<bool>(var_0.x, true, false, var_2)), all(var_0.zz)), false), !(!var_0));
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    global0 = array<vec4<u32>, 16>();
    global0 = array<vec4<u32>, 16>();
    global0 = array<vec4<u32>, 16>();
    let var_0 = func_2();
    var var_1 = ~global0[_wgslsmith_index_u32(~25499u, 16u)];
    return _wgslsmith_div_f32(-464f, _wgslsmith_f_op_f32(922f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(3273f, -1910f) - _wgslsmith_f_op_f32(var_0.a.a.c.x - 729f)) - _wgslsmith_f_op_f32(f32(-1f) * -413f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, true, false)))), -246f))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_div_f32(-1191f, -607f))), -1204f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(446f, var_0.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-524f, var_0.x)))))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(exp2(var_0.x))), var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 926f)))) + vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))));
    let var_1 = 2045f;
    var var_2 = u_input.a;
    let var_3 = abs(abs(vec2<i32>(_wgslsmith_add_i32(0i, 19883i), 1i ^ u_input.a) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e.x, u_input.d.x), u_input.d.yx) % vec2<u32>(32u))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, 414f))));
    global1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-138f * 1f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_1)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(var_1))), -1740f, var_0.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(326f, -282f, var_1, -1454f)) + vec4<f32>(-534f, var_0.x, var_0.x, var_1)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_1, 1545f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-171f, var_0.x, 458f, var_1) * vec4<f32>(2070f, var_1, 1000f, var_1))))), ~(~u_input.e.x) & 1u, select(_wgslsmith_add_i32(u_input.a, ~0i), _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(var_3, var_3), firstLeadingBit(_wgslsmith_add_i32(4761i, u_input.a))), true));
}

