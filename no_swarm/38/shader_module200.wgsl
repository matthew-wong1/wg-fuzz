struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: Struct_5 = Struct_5(1i, true, Struct_2(-290f, true, vec4<bool>(true, true, false, true), -622f), vec2<i32>(-26426i, i32(-2147483648)), Struct_1(true));

var<private> global2: array<bool, 30> = array<bool, 30>(false, true, false, false, false, true, true, true, true, false, true, false, true, false, false, true, true, false, true, false, false, false, false, false, false, true, true, true, false, false);

var<private> global3: u32 = 27624u;

var<private> global4: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-47778i, 3222i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 4421i), vec2<i32>(-38192i, -35340i), vec2<i32>(3164i, 6703i), vec2<i32>(-1i, 0i), vec2<i32>(1i, -29063i), vec2<i32>(2441i, i32(-2147483648)), vec2<i32>(-55631i, -57557i), vec2<i32>(16204i, -1i), vec2<i32>(-5225i, 34812i), vec2<i32>(1i, 53211i), vec2<i32>(-1i, -9572i), vec2<i32>(14127i, -1i), vec2<i32>(-63200i, 626i), vec2<i32>(0i, 0i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> bool {
    var var_0 = global0.x;
    let var_1 = Struct_1(false);
    let var_2 = max(~min(~(~74632u), 1u), _wgslsmith_mod_u32(~firstLeadingBit(4294967295u), 84079u));
    return all(!vec3<bool>(~4294967295u <= (var_2 >> (var_2 % 32u)), var_1.a, (global1.d.x >> (var_2 % 32u)) != 29867i));
}

fn func_2(arg_0: u32) -> Struct_4 {
    var var_0 = Struct_3(any(vec3<bool>(global2[_wgslsmith_index_u32(arg_0 << (0u % 32u), 30u)], func_3(-2262f, vec3<f32>(252f, global1.c.d, global1.c.a)), true)) != global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, min(arg_0, ~arg_0)), 30u)], Struct_1(all(global1.c.c)));
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.c.a + global1.c.a), _wgslsmith_f_op_f32(global1.c.d * global1.c.a))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(648f))), var_0.b), Struct_1(global2[_wgslsmith_index_u32(~71288u, 30u)] | true), -_wgslsmith_sub_i32(-(global1.a << (arg_0 % 32u)), 9828i), countOneBits(abs(reverseBits(max(global1.d.x, u_input.a.x)))));
    var var_2 = 1272f;
    global1 = Struct_5(_wgslsmith_div_i32(_wgslsmith_mult_i32(-6674i, abs(u_input.a.x | u_input.a.x)), 15635i & ~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), !((all(global1.c.c.wyx) & true) | true), global1.c, ~select(~(vec2<i32>(40791i, var_1.c) | global1.d), _wgslsmith_div_vec2_i32(global1.d >> (vec2<u32>(arg_0, 9528u) % vec2<u32>(32u)), select(vec2<i32>(u_input.a.x, -17395i), u_input.a.yy, vec2<bool>(var_0.b.a, true))), !(var_0.b.a & false)), Struct_1(var_1.a.b.a | true));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2484f)) + _wgslsmith_div_f32(global1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.c.a, global1.c.a)))))));
    return Struct_4(Struct_3(false, global1.e), global1.e, u_input.a.x, -52943i);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: Struct_1) -> Struct_3 {
    let var_0 = global1.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.c.d, _wgslsmith_f_op_f32(max(global1.c.d, 1000f))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1495f, 525f, _wgslsmith_f_op_f32(sign(687f)));
    global0 = global1.c.c.ww;
    var var_3 = 1i;
    return func_2(~4294967295u).a;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> vec3<u32> {
    let var_0 = func_4(global1.d, u_input.a, func_2(6302u), Struct_1(true));
    var var_1 = -762f;
    global3 = select(1u, 53249u, true);
    let var_2 = ~_wgslsmith_add_i32(global1.a, _wgslsmith_div_i32(global1.d.x, global1.a) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, -43250i) & vec3<i32>(21310i, u_input.a.x, 25902i), -u_input.a));
    let var_3 = select(arg_0.c.zyx, vec3<bool>(global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(abs(1u) >> (1u % 32u), 30u)], all(arg_0.c)), false);
    return _wgslsmith_add_vec3_u32(firstLeadingBit(~(~vec3<u32>(0u, 17471u, 76718u)) & vec3<u32>(0u, select(0u, 48122u, global0.x), 1u)), ~vec3<u32>(42329u, firstLeadingBit(~4294967295u), 4294967295u));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_5 {
    let var_0 = 2147483647i;
    let var_1 = global1.a;
    global0 = vec2<bool>(global1.c.a != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.d * -670f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global1.c.d))), global2[_wgslsmith_index_u32(abs(~16013u), 30u)]);
    global1 = Struct_5(arg_1.x, true, Struct_2(_wgslsmith_f_op_f32(step(global1.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -243f)))), !(~arg_0.x >= max(arg_0.x, 4294967295u)), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 30u)], false, 45419i < _wgslsmith_clamp_i32(28896i, arg_1.x, 14511i), true), _wgslsmith_f_op_f32(f32(-1f) * -266f)), abs(-(~_wgslsmith_sub_vec2_i32(u_input.a.zx, u_input.a.xx))), Struct_1(false));
    var var_2 = -reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(~(-23855i), arg_1.x, global1.a), _wgslsmith_mult_vec3_i32(u_input.a, u_input.a)));
    return Struct_5(var_0, all(vec3<bool>(global1.c.a <= -834f, 4294967295u != _wgslsmith_add_u32(arg_0.x, 32034u), true)), global1.c, var_2.xy, Struct_1(1i < (_wgslsmith_mod_i32(var_2.x, 10650i) ^ 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1204f * -383f) - global1.c.d) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.a + global1.c.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-504f)))), global1.c.d < global1.c.a)));
    var var_1 = func_5((vec3<u32>(1u, 1u, 1u) & func_1(Struct_2(-2315f, global2[_wgslsmith_index_u32(4294967295u, 30u)], vec4<bool>(false, global1.c.b, true, global2[_wgslsmith_index_u32(0u, 30u)]), global1.c.a), _wgslsmith_div_vec2_i32(u_input.a.xy, u_input.a.zz))) & reverseBits(vec3<u32>(1u, 1u, 1u)), vec4<i32>(abs((u_input.a.x | 33825i) >> (~7314u % 32u)), firstLeadingBit(func_2(1u).c), -24199i ^ func_2(1u).d, ~0i));
    let var_2 = func_5(vec3<u32>(31395u, 61504u, reverseBits(1u)), ~(-vec4<i32>(-u_input.a.x, countOneBits(global1.d.x), global1.a, u_input.a.x)));
    let var_3 = !((false & ((324f <= var_1.c.a) == func_2(11708u).a.a)) && global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(max(39506u, 5165u), 73488u, max(71231u, 37405u)), 30u)]);
    let var_4 = Struct_3(var_3, func_2(21840u).a.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1780f, var_2.c.a)), func_5(vec3<u32>(0u, 31347u, 1u), vec4<i32>(-60351i, var_1.d.x, var_1.d.x, 1i)).c.a)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a * 692f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-250f)), var_0))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(677f, -568f, var_0, 273f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.a, 1111f, -1317f, 1153f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.a, var_2.c.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.d, -112f) + vec2<f32>(-2758f, -382f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1830f, global1.c.d) + vec2<f32>(var_2.c.d, 1185f)))))));
}

