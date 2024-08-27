struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -243f;

var<private> global1: array<u32, 1>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>) -> u32 {
    global1 = array<u32, 1>();
    global1 = array<u32, 1>();
    var var_0 = u_input.b.yy;
    var var_1 = Struct_2(Struct_1(reverseBits(vec2<u32>(4294967295u, u_input.c)), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), true), !(1u > global1[_wgslsmith_index_u32(4294967295u, 1u)])), countOneBits(~41064u) << (_wgslsmith_mult_u32(~4294967295u, u_input.e & u_input.e) % 32u), select(vec2<bool>(true, select(true, true, true)), vec2<bool>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39434u, 1u)], 1u)] != global1[_wgslsmith_index_u32(19386u, 1u)], true), select(any(vec4<bool>(false, true, true, true)), true, false))), Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(36537u, 36353u), select(vec2<u32>(u_input.c, u_input.e), vec2<u32>(1u, global1[_wgslsmith_index_u32(0u, 1u)]), vec2<bool>(true, false)), vec2<u32>(1u, 1u)), vec2<u32>(select(1u, 0u, false), global1[_wgslsmith_index_u32(24821u, 1u)] << (42075u % 32u))), vec2<bool>(_wgslsmith_sub_i32(u_input.a, u_input.b.x) < ~var_0.x, abs(-39739i) < _wgslsmith_mod_i32(u_input.a, 2147483647i)), ~(~abs(u_input.e)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, select(false, true, true)), true)), Struct_1(select(vec2<u32>(~77670u, u_input.e), firstLeadingBit(vec2<u32>(4294967295u, u_input.c)) ^ ~vec2<u32>(4294967295u, u_input.e), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, false), select(false, false, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), u_input.c, vec2<bool>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(u_input.c, 1u)]) < (global1[_wgslsmith_index_u32(u_input.e, 1u)] ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)]), false)));
    let var_2 = vec3<bool>(true, any(!select(vec4<bool>(true, false, false, true), vec4<bool>(var_1.a.b.x, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(var_1.c.b.x, false, false, true), vec4<bool>(true, true, true, var_1.b.b.x)))), select(var_1.b.b.x, any(!var_1.b.b), true & var_1.a.b.x));
    return global1[_wgslsmith_index_u32(var_1.b.a.x, 1u)];
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(reverseBits(~vec2<u32>(4294967295u, 70537u)), arg_1.a.b, abs(1u >> (global1[_wgslsmith_index_u32(u_input.c ^ u_input.e, 1u)] % 32u)), !(!vec2<bool>(arg_1.a.b.x, arg_1.a.d.x))), arg_1.a, Struct_1(max(reverseBits(~vec2<u32>(0u, 1u)), select(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 1u)], 1u)]), ~vec2<u32>(0u, 1u), !arg_1.a.b)), !select(arg_1.a.b, vec2<bool>(arg_1.a.b.x, true), vec2<bool>(true, false)), arg_0.x, !arg_1.a.d));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-293f)), -1547f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2008f * -602f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1022f) * _wgslsmith_div_f32(-733f, -660f)), _wgslsmith_f_op_f32(f32(-1f) * -1284f)) + -447f)));
    var var_1 = Struct_4(27052u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-258f, 638f, -1000f, -673f))) - vec4<f32>(853f, _wgslsmith_div_f32(-109f, 572f), _wgslsmith_f_op_f32(ceil(-1968f)), -386f))), true);
    var var_2 = vec3<bool>(all(!(!(!vec3<bool>(true, arg_1.a.b.x, var_0.c.d.x)))), any(!arg_1.a.b), u_input.a < u_input.a);
    let var_3 = Struct_3(Struct_1(arg_1.a.a, arg_1.a.d, ~(~u_input.c), !select(select(vec2<bool>(true, var_2.x), vec2<bool>(true, false), vec2<bool>(false, false)), !arg_1.a.d, var_2.yy)));
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(arg_1.a.a.x, 1u)], _wgslsmith_dot_vec2_u32(var_3.a.a, vec2<u32>(arg_0.x, var_3.a.a.x)), ~arg_0.x)), _wgslsmith_clamp_u32(~max(global1[_wgslsmith_index_u32(37220u, 1u)], 604u), firstTrailingBit(var_0.b.a.x), arg_1.a.c), 71649u), arg_0.xxz, arg_0.xzw);
}

