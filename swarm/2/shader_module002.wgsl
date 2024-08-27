struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(0i, -5813i, i32(-2147483648), 2147483647i), vec4<i32>(35404i, -13543i, 1i, 0i), vec4<i32>(-1i, 2147483647i, 1i, 0i), vec4<i32>(1i, 6813i, -2276i, -9901i), vec4<i32>(1i, -1i, 0i, -48064i), vec4<i32>(6758i, 2147483647i, 1i, -18645i), vec4<i32>(2147483647i, -879i, -4748i, 0i), vec4<i32>(1i, 0i, -1i, -1i), vec4<i32>(1i, i32(-2147483648), -1i, 22725i), vec4<i32>(-37180i, 7079i, i32(-2147483648), 0i), vec4<i32>(0i, i32(-2147483648), 0i, 50976i), vec4<i32>(-1i, i32(-2147483648), 9879i, 17730i), vec4<i32>(i32(-2147483648), -44569i, 95683i, -11133i), vec4<i32>(-4704i, 14235i, i32(-2147483648), i32(-2147483648)), vec4<i32>(19856i, -1i, -1i, 1i));

var<private> global1: vec2<f32> = vec2<f32>(721f, 647f);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<i32>(34571i, i32(-2147483648), 2147483647i, -22323i), vec3<f32>(1206f, 610f, -908f)), 1u, 2147483647i, Struct_1(vec4<i32>(-6794i, 2147483647i, -31177i, 2147483647i), vec3<f32>(-263f, -1061f, -653f)));

var<private> global3: array<u32, 10>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_i32(~abs(vec4<i32>(1i, 1i, u_input.e, u_input.d)), ~min(global2.a.a, vec4<i32>(-2147483647i, u_input.c.x, -21469i, u_input.c.x))) ^ global2.d.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1067f, -158f, global2.d.b.x))))));
    global3 = array<u32, 10>();
    global3 = array<u32, 10>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.xy) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1010f, -1069f)), vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x * arg_0.b.x), _wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.d.b))));
    return var_0.b.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: u32) -> u32 {
    var var_0 = Struct_5(Struct_4(Struct_1(-vec4<i32>(arg_1.d.a.x, -20003i, -23665i, global2.a.a.x), vec3<f32>(global2.a.b.x, 1f, _wgslsmith_f_op_f32(global2.a.b.x * -409f))), arg_1.a, arg_0.x, _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i ^ u_input.b, reverseBits(u_input.e), -1354i >> (global2.b % 32u)), vec3<i32>(global2.a.a.x, _wgslsmith_clamp_i32(u_input.d, 32148i, arg_1.a.a.x), _wgslsmith_mult_i32(global2.d.a.x, 1i)))), true, arg_1.d, global2.a.b.yy, any(arg_0) && ((-u_input.e < (6016i | u_input.b)) | select(!arg_0.x, arg_0.x, false)));
    global1 = var_0.a.b.b.yx;
    var var_1 = -(arg_1.c ^ abs(-1i));
    global1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_1.d.b.xz - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-318f, var_0.a.b.b.x), var_0.c.b.yx, arg_0.xx)) + vec2<f32>(global1.x, global2.d.b.x))), vec2<f32>(arg_1.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.b.b.x), 1f)), arg_0.x & false))));
    var var_2 = Struct_5(var_0.a, true, Struct_1(vec4<i32>(abs(_wgslsmith_mod_i32(-1i, global2.d.a.x)), arg_1.d.a.x, 1i, -firstLeadingBit(u_input.d)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.a.b) + var_0.c.b)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(778f, 528f), _wgslsmith_f_op_f32(floor(-308f))), _wgslsmith_f_op_f32(floor(-2098f)))), any(vec2<bool>(true | !arg_0.x, all(!arg_0.yx))));
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(select(~14295u, 55287u, arg_2 >= arg_1.b), 1392u), vec2<u32>(arg_1.b, ~(~16138u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>) -> vec4<i32> {
    var var_0 = ~vec3<i32>(firstTrailingBit(u_input.d & u_input.c.x), ~(~max(9827i, u_input.c.x)), u_input.d);
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, -1104f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-170f * -372f))))));
    let var_2 = any(vec3<bool>(all(vec4<bool>(true, true, true, true)), !((u_input.a.x & 0i) != abs(16795i)), !all(vec4<bool>(true, false, true, false)) && true));
    let var_3 = vec4<u32>(func_4(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -583f) >= _wgslsmith_f_op_f32(arg_1.x * -644f), _wgslsmith_f_op_f32(func_3(global2.d)) <= 265f, var_2), Struct_2(Struct_1(~global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.b, 10u)], 15u)], vec3<f32>(arg_1.x, arg_0.x, arg_1.x)), 4294967295u, 14197i, global2.d), ~global3[_wgslsmith_index_u32(8269u, 10u)]), 38643u, ~(~_wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.b, 10u)], 10u)], abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)]))), 4294967295u);
    var var_4 = Struct_4(Struct_1(vec4<i32>(u_input.d, 0i, _wgslsmith_dot_vec2_i32(u_input.c.yy, ~vec2<i32>(-2147483647i, 2147483647i)), u_input.e), global2.a.b), Struct_1(global0[_wgslsmith_index_u32(32571u, 15u)], arg_0), all(select(vec2<bool>(false, var_2), !vec2<bool>(var_2, false), select(vec2<bool>(var_2, false), vec2<bool>(var_2, true), false))) & any(vec3<bool>(all(vec4<bool>(var_2, var_2, false, true)), true, true)), firstTrailingBit(vec3<i32>(-59707i, -2147483647i, u_input.e)));
    return global2.d.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32, arg_3: vec2<bool>) -> Struct_2 {
    return Struct_2(arg_0, min(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.b, global3[_wgslsmith_index_u32(global2.b, 10u)]), vec3<u32>(global3[_wgslsmith_index_u32(arg_1.x, 10u)], arg_1.x, global2.b)), select(global2.b, 4294967295u, arg_3.x)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.x, 10u)], 10u)] | (global2.b << (arg_1.x % 32u))), 4294967295u), ~_wgslsmith_sub_i32(global2.c << (_wgslsmith_sub_u32(0u, arg_1.x) % 32u), _wgslsmith_sub_i32(global2.d.a.x, 2147483647i)), arg_0);
}

