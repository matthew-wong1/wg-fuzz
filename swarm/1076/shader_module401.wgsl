struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-1172f, 1364f, -943f), vec3<f32>(553f, -275f, 2047f), vec3<f32>(1084f, -2690f, -734f), vec3<f32>(-535f, 116f, -1088f), vec3<f32>(-1091f, -146f, 1739f), vec3<f32>(-993f, 507f, -347f), vec3<f32>(-190f, -2750f, 392f), vec3<f32>(-782f, 310f, -273f), vec3<f32>(1091f, 1164f, 125f), vec3<f32>(1368f, 590f, 347f), vec3<f32>(520f, -886f, 475f), vec3<f32>(-1024f, 614f, -1000f), vec3<f32>(-797f, -264f, 2004f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> bool {
    let var_0 = arg_1;
    let var_1 = Struct_1(vec4<bool>(arg_2.x, true, all(!select(vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, false))), arg_2.x), true, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-463f, -280f)) - -531f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1600f), _wgslsmith_f_op_f32(-338f + -207f), -1000f, -1262f)))), countOneBits(select(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_0.x, -1i, var_0.a) & vec4<i32>(0i, arg_1.a, -1i, u_input.a), ~vec4<i32>(arg_0.x, -13024i, arg_0.x, 4234i)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(45144i, -8631i, -1i, arg_0.x), vec4<i32>(0i, arg_1.a, -1i, 1i))), arg_2.x)));
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(5738u, _wgslsmith_clamp_u32(firstLeadingBit(0u ^ u_input.b), abs(u_input.b), 6726u), 45494u, 4294967295u), _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 74222u) ^ vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(14438u, u_input.b, 47968u, 4950u)), vec4<u32>(~(~46594u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), ~vec2<u32>(4294967295u, u_input.b)), select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 5430u), vec2<u32>(0u, 1u)), 1u ^ u_input.b, true), select(_wgslsmith_clamp_u32(35038u, u_input.b, 30497u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 23236u, u_input.b), vec4<u32>(u_input.b, u_input.b, 1u, 0u)), !var_1.a.x))));
    let var_3 = u_input.b;
    var var_4 = var_1.d.x;
    return false;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>) -> vec3<bool> {
    let var_0 = !(!select(vec2<bool>(func_3(vec2<i32>(u_input.a, -2147483647i), Struct_2(2147483647i), vec2<bool>(false, true)), true), vec2<bool>(true, true), false));
    let var_1 = _wgslsmith_f_op_f32(449f + _wgslsmith_div_f32(arg_1.x, 981f));
    let var_2 = !(!(!vec3<bool>(false != var_0.x, !var_0.x, all(vec4<bool>(var_0.x, false, true, var_0.x)))));
    global0 = array<vec3<f32>, 13>();
    global0 = array<vec3<f32>, 13>();
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: bool) -> i32 {
    global0 = array<vec3<f32>, 13>();
    var var_0 = func_3(vec2<i32>(_wgslsmith_sub_i32(u_input.c, _wgslsmith_add_i32(abs(arg_0.e.x), abs(2147483647i))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e.x, arg_0.e.x, 5488i, -2147483647i), vec4<i32>(arg_0.e.x, arg_0.e.x, u_input.c, arg_0.e.x)) << (u_input.b % 32u), u_input.c)), Struct_2(-u_input.c), vec2<bool>(true, true));
    var_0 = true;
    var var_1 = arg_0.a;
    var_1 = select(!arg_0.a, select(arg_0.a, arg_0.a, !arg_0.a), !select(!select(vec4<bool>(false, true, true, var_1.x), vec4<bool>(true, arg_3, arg_0.a.x, true), true), arg_0.a, arg_3));
    return min(u_input.a, -26712i);
}

fn func_1(arg_0: vec4<f32>) -> vec2<u32> {
    let var_0 = Struct_2(u_input.c);
    var var_1 = func_4(Struct_1(vec4<bool>(any(func_2(vec4<u32>(11184u, u_input.b, u_input.b, u_input.b), arg_0.yyw)), true, !all(vec3<bool>(false, false, true)), select(true, any(vec3<bool>(false, false, false)), false)), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -940f), arg_0, ~(~(~vec4<i32>(37068i, u_input.a, 27435i, u_input.a)))), firstTrailingBit(u_input.b), 4294967295u, true || any(vec2<bool>(any(vec2<bool>(true, false)), select(true, true, false))));
    let var_2 = ~_wgslsmith_div_i32(u_input.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, var_0.a, -2147483647i, 0i), abs(vec4<i32>(-65535i, 2147483647i, u_input.a, -33379i))), var_0.a));
    var var_3 = ~(-1i & -u_input.a);
    var var_4 = countOneBits(vec4<i32>(~1i, firstTrailingBit(var_0.a), -2147483647i, var_2) & vec4<i32>(2147483647i & var_2, _wgslsmith_dot_vec4_i32(vec4<i32>(25953i, u_input.a, -1i, u_input.a), vec4<i32>(-1i, var_2, 0i, var_2)), min(var_0.a, -4393i), 1i)) >> (_wgslsmith_mod_vec4_u32(firstLeadingBit(~(~vec4<u32>(66439u, u_input.b, u_input.b, u_input.b))), vec4<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 4294967295u), vec3<u32>(4294967295u, 1u, 20089u)), 36034u), 0u, ~_wgslsmith_clamp_u32(u_input.b, u_input.b, 4294967295u), ~u_input.b)) % vec4<u32>(32u));
    return max(_wgslsmith_mult_vec2_u32(select(vec2<u32>(~u_input.b, u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(18686u, u_input.b), vec2<u32>(4294967295u, u_input.b) & vec2<u32>(u_input.b, u_input.b)), false), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(u_input.b, u_input.b), vec2<u32>(44186u, u_input.b)), u_input.b ^ firstTrailingBit(u_input.b))), countOneBits(min(min(select(vec2<u32>(97479u, 1u), vec2<u32>(40556u, u_input.b), false), abs(vec2<u32>(u_input.b, 0u))), ~vec2<u32>(14507u, 1u) | select(vec2<u32>(u_input.b, 16705u), vec2<u32>(4294967295u, 3434u), vec2<bool>(false, false)))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: vec2<u32>) -> vec2<f32> {
    global0 = array<vec3<f32>, 13>();
    var var_0 = vec4<i32>(arg_2.x, arg_0.e.x, -1i, countOneBits(_wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(arg_2.xz, vec2<i32>(arg_1, u_input.a)), -reverseBits(0i))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.d.zy * _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c, 357f), arg_0.d.xx)), vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0.d.x)), _wgslsmith_f_op_f32(min(arg_0.c, arg_0.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-219f, -1700f)), -1119f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec4<bool>(false, true, true, true), true, -425f, vec4<f32>(1123f, 353f, -2435f, -765f), vec4<i32>(1i, u_input.a, 0i, u_input.a)), _wgslsmith_mult_i32(u_input.c, 27496i), ~vec4<i32>(38820i, -33462i, u_input.a, 1i), func_1(vec4<f32>(389f, 618f, -369f, -188f)))))));
}

