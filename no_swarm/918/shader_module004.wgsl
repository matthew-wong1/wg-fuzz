struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 21> = array<bool, 21>(true, true, false, true, true, false, true, true, true, false, true, true, false, true, false, true, true, true, true, true, false);

var<private> global2: array<i32, 31>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> Struct_1 {
    var var_0 = -1271f;
    let var_1 = vec3<u32>(~_wgslsmith_mod_u32(min(countOneBits(4294967295u), 1u), _wgslsmith_div_u32(u_input.d.x, 11033u)), abs(~1u), _wgslsmith_sub_u32(global0.a.a.x, ~(~(~1u))));
    global2 = array<i32, 31>();
    var var_2 = vec3<i32>(abs(0i >> (_wgslsmith_div_u32(4294967295u, ~u_input.d.x) % 32u)), _wgslsmith_div_i32(-_wgslsmith_add_i32(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(global0.b.x, 31u)], -44211i), -31563i), -(~u_input.a)), min(~(~_wgslsmith_add_i32(1i, u_input.a)), max(_wgslsmith_sub_i32(0i, firstLeadingBit(u_input.a)), abs(u_input.a) << (~global0.c.d.x % 32u))));
    global1 = array<bool, 21>();
    return Struct_1(var_1.xy, select(global0.c.b, vec2<bool>(global0.c.c, true), !(43531u == _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 0u, 22510u), vec4<u32>(0u, var_1.x, global0.c.a.x, 73944u)))), global0.c.e, _wgslsmith_mod_vec2_u32(~(global0.b.zy & vec2<u32>(0u, u_input.d.x)), ~u_input.d.zx), false);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_5(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(5181u, 31u)], 68794i), vec2<i32>(global2[_wgslsmith_index_u32(23918u, 31u)], 0i))), u_input.a)), !global1[_wgslsmith_index_u32(~(~(25109u >> (0u % 32u))), 21u)]);
    global2 = array<i32, 31>();
    var var_1 = _wgslsmith_f_op_f32(max(1909f, arg_1));
    var var_2 = 4294967295u;
    var var_3 = !vec3<bool>((!global0.a.c && (global2[_wgslsmith_index_u32(u_input.d.x, 31u)] >= -52651i)) & true, _wgslsmith_sub_i32(u_input.a, u_input.a) < _wgslsmith_clamp_i32(~u_input.a, var_0.a, global2[_wgslsmith_index_u32(97909u & global0.a.a.x, 31u)]), all(vec3<bool>(true, global0.c.e, true)));
    return Struct_2(Struct_1(~vec2<u32>(0u, global0.c.a.x), vec2<bool>(true, var_3.x), global0.c.c && ((global0.c.e & false) && var_0.b), ~vec2<u32>(firstTrailingBit(u_input.c), ~3385u), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~u_input.b), global0.c.d.x), 21u)]), ~vec3<u32>(~(~52639u), u_input.d.x, 1u), global0.a);
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<f32>, arg_3: vec3<f32>) -> vec3<bool> {
    global0 = Struct_2(func_1(), vec3<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, u_input.d.x, 1u, global0.c.a.x), vec4<u32>(global0.c.a.x, arg_0.x, 1u, 38178u), false) ^ ~vec4<u32>(arg_0.x, 4294967295u, 55377u, 71528u), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(global0.a.a.x, arg_1, arg_1, 1u)), ~vec4<u32>(arg_0.x, global0.c.d.x, 51068u, 1u))), ~_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.x, 34310u), ~25947u), ~29318u), global0.a);
    let var_0 = Struct_4(-1i);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-arg_2.x))));
    global2 = array<i32, 31>();
    var var_2 = global2[_wgslsmith_index_u32(0u, 31u)];
    return !select(!(!vec3<bool>(true, global0.a.b.x, global0.c.c)), vec3<bool>(global1[_wgslsmith_index_u32(3015u, 21u)], 16315u > (arg_1 >> (global0.b.x % 32u)), global0.c.c), ~_wgslsmith_dot_vec3_u32(global0.b, arg_0) < (1u << (1u % 32u)));
}

fn func_4(arg_0: vec3<bool>) -> f32 {
    global0 = func_2(vec2<f32>(270f, 583f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-255f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1174f, -986f) + _wgslsmith_f_op_f32(min(-1078f, 265f))))))));
    global0 = Struct_2(global0.c, global0.b | _wgslsmith_sub_vec3_u32((u_input.d ^ vec3<u32>(1u, 0u, 4294967295u)) << (~vec3<u32>(global0.c.d.x, global0.b.x, u_input.d.x) % vec3<u32>(32u)), u_input.d), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(323f, 554f), vec2<f32>(-1747f, 219f))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 768f), vec2<f32>(-696f, -1410f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(672f, -657f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-914f, -471f, true)))))).c);
    global2 = array<i32, 31>();
    var var_0 = Struct_3(func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 383f)), _wgslsmith_f_op_f32(f32(-1f) * -783f)), -1031f).c.b.x, global0.b.zz, func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(718f, -2077f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2264f, _wgslsmith_f_op_f32(-905f + 646f))))).c, vec2<bool>(true, !(global0.c.c || arg_0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-130f, _wgslsmith_div_f32(-179f, 328f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(781f, 591f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1716f, -212f) + vec2<f32>(-270f, -300f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(select(-564f, 220f, global1[_wgslsmith_index_u32(u_input.d.x, 21u)]))), all(select(global0.a.b, vec2<bool>(arg_0.x, true), false))))));
    let var_1 = !(!any(vec3<bool>(true || global1[_wgslsmith_index_u32(global0.b.x, 21u)], true, false)));
    return _wgslsmith_f_op_f32(var_0.e.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(446f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(730f, -947f, arg_0.x)) - _wgslsmith_f_op_f32(-864f - var_0.e.x))) + var_0.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = func_2(_wgslsmith_div_vec2_f32(vec2<f32>(101f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(680f)), _wgslsmith_div_f32(-1178f, 1138f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1238f, -120f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1440f, 1086f))))), -540f);
    var var_1 = abs(abs(min(global0.b.x, _wgslsmith_add_u32(select(var_0.a.x, global0.a.d.x, true), u_input.d.x & 4294967295u))));
    global2 = array<i32, 31>();
    let var_2 = ~vec4<u32>(var_0.d.x, ~(~(~0u)), ~_wgslsmith_mod_u32(select(0u, var_0.d.x, global0.c.c), 36486u >> (u_input.b % 32u)), 6177u);
    let var_3 = vec2<u32>(u_input.d.x, 4294967295u ^ ~max(1326u >> (global0.c.d.x % 32u), _wgslsmith_div_u32(4294967295u, global0.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(1i, -max(-u_input.a, u_input.a >> (95710u % 32u)), 0i), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-213f, 1387f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(550f)))))), _wgslsmith_f_op_f32(func_4(func_3(global0.b, ~u_input.b, vec3<f32>(566f, -345f, 1540f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1450f, 186f, 1000f))))), 513f), var_2 | vec4<u32>(~1u, global0.b.x | global0.a.d.x, ~1u, _wgslsmith_sub_u32(abs(var_3.x), _wgslsmith_sub_u32(1u, var_3.x))), u_input.a, _wgslsmith_div_f32(-793f, 709f));
}

