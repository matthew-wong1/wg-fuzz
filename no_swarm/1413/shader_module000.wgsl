struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: array<Struct_3, 19>;

var<private> global2: Struct_1 = Struct_1(44329i, vec4<bool>(false, true, false, false), vec3<i32>(-37793i, 2147483647i, 90694i), vec3<i32>(i32(-2147483648), 15293i, i32(-2147483648)));

var<private> global3: Struct_2;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> bool {
    global0 = array<Struct_3, 25>();
    let var_0 = _wgslsmith_div_vec3_i32(~global3.a.d, select(global3.e.www, global2.c, global2.b.x));
    let var_1 = firstTrailingBit(var_0.x);
    var var_2 = ~(~countOneBits(~vec3<u32>(18969u, 12078u, 1191u) >> (global3.c % vec3<u32>(32u))));
    var_2 = ~abs(_wgslsmith_mod_vec3_u32(select(global3.c, vec3<u32>(38222u, global3.b.x, u_input.b), select(false, false, global2.b.x)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(8201u, u_input.b, u_input.b), vec3<u32>(7394u, u_input.b, 4294967295u))));
    return false;
}

fn func_3(arg_0: f32) -> vec4<f32> {
    var var_0 = select(!select(global2.b, select(global3.a.b, vec4<bool>(false, global2.b.x, global2.b.x, true), select(vec4<bool>(global2.b.x, false, false, false), global3.a.b, false)), true), !vec4<bool>(func_1(), func_1(), true, false), global3.a.b.x);
    var var_1 = !var_0.x;
    global0 = array<Struct_3, 25>();
    let var_2 = 1088u;
    var var_3 = vec2<i32>(_wgslsmith_div_i32(-(~(-57850i)), global3.e.x & ~global2.a) << (global3.c.x % 32u), ~1i);
    return vec4<f32>(-1850f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-883f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(503f, 891f)) + arg_0)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(f32(-1f) * -546f));
}

