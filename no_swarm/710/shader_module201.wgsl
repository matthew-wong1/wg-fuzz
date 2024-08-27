struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 31>;

var<private> global2: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(1u, 67848u, 1u, 0u), vec4<u32>(28968u, 4294967295u, 0u, 4294967295u), vec4<u32>(33605u, 49546u, 1u, 0u), vec4<u32>(1u, 78085u, 13031u, 15812u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 81683u, 0u, 64419u), vec4<u32>(0u, 1115u, 31722u, 13562u), vec4<u32>(4294967295u, 1u, 76910u, 18491u), vec4<u32>(15205u, 4294967295u, 0u, 1u), vec4<u32>(43504u, 0u, 2551u, 72171u), vec4<u32>(53888u, 0u, 88773u, 4294967295u), vec4<u32>(54659u, 3692u, 0u, 37656u), vec4<u32>(51235u, 4294967295u, 36852u, 21362u), vec4<u32>(4294967295u, 0u, 495u, 75172u), vec4<u32>(0u, 21743u, 464u, 101239u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec4<u32> {
    let var_0 = Struct_3(1134f, Struct_2(Struct_1(3944u, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-19708i, 30217i), vec2<i32>(1i, global0.c.a.e), false), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(32802i, arg_0))), global0.b.a.c, _wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, global0.c.a.a, 0u, global0.d)), ~vec4<u32>(global0.b.a.d.x, 3968u, 38536u, 27043u)), -1i)), global0.b, abs(1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a.c.x) - global0.c.a.c.x), _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.e.x), global0.b.a.c.x)) + vec3<f32>(1604f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a - arg_1), _wgslsmith_f_op_f32(-1262f - -1285f))), -1967f)));
    let var_1 = select(select(!(!(!vec2<bool>(false, global1[_wgslsmith_index_u32(global0.b.a.d.x, 31u)]))), select(vec2<bool>(true, true), !select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 31u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.b.a.a, 31u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(global0.c.a.a, 31u)])), global1[_wgslsmith_index_u32(select(abs(global0.c.a.a), abs(4294967295u), global1[_wgslsmith_index_u32(global0.c.a.d.x, 31u)]), 31u)]), !(!select(false, global1[_wgslsmith_index_u32(global0.c.a.d.x, 31u)], false))), vec2<bool>(global1[_wgslsmith_index_u32(~(~(~25157u)), 31u)], select(false, any(select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 31u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 31u)], global1[_wgslsmith_index_u32(global0.c.a.a, 31u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(19050u, 31u)], false))), (global1[_wgslsmith_index_u32(u_input.c, 31u)] && global1[_wgslsmith_index_u32(0u, 31u)]) || !global1[_wgslsmith_index_u32(11441u, 31u)])), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(var_0.d, 31u)], global1[_wgslsmith_index_u32(var_0.b.a.d.x, 31u)])), all(!vec3<bool>(false, global1[_wgslsmith_index_u32(79917u, 31u)], false))), true));
    global2 = array<vec4<u32>, 15>();
    let var_2 = any(!vec2<bool>(select(true, !global1[_wgslsmith_index_u32(var_0.b.a.a, 31u)], true), true));
    global1 = array<bool, 31>();
    return min(~global2[_wgslsmith_index_u32(abs(~29722u << (u_input.c % 32u)), 15u)], ~max(firstTrailingBit(abs(global0.c.a.d)), select(global0.b.a.d, vec4<u32>(55805u, 1u, u_input.a, var_0.c.a.d.x), true)));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -568f), Struct_2(global0.b.a), global0.c, ~_wgslsmith_dot_vec3_u32(global0.b.a.d.yzw | vec3<u32>(global0.b.a.a, global0.b.a.d.x, u_input.c), ~(~vec3<u32>(global0.c.a.d.x, 0u, 4214u))), vec3<f32>(global0.e.x, _wgslsmith_f_op_f32(sign(2101f)), -461f));
    var var_1 = global0.c.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.b.a.c.x), -1697f, _wgslsmith_f_op_f32(2212f + var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-717f, 327f) + _wgslsmith_f_op_f32(arg_2.x + var_1.c.x)))));
    var_1 = global0.c.a;
    let var_3 = Struct_2(Struct_1(max(global0.d, 36982u | _wgslsmith_mult_u32(u_input.a, 61614u)), -38185i, global0.c.a.c, func_3(global0.c.a.e, -1000f), global0.c.a.e));
    return Struct_1(1u, -17222i | _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.b.a.b) ^ abs(arg_0), select(~arg_0, abs(vec2<i32>(u_input.b, u_input.b)), select(vec2<bool>(true, false), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 31u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(44750u, 31u)])))), var_0.b.a.c, var_3.a.d, global0.c.a.e);
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    let var_0 = func_2(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.b & u_input.b, ~global0.c.a.b), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.b.a.e << (arg_0.d.x % 32u), arg_0.b), _wgslsmith_mod_vec2_i32(~vec2<i32>(2147483647i, u_input.b), vec2<i32>(arg_0.b, 54677i) & vec2<i32>(9584i, 42547i)))), global0.c.a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, global0.b.a.c.x, -1948f) * arg_0.c.wxx), arg_0.c.zyy)) - _wgslsmith_f_op_vec3_f32(arg_0.c.yyw - _wgslsmith_f_op_vec3_f32(arg_0.c.yyx + vec3<f32>(-174f, -1789f, global0.a)))) - vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_f_op_f32(sign(global0.c.a.c.x)))));
    var var_1 = global0.c.a;
    var_1 = func_2(_wgslsmith_mult_vec2_i32(~vec2<i32>(i32(-1i) * -68163i, arg_0.e << (1u % 32u)), max(_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(22146i, 2147483647i)), -vec2<i32>(4412i, 50653i))), _wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -27574i, var_1.b, u_input.b), vec4<i32>(-34360i, var_0.b, -52731i, 2147483647i)), 2147483647i, 1i), arg_0.c.wwx);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(148f)), arg_0.c.x, global1[_wgslsmith_index_u32(var_0.a >> (38550u % 32u), 31u)])))))));
    var var_3 = var_1.b;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(arg_0.c.x + global0.c.a.c.x))))), Struct_2(func_2(vec2<i32>(var_0.b, u_input.b) | firstLeadingBit(vec2<i32>(-82191i, -34811i)), 0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(721f, 507f, -231f))))), global0.c, countOneBits(countOneBits(_wgslsmith_dot_vec2_u32(firstLeadingBit(global0.c.a.d.xw), ~vec2<u32>(global0.d, global0.d)))), _wgslsmith_div_vec3_f32(var_0.c.xxx, _wgslsmith_f_op_vec3_f32(vec3<f32>(-3509f, _wgslsmith_f_op_f32(max(-475f, var_1.c.x)), -1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.a.c.x, global0.a, arg_0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c;
    global0 = func_1(Struct_1(0u >> (~_wgslsmith_add_u32(u_input.a, 36620u) % 32u), 18768i, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global0.c.a.c, vec4<f32>(global0.e.x, global0.a, 788f, -587f)), _wgslsmith_f_op_vec4_f32(-global0.c.a.c)), _wgslsmith_sub_vec4_u32(~(vec4<u32>(var_0.a.a, 1927u, u_input.c, 10969u) | vec4<u32>(4261u, global0.b.a.a, 0u, 57774u)), var_0.a.d), -global0.b.a.e | global0.c.a.e));
    global0 = func_1(Struct_1(46989u, _wgslsmith_clamp_i32(var_0.a.b, _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, 2147483647i), _wgslsmith_mod_i32(41157i, 13144i)), -34142i & global0.c.a.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.a, var_0.a.c.x, var_0.a.c.x))), vec4<u32>(reverseBits(global0.b.a.a), global0.c.a.d.x, 4294967295u | _wgslsmith_div_u32(u_input.c, var_0.a.d.x), ~63u), 8806i));
    global2 = array<vec4<u32>, 15>();
    global0 = func_1(Struct_1(9715u >> (~u_input.c % 32u), _wgslsmith_add_i32(u_input.b, var_0.a.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.c.x), _wgslsmith_f_op_f32(-global0.e.x), -931f, _wgslsmith_f_op_f32(step(881f, -264f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(209f, var_0.a.c.x, var_0.a.c.x, global0.e.x))))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, var_0.a.d.x, 30625u, u_input.a), _wgslsmith_sub_vec4_u32(global0.c.a.d, var_0.a.d)), -35804i));
    global0 = func_1(global0.b.a);
    global2 = array<vec4<u32>, 15>();
    var var_1 = func_1(var_0.a).c;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_0.a).b.a.c.xyy, max(select(-15264i | ~global0.c.a.e, global0.c.a.b ^ (u_input.b ^ var_0.a.b), select(var_1.a.e == -1i, global1[_wgslsmith_index_u32(1u, 31u)], any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(9156u, 31u)], true, false)))), ~(~_wgslsmith_mult_i32(u_input.b, global0.c.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.c.x, var_0.a.c.x))))));
}

