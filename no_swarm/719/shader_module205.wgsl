struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: array<bool, 14>;

var<private> global2: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-global2.a.c.x);
    global0 = vec3<bool>(all(select(!(!global2.c), vec3<bool>(true == global0.x, !global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(4395u, 14u)] || false), !global1[_wgslsmith_index_u32(select(0u, 1u, global2.c.x), 14u)])), all(select(select(!vec4<bool>(global0.x, global0.x, true, global2.c.x), !vec4<bool>(global1[_wgslsmith_index_u32(16015u, 14u)], true, global0.x, false), true), select(select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(false, false, false, global2.c.x), vec4<bool>(false, true, true, false)), !vec4<bool>(false, true, global2.c.x, global1[_wgslsmith_index_u32(0u, 14u)]), true), select(!vec4<bool>(true, global0.x, false, global2.c.x), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], true, true, false), select(vec4<bool>(true, global0.x, true, global1[_wgslsmith_index_u32(56117u, 14u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(47352u, 14u)], global0.x, global0.x), vec4<bool>(global0.x, global1[_wgslsmith_index_u32(1u, 14u)], global2.c.x, false))))), global2.c.x);
    global1 = array<bool, 14>();
    let var_1 = any(!(!(!select(vec4<bool>(global2.c.x, global2.c.x, false, true), vec4<bool>(false, false, global0.x, global0.x), global0.x))));
    global0 = select(vec3<bool>(!global1[_wgslsmith_index_u32(0u, 14u)], true, true), global2.c, select(!global2.c, vec3<bool>(true, any(global2.c), true), select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(1308u, 14u)], false, true), global2.c, false), select(global2.c, vec3<bool>(true, false, var_1), vec3<bool>(true, true, true)), true), vec3<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(global2.a.d), 14u)], var_1, all(vec2<bool>(true, true))), !select(global2.c, vec3<bool>(global2.c.x, global0.x, var_1), var_1))));
    return 1u;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = global0.x;
    global1 = array<bool, 14>();
    var var_1 = global2.a;
    var var_2 = true;
    var var_3 = vec3<u32>(_wgslsmith_sub_u32(4294967295u, func_3(vec2<f32>(147f, -609f))), _wgslsmith_mult_u32(1u, ~1u), ~func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-491f, arg_2.c.x), vec2<f32>(global2.a.c.x, global2.a.c.x))), vec2<f32>(-251f, 1556f))));
    return global2.a;
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.a.c.x)) * arg_1.a.a.c.x);
    var var_1 = Struct_5(arg_1.a, ~arg_1.a.b.xxy, _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.d, _wgslsmith_clamp_u32(select(1u, 2861u, false), global2.a.d ^ arg_1.c.x, firstTrailingBit(global2.a.d))), vec2<u32>(global2.a.d ^ (arg_1.b.x >> (21500u % 32u)), arg_1.b.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-2002f)))));
    global0 = !global2.c;
    let var_3 = Struct_1(_wgslsmith_mod_i32(u_input.a.x, -2147483647i), reverseBits(arg_2.a), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -173f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -682f)), -519f, !(-873f > arg_1.a.a.c.x)))), abs(~_wgslsmith_mod_u32(1u, 4294967295u)), -var_1.a.a.a);
    return Struct_3(var_3, var_1.a.b);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: vec4<f32>) -> i32 {
    global2 = Struct_2(arg_0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.a.c.x, global2.b.x)), global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -524f))), _wgslsmith_f_op_vec3_f32(trunc(arg_0.a.c))), !vec3<bool>(global1[_wgslsmith_index_u32(countOneBits(global2.a.d), 14u)], global0.x, true));
    var var_0 = _wgslsmith_sub_u32(~(~arg_0.b.x), ~_wgslsmith_add_u32(~4294967295u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(13744u, arg_0.b.x, 46565u, 28451u), arg_0.b))));
    global1 = array<bool, 14>();
    return min(select(~global2.a.e, _wgslsmith_dot_vec4_i32(-vec4<i32>(-9284i, -2147483647i, -1241i, -38062i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, -10294i), vec4<i32>(101669i, global2.a.e, -43277i, -18502i))) | func_2(vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0.a.d, 14u)], global0.x, false), global2.a.b, global2.a).b, true), 1i);
}

