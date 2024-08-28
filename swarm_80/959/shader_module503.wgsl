struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3>;

var<private> global1: Struct_3 = Struct_3(32865u, true, false);

var<private> global2: array<Struct_1, 20>;

var<private> global3: vec2<bool>;

var<private> global4: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32, arg_3: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1324u, 0u, arg_3.x), vec4<u32>(53895u, 1u, arg_3.x, 39799u)), ~vec4<u32>(4294967295u, arg_2, 3850u, 4294967295u), true)), vec4<u32>(27066u, global1.a, global1.a, _wgslsmith_div_u32(4294967295u, arg_2) << (arg_3.x % 32u))), vec4<u32>(~(~countOneBits(75451u)), arg_2, ~(~abs(arg_2)), ~global1.a));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(arg_0.a, _wgslsmith_f_op_vec2_f32(-arg_0.a)));
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(1129f, _wgslsmith_f_op_f32(-1056f - -516f))), _wgslsmith_div_f32(arg_0.b, -203f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b - 404f), _wgslsmith_f_op_f32(f32(-1f) * -304f), false)), 320f), vec4<f32>(1f, 529f, -936f, _wgslsmith_f_op_f32(step(-1216f, _wgslsmith_f_op_f32(abs(arg_0.a.x))))))));
    var var_3 = u_input.b ^ (arg_0.c.x ^ -2147483647i);
    var var_4 = _wgslsmith_f_op_f32(-arg_0.b);
    return 32508u;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> vec2<bool> {
    global3 = vec2<bool>(false, arg_1.b == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-644f, -2135f))))));
    let var_0 = 1u;
    global0 = array<vec3<u32>, 3>();
    let var_1 = arg_1.b;
    var var_2 = vec2<f32>(-380f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-404f + var_1)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * arg_1.a.x)), _wgslsmith_f_op_f32(-var_1)));
    return select(vec2<bool>(var_2.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-143f)) - -668f), select(any(!vec3<bool>(global4.x, global4.x, global4.x)), all(vec4<bool>(arg_0.b, true, true, false)), arg_0.a == global1.a)), select(select(select(vec2<bool>(arg_0.b, true), select(vec2<bool>(false, true), vec2<bool>(false, global4.x), global1.c), vec2<bool>(true, true)), select(select(vec2<bool>(global3.x, global1.b), vec2<bool>(true, true), true), !vec2<bool>(global1.c, false), false), vec2<bool>(false, arg_0.b)), select(vec2<bool>(global3.x, false), select(select(vec2<bool>(arg_0.c, global4.x), vec2<bool>(false, true), vec2<bool>(false, global3.x)), !vec2<bool>(arg_0.b, false), !vec2<bool>(global4.x, global3.x)), vec2<bool>(select(false, global3.x, true), select(false, arg_0.b, global1.c))), vec2<bool>(true, true)), global4.x || false);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: f32) -> vec2<bool> {
    global4 = func_4(Struct_3(4294967295u, all(arg_0), arg_1.x), global2[_wgslsmith_index_u32(reverseBits(23744u), 20u)]);
    var var_0 = -1i;
    let var_1 = !(!vec3<bool>(!all(vec4<bool>(arg_1.x, global3.x, true, arg_0.x)), global1.c, arg_0.x));
    var var_2 = false;
    var var_3 = global2[_wgslsmith_index_u32(37020u, 20u)];
    return vec2<bool>(!(!(max(-2147483647i, u_input.a.x) < var_3.c.x)), false);
}

fn func_2() -> u32 {
    global4 = select(func_5(!select(vec2<bool>(true, global1.b), select(vec2<bool>(global1.c, false), vec2<bool>(global1.b, true), vec2<bool>(false, false)), true), func_4(Struct_3(func_3(Struct_1(vec2<f32>(-180f, 1014f), 509f, vec2<i32>(-2147483647i, 2147483647i)), vec3<f32>(-1303f, 989f, -1000f), global1.a, vec2<u32>(84911u, global1.a)), all(vec3<bool>(global4.x, true, global3.x)), all(vec3<bool>(true, false, global4.x))), global2[_wgslsmith_index_u32(~439u, 20u)]), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1786f - _wgslsmith_f_op_f32(step(1755f, -1000f)))))), vec2<bool>(global4.x, global4.x), select(!vec2<bool>(global4.x, true), func_5(vec2<bool>(1u > global1.a, global1.a >= global1.a), !func_5(vec2<bool>(true, global4.x), vec2<bool>(global1.b, global1.c), -521f), _wgslsmith_f_op_f32(sign(-2423f))), any(select(func_4(Struct_3(1u, global4.x, true), global2[_wgslsmith_index_u32(global1.a, 20u)]), vec2<bool>(true, true), !vec2<bool>(true, global1.b)))));
    global1 = Struct_3(2658u, u_input.b > u_input.a.x, false);
    return 71474u;
}