fn func_1() -> vec4<bool> {
    global0 = array<vec4<i32>, 15>();
    global2 = func_5(Struct_1(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a.b - vec3<f32>(-358f, global1.x, -1265f))), _wgslsmith_f_op_vec3_f32(-global2.a.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(561f * global1.x), _wgslsmith_f_op_f32(1845f - global1.x), _wgslsmith_f_op_f32(floor(581f))))), ~min(reverseBits(vec2<u32>(17968u, global2.b)) & (vec2<u32>(55619u, global3[_wgslsmith_index_u32(global2.b, 10u)]) >> (vec2<u32>(4294967295u, 45324u) % vec2<u32>(32u))), vec2<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.b, 10u)], 10u)], _wgslsmith_mult_u32(global2.b, 0u))), firstLeadingBit(u_input.c.x), !vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), false));
    global3 = array<u32, 10>();
    let var_0 = global2.d.a.x;
    global0 = array<vec4<i32>, 15>();
    return !(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false), false)));
}

fn func_6(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_5) -> Struct_1 {
    let var_0 = -(abs(vec3<i32>(max(1i, global2.d.a.x), 1i, -20783i)) & arg_2.d.a.xwy);
    global3 = array<u32, 10>();
    global3 = array<u32, 10>();
    let var_1 = ~(~min(_wgslsmith_add_vec2_u32(vec2<u32>(6291u, global3[_wgslsmith_index_u32(4294967295u, 10u)]) | vec2<u32>(19453u, global2.b), firstTrailingBit(vec2<u32>(41775u, global3[_wgslsmith_index_u32(global2.b, 10u)]))), ~vec2<u32>(global2.b, 63665u)));
    var var_2 = arg_3.e;
    return func_5(arg_3.a.b, select(_wgslsmith_clamp_vec2_u32(var_1, var_1, ~vec2<u32>(4294967295u, global2.b)), _wgslsmith_add_vec2_u32(vec2<u32>(67974u, 27400u), vec2<u32>(50474u, global3[_wgslsmith_index_u32(var_1.x, 10u)])), select(vec2<bool>(arg_3.a.c, true), select(arg_1.yz, vec2<bool>(true, false), vec2<bool>(false, arg_3.e)), !vec2<bool>(true, arg_1.x))) ^ var_1, _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.c.x, -17359i, var_0.x) << (vec4<u32>(4294967295u, var_1.x, 4294967295u, 1u) % vec4<u32>(32u)), vec4<i32>(2147483647i, 0i, -2147483647i, arg_2.b.a.a.x) << (vec4<u32>(29435u, 31008u, global2.b, 24931u) % vec4<u32>(32u))), 54272i, 1i)), vec2<bool>(arg_1.x, ~var_1.x != ~_wgslsmith_add_u32(var_1.x, 19580u))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec3<bool>(47980u != global3[_wgslsmith_index_u32(global2.b, 10u)], true, global2.b < global2.b)));
    var var_1 = _wgslsmith_dot_vec3_i32(abs(reverseBits(u_input.a)), vec3<i32>(_wgslsmith_add_i32(~(-49240i), global2.a.a.x), firstLeadingBit(_wgslsmith_dot_vec4_i32(global2.a.a, -vec4<i32>(u_input.e, 2147483647i, 23450i, global2.d.a.x))), -50558i));
    let var_2 = func_6(global2.a.b.x, vec3<bool>(any(select(vec4<bool>(false, true, true, var_0.x), !vec4<bool>(var_0.x, true, true, var_0.x), func_1())), !var_0.x, (var_0.x & true) | false), Struct_3(func_5(global2.d, min(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 10u)], 10u)], 0u), max(vec2<u32>(global2.b, 2413u), vec2<u32>(4294967295u, 48806u))), _wgslsmith_mult_i32(~global2.d.a.x, 1i), vec2<bool>(any(var_0.xx), true)), func_5(Struct_1(vec4<i32>(u_input.e, -6201i, global2.d.a.x, u_input.b), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(804f, -854f, 2308f)))), vec2<u32>(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global2.b, 10u)], global2.b), 0u), _wgslsmith_div_i32(abs(global2.c), global2.d.a.x), func_1().wx), 4294967295u, Struct_1(_wgslsmith_clamp_vec4_i32(func_5(global2.d, vec2<u32>(global2.b, 0u), global2.c, vec2<bool>(var_0.x, true)).d.a, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(83236u, 10u)] << (1502u % 32u), 15u)], -vec4<i32>(global2.d.a.x, 0i, global2.c, -2147483647i)), global2.d.b), ~_wgslsmith_sub_u32(~0u, 4294967295u)), Struct_5(Struct_4(global2.a, Struct_1(global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 10u)], 10u)], 15u)], vec3<f32>(-1691f, 836f, 839f)), any(vec3<bool>(var_0.x, var_0.x, true)), abs(vec3<i32>(global2.a.a.x, u_input.c.x, 42263i) ^ global2.d.a.yzx)), var_0.x, global2.a, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.d.b.x, _wgslsmith_f_op_f32(global2.a.b.x - 407f)))), true));
    let var_3 = Struct_5(Struct_4(var_2, func_6(-1309f, !select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_0.x, true)), Struct_3(func_5(var_2, vec2<u32>(0u, global3[_wgslsmith_index_u32(1u, 10u)]), -43288i, var_0.yx), Struct_2(var_2, global3[_wgslsmith_index_u32(0u, 10u)], 32654i, Struct_1(vec4<i32>(var_2.a.x, 0i, -2147483647i, u_input.d), global2.d.b)), 67690u, Struct_1(var_2.a, var_2.b), ~0u), Struct_5(Struct_4(Struct_1(global2.a.a, vec3<f32>(global1.x, 798f, -371f)), global2.d, true, global2.a.a.xzy), true, func_5(var_2, vec2<u32>(46522u, 4294967295u), global2.d.a.x, var_0.yy).d, _wgslsmith_div_vec2_f32(global2.d.b.zz, global2.a.b.zx), false)), !(!(u_input.c.x >= var_2.a.x)), firstLeadingBit(-u_input.c)), any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), var_0.x), func_1().zzy)) || false, Struct_1(var_2.a, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1878f, _wgslsmith_f_op_f32(exp2(global2.a.b.x)), global2.a.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(select(global2.a.b.x, _wgslsmith_f_op_f32(exp2(func_6(global1.x, vec3<bool>(var_0.x, true, false), Struct_3(Struct_2(Struct_1(vec4<i32>(-2147483647i, u_input.c.x, -1i, u_input.e), vec3<f32>(global1.x, -746f, global1.x)), 0u, -9807i, Struct_1(global2.a.a, vec3<f32>(global2.d.b.x, global2.a.b.x, -1241f))), Struct_2(global2.a, 5581u, var_2.a.x, Struct_1(vec4<i32>(global2.a.a.x, var_2.a.x, -1i, global2.c), vec3<f32>(var_2.b.x, global2.d.b.x, global2.a.b.x))), global2.b, var_2, global2.b), Struct_5(Struct_4(Struct_1(vec4<i32>(global2.a.a.x, 11537i, 2147483647i, -34449i), var_2.b), Struct_1(var_2.a, var_2.b), false, vec3<i32>(1i, global2.d.a.x, u_input.a.x)), var_0.x, Struct_1(vec4<i32>(7944i, 0i, global2.d.a.x, 2147483647i), vec3<f32>(global2.d.b.x, global1.x, var_2.b.x)), var_2.b.yz, var_0.x)).b.x)), any(select(var_0.zz, var_0.xy, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1753f * -1337f), global2.a.b.x), _wgslsmith_f_op_f32(-771f * _wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(u_input.a.x, var_2.a.x, var_2.a.x, var_2.a.x), vec3<f32>(-838f, var_2.b.x, global2.d.b.x))))), !(!var_0.x)))), false);
    var var_4 = select(vec2<bool>(select(false, var_0.x, false), any(select(func_1().www, vec3<bool>(false, var_3.e, true), !vec3<bool>(var_3.a.c, var_0.x, var_0.x)))), var_0.zx, var_0.yy);
    var var_5 = _wgslsmith_f_op_f32(global2.a.b.x - -540f);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.b.b.x, _wgslsmith_sub_vec2_i32(var_2.a.xx, global2.a.a.yw), ~_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 10u)], 4294967295u, 4294967295u, 8255u), ~vec4<u32>(global3[_wgslsmith_index_u32(global2.b, 10u)], global2.b, global2.b, global2.b), all(vec4<bool>(var_0.x, false, false, true))), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 62746u, global2.b, 36271u), vec4<u32>(55565u, global2.b, global3[_wgslsmith_index_u32(global2.b, 10u)], 34070u), vec4<u32>(37329u, global3[_wgslsmith_index_u32(1u, 10u)], 125213u, global3[_wgslsmith_index_u32(4294967295u, 10u)])), ~vec4<u32>(0u, global3[_wgslsmith_index_u32(23873u, 10u)], global3[_wgslsmith_index_u32(0u, 10u)], global2.b)), select(vec4<u32>(115650u, global3[_wgslsmith_index_u32(1u, 10u)], 28849u, 1u) << (vec4<u32>(1u, global2.b, global2.b, 4294967295u) % vec4<u32>(32u)), vec4<u32>(1u, global3[_wgslsmith_index_u32(77588u, 10u)], global2.b, global2.b) ^ vec4<u32>(40740u, global2.b, global2.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.b, 10u)], 10u)]), var_4.x && true)), var_3.c.a.yw >> (_wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(global2.b), global2.b), vec2<u32>(min(1u, 32295u), firstLeadingBit(global3[_wgslsmith_index_u32(0u, 10u)]))) % vec2<u32>(32u)), min(_wgslsmith_mod_i32(global2.d.a.x, -1i), u_input.c.x));
}

