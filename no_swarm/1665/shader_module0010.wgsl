struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<i32> = vec3<i32>(-32880i, -24020i, -1i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_add_i32(~_wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_div_i32(global1.x, u_input.c)), 1i & u_input.d), _wgslsmith_sub_i32(_wgslsmith_add_i32(-u_input.b.x, -(global1.x >> (55635u % 32u))), max(2147483647i, 1i) << (global0.x % 32u)));
    var var_1 = 36509i;
    var_1 = i32(-1i) * -1i;
    global0 = ~(~vec4<u32>(25092u, ~1u, ~global0.x, ~max(0u, global0.x)));
    let var_2 = Struct_1(all(vec2<bool>(false, true)), arg_0.x);
    return 1u;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: i32, arg_3: bool) -> f32 {
    global0 = ~select(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, 1u), min(32672u, 12488u), _wgslsmith_mod_u32(global0.x, global0.x), ~0u), ~vec4<u32>(global0.x, global0.x, global0.x, global0.x) >> (vec4<u32>(global0.x, global0.x, global0.x, 1u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(global0.x, 31467u, 68873u, 36003u)), vec4<u32>(firstTrailingBit(4294967295u), global0.x, global0.x, func_3(vec4<f32>(722f, -1000f, -287f, 593f)))), select(select(arg_1, arg_1, false), select(arg_1, !vec4<bool>(arg_1.x, false, arg_3, true), select(vec4<bool>(arg_3, arg_3, true, true), arg_1, true)), arg_1));
    var var_0 = -(~_wgslsmith_clamp_i32(-5455i, u_input.c, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-17742i, global1.x), ~(-27190i))));
    let var_1 = Struct_1(_wgslsmith_clamp_i32(0i, abs(0i), -56050i) <= _wgslsmith_div_i32(-1i, ~(u_input.d ^ 10647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(831f - -345f), 1f))));
    var_0 = -1i;
    var var_2 = Struct_1(arg_3 && true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - -897f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1741f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + -105f)))));
    return _wgslsmith_f_op_f32(ceil(1481f));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -235f)));
    global0 = vec4<u32>(0u, ~77654u, reverseBits(_wgslsmith_add_u32(_wgslsmith_add_u32(global0.x, global0.x), 41480u) << ((global0.x >> (_wgslsmith_div_u32(107106u, global0.x) % 32u)) % 32u)), _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(~global0.wxw, vec3<u32>(_wgslsmith_div_u32(0u, 559u), _wgslsmith_dot_vec2_u32(vec2<u32>(21362u, 51215u), global0.zz), ~28180u))));
    global0 = vec4<u32>(~global0.x, 120665u, _wgslsmith_add_u32(52137u, ~func_3(vec4<f32>(arg_0.x, 310f, -727f, arg_1))) ^ 1u, firstLeadingBit(global0.x));
    global0 = min(max(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, 54814u, 0u), reverseBits(vec4<u32>(global0.x, 1u, 4294967295u, 74009u))), vec4<u32>(4294967295u, global0.x, global0.x & global0.x, _wgslsmith_add_u32(global0.x, 4294967295u))) & ~(~select(vec4<u32>(7881u, global0.x, global0.x, global0.x), vec4<u32>(14989u, global0.x, 21824u, 1u), var_0.a)), ~vec4<u32>(global0.x, global0.x, ~select(1u, global0.x, false), global0.x));
    return ~_wgslsmith_sub_u32(firstTrailingBit(~0u), global0.x) & _wgslsmith_mult_u32(select(4294967295u, ~global0.x, arg_3.a), reverseBits(global0.x));
}

