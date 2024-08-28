struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 27>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: vec4<bool>) -> vec4<f32> {
    let var_0 = global2[_wgslsmith_index_u32(global1.c, 27u)];
    global0 = Struct_4(_wgslsmith_div_u32(global0.b.c.e, _wgslsmith_dot_vec3_u32(vec3<u32>(20690u, var_0.e, global0.b.c.e) >> (vec3<u32>(var_0.e, 53524u, 3332u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(global1.c, var_0.e, global1.c), vec3<u32>(global1.c, 1u, 0u)))) ^ _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(1u, 37908u, 35654u)), ~vec3<u32>(4294967295u, 1u, global1.c)), global0.b);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x + 794f) - var_0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global1.b)))), ~(~(1u >> (var_0.e % 32u))), _wgslsmith_mult_vec2_i32(~select(vec2<i32>(0i, global0.b.a.x), vec2<i32>(-19600i, 0i), true) ^ select(vec2<i32>(2147483647i, u_input.a), _wgslsmith_sub_vec2_i32(var_0.d, vec2<i32>(-23103i, -12162i)), !arg_2), vec2<i32>(i32(-1i) * -26530i, select(1i, var_0.d.x, arg_0)) << (abs(reverseBits(vec2<u32>(11698u, var_0.c))) % vec2<u32>(32u))), global1.e);
    global0 = Struct_4(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(54800u, var_1.c, 0u, 0u), vec4<u32>(var_1.e, global0.a, 4294967295u, global1.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0.e, 62254u, 0u), vec4<u32>(var_1.e, 39187u, var_1.e, var_0.e))) << (_wgslsmith_mod_u32(countOneBits(min(var_1.e, global0.b.c.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(28994u, global1.e, 1u, 31244u), firstLeadingBit(vec4<u32>(4294967295u, 1u, 45014u, 4294967295u)))) % 32u), global0.b);
    let var_2 = 24219u;
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -951f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(1349f * 1000f)))), _wgslsmith_f_op_f32(floor(-1756f)), 888f);
}

fn func_2() -> Struct_4 {
    let var_0 = global0.b;
    let var_1 = var_0.c;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(true, -2147483647i > _wgslsmith_div_i32(global1.d.x, 1i), true, !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false)))), global0.a, max(var_0.c.d, _wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, -12866i) | ~var_0.a.yw, global1.d)), var_1.e);
    return Struct_4(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(~var_1.c, var_2.c)), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(52109u, var_1.e), vec2<u32>(var_0.c.c, global0.b.b.x))), Struct_2(reverseBits(max(~var_0.a, var_0.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(23840u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.e, var_2.e, global0.b.b.x, var_2.c), vec4<u32>(18248u, 4294967295u, global1.e, 1u))), ~(~global0.b.b)), global0.b.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b.x, _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(round(global0.b.c.a))))));
}

fn func_1() -> Struct_4 {
    global2 = array<Struct_1, 27>();
    var var_0 = firstTrailingBit((_wgslsmith_mult_i32(4437i << (0u % 32u), u_input.a) << (global0.b.b.x % 32u)) >> (min(~firstLeadingBit(72519u), 1u & firstLeadingBit(global1.e)) % 32u));
    global0 = func_2();
    var_0 = -86519i;
    let var_1 = any(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec3<bool>(true, false, false))), vec2<bool>(true, true)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(global1.d.x) ^ -_wgslsmith_dot_vec2_i32(global0.b.a.wx, global0.b.a.xy);
    global0 = func_1();
    let var_1 = -2147483647i;
    let var_2 = vec2<f32>(_wgslsmith_div_f32(-497f, global0.b.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(floor(-1192f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b.x))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(871f * -965f), global0.b.d.x), vec2<f32>(_wgslsmith_f_op_f32(-global0.b.c.b.x), -556f), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~global0.b.a, 1u, vec3<i32>(global0.b.a.x, global1.d.x, global0.b.c.d.x), global1.d.x);
}

