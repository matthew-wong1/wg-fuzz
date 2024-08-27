struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 26> = array<f32, 26>(-117f, -108f, -215f, -1806f, 254f, -446f, 658f, 694f, 804f, 1836f, 1980f, -3405f, -1690f, 147f, -1139f, -355f, -122f, -830f, 847f, 1750f, -629f, 773f, 169f, -1216f, 231f, 106f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>) -> bool {
    var var_0 = global0.c;
    var var_1 = !(!(!vec3<bool>(true, global0.c.b, false)));
    let var_2 = Struct_3(556i <= -global0.b, Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(367f, arg_0.x, arg_0.x, 350f))))), _wgslsmith_mod_i32(reverseBits(firstTrailingBit(global0.b)), firstTrailingBit(reverseBits(-1i))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(829f, -2055f), vec2<f32>(arg_0.x, 189f)))), true)), vec4<i32>(-(74942i ^ global0.b), ~global0.b, global0.b, countOneBits(3864i)) ^ vec4<i32>(-2713i ^ ~global0.b, _wgslsmith_div_i32(_wgslsmith_mod_i32(global0.b, global0.b), -global0.b), _wgslsmith_div_i32(-1i, _wgslsmith_add_i32(-8459i, 6897i)), min(global0.b, ~0i)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 26u)], arg_0.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -274f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.x, -1719f)))))), !all(vec4<bool>(false, var_1.x, var_0.b, var_1.x))));
    var var_3 = _wgslsmith_sub_u32(0u, u_input.a);
    var_3 = ~u_input.a;
    return false;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> u32 {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 26u)], -358f, 1412f, global0.c.a.x) - _wgslsmith_f_op_vec4_f32(global0.a + global0.a))) + global0.a), 37167i, global0.c);
    let var_0 = ~(~vec2<u32>(arg_0, _wgslsmith_add_u32(~u_input.a, 1u ^ u_input.a)));
    let var_1 = Struct_3(global0.c.b, Struct_2(global0.a, global0.b, Struct_1(global0.c.a, func_3(global0.a.xwz, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1149f, 978f, -1005f, -1916f), global0.a, vec4<bool>(global0.c.b, global0.c.b, true, global0.c.b)))))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-1i, firstLeadingBit(-1i)), -33350i, 0i, countOneBits(max(-10843i, 41495i))), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-11973i, global0.b, global0.b, global0.b), vec4<i32>(2147483647i, -1i, global0.b, -41108i))) >> (vec4<u32>(4294967295u << (u_input.a % 32u), 1u, _wgslsmith_mult_u32(arg_1.x, 0u), arg_1.x & arg_0) % vec4<u32>(32u))), global0.c);
    global0 = var_1.b;
    var var_2 = vec4<i32>(var_1.b.b, min(var_1.b.b & -_wgslsmith_add_i32(10269i, global0.b), firstTrailingBit(_wgslsmith_clamp_i32(var_1.b.b, var_1.b.b, -1i))), global0.b, 1i);
    return _wgslsmith_dot_vec2_u32(select(vec2<u32>(abs(~arg_0), 1u), arg_1.yy, all(vec3<bool>(true, var_1.a, global0.c.b)) || false), ~(~firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(4198u, arg_0), vec2<u32>(0u, 28308u)))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(u_input.a, ~(~u_input.a)) << (func_2(~u_input.a, ~abs(vec4<u32>(4517u, u_input.a, 0u, 4294967295u))) % 32u);
    global0 = Struct_2(vec4<f32>(-885f, global0.a.x, _wgslsmith_f_op_f32(-global0.a.x), -1305f), global0.b, global0.c);
    var var_1 = _wgslsmith_mult_u32(49535u, ~_wgslsmith_div_u32(~u_input.a, _wgslsmith_mult_u32(41507u, var_0)) & 1u);
    var_1 = 64825u;
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.a.x, global1[_wgslsmith_index_u32(19214u, 26u)], global1[_wgslsmith_index_u32(15594u, 26u)], -1459f) * vec4<f32>(-628f, global1[_wgslsmith_index_u32(29662u, 26u)], -1841f, 1221f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(30536u, 26u)], global0.c.a.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 26u)]), _wgslsmith_f_op_f32(-2159f + -1000f), global0.c.a.x))), global0.b, Struct_1(vec2<f32>(629f, 631f), global0.c.b));
    return Struct_1(global0.a.zy, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-356f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.a, 26u)])), 267f, _wgslsmith_f_op_f32(-148f - global1[_wgslsmith_index_u32(u_input.a, 26u)]))))), ~_wgslsmith_add_i32(_wgslsmith_sub_i32(-22511i, -global0.b), global0.b), func_1());
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(max(global0.a, global0.a)), global0.b, func_1());
    var var_1 = Struct_4(var_0, var_0.c.b, vec2<f32>(_wgslsmith_f_op_f32(abs(1503f)), global0.a.x));
    let var_2 = ~select(var_0.b, _wgslsmith_div_i32(1i, select(var_0.b, var_1.a.b | var_0.b, false)), reverseBits(var_1.a.b & var_0.b) == -11911i);
    var var_3 = var_0;
    var var_4 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-359f + 2873f))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-631f * _wgslsmith_f_op_f32(-var_0.c.a.x)) - var_1.a.c.a.x), _wgslsmith_f_op_f32(min(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x)))))), ~(-4352i), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.c.a.x, 1382f), vec2<f32>(1000f, -361f))), _wgslsmith_f_op_vec2_f32(select(var_0.a.xw, var_3.c.a, select(vec2<bool>(var_3.c.b, true), vec2<bool>(true, false), vec2<bool>(var_3.c.b, false))))), true));
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_4.c.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1548f, -397f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4.c.a)));
    var var_6 = vec2<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(97807u, 26u)])), _wgslsmith_f_op_f32(round(var_5.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, global1[_wgslsmith_index_u32(4294967295u, 26u)], _wgslsmith_f_op_f32(f32(-1f) * -1800f), u_input.a);
}

