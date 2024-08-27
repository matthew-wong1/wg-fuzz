struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: vec3<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: Struct_4,
    d: vec4<i32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec3<i32>(-40060i, 2147483647i, 1i), Struct_1(160f), vec4<bool>(false, true, true, false), vec2<i32>(1i, i32(-2147483648)), Struct_1(892f)), Struct_2(vec3<i32>(-20564i, 2147483647i, -1i), Struct_1(647f), vec4<bool>(false, true, true, false), vec2<i32>(i32(-2147483648), 1i), Struct_1(2141f)), Struct_2(vec3<i32>(-85107i, i32(-2147483648), 31401i), Struct_1(1246f), vec4<bool>(false, true, false, true), vec2<i32>(2147483647i, -11811i), Struct_1(1547f)), Struct_2(vec3<i32>(51026i, -3455i, -15939i), Struct_1(914f), vec4<bool>(false, true, false, true), vec2<i32>(-1i, 1i), Struct_1(-281f)), Struct_2(vec3<i32>(-9267i, 72691i, 0i), Struct_1(-435f), vec4<bool>(true, false, true, true), vec2<i32>(2058i, 12987i), Struct_1(-907f)), Struct_2(vec3<i32>(1i, 43402i, i32(-2147483648)), Struct_1(-1578f), vec4<bool>(false, true, false, true), vec2<i32>(73590i, -36244i), Struct_1(695f)));

var<private> global1: Struct_3 = Struct_3(2147483647i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> u32 {
    var var_0 = -947f;
    var var_1 = 1650u;
    let var_2 = global0[_wgslsmith_index_u32((firstLeadingBit(firstLeadingBit(~0u)) & (~0u << ((_wgslsmith_clamp_u32(u_input.e.x, u_input.c.x, 1u) ^ 1u) % 32u))) | u_input.c.x, 6u)];
    var_0 = -613f;
    let var_3 = var_2.c.x;
    return u_input.c.x;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> Struct_3 {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(global1.a, u_input.d.x), reverseBits(firstLeadingBit(vec2<i32>(2147483647i, ~0i))));
    var var_1 = Struct_3(2605i);
    global1 = Struct_3(-7705i);
    var var_2 = 52261u;
    var var_3 = 309f;
    return Struct_3(arg_0.a.x);
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<i32>) -> i32 {
    global0 = array<Struct_2, 6>();
    var var_0 = Struct_4(!vec3<bool>(true, true, _wgslsmith_div_i32(1i, arg_2.x) >= ~33711i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(348f, 852f, false)))), -1000f)))), !select(vec3<bool>(true, all(vec3<bool>(false, true, true)), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), false), Struct_3(countOneBits(-global1.a)));
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1456f)), _wgslsmith_f_op_f32(select(308f, -1271f, true)))))), var_0.a, func_2(global0[_wgslsmith_index_u32(4294967295u >> (_wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(4294967295u, arg_1)) % 32u), 6u)], 2147483647i, min(var_0.d.a, _wgslsmith_div_i32(-71616i, var_0.d.a)) ^ (countOneBits(global1.a) ^ _wgslsmith_add_i32(-36358i, u_input.a.x))));
    return _wgslsmith_add_i32(u_input.a.x, (u_input.d.x & ~(i32(-1i) * -2147483647i)) & 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_mult_i32(-global1.a, u_input.a.x), global0[_wgslsmith_index_u32(func_1(), 6u)], Struct_4(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), !all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1580f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-693f)) - _wgslsmith_f_op_f32(max(-280f, -787f)))), vec3<bool>(max(2147483647i, global1.a) == 1i, true, true), func_2(global0[_wgslsmith_index_u32(u_input.c.x, 6u)], _wgslsmith_div_i32(-1i, 49329i), 46978i)), _wgslsmith_sub_vec4_i32(-vec4<i32>(459i, 1i, -13324i, _wgslsmith_sub_i32(-1i, global1.a)), ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -6818i, u_input.d.x, u_input.a.x), vec4<i32>(global1.a, -1i, u_input.a.x, global1.a)))), Struct_4(vec3<bool>(false, !all(vec4<bool>(true, false, true, true)), select(true, true, true)), _wgslsmith_f_op_f32(1f * 1f), vec3<bool>(any(vec2<bool>(true, true)), false, false), func_2(global0[_wgslsmith_index_u32(~(~32714u), 6u)], 48078i, ~(~global1.a))));
    var var_1 = var_0.b.b;
    let var_2 = firstLeadingBit(~(-vec4<i32>(u_input.d.x, u_input.d.x, -1i, global1.a)) & -vec4<i32>(-2147483647i, global1.a << (24877u % 32u), global1.a, func_3(vec2<u32>(u_input.b, u_input.b), 7080u, var_0.d)));
    let var_3 = ~(var_0.b.a.x | firstTrailingBit(var_2.x >> (u_input.e.x % 32u)));
    var var_4 = var_0.e;
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.e.a, 1761f) - vec2<f32>(-387f, var_0.e.b)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 899f)), vec2<f32>(-445f, -1426f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(208f, -133f), vec2<f32>(515f, var_4.b))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b, var_4.b) - vec2<f32>(var_1.a, -218f))))));
    var var_6 = _wgslsmith_f_op_f32(exp2(var_0.b.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-497f + 1548f), _wgslsmith_f_op_f32(abs(-715f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_4.b, 451f), vec2<f32>(2049f, -953f))))), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(~vec4<u32>(u_input.b, 80408u, u_input.e.x, u_input.b)), vec4<u32>(4294967295u, 1u, ~u_input.e.x, u_input.c.x)), ~abs(~vec4<u32>(u_input.b, 1u, 42508u, 10934u))), var_4.b, _wgslsmith_clamp_vec2_u32(~(~(~u_input.e)), vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, 0u), ~countOneBits(u_input.e.x)), _wgslsmith_mult_vec2_u32(u_input.c & select(vec2<u32>(u_input.e.x, u_input.c.x), u_input.c, var_4.a.zy), ~u_input.c)), -1121f);
}

