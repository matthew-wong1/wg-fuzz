struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 25> = array<bool, 25>(false, true, true, true, false, true, true, false, false, true, false, false, true, true, false, false, true, true, false, false, true, false, false, true, false);

var<private> global2: array<f32, 16>;

var<private> global3: Struct_2 = Struct_2(Struct_1(true), Struct_1(true), Struct_1(true), vec2<u32>(60431u, 1u), 67781u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    global2 = array<f32, 16>();
    global0 = -317f;
    let var_0 = Struct_2(Struct_1(any(select(vec4<bool>(global1[_wgslsmith_index_u32(14244u, 25u)], false, false, global1[_wgslsmith_index_u32(global3.d.x, 25u)]), !vec4<bool>(true, global3.c.a, false, global1[_wgslsmith_index_u32(10021u, 25u)]), true))), Struct_1(all(select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(15463u, 25u)]), vec2<bool>(global3.b.a, global3.a.a), vec2<bool>(global1[_wgslsmith_index_u32(global3.d.x, 25u)], global3.c.a)), !vec2<bool>(global3.b.a, global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), false))), global3.a, u_input.b, min(firstTrailingBit(22362u), 1u));
    global2 = array<f32, 16>();
    global1 = array<bool, 25>();
    return ~max(6370i, abs(2147483647i));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(0u, -2147483647i, Struct_2(arg_1, Struct_1(any(select(vec4<bool>(false, global1[_wgslsmith_index_u32(global3.d.x, 25u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], global3.c.a, true, true), vec4<bool>(global3.a.a, arg_1.a, global1[_wgslsmith_index_u32(4294967295u, 25u)], arg_1.a)))), global3.b, vec2<u32>(3298u, u_input.a), ~4294967295u));
    let var_1 = ~(~(~vec4<u32>(var_0.a ^ var_0.a, var_0.c.e, var_0.c.e ^ 0u, ~global3.e)));
    let var_2 = -select(_wgslsmith_add_vec4_i32(abs(-vec4<i32>(35362i, 0i, 11264i, u_input.c.x)), vec4<i32>(93264i, ~(-1i), -u_input.c.x, u_input.c.x)), -vec4<i32>(_wgslsmith_mult_i32(var_0.b, var_0.b), -u_input.c.x, _wgslsmith_mod_i32(2147483647i, arg_0.x), func_3()), vec4<bool>(global3.b.a, !select(global3.c.a, false, global3.b.a), true, true));
    global1 = array<bool, 25>();
    var var_3 = vec2<bool>(arg_1.a, all(select(vec2<bool>(global1[_wgslsmith_index_u32(~global3.d.x, 25u)], any(vec3<bool>(false, true, global3.b.a))), !select(vec2<bool>(global3.a.a, global3.a.a), vec2<bool>(arg_1.a, global3.c.a), global1[_wgslsmith_index_u32(u_input.a, 25u)]), !(!vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 25u)], global3.b.a)))));
    return arg_1;
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = select(select(vec2<bool>(select(global3.a.a, true, all(vec3<bool>(false, arg_2.a, false))), false), vec2<bool>(!select(false, arg_2.a, global1[_wgslsmith_index_u32(52490u, 25u)]), !arg_2.a), vec2<bool>(false, arg_2.a)), !vec2<bool>(!all(vec3<bool>(global1[_wgslsmith_index_u32(global3.e, 25u)], global3.a.a, true)), !global1[_wgslsmith_index_u32(u_input.b.x ^ 1u, 25u)]), !vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -402f) == _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 16u)]), u_input.b.x <= 0u));
    let var_2 = Struct_4(0u, ~(_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.c.x) >> (global3.d.x % 32u)) >> (_wgslsmith_mod_u32(u_input.b.x, select(global3.d.x, ~u_input.a, false)) % 32u), Struct_2(func_2(vec2<i32>(_wgslsmith_add_i32(86939i, -1558i), 1i), func_2(max(vec2<i32>(2147483647i, -20387i), vec2<i32>(arg_0, 18443i)), arg_2)), Struct_1(any(vec3<bool>(true, false, true))), func_2(-abs(u_input.c), func_2(u_input.c, Struct_1(global1[_wgslsmith_index_u32(66974u, 25u)]))), ~countOneBits(~u_input.b), 1u));
    var var_3 = _wgslsmith_div_i32(-2147483647i, -2147483647i);
    return Struct_1(var_2.c.d.x == _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, global3.d.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.a, var_2.a) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), vec2<u32>(1u, 0u), vec2<u32>(var_2.c.d.x, var_2.c.e))));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> Struct_2 {
    global2 = array<f32, 16>();
    var var_0 = 23888u;
    global1 = array<bool, 25>();
    global2 = array<f32, 16>();
    let var_1 = ~(~reverseBits(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-174i, 501i, u_input.c.x), vec3<i32>(-64194i, 50998i, u_input.c.x), vec3<i32>(u_input.c.x, 15412i, -1i)))));
    return Struct_2(func_4(~_wgslsmith_dot_vec2_i32(var_1.xx, u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(60971u, 16u)], 167f, -131f, global2[_wgslsmith_index_u32(arg_0, 16u)]), vec4<f32>(global2[_wgslsmith_index_u32(49541u, 16u)], 281f, 174f, global2[_wgslsmith_index_u32(arg_0, 16u)]), global3.a.a)) - vec4<f32>(-1089f, global2[_wgslsmith_index_u32(0u, 16u)], -432f, -927f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1078f, 622f, -318f, 629f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)], global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(24578u, 16u)]) + vec4<f32>(global2[_wgslsmith_index_u32(29695u, 16u)], 490f, global2[_wgslsmith_index_u32(100663u, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)])), vec4<bool>(true, false, false, true)))), func_2(var_1.xx, Struct_1(true))), Struct_1(true), Struct_1(!(-1000f < _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 16u)]))), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~abs(global3.d), vec2<u32>(global3.e << (0u % 32u), 1u)), vec2<u32>(_wgslsmith_clamp_u32(~global3.e, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, global3.d.x, u_input.b.x, u_input.b.x), vec4<u32>(global3.e, 0u, u_input.b.x, u_input.a)), 1u), arg_0), vec2<u32>(~global3.d.x, _wgslsmith_div_u32(9913u, u_input.b.x)) << (global3.d % vec2<u32>(32u))), u_input.a);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_2) -> f32 {
    var var_0 = arg_0.c;
    var_0 = Struct_2(Struct_1(arg_3.c.a || (global2[_wgslsmith_index_u32(~arg_0.a, 16u)] > _wgslsmith_f_op_f32(step(-1616f, global2[_wgslsmith_index_u32(57634u, 16u)])))), arg_3.c, func_2(~u_input.c, func_4(65097i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 16u)], 1137f, -1218f, -623f), vec4<f32>(global2[_wgslsmith_index_u32(1u, 16u)], 903f, -276f, global2[_wgslsmith_index_u32(var_0.e, 16u)]))) * vec4<f32>(global2[_wgslsmith_index_u32(var_0.e, 16u)], -2048f, global2[_wgslsmith_index_u32(var_0.e, 16u)], -291f)), func_2(arg_1.wz, Struct_1(arg_0.c.b.a)))), vec2<u32>(~_wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, var_0.d.x), vec2<u32>(85493u, 1u)), global3.d), ~0u & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_3.e, global3.e, 1u) >> (vec4<u32>(global3.d.x, 0u, 22805u, arg_0.c.d.x) % vec4<u32>(32u)), vec4<u32>(1u, 10735u, 37586u, global3.d.x))), var_0.e);
    let var_1 = Struct_5(Struct_3(23089u, func_1(0u, !vec4<bool>(true, global3.b.a, false, var_0.a.a)), var_0.a.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1154f, 119f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.a.b.e, 16u)])), !var_0.c.a)) + global2[_wgslsmith_index_u32(arg_3.d.x, 16u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1043f, _wgslsmith_div_f32(-183f, global2[_wgslsmith_index_u32(var_1.a.b.d.x, 16u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], _wgslsmith_f_op_f32(sign(-1009f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.e, 16u)]))) + _wgslsmith_f_op_f32(func_5(Struct_4(u_input.a, u_input.c.x, Struct_2(Struct_1(global1[_wgslsmith_index_u32(1u, 25u)]), Struct_1(true), global3.c, global3.d, u_input.a)), -vec4<i32>(1i, u_input.c.x, u_input.c.x, -1i), u_input.c.x, func_1(u_input.b.x, vec4<bool>(true, true, global1[_wgslsmith_index_u32(global3.e, 25u)], global3.b.a)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.d.x, global3.d.x), 16u)])))))));
    let var_1 = !any(vec3<bool>(true, false, false));
    global1 = array<bool, 25>();
    let var_2 = Struct_5(Struct_3(~countOneBits(_wgslsmith_clamp_u32(global3.d.x, global3.e, 69409u)), Struct_2(Struct_1(global1[_wgslsmith_index_u32(1u, 25u)]), Struct_1(true), global3.c, ~(~vec2<u32>(23455u, 19889u)), ~79845u), _wgslsmith_mod_i32(max(-1i, u_input.c.x), _wgslsmith_mult_i32(-1i, 0i)) > u_input.c.x));
    let var_3 = min(min(~_wgslsmith_clamp_u32(max(1u, u_input.a), 33720u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), global3.d)), ~u_input.a << (max(_wgslsmith_mult_u32(4294967295u, u_input.a), global3.e) % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u << (min(4294967295u, var_2.a.a) % 32u), global3.d.x, abs(_wgslsmith_div_u32(global3.e, 64036u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.a.a, 2276u, global3.e), select(vec3<u32>(24888u, var_2.a.a, u_input.b.x), vec3<u32>(global3.e, 4294967295u, u_input.a), vec3<bool>(var_1, true, true)))), vec4<u32>(u_input.b.x, 4294967295u, 1u, global3.d.x)));
    var var_4 = all(select(!select(!vec4<bool>(var_1, false, true, true), select(vec4<bool>(var_2.a.b.c.a, true, false, var_1), vec4<bool>(global3.b.a, global3.b.a, false, var_2.a.c), global1[_wgslsmith_index_u32(u_input.a, 25u)]), global1[_wgslsmith_index_u32(global3.e, 25u)]), vec4<bool>(!func_1(u_input.b.x, vec4<bool>(var_1, true, false, var_2.a.c)).a.a, var_1, var_0 < _wgslsmith_div_f32(var_0, 144f), true), global3.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(var_0)), reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(105252u, var_2.a.a, 581u), vec3<u32>(41119u, 1u, u_input.b.x)) & vec3<u32>(u_input.a | 0u, u_input.a, 79656u)), ~(~(-max(vec3<i32>(-2147483647i, u_input.c.x, u_input.c.x), vec3<i32>(2147483647i, 1i, 27261i)))));
}

