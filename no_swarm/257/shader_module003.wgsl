struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<i32, 30>;

var<private> global2: array<Struct_1, 27>;

var<private> global3: Struct_2 = Struct_2(true, -521f, vec4<u32>(61516u, 1u, 4294967295u, 8486u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<u32>) -> vec4<bool> {
    global3 = Struct_2(all(vec3<bool>(all(vec4<bool>(false, arg_1.a, arg_1.a, true)), true, select(arg_1.a, true, arg_2.a))), _wgslsmith_div_f32(420f, global3.b), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~arg_3, ~arg_3), vec4<u32>(~4294967295u, select(37744u, arg_2.c.x, arg_0.a), ~4294967295u, ~arg_1.c.x)), ~(~(~arg_1.c))));
    global2 = array<Struct_1, 27>();
    global1 = array<i32, 30>();
    var var_0 = arg_1;
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(arg_1.c.x, 30u)], ~vec3<u32>(arg_0.c.x & arg_1.c.x, 14689u, ~0u) ^ arg_3.wyw, ~(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.c.x, 78994u), vec2<u32>(2038u, 1u)), ~var_0.c.ww) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(13060u, arg_3.x, 3035u), arg_0.c.xyy), _wgslsmith_add_u32(u_input.a.x, 50379u)) % 32u)), !select(!select(vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(arg_0.a, arg_1.a, false, false), true), select(!vec4<bool>(global3.a, arg_2.a, arg_1.a, true), select(vec4<bool>(true, arg_1.a, var_0.a, true), vec4<bool>(global3.a, arg_2.a, false, arg_0.a), vec4<bool>(global3.a, true, arg_1.a, false)), select(vec4<bool>(arg_1.a, true, false, false), vec4<bool>(false, false, arg_1.a, arg_2.a), vec4<bool>(false, arg_2.a, true, true))), 1029f != _wgslsmith_f_op_f32(trunc(arg_0.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1120f, -256f, -405f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, 857f, 141f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2156f, arg_1.b, var_0.b))), vec3<f32>(-1486f, arg_0.b, -378f), select(vec3<bool>(global3.a, arg_1.a, global3.a), vec3<bool>(global3.a, false, arg_2.a), vec3<bool>(arg_0.a, false, false)))))));
    return !(!select(var_1.d, select(!var_1.d, !var_1.d, var_1.d), select(var_1.d, vec4<bool>(arg_0.a, arg_1.a, arg_0.a, arg_1.a), !var_1.d)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_1(-1i, ~(~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 17491u), vec3<u32>(global3.c.x, u_input.a.x, arg_1.c.x), vec3<u32>(arg_1.c.x, global3.c.x, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.c.x, arg_1.c.x, 1u), arg_1.c.xyx))), abs(4294967295u), !(!func_3(arg_1, Struct_2(arg_1.a, arg_1.b, vec4<u32>(arg_1.c.x, 1u, u_input.a.x, 52044u)), Struct_2(true, -306f, global3.c), countOneBits(global3.c))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2041f, -1000f, global3.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-297f, arg_0.x, arg_1.b))))))));
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(var_0.c, 30u)], global3.c.yzz, u_input.b, select(var_0.d, vec4<bool>(true, any(vec2<bool>(var_0.d.x, false)), !(var_0.b.x == global3.c.x), -global1[_wgslsmith_index_u32(0u, 30u)] > var_0.a), global3.a), var_0.e);
    var var_2 = ~(-(~(-firstTrailingBit(vec3<i32>(var_0.a, var_1.a, var_0.a)))));
    let var_3 = !(!var_0.d.xz);
    return ~(~global3.c.x) & 35048u;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(27712i, vec3<u32>(1u >> ((_wgslsmith_dot_vec4_u32(global3.c, global3.c) & global3.c.x) % 32u), arg_0.c.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.c.x) | vec2<u32>(19845u, 1u), vec2<u32>(90713u, global3.c.x)), ~max(0u, arg_0.c.x), abs(~31824u))), 0u, func_3(Struct_2(arg_1.x, -350f, ~_wgslsmith_clamp_vec4_u32(global3.c, vec4<u32>(25785u, u_input.b, 3298u, arg_0.c.x), vec4<u32>(23034u, global3.c.x, global3.c.x, 0u))), Struct_2(!any(arg_1.wy), global3.b, _wgslsmith_mod_vec4_u32(~vec4<u32>(global3.c.x, 1u, arg_0.c.x, 27424u), global3.c)), Struct_2(arg_0.a, _wgslsmith_f_op_f32(107f + _wgslsmith_f_op_f32(select(global3.b, global3.b, true))), arg_0.c), _wgslsmith_mod_vec4_u32(~(~arg_0.c), vec4<u32>(1u, _wgslsmith_div_u32(0u, global3.c.x), ~u_input.b, global3.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b - 863f), _wgslsmith_f_op_f32(-global3.b), -1577f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.b, -546f, global3.b))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.b, -1000f) * vec3<f32>(-656f, -1000f, -1198f))), global3.a))));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.e.x * arg_0.b))), -1000f, var_0.d.x));
    var var_2 = 66699i;
    return Struct_1(~(-2147483647i), var_0.b, ~reverseBits(_wgslsmith_add_u32(3654u | u_input.a.x, 87375u)), select(var_0.d, !(!vec4<bool>(global3.a, true, arg_0.a, true)), false), _wgslsmith_f_op_vec3_f32(step(var_0.e, var_0.e)));
}

