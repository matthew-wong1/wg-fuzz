struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(i32(-2147483648), -1i, 68910i, -34076i), vec4<i32>(1i, 1i, 2147483647i, 62220i), vec4<i32>(0i, 2147483647i, i32(-2147483648), -5799i), vec4<i32>(1327i, -1i, i32(-2147483648), 2147483647i), vec4<i32>(i32(-2147483648), -21707i, -24866i, 2147483647i), vec4<i32>(2147483647i, 7737i, -66908i, i32(-2147483648)), vec4<i32>(30479i, -3021i, -1i, -20010i), vec4<i32>(-19268i, 11330i, -5842i, 0i), vec4<i32>(2147483647i, 21280i, 2147483647i, -3565i), vec4<i32>(-21008i, -22668i, 2147483647i, 1i), vec4<i32>(2147483647i, 0i, 2147483647i, -8951i), vec4<i32>(0i, 10697i, 71876i, 0i), vec4<i32>(-48068i, -33340i, 0i, 1i), vec4<i32>(-26194i, -1i, 1i, 5689i), vec4<i32>(27634i, 0i, 2545i, 0i));

var<private> global1: vec3<f32>;

var<private> global2: array<vec4<i32>, 11>;

var<private> global3: Struct_4 = Struct_4(Struct_3(Struct_1(-1182f, 4294967295u, 615f), vec3<i32>(-12679i, 41666i, -1i), vec3<bool>(false, false, true)), vec4<i32>(13786i, 11153i, i32(-2147483648), 0i), false);

var<private> global4: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    global0 = array<vec4<i32>, 15>();
    let var_0 = Struct_2(global3.a.a, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -578f), global3.a.a.b ^ 54075u, _wgslsmith_f_op_f32(1008f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1844f, -622f)))), vec3<u32>(4294967295u, reverseBits(u_input.a.x), ~12260u) | min(select(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), select(vec3<bool>(true, global4[_wgslsmith_index_u32(2965u, 1u)], false), vec3<bool>(false, true, false), global4[_wgslsmith_index_u32(global3.a.a.b, 1u)])), vec3<u32>(9577u, ~36915u, ~u_input.a.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.a.a.c, 150f, -1434f, 145f))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2356f, global1.x, 932f, -1621f)))) * vec4<f32>(_wgslsmith_f_op_f32(-global3.a.a.c), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(max(global3.a.a.c, global3.a.a.c)), _wgslsmith_f_op_f32(-2014f * global1.x))), vec4<f32>(_wgslsmith_f_op_f32(round(-156f)), _wgslsmith_f_op_f32(-global3.a.a.a), _wgslsmith_div_f32(global3.a.a.a, -591f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x)))))), countOneBits(global3.a.b.x));
    global4 = array<bool, 1>();
    var var_1 = global3.a;
    global0 = array<vec4<i32>, 15>();
    return global3.a.a.c;
}

fn func_2(arg_0: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2340f, 297f) + 256f), ~4294967295u, global1.x), global3.a.a, vec3<u32>(global3.a.a.b | countOneBits(firstLeadingBit(0u)), ~u_input.a.x, abs(u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~arg_0.yy)) + _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.x, global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global3.a.a.a))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, arg_0.x), arg_0.yy & arg_0.zx), min(abs(vec2<i32>(arg_0.x, arg_0.x)), _wgslsmith_add_vec2_i32(global3.b.zy, arg_0.yz))) | ~arg_0.x);
    let var_1 = -1i;
    global3 = Struct_4(global3.a, global2[_wgslsmith_index_u32(min(var_0.c.x, 4294967295u | min(~u_input.a.x, _wgslsmith_div_u32(global3.a.a.b, var_0.b.b))), 11u)], true);
    var_0 = Struct_2(Struct_1(-246f, u_input.a.x ^ u_input.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-318f, _wgslsmith_f_op_f32(161f * global3.a.a.a)))))), var_0.a, vec3<u32>(80186u >> (global3.a.a.b % 32u), global3.a.a.b, _wgslsmith_dot_vec4_u32(max(_wgslsmith_add_vec4_u32(u_input.a, u_input.a), vec4<u32>(u_input.a.x, var_0.b.b, var_0.b.b, u_input.a.x)), vec4<u32>(0u, global3.a.a.b, 38609u, abs(u_input.a.x)))), _wgslsmith_f_op_vec4_f32(var_0.d + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.d)) - vec4<f32>(_wgslsmith_f_op_f32(step(global1.x, global1.x)), -305f, -1000f, var_0.d.x))), -1034i);
    var var_2 = global3.a;
    return Struct_4(global3.a, -_wgslsmith_add_vec4_i32(~min(global2[_wgslsmith_index_u32(45896u, 11u)], vec4<i32>(0i, -1i, global3.b.x, var_1)), _wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(global3.a.a.b >> (var_0.c.x % 32u), 15u)], max(vec4<i32>(-2147483647i, arg_0.x, 44261i, arg_0.x), vec4<i32>(0i, -5392i, 16870i, -1i)))), !(_wgslsmith_mod_u32(~global3.a.a.b, var_2.a.b) == _wgslsmith_add_u32(~var_0.c.x, global3.a.a.b)));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    let var_0 = func_2(firstLeadingBit(abs(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, global3.b.x, arg_1.x), vec3<i32>(global3.a.b.x, 1i, -21907i), arg_1.zwx), arg_2.a.b)))).a;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.a)));
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~reverseBits(vec2<u32>(10821u, ~31598u)));
    let var_3 = Struct_2(Struct_1(global3.a.a.c, _wgslsmith_add_u32(firstTrailingBit(arg_3.a.a.b & arg_2.a.a.b), 0u), var_1), arg_3.a.a, ~u_input.a.yxz, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.a.c), var_1, _wgslsmith_f_op_f32(step(1506f, _wgslsmith_f_op_f32(f32(-1f) * -1183f))), arg_3.a.a.c) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1073f, global1.x, 2174f, 1149f) + vec4<f32>(265f, 641f, arg_2.a.a.a, arg_2.a.a.c)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 377f, var_0.a.c, 1231f) + vec4<f32>(-816f, -1258f, arg_3.a.a.a, 247f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-859f, global1.x, -1645f, 294f)))))), firstTrailingBit(_wgslsmith_add_i32(-arg_3.b.x, ~(-36899i))));
    var var_4 = global3.a.a;
    return func_2(vec3<i32>(arg_3.b.x, ~firstLeadingBit(25855i) & var_3.e, func_2(vec3<i32>(global3.b.x, ~arg_3.b.x, _wgslsmith_sub_i32(arg_2.b.x, arg_2.b.x))).a.b.x)).a.a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> Struct_4 {
    var var_0 = 1u;
    global3 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global1.zy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global1.yy)), vec2<f32>(375f, 456f))))));
    var var_2 = vec3<bool>(true, true, !(arg_1.c || (arg_0.b > u_input.a.x)));
    global2 = array<vec4<i32>, 11>();
    return Struct_4(Struct_3(func_4(1u, vec4<i32>(1i, reverseBits(-14306i), ~(-20291i), abs(2147483647i)), arg_1, arg_1), -global3.a.b ^ global3.a.b, arg_1.a.c), vec4<i32>(global3.a.b.x, global3.a.b.x, global3.a.b.x, -1i), _wgslsmith_f_op_f32(floor(global3.a.a.a)) > -452f);
}

