struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_4,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25>;

var<private> global1: array<Struct_2, 24>;

var<private> global2: vec3<bool>;

var<private> global3: vec3<i32> = vec3<i32>(-23855i, -1i, -1i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = vec3<i32>(62566i, reverseBits(-_wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(u_input.e.x, -2147483647i))), countOneBits(-1i));
    global0 = array<vec4<u32>, 25>();
    let var_1 = global1[_wgslsmith_index_u32(arg_0, 24u)];
    global3 = -vec3<i32>(var_0.x & _wgslsmith_sub_i32(_wgslsmith_add_i32(51303i, -1i), ~(-1i)), 7179i, 0i);
    let var_2 = -u_input.e.x;
    return all(select(vec3<bool>(false, -1i == u_input.e.x, false), select(!vec3<bool>(false, false, global2.x), !vec3<bool>(global2.x, global2.x, true), select(false, global2.x, global2.x)), !select(vec3<bool>(false, true, true), vec3<bool>(global2.x, false, true), false))) | false;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec4<bool>) -> i32 {
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1142f * -941f), 1f))))));
    global2 = !arg_2.wzw;
    var var_2 = i32(-1i) * -arg_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(758f, _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1))), -2173f, var_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-975f, var_1, var_1, var_1), vec4<f32>(var_1, -269f, var_1, 1223f))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(512f, -1002f, var_1, var_1)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-835f, _wgslsmith_f_op_f32(round(-871f)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(582f, 250f, -1000f, var_1)) + _wgslsmith_div_vec4_f32(vec4<f32>(607f, 1641f, 249f, -369f), vec4<f32>(959f, 1736f, -388f, -832f))))), !vec4<bool>(arg_0, any(vec4<bool>(false, false, arg_2.x, false)), true, arg_2.x)));
    return abs(global3.x);
}

fn func_1() -> u32 {
    global3 = vec3<i32>(func_3(func_2(_wgslsmith_div_u32(74323u, ~5428u)), global3.x, !select(select(vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(false, true, global2.x, true), vec4<bool>(global2.x, global2.x, true, true)), !vec4<bool>(global2.x, false, global2.x, global2.x), true)), -38643i, -58i);
    var var_0 = !vec2<bool>(u_input.d.x == abs(~u_input.a), !global2.x);
    var var_1 = (false | func_2(1u)) && true;
    let var_2 = ~(~(global3.x ^ global3.x));
    var var_3 = 17998i;
    return ~abs(_wgslsmith_div_u32(_wgslsmith_clamp_u32(40437u, ~25652u, 47122u), _wgslsmith_dot_vec2_u32(~vec2<u32>(74724u, 14280u), ~vec2<u32>(36398u, 65538u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1777f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(201f))))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1113f + 124f), -364f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(171f, -1000f))), vec2<f32>(823f, -193f))))));
    global2 = !vec3<bool>(true, !(true & any(global2.xz)), true);
    global3 = -vec3<i32>(-global3.x, u_input.c, u_input.e.x);
    var var_1 = abs(vec3<i32>(u_input.a, -7743i, global3.x));
    let var_2 = ~global0[_wgslsmith_index_u32(~0u, 25u)];
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -679f;
    let var_1 = Struct_3(func_4(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_1(), ~48584u), 25u)], Struct_3(false)));
    var var_2 = !(!select(vec3<bool>(!global2.x, u_input.e.x == -2147483647i, var_1.a), vec3<bool>(var_1.a, true, true), global2.x));
    global0 = array<vec4<u32>, 25>();
    var_2 = !select(select(select(vec3<bool>(var_1.a, true, var_1.a), !vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, false, global2.x)), !vec3<bool>(var_2.x, global2.x, global2.x), var_1.a), select(select(!vec3<bool>(false, true, var_2.x), select(vec3<bool>(var_2.x, true, true), vec3<bool>(false, global2.x, false), vec3<bool>(true, false, var_1.a)), all(vec3<bool>(global2.x, true, var_2.x))), select(vec3<bool>(true, global2.x, var_1.a), !vec3<bool>(false, var_2.x, var_2.x), var_2.x | var_1.a), true), select(!vec3<bool>(true, global2.x, false), vec3<bool>(!var_2.x, all(global2.yz), !global2.x), true));
    let var_3 = Struct_5(Struct_1(vec3<i32>(u_input.c, _wgslsmith_add_i32(global3.x, 25146i), 40703i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1267f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-919f + -134f) + _wgslsmith_f_op_f32(457f * 564f)))), vec2<u32>(_wgslsmith_div_u32(0u, abs(31166u)), _wgslsmith_div_u32(abs(0u), 29012u))), Struct_1(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(global3.x, global3.x), ~u_input.d.x), _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.d.x, -52287i, -2147483647i), u_input.e.zxy), vec3<i32>(-1i, 1i, u_input.b.x)), 31246i), 1f, vec2<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 16828u, 0u)), vec3<u32>(4294967295u, 27947u, 1u)), ~select(1u, 50559u, global2.x))), Struct_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, ~0u), ~vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4832u, 4294967295u), vec3<u32>(36722u, 1u, 56433u)), ~66025u)), Struct_2(Struct_1(u_input.e.yzw, _wgslsmith_f_op_f32(min(-2464f, -1123f)), ~vec2<u32>(0u, 42014u))), -countOneBits(global3.x & global3.x)), Struct_1(u_input.e.xzz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f))), vec2<u32>(1u, 1u)));
    global2 = !select(vec3<bool>(true, true, true), vec3<bool>(var_1.a, (-2147483647i << (var_3.b.c.x % 32u)) == var_3.d.a.x, true), !vec3<bool>(var_1.a, 12565u == var_3.a.c.x, true));
    var var_4 = vec3<bool>(true, all(vec3<bool>(false, !var_2.x, false)), func_4(max(global0[_wgslsmith_index_u32(4294967295u, 25u)], ~firstTrailingBit(global0[_wgslsmith_index_u32(var_3.b.c.x, 25u)])), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(1u | (~_wgslsmith_mod_u32(var_3.a.c.x, 0u) & ~(~1u)), _wgslsmith_mult_vec2_i32(firstLeadingBit(~(-vec2<i32>(1i, 6365i))), ~u_input.d), func_3(var_2.x, -(~(-88367i)), vec4<bool>(true, var_4.x, true, 0u <= var_3.a.c.x)) << ((_wgslsmith_clamp_u32(var_3.c.a.x, ~var_3.c.a.x, 0u) << ((90488u << ((var_3.c.b.a.c.x ^ 4294967295u) % 32u)) % 32u)) % 32u), ~(~(~global0[_wgslsmith_index_u32(var_3.a.c.x, 25u)])));
}

