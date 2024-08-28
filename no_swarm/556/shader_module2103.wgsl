struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> Struct_2 {
    global0 = array<vec4<bool>, 23>();
    global0 = array<vec4<bool>, 23>();
    return Struct_2(max(vec3<i32>(u_input.a, u_input.a, 0i) & vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(49384i, 0i, 0i)), _wgslsmith_mod_i32(2147483647i, u_input.a), -u_input.a), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(27390i, u_input.a), u_input.a), -1i, 1i)));
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> bool {
    let var_0 = vec2<bool>(true, !(!all(vec3<bool>(true, false, false))) || false);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x + -1076f) * _wgslsmith_f_op_f32(f32(-1f) * -337f))), arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1328f), -488f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-431f - arg_1.b.x)))));
    global0 = array<vec4<bool>, 23>();
    let var_2 = Struct_3(func_1(), func_1(), vec2<f32>(1f, -394f), vec4<u32>(_wgslsmith_div_u32(~_wgslsmith_add_u32(0u, 19533u), max(~u_input.b, u_input.b)), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.d.x, countOneBits(1u)), ~(~4294967295u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(23971u, 0u, 0u) << (u_input.c % vec3<u32>(32u)), u_input.e << (vec3<u32>(u_input.b, u_input.e.x, 27661u) % vec3<u32>(32u))), u_input.d.x & 0u), 0u));
    let var_3 = var_2.d.wzz;
    return false;
}

fn func_3() -> f32 {
    global0 = array<vec4<bool>, 23>();
    var var_0 = select(!(!vec3<bool>(func_2(u_input.a, Struct_5(Struct_2(vec3<i32>(-9654i, u_input.a, u_input.a)), vec4<f32>(-751f, 1000f, 1735f, 2063f))), true, true)), vec3<bool>(!(!(u_input.a > u_input.a)), select(any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false)), true, true), true), !(_wgslsmith_dot_vec2_i32(func_1().a.zz, min(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, u_input.a))) > _wgslsmith_sub_i32(~(-15055i), -1i)));
    let var_1 = Struct_5(func_1(), vec4<f32>(-549f, 1000f, -128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1690f, _wgslsmith_f_op_f32(max(194f, 700f)), true)))));
    var_0 = vec3<bool>(true, !all(!select(vec2<bool>(var_0.x, var_0.x), var_0.yy, true)), ((!var_0.x & any(var_0.xz)) | all(vec3<bool>(true, true, true))) != var_0.x);
    var var_2 = ~select(select(~_wgslsmith_mod_vec2_i32(var_1.a.a.zz, var_1.a.a.xz), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a) << (u_input.c.yy % vec2<u32>(32u)), vec2<i32>(-1i, var_1.a.a.x)), false), -reverseBits(vec2<i32>(1i, 45477i)), !var_0.yx);
    return -695f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 23>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1774f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2237f + 555f) * -952f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1914f)) * _wgslsmith_f_op_f32(step(-544f, -1000f)))))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1258f))));
    let var_2 = select(~(~u_input.d), ~u_input.d, global0[_wgslsmith_index_u32(~u_input.c.x, 23u)]);
    global0 = array<vec4<bool>, 23>();
    let var_3 = Struct_3(func_1(), func_1(), vec2<f32>(-538f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1 + -142f), var_1, func_2(u_input.a, Struct_5(Struct_2(vec3<i32>(5362i, u_input.a, u_input.a)), vec4<f32>(-942f, 1357f, 1537f, -2107f))))), var_1, true))), u_input.d);
    var var_4 = Struct_5(var_3.b, vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -486f), _wgslsmith_div_f32(_wgslsmith_div_f32(var_3.c.x, _wgslsmith_f_op_f32(-var_1)), _wgslsmith_div_f32(-1106f, _wgslsmith_f_op_f32(var_3.c.x - var_1))), _wgslsmith_f_op_f32(999f + _wgslsmith_f_op_f32(-var_1))));
    var var_5 = var_3;
    var var_6 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(11050u, select(vec3<u32>(min(u_input.b, var_5.d.x) & ~4294967295u, u_input.c.x, ~_wgslsmith_div_u32(u_input.b, u_input.e.x)), var_2.wzw, false), _wgslsmith_dot_vec4_u32(((vec4<u32>(80064u, 1u, var_5.d.x, 0u) | vec4<u32>(var_5.d.x, var_2.x, 4294967295u, 13847u)) >> (_wgslsmith_mult_vec4_u32(u_input.d, var_5.d) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, var_3.d.x, 8689u, u_input.c.x), ~vec4<u32>(var_5.d.x, u_input.b, 0u, var_3.d.x)) % vec4<u32>(32u)), var_5.d), ~min(4294967295u, reverseBits(abs(7031u))), vec3<u32>(max(_wgslsmith_dot_vec4_u32(~var_2, u_input.d & vec4<u32>(1u, 33502u, var_2.x, var_3.d.x)), 1u), u_input.b, ~49221u));
}

