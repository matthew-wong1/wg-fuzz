struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(1617f, -798f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<i32>) -> bool {
    global0 = Struct_2(global0.a);
    global0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(806f))), _wgslsmith_f_op_f32(-540f - -233f))));
    var var_0 = vec2<f32>(arg_0, 782f);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(round(-311f)), 201f)))));
    global0 = Struct_2(global0.a);
    return false;
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = !vec2<bool>(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - global0.a.a.x)), vec4<bool>(false, true, true, false), -_wgslsmith_add_vec3_i32(vec3<i32>(-33550i, -1i, 36690i), vec3<i32>(-38307i, -2405i, -16420i))), true);
    global0 = Struct_2(global0.a);
    var_0 = !vec2<bool>(var_0.x, !(var_0.x != true) && true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1999f + arg_0.x))) * global0.a.a.x)) + arg_0.x);
    let var_2 = select(select(select(!(!vec3<bool>(false, var_0.x, true)), !vec3<bool>(true, false, var_0.x), !(!vec3<bool>(true, var_0.x, true))), vec3<bool>(true, false, any(vec2<bool>(var_0.x, true)) | true), select(!select(vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x), var_0.x), vec3<bool>(!var_0.x, true, true), vec3<bool>(any(vec3<bool>(true, var_0.x, var_0.x)), var_0.x, var_0.x))), !(!select(!vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, false), true)), vec3<bool>(var_0.x, var_0.x, func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1533f, arg_0.x) * 1038f), !(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), vec3<i32>(1i, _wgslsmith_add_i32(49455i, 0i), 1i))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, 1482f), vec2<f32>(arg_0.x, -700f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-958f, var_1), vec2<f32>(1063f, arg_0.x)))))));
}

fn func_1() -> Struct_2 {
    global0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, global0.a.a.x), vec4<f32>(1000f, -487f, -177f, global0.a.a.x)))));
    global0 = func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1198f)) + -1600f), 207f, -143f, -409f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x, -189f)), vec4<f32>(161f, 655f, -1831f, global0.a.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1026f, global0.a.a.x, 960f, global0.a.a.x))), vec4<bool>(true, all(vec3<bool>(false, true, true)), true, all(vec3<bool>(true, true, true))))), vec4<bool>(true, true, true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), false))))));
    var var_0 = _wgslsmith_f_op_f32(-global0.a.a.x) != _wgslsmith_f_op_f32(floor(-876f));
    var var_1 = min(~66991u, u_input.b >> (u_input.b % 32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(global0.a.a.x)), _wgslsmith_f_op_f32(floor(854f)), global0.a.a.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.a.x, global0.a.a.x, global0.a.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-431f, 983f, global0.a.a.x), vec3<f32>(615f, -731f, global0.a.a.x), false))))), select(vec3<bool>(true, true, true), vec3<bool>(select(true, false, false), select(false, true, true), global0.a.a.x <= global0.a.a.x), true))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, global0.a.a.x, 933f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-272f, -3022f, global0.a.a.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.x, global0.a.a.x, 628f) * vec3<f32>(global0.a.a.x, -3041f, 570f))), vec3<f32>(_wgslsmith_div_f32(-1256f, global0.a.a.x), 1648f, global0.a.a.x))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, false)))))));
    return func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 622f, -2189f, global0.a.a.x) + vec4<f32>(global0.a.a.x, var_2.x, 308f, var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 904f, var_2.x, global0.a.a.x), vec4<f32>(-483f, 960f, global0.a.a.x, var_2.x), false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(-countOneBits(_wgslsmith_add_i32(-27821i, ~18293i)));
    let var_1 = -(~select(vec2<i32>(3787i, -42328i) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(71003u, u_input.b), vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u)), ~abs(vec2<i32>(2147483647i, 18230i)), vec2<bool>(any(vec3<bool>(false, false, true)), true)));
    global0 = func_1();
    var var_2 = vec3<u32>(4294967295u, 1u, reverseBits(_wgslsmith_sub_u32(~countOneBits(4294967295u), _wgslsmith_div_u32(33678u, 1u) << (firstLeadingBit(u_input.b) % 32u))));
    let var_3 = Struct_4(Struct_2(Struct_1(func_1().a.a)), func_1(), -349f, reverseBits(~(~vec2<i32>(var_1.x, -10281i) & firstLeadingBit(var_1))));
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a.a.x, -2207f), var_3.c)))))));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.a.x)) - global0.a.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -717f))))), -vec3<i32>(var_3.d.x & _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.x, -10755i, var_1.x), vec4<i32>(-16638i, 39931i, -2147483647i, var_1.x)), 1i, var_3.d.x));
}

