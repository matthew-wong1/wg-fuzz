struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14>;

var<private> global1: Struct_4;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec3<f32>) -> vec2<bool> {
    var var_0 = select(!arg_2.a, !arg_0.c.e.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.c.d.x), arg_0.c.d.x))) >= global1.a.c.d.x);
    var var_1 = max(~firstTrailingBit(-1i), arg_2.c.b.x);
    let var_2 = ~arg_2.c.c;
    global1 = Struct_4(arg_2, global1.b, ~max(~_wgslsmith_mult_i32(0i, 0i), u_input.c));
    let var_3 = -arg_0.c.b;
    return select(!(!select(vec2<bool>(true, false), select(vec2<bool>(var_0.x, true), vec2<bool>(false, global1.a.a.x), arg_2.c.e.xz), !global1.a.c.e.xx)), select(vec2<bool>(false && !global1.a.a.x, any(arg_2.c.e.xy) && !arg_0.a.x), !select(vec2<bool>(global1.a.a.x, arg_2.d), arg_0.a, global1.a.a), select(global1.a.c.e.yy, select(select(global1.a.a, arg_2.c.e.zx, global1.a.d), arg_0.c.e.xx, false), var_0.x)), select(!select(arg_2.c.e.xy, !global1.a.a, vec2<bool>(false, false)), vec2<bool>(true, !(false && var_0.x)), vec2<bool>(all(!vec2<bool>(false, arg_0.a.x)), arg_2.d || false)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> i32 {
    global0 = array<vec4<f32>, 14>();
    let var_0 = 1i <= _wgslsmith_dot_vec2_i32(vec2<i32>(1445i, abs(~u_input.b.x)), _wgslsmith_clamp_vec2_i32(firstTrailingBit(global1.a.c.b.xx), -u_input.a, global1.a.c.b.yy) ^ u_input.b.wx);
    global1 = Struct_4(Struct_2(func_3(Struct_2(select(global1.a.c.e.xz, global1.a.a, false), ~vec2<u32>(arg_0.x, 58454u), Struct_1(17857u, vec4<i32>(0i, -2147483647i, 16055i, -33549i), arg_1.a.x, global1.a.c.d, global1.a.c.e), any(global1.a.c.e.xxx)), reverseBits(-1i), Struct_2(!vec2<bool>(global1.a.a.x, false), vec2<u32>(global1.a.b.x, 4294967295u), Struct_1(arg_1.a.x, vec4<i32>(19464i, -2147483647i, -17680i, 0i), global1.a.b.x, vec3<f32>(1296f, global1.a.c.d.x, global1.a.c.d.x), vec4<bool>(var_0, global1.a.c.e.x, false, var_0)), global1.a.c.e.x || false), vec3<f32>(_wgslsmith_f_op_f32(-global1.a.c.d.x), global1.a.c.d.x, global1.a.c.d.x)), arg_1.a.yy, Struct_1(_wgslsmith_add_u32(countOneBits(arg_0.x), 0u), global1.a.c.b, 118143u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1084f, 489f, global1.a.c.d.x)))), global1.a.c.e), any(select(vec2<bool>(var_0, false), select(vec2<bool>(var_0, global1.a.d), vec2<bool>(false, global1.a.d), false), vec2<bool>(global1.a.a.x, false)))), global1.b, -43530i ^ u_input.a.x);
    let var_1 = _wgslsmith_div_vec2_i32(global1.a.c.b.yy, global1.a.c.b.ww);
    var var_2 = 1u;
    return abs(min(~5462i, 2147483647i));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(select(global1.a.c.c, global1.a.c.c, all(!vec4<bool>(global1.a.a.x, global1.a.d, global1.a.d, true))), vec4<i32>(~u_input.b.x, global1.c, ~func_2(vec3<u32>(global1.b.a.x, global1.b.a.x, global1.b.a.x), global1.b), 49293i), global1.b.a.x, vec3<f32>(1218f, _wgslsmith_f_op_f32(f32(-1f) * -1595f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-881f)))))), select(select(select(!vec4<bool>(global1.a.c.e.x, global1.a.a.x, global1.a.c.e.x, true), vec4<bool>(global1.a.c.e.x, global1.a.d, global1.a.c.e.x, false), -1426f > global1.a.c.d.x), vec4<bool>(all(global1.a.c.e.zw), any(global1.a.c.e.zx), false, func_3(Struct_2(vec2<bool>(global1.a.a.x, false), global1.b.a.wy, global1.a.c, global1.a.d), -1i, Struct_2(global1.a.a, vec2<u32>(global1.b.a.x, global1.a.c.a), Struct_1(21573u, vec4<i32>(1i, 10264i, 39603i, u_input.c), 4294967295u, vec3<f32>(-1176f, 293f, -112f), vec4<bool>(false, true, global1.a.c.e.x, global1.a.a.x)), false), vec3<f32>(-447f, -543f, global1.a.c.d.x)).x), global1.a.c.e), vec4<bool>(false, any(global1.a.c.e) && true, global1.a.c.e.x, global1.a.a.x), global1.a.c.e));
    var var_1 = -_wgslsmith_sub_i32(0i, 2147483647i);
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(var_0.a, ~0u))), var_0.b, 56331u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.d.x, -1000f, global1.a.c.d.x), var_0.d)), var_0.d)) * var_0.d) * _wgslsmith_f_op_vec3_f32(-var_0.d)), var_0.e);
    var_1 = firstLeadingBit(_wgslsmith_add_i32(u_input.b.x, reverseBits(_wgslsmith_sub_i32(var_0.b.x, _wgslsmith_dot_vec4_i32(var_2.b, u_input.b)))));
    let var_3 = select(any(func_3(global1.a, -2147483647i, global1.a, vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x))) && true, !(!var_0.e.x), true) & true;
    return Struct_1(countOneBits(18795u), ~vec4<i32>(u_input.a.x, 2147483647i, -1i, -13949i), firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, var_2.a, 2091u), vec3<u32>(65112u, 1u, 1u) & vec3<u32>(global1.a.c.c, 0u, var_2.c)), ~var_2.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.d.x, 754f, var_2.d.x))))), select(global1.a.c.e, vec4<bool>(any(!var_0.e.xxw), true, true, any(!var_0.e)), !(!(!var_0.e))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_4 {
    global1 = Struct_4(arg_3, global1.b, arg_3.c.b.x);
    global1 = Struct_4(Struct_2(vec2<bool>(all(!global1.a.c.e.xyx), global1.a.b.x < abs(arg_1.a)), global1.b.a.xw, arg_1, true), global1.b, _wgslsmith_add_i32(-4531i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.c.b.x, -3817i, arg_3.c.b.x), _wgslsmith_clamp_vec3_i32(global1.a.c.b.zzx, arg_3.c.b.xyy, vec3<i32>(u_input.a.x, arg_1.b.x, arg_1.b.x)))));
    var var_0 = min(vec4<u32>(reverseBits(16893u), ~(arg_1.c << ((62122u >> (1u % 32u)) % 32u)), _wgslsmith_dot_vec3_u32(~global1.b.a.zwx, global1.b.a.zwy), global1.b.a.x), vec4<u32>(global1.b.a.x & max(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, global1.a.b.x, 7828u), global1.b.a), 0u), firstTrailingBit(global1.a.c.c ^ 4294967295u) ^ firstTrailingBit(0u), 1u, min(~(arg_1.a >> (109914u % 32u)), 1u)));
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    return Struct_4(Struct_2(vec2<bool>(any(arg_3.c.e), true), firstLeadingBit(~max(global1.b.a.wz, var_0.xz)), Struct_1(~(5320u ^ arg_1.a), arg_3.c.b, global1.b.a.x, _wgslsmith_f_op_vec3_f32(floor(global1.a.c.d)), vec4<bool>(all(vec3<bool>(false, arg_2.x, false)), true, true, !global1.a.c.e.x)), true), global1.b, arg_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<u32>(reverseBits(4294967295u << ((global1.b.a.x >> (47120u % 32u)) % 32u)), 1u, ~((global1.b.a.x & 56188u) ^ global1.a.c.c), global1.b.a.x));
    var var_1 = global1.a.c.e.zw;
    let var_2 = func_4(_wgslsmith_f_op_f32(global1.a.c.d.x + -396f), func_1(), vec2<bool>(false, !(!(var_1.x & true))), global1.a);
    global0 = array<vec4<f32>, 14>();
    let var_3 = _wgslsmith_div_u32(0u, var_0.a.x & 51244u);
    global1 = Struct_4(func_4(_wgslsmith_f_op_f32(step(global1.a.c.d.x, _wgslsmith_f_op_f32(ceil(945f)))), func_1(), vec2<bool>(var_2.a.c.e.x, true), var_2.a).a, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.c.d.x) - -293f)), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.c.d.x - var_2.a.c.d.x), var_2.a.c.d.x), func_1(), func_1().e.wy, func_4(_wgslsmith_f_op_f32(exp2(global1.a.c.d.x)), Struct_1(var_0.a.x, u_input.b, var_3, var_2.a.c.d, global1.a.c.e), select(global1.a.c.e.zy, vec2<bool>(global1.a.c.e.x, false), vec2<bool>(true, false)), func_4(global1.a.c.d.x, var_2.a.c, var_2.a.a, Struct_2(vec2<bool>(var_2.a.a.x, false), var_2.b.a.zw, Struct_1(var_2.b.a.x, vec4<i32>(u_input.a.x, 31473i, u_input.a.x, 0i), global1.b.a.x, vec3<f32>(-500f, var_2.a.c.d.x, 541f), global1.a.c.e), true)).a).a).a.c, !vec2<bool>(func_3(global1.a, 4270i, Struct_2(global1.a.c.e.yx, global1.a.b, var_2.a.c, true), vec3<f32>(-156f, global1.a.c.d.x, global1.a.c.d.x)).x, true), global1.a).b, _wgslsmith_add_i32(~(~var_2.c), 0i));
    var var_4 = func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), var_2.a.c, vec2<bool>(!var_1.x, true), global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(200f * global1.a.c.d.x), ~(_wgslsmith_mod_vec2_u32(~var_0.a.xx, ~var_0.a.xy) & firstLeadingBit(var_0.a.yw)));
}

