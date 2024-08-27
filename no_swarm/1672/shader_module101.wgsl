struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: Struct_2,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global0 = array<Struct_3, 16>();
    global0 = array<Struct_3, 16>();
    let var_0 = u_input.a.x;
    let var_1 = vec3<i32>(abs(var_0), var_0 & u_input.a.x, -20241i);
    let var_2 = vec2<u32>(reverseBits(4294967295u), _wgslsmith_sub_u32(~u_input.c.x, 18090u));
    return 1121f;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: i32, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-417f, 465f, true)) - arg_0.x))), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -152f, arg_0.x)))))));
    var var_1 = vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))))), any(select(vec4<bool>(true, true, -1088f <= arg_0.x, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), u_input.c.x >= 61753u), vec4<bool>(true, true, true, true))), any(vec2<bool>(true, select(true, true, true))));
    let var_2 = vec2<bool>(var_1.x, var_1.x);
    var var_3 = 4294967295u;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, 281f, arg_0.x)))) * vec3<f32>(arg_0.x, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(438f - var_0.x)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -486f, -926f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1665f, arg_0.x, 108f) + vec3<f32>(-1170f, -243f, arg_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(595f, var_0.x, -296f) * vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))));
    return Struct_2(Struct_1(!(!vec4<bool>(false, var_1.x, var_2.x, var_2.x)), u_input.c.zx, vec2<bool>(all(vec3<bool>(var_1.x, true, true)), var_2.x), u_input.c.x, vec4<bool>(false, !var_2.x | any(vec4<bool>(var_2.x, true, var_2.x, true)), false, var_1.x)));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> bool {
    global0 = array<Struct_3, 16>();
    global0 = array<Struct_3, 16>();
    global0 = array<Struct_3, 16>();
    var var_0 = u_input.a.x;
    var_0 = _wgslsmith_clamp_i32(u_input.a.x, -2147483647i, 64849i);
    return arg_2.a.c.x;
}

fn func_1() -> Struct_2 {
    let var_0 = select(vec4<bool>(true, true, !func_4(4294967295u, -2147483647i, func_2(vec2<f32>(1807f, -639f), u_input.b, u_input.b, u_input.a)), -2147483647i >= _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(9650i, 0i), vec2<i32>(u_input.b, u_input.b)), -6744i)), vec4<bool>(func_4(countOneBits(~u_input.c.x), -min(0i, -5160i), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(u_input.c.x, u_input.c.x), vec2<bool>(true, false), u_input.c.x, vec4<bool>(true, false, false, true)))), true, select(false, true, true), !(_wgslsmith_f_op_f32(round(-480f)) == _wgslsmith_f_op_f32(613f - 2395f))), !func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1009f, 1441f)), ~(~u_input.a.x), u_input.b & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -40761i, u_input.b, -1i), vec4<i32>(26844i, -9966i, u_input.b, u_input.a.x)), vec2<i32>(-2147483647i, 1i) | ~u_input.a).a.e);
    global0 = array<Struct_3, 16>();
    return Struct_2(func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 208f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-906f, 1079f) + vec2<f32>(552f, -1000f))))), -_wgslsmith_div_i32(~u_input.a.x, u_input.a.x ^ u_input.b), abs(u_input.a.x), u_input.a).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~18166u, u_input.c.x);
    var var_1 = func_1();
    global0 = array<Struct_3, 16>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(226f, 378f, 1319f, 482f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(369f, 877f, 1822f, -1786f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-164f, 1448f, 1555f, 243f) + vec4<f32>(-1516f, -331f, 776f, 1485f))))));
    var var_3 = firstLeadingBit(u_input.c);
    let var_4 = ~vec2<u32>(~36004u, _wgslsmith_mult_u32(~0u, ~var_1.a.b.x) >> (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) - -670f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1166f, _wgslsmith_f_op_f32(f32(-1f) * -980f))) + -2154f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(280f * _wgslsmith_f_op_f32(f32(-1f) * -319f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(var_2.xww)))))), max(_wgslsmith_sub_i32(1i, u_input.b), _wgslsmith_div_i32(firstLeadingBit(~2147483647i), -2147483647i)));
}

