struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, -1i);

var<private> global1: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    var var_0 = Struct_4(true, Struct_1(!all(vec2<bool>(true, false)), u_input.a.x, global0.x), -(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -1i, global0.x, -28717i), vec4<i32>(u_input.d.x, u_input.c, 2147483647i, 0i)) & select(reverseBits(vec4<i32>(-38724i, u_input.a.x, u_input.d.x, u_input.d.x)), -vec4<i32>(2147483647i, global0.x, global0.x, u_input.d.x), true)), 1u, Struct_3(0i, Struct_1(arg_0.x != -213f, u_input.d.x ^ -1i, u_input.d.x ^ _wgslsmith_dot_vec2_i32(u_input.a.yz, u_input.d.yz)), Struct_1(true, ~u_input.c, -(~(-2147483647i))), _wgslsmith_dot_vec4_i32(~(vec4<i32>(-2147483647i, global0.x, u_input.b, u_input.c) << (vec4<u32>(1u, 4294967295u, 11792u, 18847u) % vec4<u32>(32u))), vec4<i32>(global0.x, _wgslsmith_div_i32(u_input.d.x, 1i), select(u_input.d.x, u_input.d.x, true), 5727i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(sign(-1000f)), 1985f)));
    let var_1 = select(!(!select(select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(var_0.e.b.a, var_0.e.b.a, var_0.b.a), vec3<bool>(var_0.e.c.a, var_0.a, true)), !vec3<bool>(var_0.a, false, var_0.e.b.a), !vec3<bool>(false, var_0.e.c.a, var_0.a))), vec3<bool>(var_0.b.a, var_0.e.b.a, true), true | !all(select(vec4<bool>(var_0.b.a, true, var_0.e.b.a, false), vec4<bool>(var_0.e.c.a, var_0.e.c.a, false, var_0.a), var_0.b.a)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(635f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), 1040f));
    global1 = var_0.d;
    global1 = abs(~(~(~_wgslsmith_mult_u32(0u, var_0.d))));
    return vec4<bool>(reverseBits(_wgslsmith_add_u32(var_0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(26174u, 1u, 0u), vec3<u32>(598u, 63028u, 4294967295u)))) > 13894u, true, true, !var_0.e.b.a);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(true, global0.x, i32(-1i) * -(-1i & u_input.d.x));
    global0 = vec2<i32>(8885i, _wgslsmith_mod_i32(i32(-1i) * -(u_input.d.x | var_0.c), -var_0.c));
    let var_1 = !vec2<bool>(var_0.a, any(select(func_3(vec4<f32>(256f, 1000f, -319f, 860f)), select(vec4<bool>(false, var_0.a, var_0.a, false), vec4<bool>(false, var_0.a, var_0.a, true), vec4<bool>(var_0.a, var_0.a, var_0.a, true)), all(vec4<bool>(true, var_0.a, var_0.a, var_0.a)))));
    global0 = u_input.d.yy;
    let var_2 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_div_i32(u_input.b, u_input.a.x), _wgslsmith_clamp_i32(2147483647i, 11632i, -u_input.a.x), 1i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, var_0.c, countOneBits(0i), _wgslsmith_add_i32(-1i, 15396i)), vec4<i32>(-43i, _wgslsmith_mod_i32(var_0.b, 14693i), _wgslsmith_dot_vec2_i32(vec2<i32>(2940i, 10647i), u_input.d.zx), min(2147483647i, u_input.a.x)))), var_0, var_0, -(~_wgslsmith_dot_vec3_i32(u_input.a | u_input.a, _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, var_0.c, 7006i), vec3<i32>(u_input.a.x, var_0.c, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(607f)), _wgslsmith_f_op_f32(-192f * -1521f), -1000f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.e.x, _wgslsmith_f_op_f32(345f - _wgslsmith_f_op_f32(trunc(var_2.e.x))))) + _wgslsmith_f_op_f32(min(var_2.e.x, var_2.e.x))) - var_2.e.x);
}

fn func_1() -> Struct_1 {
    global1 = 108227u;
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-730f, -237f), 1f))), _wgslsmith_f_op_f32(func_2())));
    global1 = firstTrailingBit(~0u) & 1u;
    global1 = 111745u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-var_0.x))));
    return Struct_1(_wgslsmith_f_op_f32(min(var_0.x, -1000f)) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - -213f), abs(20826i), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(abs(_wgslsmith_add_vec2_i32(vec2<i32>(27542i, _wgslsmith_mult_i32(33086i, u_input.c)), vec2<i32>(0i >> (0u % 32u), 2147483647i))));
    let var_0 = global0.x;
    let var_1 = _wgslsmith_sub_i32(~_wgslsmith_mod_i32(-u_input.b, -global0.x), -2147483647i);
    var var_2 = Struct_2(-22586i, func_1(), func_1(), Struct_1(true && (true | any(vec4<bool>(false, true, false, true))), ~u_input.d.x, ~_wgslsmith_add_i32(-var_1, -u_input.a.x)));
    global1 = abs(1u);
    let var_3 = var_2.c;
    var var_4 = Struct_3(-2147483647i | u_input.d.x, var_2.c, Struct_1(!var_3.a, -(u_input.c >> (_wgslsmith_mod_u32(1u, 31u) % 32u)), _wgslsmith_dot_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b.c, 1i, -2147483647i), u_input.d), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, var_1, -12133i), u_input.d), any(vec4<bool>(false, var_3.a, false, var_2.b.a))), reverseBits(u_input.a << (vec3<u32>(4294967295u, 32549u, 1u) % vec3<u32>(32u))))), var_1, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1089f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 243f))))));
    var var_5 = !func_1().a;
    global1 = select(countOneBits(1u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(32740u, 48374u), _wgslsmith_clamp_vec2_u32(vec2<u32>(78583u, 86050u), vec2<u32>(3627u, 4294967295u), vec2<u32>(0u, 0u))) ^ _wgslsmith_sub_u32(firstLeadingBit(abs(9847u)), _wgslsmith_div_u32(1u, ~1u)), all(vec2<bool>(!func_3(vec4<f32>(185f, -1000f, 1560f, -1366f)).x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(u_input.d.yy), 0i);
}

