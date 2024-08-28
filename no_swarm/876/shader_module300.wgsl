struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(35409u, 1u, 40791u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global0 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(global0.x), u_input.d.x), global0.x, 4294967295u), u_input.b.wzw);
    let var_0 = vec2<i32>(53984i << (~u_input.a % 32u), max(~firstTrailingBit(-2147483647i) | (~u_input.c | -33260i), min(u_input.c, 23040i)));
    var var_1 = ~33239i;
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(21860u, global0.x, u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.b.zwz, u_input.b.xzx) | _wgslsmith_mult_u32(global0.x, 31374u)), vec4<u32>(_wgslsmith_mult_u32(1u, u_input.d.x >> (26324u % 32u)), global0.x, ~(~55333u), abs(~1u))) | ~u_input.a;
    let var_3 = all(!vec3<bool>(false, false, select(true, true, false)));
    return abs(global0.x);
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: bool) -> bool {
    var var_0 = firstLeadingBit(_wgslsmith_mult_u32(select(1u, arg_0, true), abs(arg_0) >> (abs(11767u) % 32u)));
    let var_1 = 5268i;
    var_0 = func_3();
    let var_2 = global0.yx;
    let var_3 = 755f;
    return _wgslsmith_mult_i32(-1817i, arg_1.x) >= _wgslsmith_dot_vec3_i32(arg_1, arg_1);
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_div_f32(1211f, 696f);
    let var_1 = -2147483647i;
    var var_2 = Struct_1(48663u, 738f, vec4<bool>(true, true, true, !(!select(false, true, true))), vec4<f32>(-2170f, _wgslsmith_f_op_f32(round(-1911f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2060f + -945f))) + -755f), _wgslsmith_f_op_f32(f32(-1f) * -758f)), _wgslsmith_f_op_f32(833f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2155f) + _wgslsmith_f_op_f32(-270f + 128f))))));
    let var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, u_input.c, var_1, u_input.c), vec4<i32>(0i, var_1, 2147483647i, 0i)), abs(abs(vec4<i32>(-51730i, var_1, var_1, 80131i)))), vec4<i32>(u_input.c, 2147483647i, i32(-1i) * -8502i, -u_input.c)) ^ max(max(max(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, u_input.c, var_1), vec4<i32>(-45294i, -1i, 0i, u_input.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c, var_1, -1i), vec4<i32>(-52988i, 0i, 0i, u_input.c))), vec4<i32>(-1i) * -vec4<i32>(48017i, 2147483647i, -8342i, u_input.c)), -select(vec4<i32>(13599i, u_input.c, -43012i, 2147483647i) >> (vec4<u32>(u_input.d.x, 118423u, 0u, 72745u) % vec4<u32>(32u)), vec4<i32>(var_1, u_input.c, 1i, var_1), select(vec4<bool>(false, var_2.c.x, var_2.c.x, var_2.c.x), vec4<bool>(true, true, true, true), var_2.c)));
    var_0 = -965f;
    return vec2<bool>(true, !(false | func_2(31139u, firstTrailingBit(var_3.wyy), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_1(), !vec2<bool>(1i >= u_input.c, firstTrailingBit(global0.x) <= func_3()), !vec2<bool>(true, func_1().x));
    var var_1 = Struct_3(Struct_2(Struct_1(~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1222f))), vec4<bool>(true, var_0.x, var_0.x | true, var_0.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(268f, 351f, 123f, -678f))), 344f)), Struct_2(Struct_1(u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2169f), !select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1244f, 862f, -1034f, 1270f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(360f, 323f, 1322f, 1593f), vec4<f32>(139f, 1796f, 681f, 1392f))), u_input.d.x > global0.x)), _wgslsmith_f_op_f32(-663f + _wgslsmith_f_op_f32(889f * 255f)))));
    let var_2 = select(!(!vec4<bool>(!var_0.x, !var_1.b.a.c.x, func_2(u_input.d.x, vec3<i32>(17540i, -9101i, u_input.c), var_0.x), any(var_1.a.a.c))), vec4<bool>(var_1.a.a.b < _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(floor(-224f)))), var_1.a.a.c.x, var_1.b.a.b != _wgslsmith_div_f32(112f, _wgslsmith_f_op_f32(-var_1.b.a.d.x)), var_0.x == (_wgslsmith_f_op_f32(f32(-1f) * -543f) > var_1.b.a.b)), vec4<bool>(!var_1.b.a.c.x, !all(!vec4<bool>(false, var_0.x, false, var_0.x)), 4294967295u <= _wgslsmith_dot_vec4_u32(u_input.d, firstTrailingBit(vec4<u32>(1u, 25352u, global0.x, global0.x))), any(vec3<bool>(true, all(vec2<bool>(true, true)), var_0.x & var_1.a.a.c.x))));
    global0 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(10542u, _wgslsmith_mod_u32(var_1.a.a.a, ~4294967295u)), firstLeadingBit(~global0.x) >> (global0.x % 32u)), ~global0.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(max(select(30187u, 1u, true), ~var_1.a.a.a), 4294967295u), 38165u));
    let var_3 = Struct_3(Struct_2(var_1.b.a), Struct_2(Struct_1(abs(var_1.b.a.a ^ global0.x), _wgslsmith_f_op_f32(var_1.b.a.d.x * -449f), vec4<bool>(var_1.a.a.c.x, false, func_1().x, var_0.x && var_1.b.a.c.x), _wgslsmith_f_op_vec4_f32(-var_1.a.a.d), var_1.b.a.d.x)));
    global0 = countOneBits(~vec3<u32>(abs(var_3.b.a.a ^ var_3.b.a.a), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(60051u, 27165u, global0.x, 0u), u_input.d), vec4<u32>(var_1.a.a.a, 1u, 6569u, global0.x)), ~(4294967295u << (var_3.a.a.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.a.b, select(vec3<u32>(~(~var_1.b.a.a), max(_wgslsmith_add_u32(var_1.a.a.a, 6565u), ~23534u), var_3.a.a.a), vec3<u32>((1u << (u_input.b.x % 32u)) << (_wgslsmith_mod_u32(u_input.a, 31979u) % 32u), 1u, ~(var_1.a.a.a | 1000u)), true));
}

