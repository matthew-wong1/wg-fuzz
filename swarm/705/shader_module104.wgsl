struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -411f;

var<private> global1: Struct_4 = Struct_4(Struct_2(vec2<u32>(4294967295u, 12102u)), Struct_1(1709f));

var<private> global2: array<Struct_2, 10>;

var<private> global3: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> vec2<f32> {
    global1 = Struct_4(Struct_2(~(~vec2<u32>(global1.a.a.x, arg_2))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1051f)) - 1440f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.a) + 1349f))));
    global1 = Struct_4(global1.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global1.b.a, global1.b.a), _wgslsmith_div_f32(arg_1.a, -165f)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2767f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - -473f)) - _wgslsmith_div_f32(arg_1.a, -701f)))));
    var var_0 = ~abs(~u_input.a);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2334f, _wgslsmith_f_op_f32(f32(-1f) * -2395f))))));
    return vec2<f32>(_wgslsmith_f_op_f32(min(711f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, arg_1.a) + _wgslsmith_f_op_f32(-global1.b.a))))), global1.b.a);
}

fn func_2(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = all(arg_1);
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3(u_input.c, Struct_1(global1.b.a), arg_0.a.a.x));
    global0 = var_1.x;
    global1 = Struct_4(Struct_2(u_input.a), arg_0.b);
    global3 = 22986u;
    return Struct_3(firstTrailingBit(vec3<i32>(min(reverseBits(-4262i), _wgslsmith_add_i32(u_input.b, u_input.c)), min(34832i, i32(-1i) * -2147483647i), i32(-1i) * -41646i)), Struct_2(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a.a.x, 44201u) & global1.a.a, vec2<u32>(1u, u_input.a.x) ^ arg_0.a.a)), select(arg_0.b.a <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global1.b.a)), 2149f)), !arg_1.x, arg_1.x));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: u32, arg_3: u32) -> i32 {
    global3 = _wgslsmith_div_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(arg_0.b.a.x), ~u_input.a.x, global1.a.a.x), abs(firstLeadingBit(vec3<u32>(u_input.a.x, 0u, arg_2))))), firstLeadingBit(51174u));
    let var_0 = vec4<u32>(~(79103u << (~u_input.a.x % 32u)), countOneBits(~77919u), reverseBits(countOneBits(~arg_0.b.a.x) ^ 4294967295u), 54640u);
    let var_1 = func_2(Struct_4(Struct_2(func_2(Struct_4(global1.a, global1.b), vec3<bool>(true, arg_0.c, arg_0.c)).b.a), Struct_1(_wgslsmith_f_op_f32(abs(188f)))), select(!vec3<bool>(arg_0.c == arg_0.c, false, arg_0.c | arg_0.c), vec3<bool>(!(!arg_0.c), arg_0.c && true, true), all(vec3<bool>(!arg_0.c, true && arg_0.c, any(vec2<bool>(true, false)))))).b.a.x;
    let var_2 = select(_wgslsmith_mod_vec3_u32(~firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b.a.x, var_1, 4294967295u), vec3<u32>(arg_3, global1.a.a.x, 46828u))), var_0.wxx), firstLeadingBit(var_0.xwz), select(select(vec3<bool>(arg_0.c & false, any(vec4<bool>(false, false, false, arg_0.c)), arg_0.c), vec3<bool>(true, false, true), arg_0.c && true), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, arg_0.c, arg_0.c), vec3<bool>(true, false, true), vec3<bool>(arg_0.c, arg_0.c, arg_0.c)), vec3<bool>(arg_0.c, true, all(vec3<bool>(false, arg_0.c, arg_0.c)))), false && all(vec4<bool>(arg_0.c, false, arg_0.c, true))));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.b.a), _wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-227f, 497f)), arg_1.x))), _wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(select(global1.b.a, arg_1.x, arg_0.c)), 1000f, _wgslsmith_f_op_f32(-261f - global1.b.a)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, global1.b.a, arg_1.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1405f, global1.b.a, global1.b.a, arg_1.x)))))));
    return -(~(-(~u_input.c)));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(func_4(func_2(Struct_4(Struct_2(vec2<u32>(1u, 31742u)), global1.b), vec3<bool>(false, false, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2573f, -685f, global1.b.a) + vec3<f32>(-1000f, -200f, global1.b.a)), u_input.a.x, _wgslsmith_mod_u32(62539u, global1.a.a.x)) ^ -2147483647i, u_input.d.x, u_input.d.x, _wgslsmith_dot_vec3_i32(~(u_input.d & u_input.d), vec3<i32>(_wgslsmith_mult_i32(1i, u_input.c), -2147483647i, u_input.c))), ~vec4<i32>(u_input.d.x & _wgslsmith_mult_i32(0i, u_input.d.x), -countOneBits(u_input.c), 69125i, ~(u_input.d.x >> (64963u % 32u))));
    var var_1 = vec2<u32>(~1u, ~(func_2(Struct_4(global2[_wgslsmith_index_u32(13031u, 10u)], global1.b), vec3<bool>(true, true, true)).b.a.x >> (global1.a.a.x % 32u)));
    global1 = Struct_4(Struct_2(global1.a.a), Struct_1(global1.b.a));
    var var_2 = Struct_1(-625f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.a - var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.b.a)) + -673f), var_0.x != max(var_0.x, 0i))) * var_2.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.a)) * _wgslsmith_f_op_f32(-var_2.a)))));
    return ~countOneBits(var_0.x);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: i32) -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.x, global1.b.a, true)))), arg_0.x, global1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(803f - -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(111f * arg_0.x)))));
    let var_1 = global1.b;
    global3 = u_input.a.x;
    let var_2 = func_2(Struct_4(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_1.a)))), select(select(vec3<bool>(true, all(vec3<bool>(false, false, true)), true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))).b;
    var var_3 = select(vec2<bool>(true && ((var_0.x <= 350f) | any(vec4<bool>(false, false, false, true))), false), select(select(vec2<bool>(true, u_input.d.x > arg_2.x), vec2<bool>(415f >= global1.b.a, false), vec2<bool>(true, select(true, false, true))), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), false), _wgslsmith_dot_vec2_i32(vec2<i32>(max(-5191i, 23638i), _wgslsmith_div_i32(arg_3, arg_3)), u_input.d.zx) < ~(~0i));
    return func_2(Struct_4(global1.a, Struct_1(arg_0.x)), !(!select(vec3<bool>(var_3.x, true, true), select(vec3<bool>(false, false, var_3.x), vec3<bool>(true, var_3.x, true), vec3<bool>(var_3.x, var_3.x, false)), !vec3<bool>(true, var_3.x, false)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.a * global1.b.a)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global1.b.a)), _wgslsmith_f_op_f32(2264f - -2022f), true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-119f + global1.b.a), -746f)))));
    global1 = Struct_4(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.b.a, 369f, 888f), vec3<f32>(global1.b.a, global1.b.a, global1.b.a)))), ~min(vec2<i32>(0i, u_input.b), vec2<i32>(1i, 1i)), vec4<i32>(1i, -u_input.c, 2147483647i, func_1()), 2147483647i | (56495i >> (_wgslsmith_clamp_u32(global1.a.a.x, 4294967295u, 0u) % 32u))), global1.b);
    var_0 = global1.b.a;
    var_0 = global1.b.a;
    global3 = 0u;
    var var_1 = global1.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xz, 2278f, abs(4294967295u) >> (firstLeadingBit(_wgslsmith_sub_u32(abs(22001u), 14960u)) % 32u), ~min(global1.a.a.x, global1.a.a.x) ^ u_input.a.x);
}