fn func_1() -> Struct_5 {
    let var_0 = 18423u;
    let var_1 = -(~func_5(func_4(_wgslsmith_div_f32(global2.a.c.x, -523f), Struct_5(Struct_3(Struct_1(u_input.a.x, -29154i, global2.b, 13656u, u_input.a.x), vec4<u32>(global2.a.d, 4294967295u, var_0, 1u)), vec3<u32>(global2.a.d, 60029u, 1u), vec2<u32>(var_0, 40281u)), func_2(vec4<bool>(global0.x, false, true, false), 2147483647i, Struct_1(global2.a.b, 21863i, global2.a.c, var_0, 1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.c.x, global2.a.c.x, 1163f)) - vec3<f32>(-259f, 488f, global2.a.c.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(818f, global2.a.c.x, 1604f, global2.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(278f, global2.a.c.x, global2.b.x, 1013f))), vec4<f32>(-643f, -1748f, 238f, _wgslsmith_f_op_f32(f32(-1f) * -132f))));
    var var_2 = Struct_4(Struct_2(Struct_1(-2147483647i, ~func_5(Struct_3(global2.a, vec4<u32>(var_0, 0u, global2.a.d, var_0)), vec3<f32>(global2.b.x, -255f, 292f), vec4<f32>(945f, -1000f, 888f, 1107f), vec4<f32>(-1235f, -1575f, global2.a.c.x, global2.a.c.x)), global2.a.c, 11114u, -2147483647i), vec3<f32>(1610f, _wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(294f - global2.a.c.x)), _wgslsmith_f_op_f32(global2.a.c.x + _wgslsmith_f_op_f32(select(866f, -247f, global2.c.x)))), !global2.c), func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1105f, _wgslsmith_f_op_f32(730f + -533f))), Struct_5(func_4(_wgslsmith_f_op_f32(abs(953f)), Struct_5(Struct_3(global2.a, vec4<u32>(43375u, 1u, global2.a.d, 0u)), vec3<u32>(32524u, global2.a.d, 4294967295u), vec2<u32>(6858u, 46485u)), Struct_1(50962i, -17825i, vec3<f32>(133f, global2.b.x, global2.b.x), global2.a.d, global2.a.e)), vec3<u32>(1u, firstTrailingBit(var_0), ~1u), vec2<u32>(~4294967295u, ~83685u)), Struct_1(2147483647i, -18893i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.a.c.x, 1453f, global2.a.c.x)))), global2.a.d ^ 45531u, firstTrailingBit(var_1))), Struct_2(global2.a, _wgslsmith_f_op_vec3_f32(exp2(global2.a.c)), global2.c));
    let var_3 = _wgslsmith_sub_i32(abs(-5524i), 13472i);
    global0 = vec3<bool>(true, global2.c.x, global2.c.x & (global0.x & (any(vec4<bool>(global1[_wgslsmith_index_u32(var_2.c.a.d, 14u)], var_2.c.c.x, var_2.c.c.x, global2.c.x)) & !var_2.c.c.x)));
    return Struct_5(var_2.b, vec3<u32>(_wgslsmith_mult_u32(~countOneBits(1u), _wgslsmith_dot_vec3_u32(var_2.b.b.xyz, var_2.b.b.zyy)), 0u, 24416u >> (func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2087f, -817f))) % 32u)), min(_wgslsmith_add_vec2_u32(~var_2.b.b.ww, vec2<u32>(~0u, _wgslsmith_dot_vec2_u32(var_2.b.b.yx, var_2.b.b.xw))), var_2.b.b.yz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = global2.a;
    var_1 = func_1().a.a;
    let var_2 = _wgslsmith_mult_u32(~_wgslsmith_mod_u32(48341u, var_1.d ^ var_1.d) << (_wgslsmith_mod_u32(~(~1u), ~firstLeadingBit(global2.a.d)) % 32u), var_1.d);
    global2 = Struct_2(Struct_1(_wgslsmith_sub_i32(var_0.a.a.e, var_0.a.a.e) | var_0.a.a.a, 2147483647i, global2.a.c, 60294u, 103370i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(global2.a.c.x)), 311f, _wgslsmith_f_op_f32(trunc(var_1.c.x)))) - var_1.c), vec3<bool>(any(global2.c), !any(global2.c.yz), global2.c.x));
    var var_3 = max(vec3<u32>(5820u, func_2(vec4<bool>(global2.c.x, true, global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_clamp_i32(1i, global2.a.a, 45916i), var_0.a.a).d, var_2), countOneBits(var_0.b)) >> (var_0.a.b.yzw % vec3<u32>(32u));
    let var_4 = !global2.c.xy;
    let var_5 = vec3<f32>(-915f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.a.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1014f + 131f))), true)) + var_1.c.x), global2.b.x);
    global0 = vec3<bool>(true, all(vec3<bool>(_wgslsmith_mult_i32(var_0.a.a.e, var_0.a.a.a) < _wgslsmith_mod_i32(var_0.a.a.a, 2147483647i), !var_4.x, false && all(vec4<bool>(var_4.x, false, true, var_4.x)))), any(select(!(!global0.xz), vec2<bool>(all(global2.c), global2.c.x), var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b);
}

