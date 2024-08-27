struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(15208i, vec3<u32>(4294967295u, 31068u, 1u), true, -533f, vec3<f32>(-1114f, 985f, -2267f)), Struct_1(1i, vec3<u32>(1u, 4294967295u, 14126u), false, 827f, vec3<f32>(1917f, 270f, -385f)), Struct_1(0i, vec3<u32>(84928u, 64904u, 4294967295u), false, 1564f, vec3<f32>(285f, -465f, -641f)), Struct_1(30132i, vec3<u32>(0u, 1u, 27899u), false, -1000f, vec3<f32>(940f, 1036f, -272f)), Struct_1(2147483647i, vec3<u32>(4294967295u, 0u, 8801u), false, -1000f, vec3<f32>(-1101f, -968f, -859f)), Struct_1(i32(-2147483648), vec3<u32>(4294967295u, 4294967295u, 55305u), false, 1735f, vec3<f32>(1000f, -1040f, -109f)), Struct_1(-17347i, vec3<u32>(0u, 4294967295u, 0u), false, 1208f, vec3<f32>(-1311f, 730f, -246f)), Struct_1(i32(-2147483648), vec3<u32>(1u, 114822u, 1u), false, -756f, vec3<f32>(-1438f, -420f, 1721f)), Struct_1(-6413i, vec3<u32>(58647u, 0u, 0u), true, -1000f, vec3<f32>(563f, -1104f, -295f)));

var<private> global2: Struct_1 = Struct_1(-44540i, vec3<u32>(1u, 10261u, 60331u), false, 1592f, vec3<f32>(667f, 155f, -297f));

var<private> global3: bool;

var<private> global4: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, -1757f, global2.e.x, arg_2.e.x) + vec4<f32>(-1257f, 505f, 343f, 1047f)))))));
    let var_1 = arg_1.e.x;
    let var_2 = vec2<f32>(750f, _wgslsmith_f_op_f32(-1000f * -591f));
    var var_3 = u_input.e;
    var var_4 = arg_1;
    return ~u_input.b;
}

fn func_3() -> u32 {
    let var_0 = false;
    let var_1 = !select(vec3<bool>(true, !(1u <= global2.b.x), var_0), vec3<bool>(true, true, true), !(!vec3<bool>(global2.c, global2.c, false)));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.e.x - global2.e.x), 1272f)), _wgslsmith_f_op_f32(-global2.e.x), _wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(-global2.d)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1567f, global2.e.x, global2.e.x, 109f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global2.e.x, global2.e.x, 2182f) + vec4<f32>(global2.d, global2.d, global2.e.x, 814f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, _wgslsmith_f_op_f32(-691f + 1539f), -1000f, _wgslsmith_f_op_f32(global2.e.x - global2.e.x))), vec4<bool>(!var_1.x, var_1.x, select(true, global2.c && true, false), var_0 || any(vec3<bool>(var_1.x, true, true)))))));
    var var_3 = global1[_wgslsmith_index_u32(1u, 9u)];
    var var_4 = global1[_wgslsmith_index_u32(u_input.e, 9u)];
    return global2.b.x;
}