fn func_2(arg_0: i32) -> f32 {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(594f)), _wgslsmith_f_op_f32(211f + -222f))))), -733f));
    var var_0 = func_4(vec4<u32>(~72343u, abs(~38504u), 55369u, u_input.c) >> (select(vec4<u32>(27616u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 1u)], 0u), vec2<u32>(u_input.c, 36714u)), ~u_input.e, 17385u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(71396u, u_input.e, 34650u, u_input.e), vec4<u32>(1u, u_input.e, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69723u, 1u)], 1u)], global1[_wgslsmith_index_u32(4568u, 1u)])), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false))) % vec4<u32>(32u)), Struct_3(Struct_1(vec2<u32>(func_3(vec3<f32>(-1594f, 149f, -617f), vec3<f32>(-1000f, 122f, -147f)), firstLeadingBit(1u)), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), 1u, vec2<bool>(true, any(vec3<bool>(true, true, false))))));
    var var_1 = Struct_3(Struct_1(select(abs(~vec2<u32>(u_input.c, global1[_wgslsmith_index_u32(61118u, 1u)])), abs(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0.zy)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), any(vec3<bool>(false, false, false)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), true)), func_4(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 43837u, var_0.x, u_input.e), vec4<u32>(51188u, 6862u, 4020u, u_input.e))), Struct_3(Struct_1(vec2<u32>(u_input.c, var_0.x), vec2<bool>(false, false), u_input.e, vec2<bool>(false, false)))).x, vec2<bool>(all(vec4<bool>(true, false, true, true)), true)));
    var_1 = Struct_3(Struct_1(var_1.a.a, vec2<bool>(true, true), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global1[_wgslsmith_index_u32(30774u, 1u)]), var_1.a.a)), 1u)], select(vec2<bool>(!var_1.a.b.x, 4294967295u < global1[_wgslsmith_index_u32(149434u, 1u)]), select(select(vec2<bool>(var_1.a.d.x, var_1.a.b.x), vec2<bool>(true, false), false), vec2<bool>(var_1.a.b.x, false), select(vec2<bool>(true, false), var_1.a.b, var_1.a.b)), true)));
    var_1 = Struct_3(var_1.a);
    return _wgslsmith_div_f32(698f, 1153f);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32) -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-849f - _wgslsmith_f_op_f32(f32(-1f) * -111f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-372f * 1881f) + -794f), _wgslsmith_f_op_f32(func_2(u_input.d ^ u_input.b.x))))));
    global1 = array<u32, 1>();
    let var_0 = Struct_1(~(~reverseBits(vec2<u32>(1u, u_input.c))), vec2<bool>(true, true), firstLeadingBit(countOneBits(97333u)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(true, true)));
    let var_1 = -883f;
    var var_2 = !(!(!vec4<bool>(true, any(vec2<bool>(true, false)), true, 30102i >= arg_2)));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(firstTrailingBit(1i), min(-u_input.d, ~30918i))), ~_wgslsmith_add_i32(_wgslsmith_mod_i32(45602i, u_input.a), countOneBits(1i)) | (i32(-1i) * -1i));
    var var_1 = 884f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1003f * 1084f) - 387f) + 553f))));
    let var_2 = ~vec4<i32>(var_0.x, -1120i, u_input.b.x, var_0.x);
    let var_3 = ~95912u;
    global1 = array<u32, 1>();
    let var_4 = _wgslsmith_mod_vec4_i32(var_2, -(abs(var_2) ^ min(~var_2, vec4<i32>(u_input.a, -5408i, 0i, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(reverseBits(1u), u_input.e)), 1u)], var_3, var_0.x), _wgslsmith_f_op_f32(-753f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(820f + 258f) + 977f))), min(~func_4(vec4<u32>(var_3, 36557u, var_3, 4294967295u), Struct_3(Struct_1(vec2<u32>(u_input.e, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 1u)], 1u)]), vec2<bool>(true, false), u_input.c, vec2<bool>(true, false)))).x | 3073u, u_input.e));
}

