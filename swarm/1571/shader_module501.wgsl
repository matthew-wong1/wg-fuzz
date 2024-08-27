struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

var<private> global1: array<vec2<u32>, 12>;

var<private> global2: Struct_1 = Struct_1(1u, vec2<i32>(0i, 9315i), vec2<f32>(-353f, -112f), vec3<bool>(true, false, true), false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    global2 = Struct_1(6119u, countOneBits(reverseBits(vec2<i32>(~2147483647i, -u_input.a))), global2.c, vec3<bool>(true, any(vec3<bool>(any(vec3<bool>(false, true, global2.d.x)), false, true)), global2.d.x), true);
    global2 = Struct_1(~_wgslsmith_clamp_u32(4294967295u, (10411u >> (global2.a % 32u)) & _wgslsmith_mod_u32(u_input.b.x, 7408u), 1u), abs(global2.b), global2.c, global0[_wgslsmith_index_u32(4510u, 13u)], true);
    let var_0 = Struct_4(4294967295u | global2.a, Struct_1(~u_input.b.x, min(global2.b, -vec2<i32>(2147483647i, 2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1054f)) - _wgslsmith_f_op_f32(sign(-1000f))), global2.c.x), vec3<bool>(global2.d.x, global2.d.x || true, any(select(global2.d, vec3<bool>(global2.d.x, global2.e, true), global0[_wgslsmith_index_u32(u_input.b.x, 13u)]))), !all(select(global2.d.yx, global2.d.yx, vec2<bool>(global2.e, true)))), any(!(!select(vec4<bool>(true, true, global2.e, global2.d.x), vec4<bool>(global2.d.x, false, false, global2.e), vec4<bool>(global2.e, false, false, global2.d.x)))), abs(~(~vec3<i32>(u_input.a, global2.b.x, 47067i))) ^ vec3<i32>(min(1i, _wgslsmith_mult_i32(1i, 1i)), ~global2.b.x, -(i32(-1i) * -60128i)), Struct_1(34048u << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, global2.a, 10037u), u_input.b), u_input.b ^ u_input.b) % 32u), global2.b & global2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-311f + global2.c.x), -1000f)), global2.d, true));
    var var_1 = ~_wgslsmith_dot_vec2_u32(u_input.b.wz, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(~123589u, global2.a | 25070u), 1u), 12u)]);
    global0 = array<vec3<bool>, 13>();
    return vec4<bool>(true, false, var_0.e.e, var_0.e.e);
}