fn func_6(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_1) -> bool {
    var var_0 = !select(!vec4<bool>(!global3.x, global4.x, global4.x, global3.x), !vec4<bool>(121499u >= global1.a, global4.x, arg_2.c.x != 0i, any(vec4<bool>(global4.x, global3.x, false, false))), !(!select(vec4<bool>(global3.x, global3.x, global3.x, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, global3.x, false))));
    global4 = var_0.wy;
    let var_1 = Struct_4(global1.b, select(select(!select(vec4<bool>(global3.x, global4.x, false, global1.b), vec4<bool>(global1.b, global1.c, global3.x, global4.x), global4.x), !vec4<bool>(true, true, false, var_0.x), false), select(vec4<bool>(func_4(Struct_3(global1.a, var_0.x, global4.x), Struct_1(vec2<f32>(arg_2.b, arg_2.b), -108f, u_input.a.ww)).x, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global3.x, var_0.x, global4.x, global4.x), vec4<bool>(true, false, global4.x, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(global3.x, global1.b, false, global1.c), vec4<bool>(var_0.x, global3.x, var_0.x, var_0.x), vec4<bool>(global3.x, global4.x, global1.c, global3.x))), all(!var_0.xw)), all(var_0.wy)), vec4<u32>(~_wgslsmith_div_u32(func_2(), 30190u), _wgslsmith_sub_u32(countOneBits(0u) << (arg_1.x % 32u), 4685u), 4294967295u, 39419u));
    var var_2 = func_5(vec2<bool>(all(func_5(vec2<bool>(var_0.x, true), !vec2<bool>(global4.x, var_1.b.x), -1011f)), true), select(vec2<bool>(true, false), select(vec2<bool>(true, arg_0.x <= 2299i), vec2<bool>(true, true), false), select(true, global3.x, true)), -1000f).x;
    global1 = Struct_3(max(8179u, _wgslsmith_clamp_u32(9212u, arg_1.x, ~_wgslsmith_mult_u32(var_1.c.x, 1u))), global3.x, true);
    return false;
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_2 {
    global1 = Struct_3(58232u, all(vec2<bool>(global1.c, true)), func_6(max(u_input.a.yz, countOneBits(_wgslsmith_div_vec2_i32(u_input.a.yw, vec2<i32>(0i, 11536i)))), vec2<u32>(func_2(), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(3935u, global1.a, global1.a, 17069u), vec4<u32>(global1.a, 11904u, 5509u, global1.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.a, 0u, global1.a, 4294967295u), vec4<u32>(1206u, 4294967295u, global1.a, global1.a)))), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-776f, 1378f))))), _wgslsmith_f_op_f32(-2219f - -340f), -vec2<i32>(-18302i, 17116i))));
    return Struct_2(~(~(~(~u_input.a.x))), global2[_wgslsmith_index_u32(firstTrailingBit(~func_2()), 20u)]);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> StorageBuffer {
    let var_0 = arg_0.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1190f, 226f, var_0.b)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2035f, 731f, -1152f) * vec3<f32>(912f, var_0.b, var_0.b)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b.b, -965f, 804f)))), vec3<f32>(arg_0.b.b, var_0.b, -1048f)))));
    let var_2 = arg_0;
    global1 = arg_1;
    let var_3 = arg_3;
    return StorageBuffer(vec3<f32>(1265f, var_0.a.x, _wgslsmith_f_op_f32(step(arg_0.b.a.x, _wgslsmith_f_op_f32(exp2(var_0.b))))), -(~abs(-arg_0.b.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-472f, 488f, 176f, 426f) + vec4<f32>(-174f, var_0.a.x, var_0.a.x, arg_0.b.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(u_input.a.x);
    let x = u_input.a;
    s_output = func_7(func_1(-1i, abs(~_wgslsmith_dot_vec3_i32(u_input.a.xzz, u_input.a.ywx))), Struct_3(max(39303u, 4294967295u), !global1.c, true), ~max(global1.a, global1.a), Struct_3(abs(1u), true, func_6(vec2<i32>(func_1(14870i, 1i).a, 1i), _wgslsmith_sub_vec2_u32(select(vec2<u32>(6822u, 73158u), vec2<u32>(global1.a, 11862u), true), ~vec2<u32>(global1.a, 65554u)), Struct_1(vec2<f32>(-101f, 460f), _wgslsmith_f_op_f32(117f + -1177f), u_input.a.zz))));
}

