struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true));

var<private> global1: Struct_3 = Struct_3(vec3<f32>(1357f, -594f, -457f), vec3<bool>(true, false, false), 9845u, 1i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> bool {
    global0 = array<vec3<bool>, 13>();
    global0 = array<vec3<bool>, 13>();
    let var_0 = Struct_5(Struct_4(!global1.b.yx, true, true | any(vec4<bool>(global1.b.x, true, false, global1.b.x)), global1.a), -1i);
    let var_1 = Struct_5(Struct_4(select(vec2<bool>(global1.c == global1.c, global1.b.x), select(vec2<bool>(global1.b.x, global1.b.x), global1.b.yy, global1.b.x), all(vec2<bool>(global1.b.x, true))), false, true, var_0.a.d), reverseBits(-_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.d, -1i, -6859i), u_input.a, vec3<i32>(global1.d, 15230i, var_0.b)), -vec3<i32>(-1i, global1.d, 34217i))));
    global0 = array<vec3<bool>, 13>();
    return var_0.a.b;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(vec3<f32>(258f, global1.a.x, -841f), vec3<bool>(global1.b.x, func_3(_wgslsmith_f_op_f32(abs(global1.a.x))), all(select(vec4<bool>(true, global1.b.x, true, global1.b.x), !vec4<bool>(global1.b.x, true, global1.b.x, true), !global1.b.x))), 19794u & _wgslsmith_mult_u32(global1.c, ~firstLeadingBit(global1.c)), abs(~min(_wgslsmith_sub_i32(-1i, 3274i), 2147483647i)));
    global1 = var_0;
    global0 = array<vec3<bool>, 13>();
    var var_1 = var_0;
    global0 = array<vec3<bool>, 13>();
    return Struct_3(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(-1173f - -1555f)) + global1.a.x), global1.a.x), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(14666u, global1.c, 65517u, global1.c) >> (vec4<u32>(0u, 1786u, var_1.c, 1u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, var_1.c, 4294967295u, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 4294967295u, 4294967295u, 1u), vec4<u32>(global1.c, var_1.c, var_0.c, 86024u)), _wgslsmith_div_u32(4294967295u, global1.c), ~var_1.c, 101098u)), 13u)], 1u, -_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b.x, -2147483647i) | _wgslsmith_div_i32(2147483647i, 1i), ~abs(var_1.d)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_1.d;
    var var_1 = Struct_2(arg_1.a, Struct_1(!(-742f < _wgslsmith_f_op_f32(arg_1.a.b.x * 456f)), vec4<f32>(_wgslsmith_f_op_f32(step(535f, _wgslsmith_f_op_f32(arg_1.b.b.x + -407f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.c * arg_1.b.b.x))), _wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-328f)))), arg_1.a.c, global1.b, firstTrailingBit(arg_1.a.c.zy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1240f, -158f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))))), global1.b);
    let var_2 = _wgslsmith_f_op_f32(-var_1.a.b.x);
    var_1 = Struct_2(var_1.b, Struct_1(false, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-376f, global1.a.x, false)) * arg_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b.x) * func_2().a.x), _wgslsmith_f_op_f32(-arg_1.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_2) * arg_3.a.x)), _wgslsmith_mod_vec3_u32(select(~vec3<u32>(27512u, 18351u, 471u), vec3<u32>(global1.c, 40293u, 4294967295u), global1.b), ~vec3<u32>(arg_3.c, 26004u, var_1.b.c.x)), global1.b, firstTrailingBit(vec2<u32>(abs(global1.c), arg_1.b.e.x & 4294967295u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.a.b.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(min(arg_3.a.x, global1.a.x))))))), select(!select(vec3<bool>(true, arg_3.b.x, arg_3.b.x), vec3<bool>(true, true, true), var_1.c < -866f), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.a.c.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_1.b.c.zz, vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_dot_vec3_u32(var_1.b.c, var_1.b.c))), 13u)], !arg_1.d.x));
    var_1 = Struct_2(Struct_1(!(!func_2().b.x), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2 + arg_1.c), var_2, 149f, func_2().a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_1.a.b)))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.e.x, 23909u, 31164u, 6638u), ~vec4<u32>(arg_3.c, global1.c, 4294967295u, 9501u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c, arg_1.b.e.x, arg_3.c, arg_3.c), vec4<u32>(42033u, 1556u, arg_3.c, arg_1.b.e.x)), ~29733u), global1.c), !(!func_2().b), arg_1.b.e ^ ~_wgslsmith_mod_vec2_u32(var_1.b.c.yy, vec2<u32>(1u, arg_3.c))), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, 585f) * _wgslsmith_div_f32(-857f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-310f)) * var_1.a.b.x))), !(!arg_3.b));
    return arg_1.b;
}