fn func_1(arg_0: u32) -> bool {
    global0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(3213u, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1125f, 985f)), _wgslsmith_div_f32(-355f, _wgslsmith_f_op_f32(func_2(u_input.c, vec4<bool>(false, true, false, false), global1.x, false))), _wgslsmith_sub_vec2_i32(abs(u_input.a), ~u_input.b.wx), Struct_1(all(vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), global0.x, 4294967295u), vec4<u32>(abs(reverseBits(abs(arg_0))), 2390u, ~firstLeadingBit(21499u), _wgslsmith_clamp_u32(72336u, arg_0, arg_0)), _wgslsmith_div_vec4_u32(min(max(~vec4<u32>(arg_0, global0.x, global0.x, global0.x), vec4<u32>(40580u, 1u, 44609u, 0u)), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, global0.x, global0.x), vec4<u32>(arg_0, global0.x, 0u, global0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(57915u, global0.x, arg_0, arg_0), vec4<u32>(31990u, 0u, 64656u, 39838u)))), vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, arg_0, 30694u, arg_0), vec4<u32>(6244u, 43314u, global0.x, arg_0)), _wgslsmith_dot_vec2_u32(global0.wz, vec2<u32>(global0.x, global0.x)), abs(_wgslsmith_mod_u32(arg_0, 38246u)), arg_0)));
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1364f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1753f, -667f) - _wgslsmith_f_op_f32(f32(-1f) * -1107f)))));
    global0 = vec4<u32>(_wgslsmith_mod_u32(reverseBits(~_wgslsmith_div_u32(0u, arg_0)), func_3(vec4<f32>(868f, _wgslsmith_f_op_f32(var_0.b - var_0.b), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(floor(var_0.b))))), 0u, abs(select(select(2089u, 0u, var_0.a) | global0.x, ~4294967295u, select(var_0.a, false, var_0.a))), _wgslsmith_mult_u32(13169u, 1u) | _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 31047u, 1u), global0.zxw) & global0.x, ~(~97023u)));
    global1 = u_input.b.xzz;
    var_0 = Struct_1((_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(global1.x, -32668i)) >> ((1u | arg_0) % 32u)) < _wgslsmith_sub_i32(22029i, _wgslsmith_mult_i32(-1i, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(281f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-2144f)), _wgslsmith_f_op_f32(min(var_0.b, 1657f))))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(true, func_1(~4294967295u), any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true))));
    let var_1 = Struct_1(var_0 && (u_input.a.x < ~2441i), 925f);
    var var_2 = ~global0.wz & (~(~_wgslsmith_add_vec2_u32(global0.zy, vec2<u32>(0u, global0.x))) | global0.yw);
    global1 = _wgslsmith_mult_vec3_i32(u_input.b.ywx, -_wgslsmith_add_vec3_i32(vec3<i32>(global1.x >> (var_2.x % 32u), global1.x, global1.x & -1i), countOneBits(u_input.b.xyy)));
    var_2 = global0.xw << (~global0.xx % vec2<u32>(32u));
    var_2 = ~select(global0.zw, select(firstTrailingBit(global0.yy), global0.xw, vec2<bool>(var_0, true)), all(select(vec3<bool>(false, false, false), vec3<bool>(var_1.a, var_0, false), vec3<bool>(var_1.a, var_1.a, var_1.a)))) >> (vec2<u32>(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-655f, -499f, var_1.b, 595f)))), ~(_wgslsmith_add_u32(var_2.x, var_2.x) ^ _wgslsmith_dot_vec2_u32(global0.zw, global0.yw))) % vec2<u32>(32u));
    let var_3 = select(select(!vec3<bool>(true, var_1.a, any(vec2<bool>(false, var_0))), vec3<bool>(var_0, true, _wgslsmith_f_op_f32(floor(var_1.b)) <= 582f), 0u == ~var_2.x), !vec3<bool>(var_1.a, any(vec3<bool>(true, false, true)), all(select(vec4<bool>(true, false, var_0, true), vec4<bool>(false, true, false, var_0), vec4<bool>(true, var_0, var_1.a, var_0)))), !(!select(vec3<bool>(var_1.a, var_1.a, true), !vec3<bool>(true, true, var_0), 4294967295u == var_2.x)));
    let var_4 = -998f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>((var_2.x ^ var_2.x) ^ ~var_2.x, var_2.x, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 61860u, var_2.x, global0.x), vec4<u32>(global0.x, global0.x, 0u, 0u), vec4<u32>(37725u, global0.x, 55545u, var_2.x)), vec4<u32>(0u, global0.x, 1u, var_2.x) >> (vec4<u32>(var_2.x, 35153u, var_2.x, var_2.x) % vec4<u32>(32u))), global0.x), abs(min(~vec4<u32>(global0.x, var_2.x, global0.x, 94307u), firstTrailingBit(vec4<u32>(0u, global0.x, var_2.x, 13654u))))), max(firstLeadingBit(max(max(vec2<u32>(22992u, var_2.x), vec2<u32>(global0.x, 4294967295u)), _wgslsmith_add_vec2_u32(global0.zz, vec2<u32>(global0.x, global0.x)))), vec2<u32>(23919u, 58706u)), select(vec2<i32>(countOneBits(u_input.a.x), ~max(global1.x, 2147483647i)), vec2<i32>(-global1.x >> (~global0.x % 32u), global1.x >> (~0u % 32u)), (func_1(global0.x) || all(vec4<bool>(var_0, false, var_3.x, var_0))) & !func_1(4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-981f + -1000f)))), _wgslsmith_f_op_f32(-173f + _wgslsmith_f_op_f32(round(-1188f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_f_op_f32(abs(-1323f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4))), var_1.b)), firstTrailingBit(~(~(vec4<u32>(1u, 71943u, global0.x, var_2.x) ^ vec4<u32>(global0.x, global0.x, 1u, var_2.x)))));
}

