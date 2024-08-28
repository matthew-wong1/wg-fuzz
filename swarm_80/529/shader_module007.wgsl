struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_4 = Struct_4(386f);

var<private> global2: array<vec2<u32>, 16>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<u32>) -> vec3<f32> {
    global0 = Struct_1(_wgslsmith_div_i32(~1i ^ _wgslsmith_clamp_i32(~(-1i), global0.a & -32374i, u_input.b.x), abs(global0.a)));
    let var_0 = firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d, 4294967295u), _wgslsmith_mult_u32(2884u, arg_0.x)), u_input.d), ~(~u_input.c), arg_0.x));
    global1 = Struct_4(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + -652f)));
    global2 = array<vec2<u32>, 16>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1574f, 1312f)))));
    return vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a - 1178f), _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-691f + -212f), _wgslsmith_f_op_f32(step(-2378f, -869f)))), all(vec3<bool>(true, false, false)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(501f - -460f) * _wgslsmith_f_op_f32(var_1.a - 452f)), global1.a)), 286f), global1.a);
}

fn func_2(arg_0: bool) -> i32 {
    global0 = Struct_1(global0.a);
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3(~(~u_input.e)));
    var var_1 = Struct_3(Struct_2(select(!select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), true), select(select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), vec2<bool>(true, false)), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), false)), vec2<bool>(70143u >= u_input.e.x, all(vec2<bool>(arg_0, arg_0)))), -_wgslsmith_clamp_vec2_i32(u_input.b.yx ^ u_input.b.yx, u_input.b.zy, u_input.b.zz), -632f, ~_wgslsmith_div_vec2_u32(min(global2[_wgslsmith_index_u32(u_input.e.x, 16u)], vec2<u32>(u_input.a, 4294967295u)), select(global2[_wgslsmith_index_u32(36098u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], false)), u_input.d), Struct_1(~(~(i32(-1i) * -1i))), Struct_2(vec2<bool>(arg_0, arg_0), u_input.b.xz, 1731f, vec2<u32>(abs(~u_input.d), 0u), reverseBits(u_input.e.x)));
    let var_2 = Struct_3(Struct_2(var_1.a.a, _wgslsmith_mod_vec2_i32(-reverseBits(u_input.b.yy), select(_wgslsmith_add_vec2_i32(u_input.b.yx, vec2<i32>(u_input.b.x, 2147483647i)), var_1.a.b, !vec2<bool>(arg_0, true))), var_1.c.c, _wgslsmith_mult_vec2_u32(~countOneBits(vec2<u32>(39438u, u_input.c)), ~max(global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(u_input.c, 16u)])), var_1.a.d.x), Struct_1(_wgslsmith_sub_i32(-73780i, min(global0.a, -2147483647i) ^ _wgslsmith_div_i32(global0.a, -15591i))), Struct_2(!(!vec2<bool>(arg_0, false)), u_input.b.yz, 296f, var_1.a.d, firstTrailingBit(1u)));
    global0 = Struct_1(-(~countOneBits(var_2.c.b.x)));
    return 1i;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(vec2<bool>(!select(false || arg_0, any(vec3<bool>(true, arg_0, arg_0)), true), !(!(false && arg_0))), firstLeadingBit(u_input.b.zx), arg_1, firstTrailingBit(_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(25097u, u_input.a)), vec2<u32>(u_input.a, u_input.e.x), u_input.e) << (vec2<u32>(u_input.c >> (u_input.c % 32u), 33755u) % vec2<u32>(32u))), _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, u_input.d, 55316u, 9082u), ~vec4<u32>(u_input.a, 10791u, u_input.d, u_input.c), vec4<u32>(0u, u_input.a, 8933u, 1u) ^ vec4<u32>(u_input.d, 24666u, u_input.d, 49954u)), ~(~vec4<u32>(27152u, 1u, 0u, 0u)) << (abs(select(vec4<u32>(u_input.d, u_input.d, u_input.e.x, 145548u), vec4<u32>(1u, u_input.c, u_input.d, 0u), vec4<bool>(true, true, arg_0, false))) % vec4<u32>(32u))));
    global0 = Struct_1(reverseBits(13421i));
    var var_1 = select(!var_0.a, vec2<bool>(true, any(select(vec4<bool>(true, arg_0, arg_0, arg_0), !vec4<bool>(var_0.a.x, arg_0, arg_0, var_0.a.x), var_0.a.x))), var_0.a.x);
    var var_2 = Struct_3(Struct_2(select(select(select(var_0.a, var_0.a, true), select(var_0.a, vec2<bool>(var_1.x, true), false), var_0.a), select(!var_0.a, vec2<bool>(true, false), true), !vec2<bool>(var_0.a.x, true)), -vec2<i32>(select(-2147483647i, -1i, true), -arg_2.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(643f + 1000f), global1.a)), vec2<u32>(~1u, 1u), var_0.e), Struct_1(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(14789i, var_0.b.x, var_0.b.x, 40951i)), ~(-vec4<i32>(global0.a, -2147483647i, 30513i, -2147483647i)))), Struct_2(!var_0.a, u_input.b.yz, global1.a, firstLeadingBit(vec2<u32>(0u, firstLeadingBit(var_0.d.x))), _wgslsmith_mod_u32(24982u, ~(~56501u))));
    global2 = array<vec2<u32>, 16>();
    return Struct_1(i32(-1i) * -2147483647i);
}

fn func_1() -> vec3<bool> {
    let var_0 = func_4(true, _wgslsmith_f_op_f32(round(274f)), Struct_1(_wgslsmith_mult_i32(select(func_2(false), _wgslsmith_mod_i32(-1i, global0.a), true), -u_input.b.x)));
    let var_1 = ((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a)) + global1.a) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1558f))) | select(true, true, true)) | true;
    global2 = array<vec2<u32>, 16>();
    let var_2 = Struct_4(-1599f);
    global0 = var_0;
    return vec3<bool>(-2391f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), var_1, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-1i);
    let var_0 = all(func_1());
    global0 = func_4(var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a * -446f), _wgslsmith_f_op_f32(-895f - -1179f))), Struct_1(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global0.a, 0i), vec3<i32>(-1i, 45325i, -15523i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-467f, 489f, -1331f) * vec3<f32>(global1.a, -661f, -1252f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.a, global1.a, -1658f))), var_0)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-414f, global1.a, global1.a)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(sign(global1.a)), _wgslsmith_f_op_f32(-1456f * global1.a)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 287f, 809f) + vec3<f32>(170f, global1.a, 549f)), vec3<f32>(global1.a, 1604f, global1.a), vec3<bool>(true, true, true))))));
    let var_2 = Struct_1(-(~(~(-27808i)) << (0u % 32u)));
    var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<u32>(u_input.a, _wgslsmith_mod_u32(u_input.e.x, u_input.c)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -479f, global1.a) - vec3<f32>(var_1.x, 2166f, global1.a)) * vec3<f32>(var_1.x, 718f, -934f)))))));
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~func_2(u_input.c < u_input.a));
}