fn func_1(arg_0: Struct_2) -> u32 {
    global1 = array<i32, 30>();
    global2 = array<Struct_1, 27>();
    global2 = array<Struct_1, 27>();
    var var_0 = func_4(Struct_2(true, -734f, vec4<u32>(abs(1u), ~1u, arg_0.c.x, select(func_2(vec2<f32>(-738f, -1000f), arg_0), u_input.b, arg_0.a))), vec4<bool>(true && (select(arg_0.a, false, global3.a) | (global1[_wgslsmith_index_u32(4294967295u, 30u)] >= -1i)), true, any(!(!vec2<bool>(arg_0.a, false))), false), ~(vec4<i32>(_wgslsmith_add_i32(11749i, 34620i), -47379i ^ global1[_wgslsmith_index_u32(0u, 30u)], -2147483647i, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(0u, 30u)], 0i, global1[_wgslsmith_index_u32(arg_0.c.x, 30u)])) & (abs(vec4<i32>(40169i, global1[_wgslsmith_index_u32(u_input.b, 30u)], 24770i, global1[_wgslsmith_index_u32(4294967295u, 30u)])) >> (~vec4<u32>(arg_0.c.x, 57554u, 10860u, 29154u) % vec4<u32>(32u)))));
    global1 = array<i32, 30>();
    return 0u;
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    let var_0 = vec4<f32>(global3.b, global3.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.b + _wgslsmith_f_op_f32(trunc(global3.b))), -581f) * _wgslsmith_f_op_f32(-1f)), global3.b);
    global1 = array<i32, 30>();
    global1 = array<i32, 30>();
    global1 = array<i32, 30>();
    var var_1 = arg_3.c;
    return 2043u;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = global3.c.x;
    var var_1 = select(!select(arg_0.d, arg_0.d, arg_0.d), select(vec4<bool>(func_3(arg_1, Struct_2(global3.a, arg_0.e.x, vec4<u32>(14782u, 6289u, global3.c.x, 4294967295u)), arg_1, select(global3.c, vec4<u32>(4294967295u, u_input.b, 1168u, global3.c.x), arg_1.a)).x, arg_1.a, arg_0.d.x, select(func_3(Struct_2(true, global3.b, vec4<u32>(0u, arg_1.c.x, arg_0.b.x, 1u)), arg_1, Struct_2(false, -280f, arg_1.c), arg_1.c).x, any(vec2<bool>(false, true)), func_3(arg_1, arg_1, arg_1, arg_1.c).x)), !vec4<bool>(true, arg_0.d.x, arg_1.a, !arg_1.a), true), !global3.a);
    global3 = Struct_2(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) * arg_1.b), vec4<u32>(1u, ~_wgslsmith_add_u32(arg_1.c.x, abs(4294967295u)), _wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(min(arg_1.c.x, arg_1.c.x), ~arg_1.c.x)), global3.c.x));
    let var_2 = arg_1;
    let var_3 = 51624u;
    return _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.b, arg_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(511f)), -244f), _wgslsmith_f_op_f32(f32(-1f) * -661f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_0.e.x)), arg_0.e.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.b, 910f))), -504f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1211f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, 742f, var_2.b, global3.b) - vec4<f32>(-414f, var_2.b, 1385f, 434f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b, -283f, 982f, -190f)))) * vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(min(global3.b, 137f)), _wgslsmith_f_op_f32(arg_1.b + arg_1.b), arg_1.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_6(Struct_1(global1[_wgslsmith_index_u32(16051u, 30u)], global3.c.xxz, func_5(func_1(Struct_2(global3.a, global3.b, vec4<u32>(21069u, u_input.a.x, 0u, 0u))) >> (_wgslsmith_mod_u32(4294967295u, u_input.b) % 32u), vec2<bool>(global3.a, global3.a), vec2<u32>(u_input.a.x, func_2(vec2<f32>(-158f, 188f), Struct_2(global3.a, global3.b, global3.c))), Struct_2(true, global3.b, firstLeadingBit(global3.c))), !(!(!vec4<bool>(global3.a, true, true, global3.a))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global3.b)))), -1058f, -1000f)), Struct_2(!any(vec4<bool>(true, false, true, global3.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) + global3.b))), (vec4<u32>(73683u, global3.c.x, global3.c.x, 1u) & min(vec4<u32>(global3.c.x, global3.c.x, global3.c.x, 40125u), vec4<u32>(u_input.a.x, global3.c.x, 1u, 55827u))) & global3.c)));
    global3 = Struct_2(!any(!vec4<bool>(global3.a, global3.a, true, true)) || true, 1000f, vec4<u32>(global3.c.x ^ _wgslsmith_sub_u32(0u >> (u_input.a.x % 32u), u_input.b), (func_5(u_input.a.x, vec2<bool>(true, false), u_input.a.zy, Struct_2(true, global3.b, vec4<u32>(global3.c.x, 0u, 4294967295u, 4294967295u))) ^ func_4(Struct_2(global3.a, var_0.x, global3.c), vec4<bool>(global3.a, true, true, false), vec4<i32>(8084i, global1[_wgslsmith_index_u32(10795u, 30u)], global1[_wgslsmith_index_u32(20107u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)])).b.x) | _wgslsmith_add_u32(_wgslsmith_div_u32(1u, 4294967295u), global3.c.x), 15463u, 4294967295u));
    var var_1 = global2[_wgslsmith_index_u32(u_input.a.x | ~_wgslsmith_clamp_u32(4294967295u, func_1(Struct_2(true, -349f, global3.c)) << (u_input.b % 32u), ~1u), 27u)];
    let var_2 = (_wgslsmith_div_vec2_u32(~vec2<u32>(var_1.b.x, u_input.a.x) & ~var_1.b.yz, ~(~global3.c.ww)) >> (_wgslsmith_sub_vec2_u32(abs(reverseBits(vec2<u32>(u_input.b, var_1.b.x))), ~vec2<u32>(19805u, 4294967295u)) % vec2<u32>(32u))) ^ u_input.a.zy;
    let var_3 = select(global3.a, global3.a, var_1.d.x);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global3.b + var_1.e.x), _wgslsmith_f_op_f32(-global3.b)) + _wgslsmith_f_op_vec2_f32(-var_0.xy)))));
    let x = u_input.a;
    s_output = StorageBuffer((~var_2.x << (reverseBits(u_input.a.x) % 32u)) & var_2.x, vec2<i32>(~var_1.a, global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(global3.c.x, 20756u)), 30u)]) << (abs(func_4(Struct_2(false, var_4.x, vec4<u32>(var_1.c, 0u, var_2.x, 32288u)), vec4<bool>(true, true, true, true), _wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_2.x, 30u)], var_1.a, var_1.a, global1[_wgslsmith_index_u32(var_2.x, 30u)]), vec4<i32>(var_1.a, 5107i, global1[_wgslsmith_index_u32(u_input.b, 30u)], 10719i))).b.xy) % vec2<u32>(32u)));
}

