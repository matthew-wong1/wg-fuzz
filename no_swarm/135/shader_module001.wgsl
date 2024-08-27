struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<Struct_3, 24>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<u32> {
    global1 = array<Struct_3, 24>();
    global0 = vec2<bool>(all(vec3<bool>(global0.x || false, !select(global0.x, global0.x, arg_1.a.x), true)), true);
    let var_0 = arg_1.e.c.x;
    let var_1 = arg_2.x >> (_wgslsmith_dot_vec2_u32(max(select(vec2<u32>(arg_1.e.a.x, arg_1.e.a.x), vec2<u32>(32773u, 21955u), arg_1.e.b) ^ vec2<u32>(arg_0.x, 1u), max(arg_1.e.a, ~arg_0.wy)), arg_0.yz) % 32u);
    global0 = !select(!(!vec2<bool>(global0.x, false)), arg_1.e.b, all(vec3<bool>(-1i < arg_2.x, true, all(vec4<bool>(true, true, true, false)))));
    return vec4<u32>(_wgslsmith_div_u32(6996u, 114261u << (arg_0.x % 32u)), 35753u, ~_wgslsmith_add_u32(arg_1.e.a.x, 93634u), 4294967295u);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: i32) -> vec4<u32> {
    let var_0 = min(u_input.a, u_input.d);
    global0 = !vec2<bool>(true, arg_0);
    global0 = vec2<bool>(arg_0 && true, arg_0);
    var var_1 = !vec2<bool>(!select(true, true, !global0.x), select(false, true, all(vec2<bool>(arg_0, false))));
    global0 = select(select(!(!(!vec2<bool>(var_1.x, var_1.x))), select(vec2<bool>(arg_3 != u_input.e, global0.x), !vec2<bool>(true, arg_0), select(29918u, var_0, arg_0) != (var_0 << (26770u % 32u))), true), select(select(!select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, true), true), select(!vec2<bool>(var_1.x, arg_0), vec2<bool>(global0.x, var_1.x), select(vec2<bool>(var_1.x, global0.x), vec2<bool>(global0.x, var_1.x), vec2<bool>(global0.x, global0.x))), false), vec2<bool>(!var_1.x, true), !arg_0), var_1.x);
    return abs(~u_input.c);
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<f32>) -> bool {
    let var_0 = select(vec3<bool>(all(!vec2<bool>(global0.x, global0.x)), true, !(arg_1.x == u_input.d) || !any(vec2<bool>(false, true))), vec3<bool>(false, any(vec3<bool>(true, false, true)), global0.x), select(vec3<bool>(any(!vec3<bool>(global0.x, global0.x, true)), true, global0.x), vec3<bool>(all(vec2<bool>(true, true)), global0.x, true), arg_0 > 44169i));
    var var_1 = Struct_1(abs(func_3(global0.x, arg_2.x, firstTrailingBit(64968u), ~arg_0).yy), vec2<bool>(all(select(vec2<bool>(true, global0.x), var_0.yy, global0.x)), any(vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_2))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) + vec2<f32>(arg_2.x, -1039f)))))), _wgslsmith_div_vec3_i32(u_input.b.yzx, select(vec3<i32>(arg_0 | -5556i, arg_0, 53795i), ~vec3<i32>(arg_0, arg_0, 24648i) >> (~u_input.c.yyz % vec3<u32>(32u)), true)), arg_0);
    var_1 = Struct_1(select(_wgslsmith_add_vec2_u32(var_1.a, vec2<u32>(var_1.a.x, 83390u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.c.x), vec2<u32>(u_input.c.x, 38396u)), false) & arg_1.xy, var_1.b, vec2<f32>(149f, _wgslsmith_f_op_f32(-arg_2.x)), ~(-countOneBits(vec3<i32>(var_1.e, -2147483647i, var_1.e))), -14641i);
    let var_2 = ~(~_wgslsmith_dot_vec2_u32(min(vec2<u32>(11439u, 27198u), u_input.c.zx), vec2<u32>(u_input.d, ~0u)));
    let var_3 = Struct_1(vec2<u32>(173u, 12496u), vec2<bool>(true, var_1.b.x), vec2<f32>(-1653f, _wgslsmith_f_op_f32(f32(-1f) * -648f)), vec3<i32>(-var_1.e, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_0, 1i, var_1.d.x) << ((var_2 ^ u_input.d) % 32u), -2147483647i), firstLeadingBit(abs(~48779i))), 2147483647i);
    return var_3.b.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x * arg_0.x))) - arg_2.a.c.x), -1000f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_1.e.c.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-375f, arg_0.x) * arg_0.yz)))));
    global1 = array<Struct_3, 24>();
    global0 = arg_1.a.zy;
    global1 = array<Struct_3, 24>();
    global1 = array<Struct_3, 24>();
    return Struct_2(arg_1.a, arg_1.e.d.x, func_4(countOneBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(-36761i, arg_2.b, arg_2.a.d.x), vec3<i32>(-2446i, arg_1.b, 1i))), max(u_input.c, func_2(vec4<u32>(u_input.c.x, arg_1.d, u_input.d, 1u), Struct_2(vec4<bool>(arg_2.a.b.x, true, true, false), 1i, false, 0u, Struct_1(vec2<u32>(5083u, 2368u), vec2<bool>(false, global0.x), arg_0.yy, arg_1.e.d, arg_1.e.e)), u_input.b) << (func_3(global0.x, -1923f, 0u, arg_1.e.d.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.yx, vec2<f32>(arg_2.c.x, -493f), global0.x)) - vec2<f32>(var_0.x, 1030f)) + vec2<f32>(1262f, _wgslsmith_f_op_f32(trunc(arg_2.c.x))))), _wgslsmith_dot_vec2_u32(~arg_1.e.a, ~(~vec2<u32>(50693u, 22681u))), Struct_1(arg_2.a.a, arg_2.a.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zy - vec2<f32>(arg_1.e.c.x, -964f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.wx, arg_2.c.zx) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.c.x, 447f) + vec2<f32>(-750f, arg_0.x)))), ~((vec3<i32>(u_input.b.x, u_input.b.x, arg_2.a.d.x) >> (u_input.c.xzz % vec3<u32>(32u))) << (u_input.c.zyy % vec3<u32>(32u))), arg_1.b));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<i32>) -> u32 {
    global1 = array<Struct_3, 24>();
    var var_0 = Struct_1(~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, arg_0.e.a.x), vec2<u32>(38791u, arg_0.e.a.x)) | arg_0.e.a), arg_0.a.yw, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * arg_1.x), _wgslsmith_f_op_f32(sign(arg_1.x))), _wgslsmith_f_op_f32(abs(1000f))) - vec2<f32>(766f, _wgslsmith_f_op_f32(step(arg_0.e.c.x, -236f)))), arg_0.e.d, 56234i);
    global0 = !(!vec2<bool>(var_0.c.x <= _wgslsmith_div_f32(var_0.c.x, var_0.c.x), !(1i <= arg_0.b)));
    global1 = array<Struct_3, 24>();
    let var_1 = ~vec3<u32>(arg_0.e.a.x, 4294967295u, ~var_0.a.x | 0u);
    return firstLeadingBit(abs(reverseBits(~_wgslsmith_add_u32(var_0.a.x, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(u_input.a, func_5(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(855f, -257f, 591f, -484f) + vec4<f32>(-714f, -967f, 103f, 1279f)), Struct_2(vec4<bool>(true, global0.x, true, global0.x), u_input.b.x, global0.x, 84632u, Struct_1(u_input.c.yy, vec2<bool>(true, global0.x), vec2<f32>(-1354f, 580f), vec3<i32>(u_input.e, -15377i, u_input.e), 19115i)), global1[_wgslsmith_index_u32(u_input.c.x, 24u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(950f, 815f, 2930f))), u_input.b.yxw) | ((0u >> (u_input.d % 32u)) & ~(~u_input.d)));
    global0 = vec2<bool>(global0.x, any(vec4<bool>(global0.x, false, true || all(vec2<bool>(global0.x, false)), !func_1(vec4<f32>(114f, -373f, 1000f, 855f), Struct_2(vec4<bool>(global0.x, global0.x, true, false), 2147483647i, global0.x, var_0, Struct_1(vec2<u32>(u_input.d, 38800u), vec2<bool>(true, global0.x), vec2<f32>(603f, 3185f), u_input.b.zww, u_input.b.x)), global1[_wgslsmith_index_u32(0u, 24u)]).a.x)));
    let var_1 = ~(vec2<u32>(0u, _wgslsmith_add_u32(u_input.a, var_0)) << (u_input.c.yy % vec2<u32>(32u))) << (~_wgslsmith_mult_vec2_u32(u_input.c.zx, firstLeadingBit(~vec2<u32>(var_0, 0u))) % vec2<u32>(32u));
    var var_2 = global1[_wgslsmith_index_u32(~(~u_input.d), 24u)];
    global1 = array<Struct_3, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(var_2.c, var_2.c, vec3<bool>(func_1(vec4<f32>(-2096f, -178f, var_2.a.c.x, var_2.a.c.x), func_1(vec4<f32>(-201f, var_2.c.x, 1000f, -772f), Struct_2(vec4<bool>(global0.x, true, var_2.a.b.x, var_2.a.b.x), 0i, var_2.a.b.x, 1u, Struct_1(var_1, vec2<bool>(true, var_2.a.b.x), var_2.c.zz, vec3<i32>(u_input.b.x, var_2.a.d.x, -1i), 2603i)), global1[_wgslsmith_index_u32(1u, 24u)]), global1[_wgslsmith_index_u32(20843u, 24u)]).c, !(!var_2.a.b.x), true))), ~(u_input.d >> (abs(_wgslsmith_sub_u32(32131u, var_2.a.a.x)) % 32u)), abs(u_input.c));
}