fn func_6(arg_0: Struct_4) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = vec4<f32>(256f, -785f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.c + -1499f) + _wgslsmith_div_f32(165f, _wgslsmith_f_op_f32(-global3.a.a.c)))), global1.x);
    global3 = func_5(Struct_1(_wgslsmith_f_op_f32(-global3.a.a.c), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), var_0);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(1587f)), _wgslsmith_f_op_f32(abs(805f))) + var_1.zz));
    let var_3 = global2[_wgslsmith_index_u32(~global3.a.a.b, 11u)];
    return arg_0.a;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<f32>) -> vec3<f32> {
    global1 = arg_2.zxw;
    let var_0 = arg_2;
    var var_1 = func_6(func_5(func_4(~(~14921u), -global2[_wgslsmith_index_u32(global3.a.a.b, 11u)], func_2(abs(vec3<i32>(global3.a.b.x, global3.a.b.x, 1i))), func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(global3.b.x, -37163i, -6510i), global3.b.yzx))), func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.a.b.x, global3.b.x, 2147483647i), global3.a.b, global3.a.b))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.a.a.c), func_5(Struct_1(arg_2.x, arg_0, -523f), func_5(Struct_1(-691f, global3.a.a.b, 1197f), Struct_4(global3.a, vec4<i32>(global3.a.b.x, -2147483647i, var_1.b.x, global3.a.b.x), true))).a.a.c, _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.a, global3.a.a.a, global3.a.a.a), vec3<f32>(var_0.x, 1010f, 1380f), vec3<bool>(global3.c, var_1.c.x, false))) + vec3<f32>(var_0.x, 1000f, -860f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1625f;
    global0 = array<vec4<i32>, 15>();
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))), global1.x, _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(global3.a.a.b, true, vec4<f32>(-700f, 1894f, global1.x, -1000f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, -289f, -1000f), vec3<f32>(233f, global1.x, -490f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-global3.a.a.a), global3.a.a.c, _wgslsmith_f_op_f32(global3.a.a.c - global3.a.a.a))))), global3.a.c));
    global0 = array<vec4<i32>, 15>();
    global2 = array<vec4<i32>, 11>();
    var var_1 = Struct_4(Struct_3(func_6(Struct_4(Struct_3(global3.a.a, vec3<i32>(-2147483647i, global3.a.b.x, 7001i), vec3<bool>(global3.a.c.x, true, false)), vec4<i32>(global3.b.x, global3.a.b.x, 2147483647i, -1i), global4[_wgslsmith_index_u32(~u_input.a.x, 1u)])).a, vec3<i32>(~abs(-20350i), ~global3.b.x, global3.b.x), vec3<bool>((false || global4[_wgslsmith_index_u32(u_input.a.x, 1u)]) & any(vec2<bool>(global4[_wgslsmith_index_u32(33464u, 1u)], global3.c)), false, !func_6(Struct_4(Struct_3(global3.a.a, global3.b.zyx, vec3<bool>(false, true, false)), global3.b, global3.c)).c.x)), -vec4<i32>(_wgslsmith_div_i32(global3.b.x, 38108i), global3.b.x, 0i, firstLeadingBit(global3.b.x)) & func_5(func_2(abs(global3.b.wyx)).a.a, func_2(vec3<i32>(0i, global3.a.b.x, -15791i))).b, any(vec3<bool>(true, true, true)) || global4[_wgslsmith_index_u32(firstLeadingBit(~global3.a.a.b), 1u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(reverseBits(u_input.a.xw) | ~vec2<u32>(u_input.a.x, global3.a.a.b), vec2<u32>(global3.a.a.b, var_1.a.a.b)), u_input.a.x, ~func_5(func_5(global3.a.a, Struct_4(Struct_3(Struct_1(global1.x, 41649u, var_1.a.a.c), var_1.a.b, vec3<bool>(global3.a.c.x, var_1.c, false)), vec4<i32>(-72395i, -26075i, -20175i, global3.b.x), false)).a.a, func_2(~global3.a.b)).a.b.x);
}

