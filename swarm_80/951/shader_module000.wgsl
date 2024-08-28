struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: array<vec3<u32>, 26>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(911f, arg_0.a.x)))))), _wgslsmith_f_op_f32(1309f + -144f)));
    var var_1 = arg_0;
    var var_2 = arg_0;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))) + _wgslsmith_f_op_f32(var_2.a.x * 481f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, var_0) - arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -787f), var_1.a.x);
    return ~abs(u_input.a);
}

fn func_2() -> bool {
    global0 = Struct_1(global0.a, vec4<i32>(max(~global0.b.x, _wgslsmith_sub_i32(global0.b.x, -4222i)), 1i, abs(-14400i), -38203i & global0.b.x), ~(global0.c | vec4<u32>(global0.d, global0.d, u_input.a, global0.d)), func_3(Struct_1(vec2<f32>(1451f, 958f), select(global0.b, global0.b, vec4<bool>(global0.e.x, true, true, global0.e.x)), ~global0.c, 26776u, vec3<bool>(true, true, true))) ^ 1u, global0.e);
    global2 = array<vec3<u32>, 26>();
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(204f * global0.a.x), 1971f), vec4<i32>(global0.b.x, ~(-firstLeadingBit(global0.b.x)), global0.b.x, 1i), ~(global0.c << (_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(4294967295u, 1677u, 2642u, global0.c.x)), ~vec4<u32>(global0.c.x, u_input.a, 4294967295u, 38274u)) % vec4<u32>(32u))), global0.d, global0.e);
    var var_0 = Struct_1(global0.a, global0.b, ~(~abs(abs(vec4<u32>(u_input.a, u_input.a, global0.d, global0.c.x)))), u_input.a << (~(~4294967295u) % 32u), global0.e);
    let var_1 = ~(_wgslsmith_add_vec2_u32(vec2<u32>(abs(21926u), var_0.c.x), var_0.c.wx) >> (vec2<u32>(func_3(Struct_1(vec2<f32>(-782f, var_0.a.x), var_0.b, vec4<u32>(u_input.a, 1u, 4294967295u, 4294967295u), 32210u, var_0.e)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, 2142u, 1u, var_0.c.x), global0.c)) % vec2<u32>(32u)));
    return all(!(!(!(!vec4<bool>(true, var_0.e.x, false, true)))));
}

fn func_1(arg_0: i32) -> i32 {
    global2 = array<vec3<u32>, 26>();
    global1 = vec3<bool>(global0.e.x, func_2(), false);
    global2 = array<vec3<u32>, 26>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.a.x)), -385f))), abs(_wgslsmith_add_vec4_i32(-vec4<i32>(global0.b.x, arg_0, 22796i, global0.b.x), global0.b) << (vec4<u32>(~57178u, u_input.a | 47109u, 1u, ~8191u) % vec4<u32>(32u))), ~vec4<u32>(min(max(u_input.a, 1u), firstLeadingBit(25853u)), global0.c.x, firstTrailingBit(u_input.a) >> ((global0.d & global0.d) % 32u), global0.c.x), func_3(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.a.x)))), vec4<i32>(-1i) * -vec4<i32>(arg_0, arg_0, global0.b.x, 2147483647i), vec4<u32>(_wgslsmith_mult_u32(u_input.a, global0.c.x), ~42515u, _wgslsmith_dot_vec2_u32(vec2<u32>(43591u, u_input.a), global0.c.zx), global0.c.x), max(func_3(Struct_1(global0.a, vec4<i32>(-16829i, global0.b.x, -62639i, arg_0), vec4<u32>(1u, u_input.a, 40410u, u_input.a), 0u, vec3<bool>(global0.e.x, global1.x, global0.e.x))), ~global0.d), !vec3<bool>(global0.e.x, global0.e.x, global1.x))), vec3<bool>(all(!vec2<bool>(global0.e.x, global0.e.x)), func_2(), 1u != _wgslsmith_div_u32(u_input.a, ~u_input.a)));
    global0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(1356f, var_0.a.x), var_0.a), var_0.b, var_0.c, _wgslsmith_clamp_u32(~var_0.c.x, abs(u_input.a), ~1u >> (0u % 32u)), vec3<bool>(any(var_0.e), global1.x, true));
    return abs(_wgslsmith_div_i32(~(-1i), _wgslsmith_dot_vec2_i32(max(_wgslsmith_mult_vec2_i32(global0.b.zy, vec2<i32>(var_0.b.x, arg_0)), select(var_0.b.xz, vec2<i32>(-27600i, var_0.b.x), var_0.e.x)), abs(var_0.b.xw))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.e;
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1232f, -101f) * _wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(1081f, global0.a.x))))), vec4<i32>(~min(func_1(global0.b.x), -2147483647i), -1i, global0.b.x, firstLeadingBit(countOneBits(~2147483647i))), select(~vec4<u32>(u_input.a, ~global0.c.x, ~95495u, _wgslsmith_sub_u32(global0.c.x, u_input.a)), select(global0.c, _wgslsmith_add_vec4_u32(vec4<u32>(1u, global0.c.x, 19005u, 18779u), _wgslsmith_add_vec4_u32(global0.c, vec4<u32>(global0.c.x, 37105u, global0.c.x, 40366u))), !(!vec4<bool>(global1.x, global0.e.x, global1.x, global1.x))), select(select(select(vec4<bool>(false, global0.e.x, true, false), vec4<bool>(global0.e.x, global1.x, global0.e.x, false), vec4<bool>(global1.x, false, global0.e.x, global1.x)), vec4<bool>(global1.x, true, false, false), true), select(!vec4<bool>(false, false, global0.e.x, false), !vec4<bool>(true, global1.x, global1.x, false), !vec4<bool>(global1.x, false, false, global0.e.x)), select(vec4<bool>(true, true, global1.x, true), select(vec4<bool>(true, global0.e.x, global0.e.x, global0.e.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global0.e.x, global0.e.x, global1.x, global0.e.x)), false | global0.e.x))), global0.d, global0.e);
    let var_1 = vec2<u32>(abs(24798u), ~(select(var_0.d, 39205u, true) & _wgslsmith_sub_u32(var_0.c.x, ~u_input.a)));
    var var_2 = 35639u;
    global1 = !vec3<bool>(global0.e.x, ~global0.b.x >= _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(global0.b.x, -2147483647i, var_0.b.x)), select(vec3<i32>(2147483647i, -2147483647i, 52502i), var_0.b.wwy, true)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(153f, global0.a.x), 1603f)) < global0.a.x);
    let var_3 = vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1318f, _wgslsmith_div_f32(-842f, global0.a.x), var_0.e.x)))));
    global0 = var_0;
    global0 = var_0;
    let var_4 = global0.c & vec4<u32>(var_0.c.x, min(1u, ~1u), var_0.c.x, countOneBits(_wgslsmith_div_u32(func_3(Struct_1(var_0.a, vec4<i32>(global0.b.x, global0.b.x, var_0.b.x, -16568i), var_0.c, 4294967295u, var_0.e)), 96385u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, -global0.b);
}

