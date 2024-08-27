struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(13252u), Struct_2(35762u), Struct_2(0u), Struct_2(32775u), Struct_2(0u), Struct_2(75335u), Struct_2(9480u), Struct_2(78919u), Struct_2(3861u), Struct_2(74970u), Struct_2(19877u), Struct_2(7895u), Struct_2(0u), Struct_2(82391u), Struct_2(37851u), Struct_2(4294967295u), Struct_2(9108u), Struct_2(1u), Struct_2(38014u), Struct_2(39845u), Struct_2(30547u), Struct_2(34569u), Struct_2(4294967295u), Struct_2(12001u), Struct_2(1202u));

var<private> global1: Struct_2 = Struct_2(26990u);

var<private> global2: f32 = -283f;

var<private> global3: u32 = 83662u;

var<private> global4: i32 = -6557i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec3<f32>) -> bool {
    var var_0 = 8974u;
    var var_1 = global0[_wgslsmith_index_u32(10356u, 25u)];
    let var_2 = true;
    var_0 = u_input.a.x;
    var var_3 = global0[_wgslsmith_index_u32(var_1.a, 25u)];
    return var_2;
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(select(firstTrailingBit(u_input.c.x) >> ((9914u | u_input.a.x) % 32u), u_input.c.x, false), ~(-30127i)), u_input.d, -1i, i32(-1i) * -36998i);
    return 157f;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<bool>) -> f32 {
    global2 = arg_0.x;
    return -643f;
}

fn func_2() -> Struct_1 {
    let var_0 = any(vec4<bool>(select(!(global1.a > 29283u), all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), false, true, false));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2209f) * -1564f), _wgslsmith_f_op_f32(func_4(vec2<f32>(_wgslsmith_f_op_f32(-1321f - 1920f), _wgslsmith_f_op_f32(func_3(vec4<u32>(global1.a, 1u, 1289u, global1.a)))), i32(-1i) * -2147483647i, vec2<bool>(var_0, var_0)))));
    var var_2 = -7278i;
    var var_3 = Struct_1(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)))), var_0, any(vec2<bool>(true, true)));
    let var_4 = !vec3<bool>(any(!select(vec4<bool>(false, var_3.b, var_3.c, var_3.c), vec4<bool>(false, true, false, var_0), var_3.c)), all(vec3<bool>(false, !var_3.c, true)), (0u ^ (global1.a ^ 5925u)) >= 2066u);
    return Struct_1(-705f, !(_wgslsmith_f_op_f32(sign(-961f)) != _wgslsmith_f_op_f32(-245f - _wgslsmith_f_op_f32(round(var_3.a)))), any(!var_4.zx));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    global4 = u_input.d;
    var var_0 = func_2();
    let var_1 = global0[_wgslsmith_index_u32(17477u, 25u)];
    var var_2 = Struct_2(global1.a);
    var_0 = arg_1;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-311f)) + var_0.a), var_0.b, select(arg_1.c == all(vec2<bool>(arg_1.b, arg_1.c)), false, !(!(!arg_0.x))));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>) -> StorageBuffer {
    global3 = _wgslsmith_div_u32((_wgslsmith_add_u32(0u ^ u_input.b, u_input.b) >> (_wgslsmith_sub_u32(select(1486u, 1u, arg_0.b), u_input.b ^ u_input.b) % 32u)) >> (global1.a % 32u), abs(_wgslsmith_sub_u32(firstLeadingBit(global1.a) << ((global1.a << (u_input.a.x % 32u)) % 32u), global1.a)));
    global4 = 16372i;
    var var_0 = vec2<f32>(1000f, arg_1.x);
    let var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(global1.a ^ ~1u), 25u)];
    var var_2 = !(!vec4<bool>(!all(vec4<bool>(true, false, arg_0.b, false)), arg_0.c, true, arg_0.b));
    return StorageBuffer(select(firstTrailingBit(~select(u_input.a.x, 4294967295u, false)), u_input.a.x, var_2.x), u_input.a.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec4<bool>(true, all(vec2<bool>(true, true)), true, (global1.a | 35995u) != ~u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-257f, 181f, 624f) - _wgslsmith_div_vec3_f32(vec3<f32>(247f, -484f, 2446f), vec3<f32>(-1578f, 1000f, 514f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-802f, 1273f, -952f)))))));
    var var_2 = u_input.a.x;
    global2 = -1515f;
    global2 = -163f;
    global4 = _wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(~12507i, -2147483647i, -16339i)), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(20637i, -2147483647i, -1i), ~vec3<i32>(u_input.d, u_input.d, 19432i)), min(vec3<i32>(u_input.d, 9778i, 1i), vec3<i32>(-4537i, 23400i, -51963i) ^ vec3<i32>(u_input.d, 0i, u_input.d)), vec3<i32>(-1i, u_input.c.x, -1i) & -vec3<i32>(58725i, u_input.d, -16490i)), vec3<i32>(firstTrailingBit(u_input.d), u_input.d, u_input.c.x)));
    var var_3 = !(!select(vec3<bool>(func_1(var_0, vec2<f32>(939f, var_1.x), global0[_wgslsmith_index_u32(global1.a, 25u)], vec3<f32>(225f, var_1.x, -404f)), true, var_0), vec3<bool>(false, var_1.x >= var_1.x, u_input.a.x <= 36051u), !(!vec3<bool>(false, true, var_0))));
    let x = u_input.a;
    s_output = func_6(func_5(vec3<bool>(_wgslsmith_sub_i32(u_input.c.x, -2147483647i) != -8293i, var_1.x < -1107f, reverseBits(u_input.b) != 22480u), func_2()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1393f, -202f, var_1.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, 499f, -1622f, var_1.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1026f, -1127f, -1000f))))));
}