fn func_2() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(global2.b.x, 9u)];
    var var_1 = ~u_input.c;
    global1 = array<Struct_1, 9>();
    let var_2 = Struct_1(_wgslsmith_sub_i32(countOneBits((-1i << (global2.b.x % 32u)) << (0u % 32u)), _wgslsmith_div_i32(2147483647i, i32(-1i) * -2147483647i)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(11374u, var_0.b.x, 50230u), select(vec3<u32>(var_0.b.x, 80673u, u_input.c), vec3<u32>(var_0.b.x, 4294967295u, var_0.b.x), global2.c)) | vec3<u32>(min(global2.b.x, global2.b.x), func_3(), 0u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.x, 4471u, u_input.c) ^ vec3<u32>(u_input.c, global2.b.x, 65946u), global2.b >> (var_0.b % vec3<u32>(32u))), !(!(10891i < u_input.d))), true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(571f, global2.e.x) * var_0.d)))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.d, global2.d, var_0.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.e.x, -269f, var_0.e.x) - _wgslsmith_div_vec3_f32(vec3<f32>(global2.d, -1073f, var_0.e.x), var_0.e)))));
    return Struct_1(min(~global2.a, u_input.b.x) << (global2.b.x % 32u), vec3<u32>(reverseBits(~abs(1u)), (0u >> (1u % 32u)) >> (var_2.b.x % 32u), 0u), !(!all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1429f)) * var_2.e.x))), var_2.e);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = reverseBits(_wgslsmith_dot_vec4_u32(reverseBits(select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_3.b.x, 66693u, 50447u), vec4<u32>(global2.b.x, u_input.a, 1u, 1u)), vec4<u32>(44761u, 1u, global2.b.x, 0u), !vec4<bool>(arg_0, arg_1, arg_2.c, true))), _wgslsmith_div_vec4_u32(countOneBits(abs(vec4<u32>(arg_3.b.x, 0u, 0u, 4294967295u))), select(vec4<u32>(arg_2.b.x, 1u, 4294967295u, arg_2.b.x), vec4<u32>(9245u, arg_3.b.x, global2.b.x, global2.b.x), vec4<bool>(arg_2.c, arg_3.c, true, true)) ^ ~vec4<u32>(36312u, arg_2.b.x, 17841u, arg_3.b.x))));
    let var_1 = Struct_1(-2147483647i, _wgslsmith_clamp_vec3_u32(arg_3.b, firstLeadingBit(countOneBits(global2.b)), ~min(select(vec3<u32>(4294967295u, 4294967295u, global2.b.x), vec3<u32>(4294967295u, 34801u, 1u), vec3<bool>(global2.c, arg_0, true)), arg_2.b)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.e.x * -355f) + 1830f), arg_3.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e.x + arg_3.e.x))))));
    var var_2 = vec2<f32>(func_2().d, var_1.d);
    var_2 = _wgslsmith_f_op_vec2_f32(-var_1.e.yz);
    var var_3 = abs(~62575u);
    return vec4<f32>(-1254f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1877f + _wgslsmith_f_op_f32(global2.e.x + 1601f))), global2.e.x)), _wgslsmith_f_op_f32(abs(arg_3.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.d)) * _wgslsmith_f_op_f32(abs(148f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.d + -384f), _wgslsmith_f_op_f32(max(-714f, 157f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 32u)];
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1586f + 1f)), _wgslsmith_f_op_f32(sign(global2.e.x)));
    let var_2 = Struct_1(i32(-1i) * -29777i, var_0.b, var_0.c, -3236f, vec3<f32>(_wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1350f) - -961f), _wgslsmith_f_op_f32(-global2.e.x)));
    var var_3 = global1[_wgslsmith_index_u32(max(_wgslsmith_add_u32(109806u, 4294967295u << (var_2.b.x % 32u)) & var_2.b.x, 4294967295u), 9u)];
    global0 = array<Struct_1, 32>();
    global2 = Struct_1(50637i, ~var_3.b, var_0.c, var_3.e.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.e) + vec3<f32>(_wgslsmith_div_f32(global2.d, _wgslsmith_f_op_f32(step(-1679f, -1000f))), 2253f, _wgslsmith_f_op_f32(max(431f, _wgslsmith_f_op_f32(step(var_0.d, 638f)))))));
    let var_4 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(-57246i | _wgslsmith_add_i32(~var_3.a, -8745i), -(i32(-1i) * -2147483647i), global2.e, vec3<i32>(_wgslsmith_dot_vec2_i32(~func_1(Struct_1(-46270i, vec3<u32>(var_3.b.x, 0u, 1748u), var_0.c, var_2.d, vec3<f32>(var_2.d, global2.e.x, -618f)), Struct_1(-2147483647i, var_2.b, global2.c, 1750f, vec3<f32>(1802f, var_3.d, 1058f)), var_2, vec3<bool>(false, var_2.c, false)), ~_wgslsmith_add_vec2_i32(vec2<i32>(-78661i, -2147483647i), vec2<i32>(var_0.a, u_input.d))), -1i, var_3.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(true, var_0.c, func_2(), func_2())))));
}

