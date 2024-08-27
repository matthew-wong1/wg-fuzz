struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: Struct_4;

var<private> global2: array<Struct_4, 23>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_4, arg_3: bool) -> u32 {
    let var_0 = Struct_1(!(_wgslsmith_f_op_f32(-global1.a.a.x) != _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(8607u, 12u)]))) && select(arg_2.a.b.x, true, arg_3), any(select(arg_2.b.b.xz, vec2<bool>(false, any(vec2<bool>(global1.b.b.x, true))), !(50105u <= arg_0))), -355f, _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(u_input.a.wz, reverseBits(-vec2<i32>(arg_1, arg_1)))));
    var var_1 = false;
    var var_2 = Struct_5(min(select(select(abs(vec4<u32>(arg_0, 15042u, arg_0, 15629u)), select(vec4<u32>(1u, arg_0, arg_0, arg_0), vec4<u32>(arg_0, arg_0, 53150u, 0u), arg_2.b.c.a), vec4<bool>(false, arg_3, global1.a.b.x, arg_3)), vec4<u32>(arg_0, arg_0, _wgslsmith_mod_u32(0u, 10761u), ~0u), arg_3), firstTrailingBit(reverseBits(abs(vec4<u32>(0u, arg_0, arg_0, 1u))))), vec3<bool>(all(select(!vec4<bool>(false, false, global1.a.b.x, true), vec4<bool>(false, true, arg_3, global1.b.c.b), vec4<bool>(true, global1.b.b.x, true, false))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_3, global1.a.c.b, arg_3, false), var_0.a)), !select(true, arg_3, false)), Struct_3(Struct_1(false, false, -1251f, 0i), Struct_2(arg_2.b.a, select(!global1.b.b, !global1.a.b, !arg_2.b.b), Struct_1(true, var_0.d > -2147483647i, global1.a.c.c, -arg_2.b.c.d))), _wgslsmith_sub_vec3_i32(u_input.a.yww, abs(-reverseBits(vec3<i32>(arg_1, 0i, 2147483647i)))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(arg_0, 4294967295u)), 12u)]) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 12u)]) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_2.a.wzy, var_2.a.yyy), 12u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -205f), u_input.a.x == -2147483647i)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * 676f), -2262f, true)))));
    var_1 = true;
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec2<f32> {
    global0 = array<f32, 12>();
    var var_0 = ~(arg_1 << (38923u % 32u));
    let var_1 = global1.a.b;
    global0 = array<f32, 12>();
    var var_2 = ~(~(~(~vec2<u32>(arg_1, 45468u))) & vec2<u32>(~29539u, ~29366u & (0u << (arg_1 % 32u))));
    return _wgslsmith_f_op_vec2_f32(-global1.b.a);
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = global1.a;
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~_wgslsmith_mod_u32(arg_1.x ^ 0u, ~arg_1.x)), ~(~4294967295u)), 23u)];
    global0 = array<f32, 12>();
    global0 = array<f32, 12>();
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.a, global1.a.a)), global1.b.a));
    return Struct_3(var_0.c, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(var_0.c.b, false, -1000f, -2147483647i), func_3(arg_1.x, global1.a.c.d, Struct_4(Struct_2(vec2<f32>(arg_0, global0[_wgslsmith_index_u32(0u, 12u)]), global1.b.b, Struct_1(var_0.c.a, var_0.c.b, -158f, 0i)), global1.a), global1.b.c.b))) - global1.b.a), !(!select(global1.b.b, vec3<bool>(global1.b.c.a, var_0.c.b, false), var_0.c.a)), var_0.c));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(false, false, global0[_wgslsmith_index_u32(50188u, 12u)], global1.a.c.d), 10598u)).x), global1.b.a.x, _wgslsmith_f_op_f32(trunc(global1.b.c.c)), func_2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(21490u, 12u)] - arg_0.a.c), abs(vec2<u32>(0u, 0u))).a.c))));
    var var_1 = _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_add_i32(global1.a.c.d, -17820i) & -37102i)), -arg_0.b.c.d);
    global2 = array<Struct_4, 23>();
    var_1 = _wgslsmith_div_i32(i32(-1i) * -u_input.d, ~firstTrailingBit(arg_3.x));
    let var_2 = func_2(_wgslsmith_f_op_f32(-256f + _wgslsmith_f_op_f32(f32(-1f) * -1312f)), select(vec2<u32>(0u, _wgslsmith_mod_u32(1u, min(22185u, 4294967295u))), ~vec2<u32>(1u, 1u), arg_0.a.b));
    return Struct_3(var_2.a, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_2.a.c)) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.b.c.c)))), select(func_2(arg_2, vec2<u32>(4294967295u, 71121u)).b.b, select(func_2(var_0.x, vec2<u32>(0u, 1u)).b.b, vec3<bool>(arg_1, global1.a.b.x, global1.a.b.x), arg_1), true), Struct_1(_wgslsmith_dot_vec3_i32(u_input.a.wwx, vec3<i32>(1i, var_2.a.d, 5606i)) <= _wgslsmith_div_i32(1i, u_input.d), false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a.c))), _wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(u_input.b, 2147483647i, 1i, 2147483647i)))));
}

fn func_1() -> u32 {
    let var_0 = func_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-607f * 221f) * _wgslsmith_f_op_f32(ceil(global1.a.a.x))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 12u)], -569f))))), ~(vec2<u32>(1u, 1u) << (firstLeadingBit(vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)))), global1.a.b.x, global1.a.a.x, ~u_input.a);
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4322u, abs(_wgslsmith_mod_u32(abs(~0u), ~firstTrailingBit(1u)))), 23u)];
    var var_1 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(191f)));
    global2 = array<Struct_4, 23>();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c) - -1249f));
    return ~48293u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = array<f32, 12>();
    var var_1 = func_1();
    let var_2 = func_5(func_2(_wgslsmith_f_op_f32(1941f - 1402f), vec2<u32>(abs(firstTrailingBit(17768u)), firstTrailingBit(0u))), global1.a.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1269f) * -1627f), countOneBits(-_wgslsmith_mult_vec4_i32(vec4<i32>(11899i, 2147483647i, 1i, -2147483647i) | vec4<i32>(u_input.a.x, -2147483647i, 24530i, -78215i), vec4<i32>(-1i, 21795i, -49510i, u_input.b)))).b.c;
    let var_3 = Struct_1(var_2.b, all(!vec4<bool>(true, true, global1.a.c.a || true, var_2.a)), var_2.c, i32(-1i) * -88162i);
    global2 = array<Struct_4, 23>();
    let var_4 = -946f;
    let x = u_input.a;
    s_output = StorageBuffer(-6083i);
}