fn func_5(arg_0: Struct_2) -> Struct_4 {
    var var_0 = Struct_5(Struct_4(vec2<bool>(!(22080i >= global1.d), !arg_0.b.d.x), global1.b.x, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.b.ywy)))), ~u_input.b.x);
    let var_1 = Struct_4(select(!global1.b.zy, func_2().b.zz, false), false, arg_0.a.d.x, var_0.a.d);
    var var_2 = abs(abs(_wgslsmith_mult_i32(~0i, select(32025i, global1.d, true)) ^ 3077i));
    var var_3 = _wgslsmith_mod_vec4_u32(firstTrailingBit(~vec4<u32>(arg_0.a.c.x, ~1u, global1.c << (arg_0.a.c.x % 32u), ~0u)), ~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 44855u, global1.c, arg_0.b.c.x), vec4<u32>(arg_0.a.e.x, 1u, 43631u, 30589u)) & vec4<u32>(1u, 61303u, global1.c, 0u), ~vec4<u32>(global1.c, global1.c, global1.c, arg_0.a.c.x)));
    var var_4 = abs(4294967295u);
    return var_0.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: u32) -> vec2<u32> {
    var var_0 = max(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2, 36410u), ~vec2<u32>(arg_2, arg_1) | reverseBits(vec2<u32>(16620u, 33285u))), vec2<u32>(_wgslsmith_mult_u32(arg_2, countOneBits(24633u)), ~_wgslsmith_div_u32(4294967295u, arg_1))), ~vec2<u32>(_wgslsmith_div_u32(arg_1, 4294967295u) & _wgslsmith_sub_u32(arg_2, arg_1), 4294967295u));
    var var_1 = func_5(Struct_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1133f, -1000f, -1947f, global1.a.x) + vec4<f32>(-334f, global1.a.x, global1.a.x, global1.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-492f, global1.a.x, global1.a.x, global1.a.x))), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, global1.c, 28847u), vec3<u32>(35377u, 1u, 66232u)), ~vec3<u32>(9504u, 0u, global1.c), ~vec3<u32>(1u, 41019u, arg_1)), !(!arg_0.yyx), vec2<u32>(global1.c | 75319u, global1.c)), func_4(-(~vec3<i32>(global1.d, global1.d, 17304i)), Struct_2(Struct_1(global1.b.x, vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), vec3<u32>(global1.c, 12516u, arg_1), vec3<bool>(arg_0.x, arg_0.x, false), vec2<u32>(var_0.x, 30840u)), Struct_1(global1.b.x, vec4<f32>(global1.a.x, global1.a.x, -319f, global1.a.x), vec3<u32>(global1.c, arg_2, 4294967295u), vec3<bool>(false, false, true), vec2<u32>(arg_1, 1u)), -2081f, arg_0.xzz), ~u_input.a ^ -u_input.a, func_2()), -514f, global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(arg_2, ~1599u)), 13u)]));
    var var_2 = ~(~reverseBits(~firstLeadingBit(-2147483647i)));
    let var_3 = vec4<i32>(i32(-1i) * -1i, -9455i, global1.d, global1.d);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -790f));
    return abs(firstLeadingBit(~select(vec2<u32>(var_0.x, 0u), vec2<u32>(48872u, global1.c), var_1.b)) | ~(~select(vec2<u32>(var_0.x, 4283u), vec2<u32>(49534u, arg_1), arg_0.x)));
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<u32> {
    var var_0 = false;
    return ~vec4<u32>(arg_2.e.x, 61544u, ~func_4(reverseBits(u_input.a), Struct_2(arg_2, Struct_1(false, arg_2.b, vec3<u32>(54977u, 48755u, 27615u), global0[_wgslsmith_index_u32(44087u, 13u)], arg_2.e), arg_2.b.x, vec3<bool>(global1.b.x, global1.b.x, false)), ~vec3<i32>(u_input.b.x, global1.d, 37790i), Struct_3(vec3<f32>(arg_3.x, global1.a.x, global1.a.x), vec3<bool>(global1.b.x, global1.b.x, arg_2.d.x), arg_2.c.x, arg_0)).e.x, ~arg_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-global1.a.yy);
    var var_1 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(82708u, ~vec4<u32>(~global1.c, ~global1.c, abs(global1.c), global1.c) | vec4<u32>(0u, global1.c, select(1u, _wgslsmith_mod_u32(global1.c, global1.c), global1.b.x), ~(global1.c & global1.c)), ~func_6(-1i, any(global1.b.xy), Struct_1(global1.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 192f) * vec4<f32>(global1.a.x, 1218f, -1000f, 350f)), firstLeadingBit(vec3<u32>(global1.c, global1.c, 45383u)), !global0[_wgslsmith_index_u32(global1.c, 13u)], func_1(vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x), global1.c, 0u)), _wgslsmith_f_op_vec3_f32(global1.a * _wgslsmith_f_op_vec3_f32(global1.a + global1.a))), 1i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(min(-675f, 1000f))) + global1.a.x), -232f, -2151f));
}

