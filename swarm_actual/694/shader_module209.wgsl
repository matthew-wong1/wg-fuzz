struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: vec3<u32>;

var<private> global2: Struct_2;

var<private> global3: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 93236u), vec2<u32>(89123u, 0u), vec2<u32>(53650u, 0u), vec2<u32>(10349u, 1u), vec2<u32>(49398u, 1u), vec2<u32>(35804u, 12626u), vec2<u32>(10882u, 32394u), vec2<u32>(1u, 1u), vec2<u32>(0u, 62112u), vec2<u32>(8269u, 26416u), vec2<u32>(1u, 74666u), vec2<u32>(1u, 0u), vec2<u32>(1u, 11105u), vec2<u32>(4294967295u, 25002u), vec2<u32>(0u, 13943u), vec2<u32>(59803u, 2426u), vec2<u32>(0u, 45406u), vec2<u32>(4877u, 41370u), vec2<u32>(0u, 0u), vec2<u32>(111135u, 24253u));

var<private> global4: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec3<bool> {
    global3 = array<vec2<u32>, 21>();
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.a.x * 765f)))), _wgslsmith_f_op_f32(-arg_0.a.x), -1000f, arg_0.a.x));
    var var_1 = global2.c;
    let var_2 = all(!(!vec3<bool>(all(global0.yw), any(vec4<bool>(true, var_1.d, global2.c.d, false)), false)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-var_0.a);
    return select(global0.xyx, select(global0.wzy, global0.xxy, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.c, 0u, arg_0.c, 1u) ^ vec4<u32>(0u, 42927u, 0u, global1.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 19484u, var_1.c, 14541u), vec4<u32>(1u, 1u, var_1.c, global1.x), vec4<u32>(global2.c.c, global1.x, 26113u, var_1.c))) < u_input.a), select(global0.zzy, vec3<bool>(_wgslsmith_sub_u32(46680u, 22380u) <= ~global2.c.c, var_1.c <= 33864u, select(any(vec3<bool>(global0.x, true, arg_0.d)), true, true)), false));
}

fn func_2() -> vec4<bool> {
    global3 = array<vec2<u32>, 21>();
    global1 = u_input.b;
    let var_0 = global2.c.a.x;
    var var_1 = _wgslsmith_f_op_f32(global2.c.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c.a.x), 1000f), 1f, any(func_3(global2.c, global2.c.b, 1438f))))));
    var var_2 = global2.c.a;
    return vec4<bool>(global0.x, any(select(vec2<bool>(global0.x, true), !select(global0.zw, vec2<bool>(global2.c.d, true), global2.c.d), global0.xz)), false, !(!(_wgslsmith_f_op_f32(var_2.x + var_2.x) > -1146f)));
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> vec4<bool> {
    global0 = select(!(!(!vec4<bool>(true, false, false, global2.c.d))), !vec4<bool>(!(!global2.c.d), ~u_input.c <= (global1.x & global1.x), any(!global0.zxy), !(34284u > global1.x)), !select(select(select(vec4<bool>(global0.x, global2.c.d, true, true), vec4<bool>(true, false, global2.c.d, false), global0.x), func_2(), arg_1.a.x > 253f), !(!vec4<bool>(true, global0.x, true, global0.x)), vec4<bool>(global2.c.d, global2.c.d, true, func_2().x)));
    let var_0 = !(_wgslsmith_dot_vec4_i32(global2.a, min(~global2.a, vec4<i32>(55850i, -33221i, global2.b.x, arg_0))) > ~(-1i));
    let var_1 = vec4<u32>(4294967295u ^ u_input.b.x, _wgslsmith_div_u32(global1.x, u_input.c), u_input.c, global2.d.x);
    var var_2 = select(global0.wyz, func_3(global2.c, ~abs(-global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-766f + _wgslsmith_f_op_f32(min(1000f, arg_1.a.x))))), all(!(!vec4<bool>(true, var_0, global0.x, var_0))) && false);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.c.a + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-315f)), arg_1.a.x), -677f)), vec2<f32>(-1081f, _wgslsmith_f_op_f32(global2.c.a.x - _wgslsmith_f_op_f32(step(global2.c.a.x, _wgslsmith_f_op_f32(1267f + 2492f))))), arg_1.a.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a.x))) + 177f)));
    return !select(vec4<bool>(false, !any(global0.yx), !var_0, var_0), vec4<bool>(false, true, true, !select(var_0, true, false)), select(!(!vec4<bool>(var_0, global0.x, true, true)), vec4<bool>(global2.c.b <= -1i, any(vec4<bool>(false, var_0, true, var_2.x)), false, var_0 | var_0), vec4<bool>(global2.b.x <= arg_0, var_0, !var_2.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global2.a, ~_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(abs(global2.a.zz), vec2<i32>(0i, global2.b.x)), ~global2.a.xz), global2.c, global1.xx);
    var var_1 = !select(!vec4<bool>(global2.c.d, 1i > global2.c.b, all(vec3<bool>(true, false, global0.x)), var_0.c.d), select(vec4<bool>(var_0.c.a.x == -2084f, true, true, global0.x), !func_1(global2.c.b, Struct_3(vec4<f32>(1113f, global2.c.a.x, -1835f, -2470f))), ~var_0.d.x <= 4294967295u), true);
    var var_2 = var_0.c.d;
    var var_3 = !(!(!(!(!vec3<bool>(true, var_1.x, var_0.c.d)))));
    global1 = vec3<u32>(_wgslsmith_mod_u32(abs(reverseBits(1u)), ~global2.c.c), global2.c.c, _wgslsmith_add_u32(~countOneBits(abs(0u)), firstTrailingBit(global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(max(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.c.c, var_0.d.x), vec3<u32>(global2.d.x, global1.x, 11157u)), reverseBits(global2.c.c)), firstLeadingBit(4294967295u)), select(36126u, _wgslsmith_sub_u32(u_input.a, ~global2.c.c), true), 15465u), vec2<f32>(-157f, _wgslsmith_f_op_f32(select(var_0.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -374f), var_1.x))), ~(~(abs(1u) >> (global1.x % 32u))), var_0.d, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.x, 30816i) & var_0.a.yz, vec2<i32>(0i, global2.b.x)), 2147483647i), -select(-1i, var_0.c.b, global2.c.d) >> (4294967295u % 32u), select(35517i, _wgslsmith_mod_i32(13089i, var_0.c.b) | _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(global2.c.b, 2147483647i)), true)));
}