fn func_4(arg_0: vec4<f32>) -> bool {
    var var_0 = vec2<f32>(arg_0.x, 133f);
    return !(((!global3.a.b.x == (var_0.x == var_0.x)) | !func_1()) && ((all(vec2<bool>(global2.b.x, true)) & (global3.d.x >= arg_0.x)) | true));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: vec3<bool>) -> Struct_3 {
    let var_0 = global3.a;
    let var_1 = u_input.a;
    global3 = Struct_2(arg_0, countOneBits(~vec2<u32>(_wgslsmith_mod_u32(1u, 1u), _wgslsmith_clamp_u32(u_input.b, global3.b.x, 39826u))), global3.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.d - _wgslsmith_f_op_vec3_f32(-global3.d))), ~countOneBits(~(global3.e >> (vec4<u32>(1u, global3.b.x, 48626u, u_input.b) % vec4<u32>(32u)))));
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(286f, -373f, global3.d.x, arg_2) * vec4<f32>(1653f, 1740f, 1089f, arg_2)) - _wgslsmith_f_op_vec4_f32(func_3(564f))))));
    return Struct_3(global2.a, Struct_1(-u_input.a.x, global2.b, firstTrailingBit(var_1), abs(vec3<i32>(-2147483647i, 2147483647i, arg_0.a) ^ ~vec3<i32>(arg_0.a, global3.e.x, 43688i))));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(872f)).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2.d.x)), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f), -1000f))));
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(select(_wgslsmith_div_vec3_i32(arg_2.e.wyz, _wgslsmith_clamp_vec3_i32(vec3<i32>(global3.e.x, 4335i, global2.a), vec3<i32>(arg_2.a.d.x, global2.c.x, 1i), vec3<i32>(5703i, arg_1.a, -115i))), ~(vec3<i32>(-2147483647i, global3.a.d.x, u_input.a.x) << (global3.c % vec3<u32>(32u))), arg_1.b.b.zzz), arg_2.a.d), -arg_2.e.xwy >> (~(~_wgslsmith_sub_vec3_u32(global3.c, vec3<u32>(global3.c.x, arg_2.c.x, arg_2.c.x))) % vec3<u32>(32u)));
    var var_2 = func_2(Struct_1(_wgslsmith_clamp_i32(min(_wgslsmith_add_i32(global2.c.x, 12584i), _wgslsmith_dot_vec4_i32(arg_2.e, vec4<i32>(2147483647i, 37146i, -2147483647i, -15540i))), -15560i, 16578i), !select(vec4<bool>(global2.b.x, arg_1.b.b.x, true, arg_3.b.b.x), select(vec4<bool>(arg_2.a.b.x, arg_2.a.b.x, arg_3.b.b.x, arg_1.b.b.x), vec4<bool>(true, arg_2.a.b.x, arg_3.b.b.x, arg_2.a.b.x), vec4<bool>(false, false, arg_1.b.b.x, arg_3.b.b.x)), vec4<bool>(arg_1.b.b.x, true, global2.b.x, true)), vec3<i32>(firstLeadingBit(_wgslsmith_mult_i32(global2.d.x, -1i)), u_input.a.x, _wgslsmith_mult_i32(global3.e.x, 17984i)), vec3<i32>(~global3.e.x | global3.e.x, 0i, -var_1.x)), func_2(func_2(func_2(Struct_1(global2.a, arg_3.b.b, arg_3.b.c, vec3<i32>(arg_3.b.c.x, arg_1.b.d.x, 12061i)), !arg_1.b.b, 131f, func_2(arg_3.b, vec4<bool>(arg_3.b.b.x, global2.b.x, arg_2.a.b.x, global2.b.x), global3.d.x, vec3<bool>(global3.a.b.x, true, true)).b.b.wwy).b, vec4<bool>(true, false, true, false), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(arg_2.d.x * global3.d.x))).x, !vec3<bool>(arg_1.b.b.x, false, arg_1.b.b.x)).b, !vec4<bool>(false || global2.b.x, any(global2.b.xxx), true, false || arg_2.a.b.x), global3.d.x, arg_1.b.b.yww).b.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-309f + 1224f)))).x)), select(!global2.b.zzy, select(global2.b.wxx, arg_3.b.b.xwy, select(!arg_2.a.b.zyz, global2.b.zzz, all(arg_3.b.b.xy))), !arg_3.b.b.xwx));
    let var_3 = ~vec4<u32>(_wgslsmith_add_u32(u_input.b, ~(~global3.b.x)), u_input.b << (~(global3.c.x | arg_2.c.x) % 32u), 30608u >> (u_input.b % 32u), firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), 1u, 1u << (global3.b.x % 32u))));
    var var_4 = 0u;
    return ~reverseBits(vec2<u32>(48729u, _wgslsmith_mult_u32(u_input.b, firstLeadingBit(u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 19>();
    var var_0 = _wgslsmith_div_i32(1i, ~(~(~global3.a.a))) >> (firstLeadingBit(~(firstLeadingBit(4294967295u) ^ u_input.b)) % 32u);
    var_0 = global3.a.d.x;
    var var_1 = _wgslsmith_dot_vec2_u32(global3.b, func_5(-819f, func_2(Struct_1(u_input.a.x >> (105591u % 32u), vec4<bool>(true, false, global3.a.b.x, true), global2.c, _wgslsmith_add_vec3_i32(vec3<i32>(global2.d.x, u_input.a.x, -2147483647i), global2.c)), vec4<bool>(true, func_1(), global3.a.b.x, false), -1092f, global3.a.b.wwy), Struct_2(func_2(func_2(global3.a, global2.b, global3.d.x, vec3<bool>(global2.b.x, global3.a.b.x, false)).b, !vec4<bool>(true, global3.a.b.x, global2.b.x, true), _wgslsmith_div_f32(-320f, 141f), !vec3<bool>(false, false, global2.b.x)).b, _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 51523u), select(global3.b, global3.c.yx, vec2<bool>(global3.a.b.x, global3.a.b.x)), countOneBits(global3.b)), global3.c, global3.d, select(vec4<i32>(-17742i, -7570i, -1i, -2147483647i) << (vec4<u32>(35610u, global3.c.x, 62894u, 4294967295u) % vec4<u32>(32u)), countOneBits(global3.e), global2.b.x | true)), global1[_wgslsmith_index_u32(26486u, 19u)]));
    let var_2 = vec2<bool>(global3.d.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.d.x))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(421f)));
}

