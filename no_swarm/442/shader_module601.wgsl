struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: vec4<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: i32 = -3612i;

var<private> global2: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_2) -> u32 {
    let var_0 = -_wgslsmith_clamp_i32(1i, -17884i, firstTrailingBit(u_input.c.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1086f)), _wgslsmith_div_f32(global0.x, arg_0.x)), arg_0))));
    let var_2 = -(~firstTrailingBit(-_wgslsmith_mult_vec3_i32(vec3<i32>(-20497i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, -1i, 2147483647i))));
    let var_3 = Struct_3(~_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(arg_1, 13760u) & vec2<u32>(u_input.b, u_input.b)), vec2<u32>(4553u, _wgslsmith_mult_u32(5365u, u_input.d)), vec2<u32>(~u_input.a, min(4294967295u, 18242u))));
    var var_4 = 24875u;
    return ~(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_1, 4294967295u, var_3.a.x)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(35795u, 9675u, u_input.b), vec3<u32>(17967u, 1u, 0u)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(0u, var_3.a.x), 1u, var_3.a.x)));
}

fn func_2() -> vec2<u32> {
    let var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.x))));
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-913f + global0.x)));
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(~var_0, var_0), 2147483647i, 0i);
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(~0u, u_input.d & abs(~u_input.b)), max(~_wgslsmith_add_u32(45257u, 42910u) << (~u_input.b % 32u), ~79515u | u_input.b), func_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) * -258f), -122f), 12573u, Struct_2(true, Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-global0.x)), Struct_1(vec3<bool>(true, true, false), _wgslsmith_f_op_f32(-global0.x)), Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(560f - global0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(613f * -217f))))), 61768u);
    return abs(var_3.yz);
}

fn func_1() -> vec2<bool> {
    var var_0 = ~((vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(45537u, 0u)), u_input.d) >> (max(vec2<u32>(0u, u_input.b), func_2()) % vec2<u32>(32u))) ^ abs(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, u_input.d)), vec2<u32>(10903u, 1u))));
    let var_1 = Struct_2(all(!vec3<bool>(-674f <= global0.x, any(vec3<bool>(true, true, false)), any(vec3<bool>(true, true, false)))), Struct_1(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(trunc(global0.x)))))), Struct_1(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -1000f), _wgslsmith_f_op_f32(sign(global0.x)), 74626u != ~var_0.x))), Struct_1(select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(max(1483f, global0.x)));
    var var_2 = var_1.c;
    var_2 = Struct_1(var_2.a, var_2.b);
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, -1149f, _wgslsmith_f_op_f32(-var_2.b)), vec3<f32>(_wgslsmith_f_op_f32(sign(957f)), -555f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b))), all(vec2<bool>(all(!vec4<bool>(var_2.a.x, false, var_2.a.x, false)), var_1.b.a.x))));
    return !(!select(!vec2<bool>(false, var_2.a.x), vec2<bool>(false, any(vec4<bool>(var_2.a.x, var_1.b.a.x, var_2.a.x, var_1.d.a.x))), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(min(4294967295u, 4294967295u), 85394u), u_input.d);
    global2 = array<vec2<bool>, 26>();
    let var_1 = ~vec3<u32>(u_input.a >> (~4294967295u % 32u), min(0u, 4294967295u), ~countOneBits(~var_0.x));
    let var_2 = u_input.c.x;
    let var_3 = vec3<bool>(all(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)))), !all(func_1()));
    global1 = u_input.c.x | ~(-u_input.c.x);
    let var_4 = Struct_1(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x * global0.x)))) * -620f));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b) + var_4.b)));
    let x = u_input.a;
    s_output = StorageBuffer(-(45505i >> ((4294967295u >> (~var_1.x % 32u)) % 32u)), ~(~var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, 549f, var_5), vec4<f32>(-1852f, 1120f, var_5, 978f), vec4<bool>(false, true, var_3.x, false))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5, var_5, global0.x, 569f))))), -(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, var_2, u_input.c.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-8150i, 14989i, var_2), vec3<i32>(var_2, -2147483647i, 1i))) >> (var_0.x % 32u)), _wgslsmith_mod_vec2_u32(min(var_1.yy, var_0), var_1.zz));
}

