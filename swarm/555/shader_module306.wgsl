struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: Struct_4;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> Struct_5 {
    global1 = Struct_4(Struct_1(vec2<bool>(true, global1.a.a.x), global1.a.b, global1.a.c), !(!select(!global1.b, !global1.b, global1.b.x)), -global1.c ^ _wgslsmith_sub_vec4_i32(global1.c, vec4<i32>(_wgslsmith_sub_i32(2147483647i, global1.c.x), _wgslsmith_mod_i32(-2147483647i, global1.c.x), ~2147483647i, countOneBits(global1.c.x))));
    return Struct_5(1173f, global1.b, Struct_3(select(vec4<bool>(!global1.a.a.x, global1.a.a.x, global1.b.x || global1.b.x, all(vec3<bool>(false, true, global1.a.a.x))), !vec4<bool>(true, global1.a.a.x, false, true), !global1.b.x), select(select(global1.b, !global1.b, global1.a.a.x), select(global1.b, vec3<bool>(global1.a.a.x, false, global1.b.x), global1.b), vec3<bool>(false || global1.b.x, !global1.a.a.x, false)), global0[_wgslsmith_index_u32(~58362u, 26u)]));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: bool, arg_3: bool) -> vec4<f32> {
    global1 = Struct_4(global1.a, !vec3<bool>(arg_0.b.x, true, false), global1.c);
    var var_0 = -1289f;
    global1 = Struct_4(Struct_1(vec2<bool>(true, true), arg_0.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.a.c, vec2<f32>(arg_0.a, arg_0.a)) * _wgslsmith_f_op_vec2_f32(-global1.a.c)), _wgslsmith_f_op_vec2_f32(-global1.a.c)))), vec3<bool>(!(!(false & global1.b.x)), arg_0.c.b.x, true), vec4<i32>(-(2147483647i >> (~arg_0.c.c % 32u)), 11577i, _wgslsmith_sub_i32(_wgslsmith_div_i32(firstTrailingBit(52888i), 27382i), -global1.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.c.x, _wgslsmith_add_i32(global1.c.x, global1.c.x)), global1.c.yw)));
    var var_1 = select(func_2().c.a.yw, vec2<bool>(true, global1.a.b > 1f), !arg_0.c.b.yz);
    var var_2 = arg_1.wx;
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(801f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + global1.a.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-624f, arg_0.a))), global1.a.c.x))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a.b), func_2().a, !global1.b.x));
    let var_1 = func_2().c.a;
    let var_2 = Struct_5(-231f, arg_1.b, Struct_3(vec4<bool>(arg_3.x != all(vec3<bool>(false, false, global1.b.x)), global1.a.a.x, global1.a.a.x, global1.a.a.x), !var_1.yyw, _wgslsmith_add_u32(select(~108966u, firstLeadingBit(arg_2.x), arg_3.x), 9130u)));
    let var_3 = firstTrailingBit(2147483647i);
    var var_4 = global1.a.c;
    return var_2.c;
}

fn func_1() -> Struct_3 {
    return func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.c.x, -895f, -1825f, global1.a.b), vec4<f32>(global1.a.b, 1277f, -659f, 482f)))) + _wgslsmith_f_op_vec4_f32(func_3(func_2(), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 26u)], 26u)], 48039u, global0[_wgslsmith_index_u32(u_input.a, 26u)], global0[_wgslsmith_index_u32(u_input.b, 26u)]), global1.a.b != global1.a.b, !global1.a.a.x)))), Struct_4(global1.a, !global1.b, firstLeadingBit(select(vec4<i32>(2147483647i, 9255i, -18976i, global1.c.x), vec4<i32>(2147483647i, global1.c.x, -19331i, -2147483647i), any(vec2<bool>(true, false))))), ~((~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], 0u, global0[_wgslsmith_index_u32(u_input.b, 26u)], 4294967295u) ^ ~vec4<u32>(66762u, 39172u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34060u, 26u)], 26u)], global0[_wgslsmith_index_u32(0u, 26u)])) ^ _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(2815u, u_input.b, global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(18393u, 26u)]), vec4<u32>(u_input.b, 43032u, u_input.b, 65647u)), countOneBits(vec4<u32>(1u, u_input.a, 4294967295u, u_input.a)), ~vec4<u32>(0u, 0u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)]))), !(!vec2<bool>(global1.b.x, any(vec3<bool>(global1.a.a.x, true, global1.a.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    var var_1 = func_1();
    global1 = Struct_4(Struct_1(var_1.b.xy, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.c.x + -1000f), _wgslsmith_div_f32(404f, global1.a.c.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(931f, -136f)), _wgslsmith_f_op_vec2_f32(select(var_0.c, global1.a.c, var_0.a)), vec2<bool>(var_1.a.x, var_1.a.x))), vec2<f32>(_wgslsmith_f_op_f32(-global1.a.c.x), 973f)))), func_2().b, abs(abs(global1.c)));
    var var_2 = any(!(!func_2().b.zz));
    let var_3 = ~30570u;
    var var_4 = 374f;
    var var_5 = select(var_1.b, func_2().c.b, !func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -126f, 684f, var_0.b))), Struct_4(Struct_1(var_1.a.zy, 1000f, global1.a.c), vec3<bool>(global1.a.a.x, false, true), vec4<i32>(global1.c.x, global1.c.x, global1.c.x, global1.c.x)), _wgslsmith_add_vec4_u32(max(vec4<u32>(10160u, var_1.c, global0[_wgslsmith_index_u32(5310u, 26u)], u_input.a), vec4<u32>(0u, 20008u, var_1.c, 50845u)), ~vec4<u32>(u_input.a, var_1.c, 17774u, 1u)), func_1().a.wz).b);
    var var_6 = Struct_3(var_1.a, vec3<bool>(global1.b.x, true, global1.a.a.x), var_1.c);
    var_1 = func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.c.x), -601f, global1.a.b, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -812f, 164f, -351f))))), Struct_4(global1.a, global1.b, min(select(~vec4<i32>(53663i, global1.c.x, 20785i, global1.c.x), vec4<i32>(15625i, -69706i, global1.c.x, 6376i), !var_1.a), vec4<i32>(-2147483647i << (0u % 32u), global1.c.x, global1.c.x, reverseBits(-2147483647i)))), ~_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], var_3, 51996u, 1u), select(vec4<u32>(1u, var_6.c, 0u, var_3), vec4<u32>(31839u, u_input.a, var_6.c, 1u), var_6.b.x)), select(select(vec2<bool>(global1.b.x & var_1.a.x, true), !select(vec2<bool>(var_0.a.x, true), vec2<bool>(var_0.a.x, false), true), var_1.b.x), var_0.a, var_1.a.x || true));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.x >> (u_input.a % 32u), var_6.c, firstTrailingBit(_wgslsmith_div_vec4_i32(global1.c, -select(global1.c, global1.c, var_5.x))), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(global1.c.x, 21147i), countOneBits(global1.c.x)), global1.c.zy), ~vec2<i32>(max(-1i, global1.c.x), -1i)));
}

