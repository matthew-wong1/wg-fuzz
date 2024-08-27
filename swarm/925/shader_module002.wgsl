struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-146f, -285f, 1387f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(256f, 1078f, -2260f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1276f, 897f, 963f), vec3<f32>(886f, 460f, -1000f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-985f, -159f, -848f)))))))), u_input.b.x == u_input.b.x);
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.a * var_0.a))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 1005f, var_0.a.x)) + vec3<f32>(-1000f, var_0.a.x, -1000f)))), false);
    global0 = array<vec3<u32>, 5>();
    var var_2 = Struct_2(!((min(58990u, 4294967295u) < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), u_input.a)) & all(vec2<bool>(var_0.b, var_1.b))));
    global0 = array<vec3<u32>, 5>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.x)) * _wgslsmith_f_op_f32(max(377f, 887f))) + _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(floor(var_0.a.x)))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> bool {
    var var_0 = 0u;
    var_0 = u_input.a.x;
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1394f))) * _wgslsmith_f_op_f32(533f * _wgslsmith_div_f32(-717f, arg_1.a.x))), _wgslsmith_f_op_f32(func_3(select(true, all(vec2<bool>(arg_3.x, true)), any(vec4<bool>(true, true, arg_2, false))), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_1.a.x)))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.a.x, arg_1.a.x), vec2<f32>(290f, -296f))) - arg_1.a.wx), vec2<f32>(_wgslsmith_f_op_f32(1246f * arg_1.a.x), arg_1.a.x)))));
    let var_2 = (abs(abs(u_input.b) ^ ~u_input.b) ^ vec2<i32>(u_input.b.x, -31714i)) >> (u_input.a.zz % vec2<u32>(32u));
    global0 = array<vec3<u32>, 5>();
    return !arg_3.x;
}

fn func_4(arg_0: bool) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -308f) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(148f, 920f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f)));
    let var_1 = Struct_2(any(vec3<bool>(arg_0 != false, true, !arg_0)) == (any(vec2<bool>(false, true)) & true));
    var var_2 = var_1;
    var var_3 = 631f;
    global0 = array<vec3<u32>, 5>();
    return (790u & ~firstTrailingBit(u_input.a.x)) >> (29404u % 32u);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: u32, arg_3: i32) -> f32 {
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    let var_0 = ~vec4<u32>(~func_4(func_2(vec3<bool>(arg_0.b, arg_0.b, arg_0.b), Struct_1(vec4<f32>(139f, arg_0.a.x, arg_0.a.x, arg_0.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 5u)], arg_2, vec2<bool>(arg_0.b, arg_0.b)), arg_0.b, vec2<bool>(false, arg_0.b))), ~abs(~1u), select(arg_2, 76338u, arg_0.b & arg_0.b), arg_2);
    global0 = array<vec3<u32>, 5>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(func_3(false, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 967f;
    var var_1 = -u_input.b.x;
    let var_2 = all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), false), all(vec3<bool>(true, true, true)))) && !(_wgslsmith_f_op_f32(func_1(Struct_3(vec3<f32>(890f, 287f, -309f), false), vec2<i32>(-35503i, u_input.b.x), ~0u, ~u_input.b.x)) < _wgslsmith_f_op_f32(-1118f - 640f));
    let var_3 = !func_2(!vec3<bool>(false, all(vec4<bool>(var_2, var_2, true, false)), false), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-781f, 232f, -503f, -1709f))), abs(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(4294967295u, 4294967295u, 43740u))), _wgslsmith_sub_u32(~u_input.a.x, 6791u), vec2<bool>(select(false, var_2, false), any(vec2<bool>(var_2, false)))), var_2, select(vec2<bool>(var_2, var_2), select(!vec2<bool>(var_2, false), vec2<bool>(false, var_2), true), vec2<bool>(var_2, any(vec2<bool>(false, false)))));
    var_0 = 240f;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(0i) & max(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(45495i, u_input.b.x, u_input.b.x, -10062i), vec4<i32>(u_input.b.x, u_input.b.x, 0i, -9941i)), 10363i), abs(u_input.b.x)), firstTrailingBit(_wgslsmith_mod_vec4_u32(max(vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(77158u, 1u, u_input.a.x, 2992u)), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))) << (reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(288u, u_input.a.x, 18090u, 6965u))) % vec4<u32>(32u)), ~u_input.a.x);
}

