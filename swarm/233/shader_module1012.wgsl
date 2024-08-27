struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 13>;

var<private> global1: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(1350f, 761f), vec2<f32>(-779f, 1047f), vec2<f32>(-1000f, 280f), vec2<f32>(-125f, -981f), vec2<f32>(1000f, 589f), vec2<f32>(-404f, -487f), vec2<f32>(1000f, -537f), vec2<f32>(753f, -679f), vec2<f32>(-105f, 1000f), vec2<f32>(829f, -1089f), vec2<f32>(1538f, 1804f), vec2<f32>(332f, 2164f), vec2<f32>(654f, 480f), vec2<f32>(-1897f, 312f), vec2<f32>(552f, 239f), vec2<f32>(423f, 639f), vec2<f32>(810f, 1000f), vec2<f32>(632f, 667f), vec2<f32>(369f, 133f), vec2<f32>(-643f, 351f), vec2<f32>(-457f, -286f), vec2<f32>(460f, 583f), vec2<f32>(1740f, 629f), vec2<f32>(1591f, 377f), vec2<f32>(389f, 368f));

var<private> global2: f32;

var<private> global3: Struct_1 = Struct_1(6263i, 71211u, vec3<i32>(11125i, 0i, -47360i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> i32 {
    return global3.a;
}

fn func_3() -> vec3<u32> {
    let var_0 = ~vec3<u32>(global3.b, 0u, 48121u) >> (~(_wgslsmith_div_vec3_u32(vec3<u32>(global3.b, global3.b, global3.b), vec3<u32>(global3.b, 59613u, 0u)) | (vec3<u32>(4294967295u, 18690u, global3.b) | max(vec3<u32>(1u, 0u, global3.b), vec3<u32>(global3.b, 4294967295u, global3.b)))) % vec3<u32>(32u));
    let var_1 = firstTrailingBit(0u);
    var var_2 = vec4<i32>(-1i, u_input.a.x, select(~(~u_input.d.x), _wgslsmith_mod_i32(u_input.c.x, 50142i), true) ^ (reverseBits(_wgslsmith_sub_i32(26739i, -19956i)) ^ _wgslsmith_dot_vec2_i32(~u_input.a.zz, _wgslsmith_mod_vec2_i32(global3.c.zx, global3.c.xx))), select(_wgslsmith_sub_i32(u_input.a.x, func_1()), global3.a, all(vec2<bool>(false, true))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-1076f)), -984f));
    global2 = _wgslsmith_f_op_f32(exp2(var_3.x));
    return ~(var_0 & ~vec3<u32>(1u, var_1, max(1u, global3.b)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = func_3();
    global1 = array<vec2<f32>, 25>();
    var var_1 = Struct_1(~global3.a, var_0.x, ~max(vec3<i32>(1i, min(1i, 13262i), global3.a), firstLeadingBit(vec3<i32>(u_input.d.x, 0i, -46936i)) | global3.c));
    global3 = Struct_1(0i, var_1.b, global3.c);
    let var_2 = Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, 0u, var_0.x) & (vec4<u32>(128090u, 4294967295u, 12014u, arg_1) & vec4<u32>(31763u, 86769u, global3.b, 0u)), ~vec4<u32>(arg_1, arg_1, 51270u, var_0.x) ^ vec4<u32>(var_0.x, arg_1, var_0.x, arg_1)), arg_1, 27568u), Struct_1(_wgslsmith_dot_vec2_i32(~vec2<i32>(-41016i, -2147483647i) | global3.c.yz, -u_input.a.yx), max(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(62734u, global3.b, var_0.x), var_0), vec3<u32>(26874u, var_1.b, 1u) & var_0), _wgslsmith_add_u32(1u, max(var_0.x, 17514u))), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(12498i, var_1.c.x), -u_input.a.x), -var_1.c.x << (_wgslsmith_sub_u32(6565u, 1u) % 32u), i32(-1i) * -30732i)), global3.b | arg_1, var_0.x, select(!(!select(vec4<bool>(true, true, arg_3, arg_3), vec4<bool>(false, true, arg_3, arg_2), vec4<bool>(arg_3, true, false, false))), vec4<bool>(_wgslsmith_f_op_f32(arg_0 * -118f) <= -860f, !(arg_2 | false), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.b, var_0.x, var_1.b, 85486u), vec4<u32>(4294967295u, arg_1, arg_1, var_1.b)) >= (var_1.b & 9005u), true), any(vec4<bool>(!arg_3, arg_2 || arg_2, arg_2, true))));
    return Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(func_1(), 13146i), ~_wgslsmith_div_i32(u_input.b.x, u_input.a.x) >> (var_2.c % 32u)), _wgslsmith_div_u32(~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(97589u, 36707u), var_0.xy)), firstLeadingBit(~min(var_1.b, 0u))), min(reverseBits(var_1.c & global3.c) >> (vec3<u32>(1193u, 0u, var_1.b >> (4912u % 32u)) % vec3<u32>(32u)), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1263f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -601f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(736f))), 1083f)), _wgslsmith_dot_vec4_u32(vec4<u32>(global3.b, ~global3.b, global3.b, ~20709u), select(~vec4<u32>(global3.b, 67828u, 57103u, global3.b), ~vec4<u32>(101496u, 40065u, global3.b, global3.b), vec4<bool>(true, false, true, false))) ^ global3.b, true, func_1() != 21635i);
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, ~func_2(1000f, global3.b, false, true).b, global3.b)), _wgslsmith_add_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(10219u, 1u), _wgslsmith_mult_u32(~global3.b, global3.b), 37731u), vec3<u32>(_wgslsmith_mod_u32(min(51181u, 11569u), global3.b), ~97175u << (global3.b % 32u), ~1u))), 13u)];
    var var_1 = Struct_4(func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -401f))), var_0.c.b.b, select(any(!var_0.c.e.wx), var_0.a.e.x & all(vec4<bool>(var_0.a.e.x, true, false, var_0.a.e.x)), true), !all(vec2<bool>(var_0.c.e.x, false))));
    global1 = array<vec2<f32>, 25>();
    var var_2 = ~_wgslsmith_div_vec4_i32(abs(reverseBits(-vec4<i32>(29541i, u_input.b.x, -1i, 2147483647i))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(15777i, var_0.a.b.c.x, u_input.a.x, 5032i), vec4<i32>(-8059i, global3.c.x, 22115i, -1i)), ~vec4<i32>(-1i, 0i, var_0.a.b.c.x, -32850i), vec4<i32>(global3.a, 2147483647i, 0i, global3.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-min(vec2<i32>(-5234i, firstLeadingBit(2147483647i)), min(global3.c.zy, _wgslsmith_mult_vec2_i32(var_0.a.b.c.zz, var_2.zx))));
}

