struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 221f;

var<private> global2: f32 = 578f;

var<private> global3: Struct_1;

var<private> global4: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec2<u32> {
    global3 = Struct_1(global0.a << (_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d.x, 6637u, 1u), min(global3.a, u_input.d)), ~(~vec3<u32>(global3.a.x, global3.a.x, 0u))) % vec3<u32>(32u)), any(vec2<bool>(true, true)), firstLeadingBit(abs(vec4<i32>(8775i ^ global3.c.x, 2147483647i, global3.c.x, global0.c.x))));
    var var_0 = ~(-vec2<i32>(global3.c.x, firstLeadingBit(u_input.c)));
    var var_1 = Struct_1(u_input.d, any(vec3<bool>(true, global3.b, true)), -vec4<i32>(53218i, ~var_0.x & _wgslsmith_clamp_i32(global0.c.x, 0i, global0.c.x), global3.c.x, global3.c.x));
    let var_2 = Struct_1(vec3<u32>(4294967295u, 31865u, global3.a.x), true, _wgslsmith_add_vec4_i32(-vec4<i32>(35040i, var_0.x, -global3.c.x, -103692i), ~global0.c));
    var var_3 = -(~(~_wgslsmith_mod_i32(0i, ~32292i)));
    return _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, var_2.a.x) << (vec2<u32>(_wgslsmith_mult_u32(global0.a.x, _wgslsmith_sub_u32(var_1.a.x, var_1.a.x)), ~var_1.a.x) % vec2<u32>(32u)), vec2<u32>(1u, _wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(global0.a.x, reverseBits(global3.a.x)))));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    global2 = -268f;
    let var_0 = _wgslsmith_div_vec2_u32(abs(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(global3.a.zz, vec2<u32>(1u, u_input.a)), _wgslsmith_clamp_vec2_u32(arg_1, vec2<u32>(global0.a.x, arg_1.x), vec2<u32>(u_input.b, 0u)))), ~global3.a.xx) ^ ~(vec2<u32>(10625u, abs(131762u)) >> (firstTrailingBit(global3.a.zy << (u_input.d.zz % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = Struct_1(~u_input.d, true, select(vec4<i32>(_wgslsmith_div_i32(~global3.c.x, _wgslsmith_add_i32(36890i, global0.c.x)), global0.c.x, 1i >> (~4294967295u % 32u), global0.c.x), abs(firstTrailingBit(vec4<i32>(u_input.c, -2147483647i, global3.c.x, global3.c.x))), !any(select(vec4<bool>(global0.b, false, global0.b, global0.b), vec4<bool>(global0.b, global0.b, false, global0.b), global3.b))));
    global1 = arg_0;
    var var_2 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))) - _wgslsmith_f_op_f32(round(-1816f))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(func_4(arg_0.x, _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(min(u_input.b, u_input.b), reverseBits(4294967295u))), select(arg_1.a.xx, func_3(), global0.b))));
    let var_1 = arg_1.c.xzy;
    let var_2 = !all(select(!(!vec3<bool>(false, global3.b, arg_1.b)), select(!vec3<bool>(false, global3.b, true), !vec3<bool>(true, global3.b, global3.b), !vec3<bool>(global3.b, global3.b, true)), vec3<bool>(all(vec4<bool>(false, true, false, global0.b)), u_input.c == 1i, true)));
    var var_3 = ~vec3<u32>(~_wgslsmith_div_u32(arg_1.a.x, global3.a.x) | ~19617u, 22448u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global0.a.x, arg_1.a.x), arg_1.a) >> (~min(global0.a.x, 42325u) % 32u));
    global0 = Struct_1(global3.a, select(true, global0.a.x > 52261u, all(vec2<bool>(select(var_2, var_2, arg_1.b), global0.b))), vec4<i32>(-1i) * -(~abs(global0.c)));
    return _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + _wgslsmith_f_op_f32(min(-741f, _wgslsmith_f_op_f32(func_4(arg_0.x, global0.a.yy))))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * vec3<f32>(832f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-112f, -273f, arg_0.b))), _wgslsmith_f_op_f32(440f + 1f))), arg_2));
    global4 = var_0.x;
    global2 = var_0.x;
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 519f, var_0.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(1129f, var_0.x, var_0.x), vec3<f32>(-1000f, 432f, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(var_0.x, -1887f, 381f)))))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 2595f, -2200f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -350f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1042f, 1865f, 1000f), vec3<f32>(-1593f, 787f, -355f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1000f, var_0.x), _wgslsmith_f_op_f32(2097f - var_0.x), var_0.x)))));
    return abs(24653u);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    let var_0 = vec2<i32>(-17556i, arg_2.x);
    var var_1 = arg_1;
    let var_2 = var_1.b;
    var_1 = arg_1;
    global1 = -395f;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~global3.c.x);
    var var_1 = global3.c.yxx;
    let var_2 = reverseBits(-vec4<i32>(~global0.c.x, select(u_input.c, -2147483647i, true), global3.c.x, ~u_input.c)) << (~(~(~vec4<u32>(0u, global3.a.x, global3.a.x, 34471u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(0u, global3.a.x, global0.a.x, global0.a.x), vec4<u32>(51708u, global3.a.x, 0u, 20580u)))) % vec4<u32>(32u));
    var var_3 = vec2<bool>(true, true);
    let var_4 = func_5(global3.a.x, Struct_1(vec3<u32>(1677u, global0.a.x, ~func_1(Struct_1(global0.a, var_3.x, var_2), global0.a.zy, Struct_1(u_input.d, var_3.x, vec4<i32>(1i, 2147483647i, 0i, global0.c.x)), Struct_1(global0.a, true, var_2))), !var_3.x, firstTrailingBit(vec4<i32>(abs(var_1.x), ~var_1.x, -12151i ^ var_0, var_0))), vec4<i32>(u_input.c, 0i, var_2.x, abs(u_input.c)), select(4294967295u, ~global3.a.x, global3.b) != global0.a.x);
    var var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-177f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))));
    let var_6 = Struct_1(min(_wgslsmith_mod_vec3_u32(~var_4.a, vec3<u32>(countOneBits(42370u), u_input.a, _wgslsmith_mult_u32(56604u, var_4.a.x))), countOneBits(~u_input.d | (var_4.a | vec3<u32>(0u, 4294967295u, global0.a.x)))), var_3.x, vec4<i32>(-30381i, ~(~(~(-31156i))), global0.c.x, 42849i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~var_0)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -394f, -201f, 2373f) + vec4<f32>(-1583f, -1000f, -326f, -409f)))), vec4<f32>(476f, -1633f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(941f)), _wgslsmith_f_op_f32(f32(-1f) * -1423f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-659f + -993f) - 1148f))), var_6.c.yz, select(select(~0i & _wgslsmith_sub_i32(u_input.c, 40397i), -var_6.c.x, true & global0.b), ~global0.c.x, false), vec4<u32>(~_wgslsmith_div_u32(var_6.a.x, u_input.a), 1u | ~_wgslsmith_div_u32(global0.a.x, 13435u), func_1(Struct_1(global3.a, var_3.x, -var_2), firstTrailingBit(~global0.a.zz), func_5(17951u, Struct_1(vec3<u32>(4294967295u, var_6.a.x, global0.a.x), global3.b, vec4<i32>(65060i, global0.c.x, 12922i, var_1.x)), -var_2, -7376i == var_0), func_5(var_4.a.x, var_4, var_6.c, var_3.x)), (~1u >> (func_5(5584u, Struct_1(vec3<u32>(1u, global0.a.x, global0.a.x), global0.b, vec4<i32>(30659i, u_input.c, 2147483647i, -1i)), vec4<i32>(1i, var_0, -35846i, var_0), false).a.x % 32u)) << ((var_6.a.x << (~18715u % 32u)) % 32u)));
}