fn func_2(arg_0: i32) -> Struct_2 {
    global2 = Struct_1(abs(_wgslsmith_add_u32(u_input.b.x, ~global2.a)), global2.b ^ global2.b, global2.c, !global0[_wgslsmith_index_u32(abs(select(~global2.a, global2.a & 0u, !global2.d.x)), 13u)], global2.e);
    var var_0 = ~vec4<i32>(u_input.a, -2147483647i, -2277i, arg_0);
    var var_1 = _wgslsmith_mod_i32(-(~25013i), ~(-9975i));
    var var_2 = u_input.b.x;
    var_1 = global2.b.x;
    return Struct_2(Struct_1(~u_input.b.x ^ 4294967295u, _wgslsmith_add_vec2_i32(var_0.wy, vec2<i32>(_wgslsmith_div_i32(global2.b.x, global2.b.x), min(2147483647i, -51571i))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -743f), global2.c.x), select(select(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], vec3<bool>(global2.d.x, global2.e, global2.d.x), vec3<bool>(global2.d.x, false, global2.d.x)), global2.d, global2.d), (false || !global2.e) & (36933u == global2.a)), select(select(func_3(1u), vec4<bool>(all(global2.d.yy), any(vec4<bool>(false, global2.e, global2.e, false)), true, global2.e), select(global2.e, true, global2.d.x)), select(!vec4<bool>(global2.e, global2.d.x, false, false), vec4<bool>(all(vec2<bool>(false, global2.e)), true, !global2.e, !global2.d.x), select(func_3(global2.a), select(vec4<bool>(global2.e, global2.e, true, false), vec4<bool>(global2.e, global2.e, true, global2.e), global2.d.x), false)), !(!(!vec4<bool>(global2.e, true, true, global2.e)))), global2.b.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>) -> Struct_4 {
    var var_0 = func_2(firstLeadingBit(select(_wgslsmith_div_i32(-37170i, -20334i), _wgslsmith_div_i32(global2.b.x, global2.b.x), true)) << (global2.a % 32u));
    let var_1 = global2.b.x;
    global1 = array<vec2<u32>, 12>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) * _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))));
    var_0 = Struct_2(var_0.a, select(!vec4<bool>(var_0.b.x, !global2.d.x, !arg_0.x, select(var_0.b.x, var_0.b.x, global2.e)), vec4<bool>(any(!vec3<bool>(arg_0.x, false, false)), global2.e, true, false), !any(global2.d.xz)), abs(u_input.a));
    return Struct_4(global2.a & _wgslsmith_add_u32(~global2.a, 4365u), var_0.a, ((!var_0.a.d.x && (arg_0.x || false)) & var_0.b.x) != var_0.a.e, _wgslsmith_mod_vec3_i32(vec3<i32>(10487i, u_input.a, -var_0.a.b.x), ~vec3<i32>(_wgslsmith_clamp_i32(-46156i, 1i, var_0.c), global2.b.x, max(-33029i, global2.b.x))), var_0.a);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_4) -> Struct_1 {
    var var_0 = abs(vec4<u32>(_wgslsmith_mult_u32(global2.a ^ 1u, arg_0.b.a), ~(u_input.b.x | ~arg_2.e.a), arg_2.e.a, max(~arg_0.e.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.a, 45765u), vec2<u32>(arg_2.e.a, arg_1.x)))));
    let var_1 = arg_0.b.d.x;
    global1 = array<vec2<u32>, 12>();
    global2 = Struct_1(u_input.b.x, vec2<i32>(_wgslsmith_div_i32(countOneBits(min(global2.b.x, arg_0.d.x)), 2147483647i), ~abs(arg_2.e.b.x)), arg_2.e.c, vec3<bool>(true, all(select(vec4<bool>(arg_0.b.e, arg_0.c, arg_2.b.d.x, var_1), func_2(-1516i).b, true)), var_1 || (global2.d.x && (arg_0.a > arg_0.e.a))), true);
    let var_2 = Struct_4(~79963u, arg_0.e, func_3(arg_2.a).x, vec3<i32>(-1i) * -arg_2.d, arg_2.e);
    return var_2.b;
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(all(func_2(-1i).b), arg_3.a.b.x, func_2(abs(u_input.a)).a.b.x, func_2(~1i));
    let var_1 = vec2<u32>(6825u, 1u);
    var var_2 = Struct_1(arg_2.x, var_0.d.a.b, _wgslsmith_f_op_vec2_f32(step(arg_3.a.c, arg_3.a.c)), func_1(vec4<bool>(arg_1, false == arg_3.a.d.x, select(true, func_4(Struct_4(1u, arg_3.a, global2.d.x, vec3<i32>(13676i, var_0.c, var_0.c), var_0.d.a), u_input.b.xzz, Struct_4(arg_2.x, Struct_1(global2.a, global2.b, vec2<f32>(-1388f, 1000f), global2.d, true), true, vec3<i32>(u_input.a, -2147483647i, -1i), Struct_1(19827u, arg_3.a.b, var_0.d.a.c, global2.d, arg_1))).e, !arg_3.a.d.x), false), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(arg_0.x, global2.c.x), _wgslsmith_f_op_f32(-var_0.d.a.c.x), _wgslsmith_f_op_f32(500f * var_0.d.a.c.x))))).b.d, true);
    var var_3 = ~firstLeadingBit(39383u);
    var var_4 = arg_2.x;
    return func_4(Struct_4(var_1.x << (1u % 32u), var_0.d.a, false, -(~_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b.x, 0i, -23133i), vec3<i32>(u_input.a, -1i, 35504i))), var_0.d.a), ~(u_input.b.xxz >> (u_input.b.xzz % vec3<u32>(32u))), Struct_4(21535u, arg_3.a, any(select(var_2.d.zx, func_3(55405u).yx, !var_2.d.zy)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_3.c | 0i, ~2147483647i, 1i), _wgslsmith_mult_vec3_i32(max(vec3<i32>(0i, 508i, var_2.b.x), vec3<i32>(arg_3.a.b.x, -1i, var_2.b.x)), vec3<i32>(var_2.b.x, -2147483647i, -28104i))), var_0.d.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 12>();
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global2.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1896f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(152f))), _wgslsmith_f_op_f32(-global2.c.x)))));
    global2 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xyy)), !all(select(select(vec4<bool>(global2.e, true, global2.d.x, global2.d.x), vec4<bool>(global2.d.x, global2.e, false, true), vec4<bool>(true, global2.e, global2.d.x, global2.d.x)), !vec4<bool>(true, global2.e, false, false), false)), vec2<u32>(~(~abs(0u)), ~(~(~63350u))), Struct_2(func_4(Struct_4(49081u, Struct_1(global2.a, vec2<i32>(25228i, u_input.a), global2.c, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global2.d.x), global2.e, -vec3<i32>(u_input.a, global2.b.x, u_input.a), Struct_1(0u, global2.b, vec2<f32>(var_0.x, global2.c.x), global2.d, true)), _wgslsmith_mod_vec3_u32(max(u_input.b.wzz, u_input.b.xxx), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 0u, 40508u), vec3<u32>(u_input.b.x, u_input.b.x, global2.a))), func_1(vec4<bool>(false, global2.e, true, global2.d.x), _wgslsmith_f_op_vec3_f32(-var_0.yyz))), func_2(~countOneBits(global2.b.x)).b, global2.b.x));
    let var_1 = func_2(1i).a.b.x;
    var var_2 = var_0.x;
    let var_3 = min(vec4<u32>(_wgslsmith_div_u32(global2.a, _wgslsmith_add_u32(reverseBits(global2.a), 0u)), global2.a, 57624u, u_input.b.x), ~_wgslsmith_mult_vec4_u32(select(u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(9309u, 18755u, 4294967295u, 4294967295u), vec4<u32>(10364u, u_input.b.x, 4294967295u, 0u)), func_3(1u)), (u_input.b | vec4<u32>(4294967295u, 56954u, u_input.b.x, global2.a)) ^ vec4<u32>(44353u, 4294967295u, 4294967295u, global2.a)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-170f, -1309f, -396f, -1000f), vec4<f32>(global2.c.x, 321f, global2.c.x, -667f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(314f, var_0.x, global2.c.x, 1473f), vec4<f32>(var_0.x, global2.c.x, -354f, global2.c.x))))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.c.x, 494f, global2.c.x, var_0.x))), vec4<f32>(_wgslsmith_div_f32(-1269f, var_0.x), -1122f, _wgslsmith_f_op_f32(var_0.x + global2.c.x), 635f), true))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2175f, global2.c.x, var_0.x, -480f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-393f, -1000f, -1000f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, var_0.x, 1256f, var_0.x)), vec4<bool>(global2.e, global2.d.x, global2.e, global2.e))), vec4<bool>(!global2.e, true, !global2.d.x, true)))));
    var var_4 = func_2(_wgslsmith_dot_vec2_i32(~(~(~global2.b)), vec2<i32>(select(1i, firstLeadingBit(var_1), -395f > var_0.x), _wgslsmith_add_i32(min(0i, u_input.a), reverseBits(11336i))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-551f)))));
}

