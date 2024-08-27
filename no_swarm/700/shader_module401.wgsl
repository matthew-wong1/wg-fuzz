struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(21194u, vec4<u32>(0u, 0u, 77846u, 27580u));

var<private> global1: array<f32, 9> = array<f32, 9>(1755f, 1360f, -947f, -988f, 496f, -205f, -108f, -1000f, 805f);

var<private> global2: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_2(min(global0.b.x, 4294967295u), countOneBits(vec4<u32>(~max(global0.b.x, u_input.b.x), global0.b.x, 28455u, u_input.b.x ^ 12166u)));
    var var_1 = Struct_2(global0.a, abs(_wgslsmith_clamp_vec4_u32(global0.b, u_input.b, ~_wgslsmith_div_vec4_u32(vec4<u32>(63850u, 6447u, 54575u, var_0.a), vec4<u32>(u_input.a.x, 72780u, 0u, u_input.b.x)))));
    var_0 = Struct_2(1u, vec4<u32>(min(~var_1.b.x, ~var_1.a), u_input.a.x, ~_wgslsmith_dot_vec4_u32(var_0.b, global0.b), var_0.b.x));
    global0 = Struct_2(var_0.b.x, ~u_input.b | var_1.b);
    let var_2 = ~(-u_input.c);
    return ~(-var_2 | u_input.c);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: f32) -> vec4<u32> {
    global2 = _wgslsmith_dot_vec2_i32(vec2<i32>(22260i, _wgslsmith_add_i32(~(-14565i), arg_2.x)), arg_2.yz);
    var var_0 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~global0.a, abs(u_input.a.x)), u_input.a.x), 9u)]);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(vec4<u32>(15555u, 18032u, 82576u, 45040u), ~vec4<u32>(arg_0.c.x, 13013u, global0.a, 30504u))), 9u)] * _wgslsmith_div_f32(arg_0.a.x, global1[_wgslsmith_index_u32(1u, 9u)])));
    global1 = array<f32, 9>();
    global1 = array<f32, 9>();
    return min(_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(global0.b, _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(global0.a, 1u, global0.b.x, arg_0.c.x), vec4<u32>(arg_0.c.x, 74135u, 0u, 80364u))), vec4<u32>(53208u, ~0u, ~min(6947u, u_input.b.x), 8868u)), arg_0.c);
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> u32 {
    let var_0 = Struct_3(~0u << (~global0.b.x % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(286f, 2003f)), arg_1.b), true);
    let var_1 = arg_2;
    let var_2 = u_input.c;
    global1 = array<f32, 9>();
    let var_3 = Struct_2(_wgslsmith_dot_vec2_u32(u_input.a.zx, _wgslsmith_mult_vec2_u32(max(_wgslsmith_div_vec2_u32(global0.b.zz, vec2<u32>(var_1.a, 1u)), ~vec2<u32>(global0.a, var_0.a)), min(~vec2<u32>(1u, 0u), ~vec2<u32>(u_input.a.x, 45836u)))), abs(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2613f, -1031f), vec2<f32>(-411f, global1[_wgslsmith_index_u32(var_1.a, 9u)]))), true, u_input.b), u_input.c.x, max(u_input.c, func_3()), global1[_wgslsmith_index_u32(1u, 9u)])));
    return ~(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 4294967295u, 0u), global0.b.wyz, vec3<bool>(arg_1.c, false, true)), firstLeadingBit(var_1.b.yxz)), firstTrailingBit(abs(0u))) ^ ~0u);
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = Struct_3(72881u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(max(~13148u, global0.b.x), ~func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 9u)]), Struct_3(arg_0, -688f, false), Struct_2(arg_0, u_input.b), ~27562u)), 9u)], false);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(16128u, 9u)]) - 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f + _wgslsmith_f_op_f32(var_0.b + var_0.b))), true)), _wgslsmith_f_op_f32(-1354f + _wgslsmith_f_op_f32(-473f + _wgslsmith_f_op_f32(select(1023f, 507f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -895f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * 1185f) + _wgslsmith_f_op_f32(min(-190f, var_0.b)))) - _wgslsmith_f_op_f32(sign(-1366f))), -1263f);
    var_0 = Struct_3(_wgslsmith_mod_u32(firstLeadingBit(global0.b.x) >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_0, 1742u, 0u, 1u)), ~global0.b) % 32u), _wgslsmith_mult_u32(~1u, _wgslsmith_sub_u32(func_4(Struct_1(var_1.xx, false, vec4<u32>(35027u, 2559u, arg_0, global0.a)), -19200i, vec4<i32>(5724i, -30292i, u_input.c.x, u_input.d.x), 290f).x, 55067u))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(~(~var_0.a)), 9u)]), !select(true, true, var_0.c));
    var_0 = Struct_3(46383u, _wgslsmith_f_op_f32(step(var_0.b, var_1.x)), true);
    return Struct_2(76886u, global0.b);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(~arg_2.b.x, 9u)], global1[_wgslsmith_index_u32(arg_2.b.x, 9u)], global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(arg_2.b, arg_0.b), 9u)], -1131f)))));
}

fn func_6(arg_0: vec4<f32>, arg_1: f32) -> Struct_1 {
    global0 = Struct_2(_wgslsmith_add_u32(abs(0u), ~u_input.a.x), ~vec4<u32>(4294967295u, ~1u, ~(~global0.b.x), u_input.a.x));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(932f * _wgslsmith_f_op_f32(-249f + arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), true, global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(func_5(func_1(global0.a), select(~_wgslsmith_add_vec3_i32(vec3<i32>(-47167i, u_input.d.x, u_input.d.x), u_input.c.yzw), vec3<i32>(u_input.c.x << (global0.b.x % 32u), ~u_input.c.x, u_input.c.x), select(false, global1[_wgslsmith_index_u32(global0.b.x, 9u)] < 1722f, select(false, true, false))), Struct_2(~min(u_input.a.x, global0.b.x), ~(~u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.b.x, 9u)] + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(30114u, u_input.b.x), 9u)]))));
    global2 = _wgslsmith_sub_i32(u_input.d.x, -u_input.d.x);
    var var_1 = func_1(4294967295u);
    var var_2 = 6607i;
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1499f, 255f, var_0.a.x, -500f)))))));
    let var_4 = Struct_3(1u, var_3.x, -u_input.c.x <= u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~u_input.c.x, ~(-3863i), u_input.d.x, u_input.c.x) ^ ~(-_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, -10086i, -2147483647i, u_input.d.x))), u_input.d.x, var_0.c.xx, func_1(var_0.c.x).a);
}

