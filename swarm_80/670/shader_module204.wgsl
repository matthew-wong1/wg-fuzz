struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(20056u, 40326u, 0u);

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 2>;

var<private> global4: u32 = 43807u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> bool {
    global3 = array<Struct_2, 2>();
    let var_0 = arg_3.c;
    global0 = u_input.b.wzz;
    global3 = array<Struct_2, 2>();
    let var_1 = Struct_3(any(!vec4<bool>(any(vec4<bool>(arg_0.d.x, false, global2.e, arg_0.d.x)), arg_3.d, false, !global2.e)), 4294967295u, abs(u_input.b), arg_0.d, abs(_wgslsmith_clamp_u32(17055u, 58591u, 90812u)));
    return false;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = arg_1.wyy;
    let var_1 = Struct_1(-abs(~_wgslsmith_sub_i32(u_input.c, 9541i)), vec2<u32>(~4294967295u, 4294967295u), ~max(47586u, min(15210u, global0.x)), !((9440u <= _wgslsmith_mod_u32(global0.x, 22878u)) || arg_0), global2.e);
    global3 = array<Struct_2, 2>();
    global2 = var_1;
    let var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(reverseBits(_wgslsmith_sub_u32(var_1.c, 42917u ^ var_1.b.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(global2.b.x, global2.b.x, 1u, 1u)), u_input.b), _wgslsmith_clamp_u32(~1u, global0.x, ~_wgslsmith_mult_u32(84332u, global2.b.x))), 2u)];
    return arg_1.xyz;
}

fn func_2(arg_0: Struct_2) -> Struct_4 {
    var var_0 = true;
    var var_1 = firstTrailingBit(_wgslsmith_div_u32(~4294967295u, ~0u));
    var var_2 = func_4(any(!vec4<bool>(all(vec2<bool>(global2.e, global2.e)), true, any(vec3<bool>(global2.d, global2.e, false)), global2.d)), !vec4<bool>(arg_0.e.d, !all(vec4<bool>(true, false, false, true)), !arg_0.e.e, true && func_3(Struct_3(arg_0.e.d, 62277u, u_input.b, vec3<bool>(true, arg_0.e.d, false), 1u), vec2<f32>(1768f, arg_0.a), global2.d, arg_0.e)));
    var var_3 = vec4<i32>(abs(-u_input.c), _wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_0.c, ~(-1i)) << (0u % 32u), arg_0.e.a, min(-min(-1i, 12263i), global2.a)), ~(-global2.a) & (firstTrailingBit(~arg_0.c) & 15736i), 2125i);
    let var_4 = Struct_4(Struct_2(arg_0.a, -(u_input.d.xwz | var_3.yyx), global2.a, arg_0.a, Struct_1(global2.a, u_input.b.wx, ~(arg_0.e.b.x << (global0.x % 32u)), false, true)));
    return Struct_4(global3[_wgslsmith_index_u32(61795u, 2u)]);
}

fn func_1() -> vec3<bool> {
    let var_0 = func_2(global3[_wgslsmith_index_u32(0u, 2u)]);
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f) + 2124f))), _wgslsmith_f_op_f32(max(-583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.a, -1136f)))))));
    let var_2 = Struct_3(var_0.a.e.d, abs(0u), ~vec4<u32>(4294967295u, ~1u, ~0u, reverseBits(abs(u_input.e))), func_4(~_wgslsmith_add_u32(1u, global0.x) == 2418u, select(select(!vec4<bool>(var_0.a.e.e, false, false, true), !vec4<bool>(var_0.a.e.e, true, var_0.a.e.d, false), !vec4<bool>(false, false, global2.e, global2.d)), vec4<bool>(var_0.a.e.b.x <= 1u, true, var_0.a.e.d, any(vec3<bool>(false, false, global2.e))), select(var_0.a.e.e | false, true, 0u >= global2.c))), _wgslsmith_dot_vec3_u32(u_input.b.wxw, firstTrailingBit(u_input.b.ywz)));
    let var_3 = var_2.d;
    let var_4 = Struct_4(func_2(func_2(Struct_2(_wgslsmith_f_op_f32(min(var_0.a.a, -843f)), var_0.a.b, global2.a, _wgslsmith_f_op_f32(abs(1000f)), var_0.a.e)).a).a);
    return !(!(!vec3<bool>(true, !var_3.x, false)));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: vec2<f32>) -> vec3<u32> {
    let var_0 = vec2<f32>(arg_3.x, arg_3.x);
    global1 = ~min(4294967295u, 42735u);
    global2 = func_2(global3[_wgslsmith_index_u32(~(arg_0.x << (1u % 32u)), 2u)]).a.e;
    var var_1 = abs(_wgslsmith_dot_vec3_i32(u_input.d.yzz, _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -u_input.d.zxy, max(u_input.d.xxz ^ vec3<i32>(-170i, -2147483647i, u_input.a.x), u_input.d.ywy >> (arg_2.zzy % vec3<u32>(32u))))));
    global2 = func_2(func_2(func_2(global3[_wgslsmith_index_u32(38188u, 2u)]).a).a).a.e;
    return _wgslsmith_mult_vec3_u32(firstLeadingBit(_wgslsmith_mult_vec3_u32(max(vec3<u32>(51864u, u_input.e, global2.b.x), arg_0), arg_0 | arg_2.zxy)), _wgslsmith_mult_vec3_u32(~vec3<u32>(select(u_input.e, 4294967295u, arg_1.x), u_input.b.x, _wgslsmith_sub_u32(arg_2.x, global2.b.x)), ~_wgslsmith_mod_vec3_u32(u_input.b.xwx, ~u_input.b.xxx)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(~vec3<u32>(firstLeadingBit(global0.x), ~global0.x, 0u), func_1(), vec4<u32>(~1u, 59109u, u_input.b.x, ~u_input.b.x) << (vec4<u32>(0u, _wgslsmith_add_u32(u_input.b.x, global0.x), ~20784u, ~46899u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2701f * -961f), -1314f))) << (vec3<u32>(u_input.b.x, _wgslsmith_sub_u32(global2.c, u_input.b.x), global2.c) % vec3<u32>(32u));
    var var_0 = ~(~u_input.b ^ ~select(firstLeadingBit(u_input.b), u_input.b & vec4<u32>(u_input.e, 4294967295u, global2.c, 1u), !vec4<bool>(true, global2.e, global2.d, global2.e)));
    global4 = _wgslsmith_div_u32(u_input.b.x, 1u);
    let var_1 = global3[_wgslsmith_index_u32(var_0.x, 2u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-760f, var_1.a, -160f, -997f), vec4<f32>(-1519f, var_1.a, 682f, -538f)) * vec4<f32>(451f, -239f, -1263f, var_1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_2.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1631f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a)) * _wgslsmith_f_op_f32(var_1.d + 529f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -291f))), var_2.x, _wgslsmith_f_op_f32(-302f - -319f)))), -26733i, func_2(global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.x, 48992u), global2.c)), 2u)]).a.e.b.x, select(-16601i, 0i, global2.d));
}

