struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(true, -47399i, vec3<f32>(-1210f, 2372f, -728f), 42019u), Struct_1(false, -1i, vec3<f32>(712f, 1838f, 577f), 1u), Struct_1(false, 0i, vec3<f32>(1719f, -634f, 1353f), 71780u), Struct_1(true, 0i, vec3<f32>(321f, -572f, -309f), 27236u), Struct_1(true, -3797i, vec3<f32>(-1000f, 482f, -324f), 34387u), Struct_1(true, 2147483647i, vec3<f32>(-207f, 1504f, 217f), 4294967295u), Struct_1(true, 0i, vec3<f32>(364f, -1000f, -1129f), 23088u), Struct_1(false, 2147483647i, vec3<f32>(-477f, -791f, 337f), 99105u));

var<private> global2: i32 = -33137i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: u32) -> i32 {
    let var_0 = -1206f;
    var var_1 = global1[_wgslsmith_index_u32(1u, 8u)];
    var_1 = Struct_1(true, 1i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_1.c))))), var_1.d);
    let var_2 = var_1.a;
    global0 = all(select(vec2<bool>(all(!vec2<bool>(var_1.a, arg_0)), true), vec2<bool>(true, any(select(vec2<bool>(true, arg_0), vec2<bool>(false, true), vec2<bool>(arg_0, var_1.a)))), vec2<bool>(any(!vec4<bool>(true, arg_0, arg_0, arg_0)), all(!vec3<bool>(var_1.a, true, false)))));
    return max(-_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.xy), max(~18262i, ~(-38608i)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<bool>(any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), u_input.b != u_input.b)), any(vec4<bool>(true, true, true, true)) | (~abs(u_input.a.x) > ~func_3(true, u_input.c)), any(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), all(vec4<bool>(true, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -36305i, 0i, u_input.a.x), vec4<i32>(-64661i, 25390i, -1i, u_input.a.x)) > -u_input.a.x, true, all(vec3<bool>(true, true, true)))));
    var var_1 = vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1038f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1639f)))), _wgslsmith_f_op_f32(select(-1386f, -491f, !(!var_0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1886f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2581f, 1394f, var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1449f))));
    global0 = true;
    global0 = u_input.c >= ~u_input.b;
    global1 = array<Struct_1, 8>();
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(u_input.c), u_input.b), 8u)];
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = Struct_2(1381f, func_2(), arg_2.b);
    var var_1 = select(!vec3<bool>(!all(vec3<bool>(false, arg_1.a, true)), arg_3.b.a, !arg_2.b.a), select(!select(vec3<bool>(arg_2.c.a, false, var_0.b.a), vec3<bool>(false, arg_3.c.a, arg_2.c.a), true), !vec3<bool>(var_0.b.a || false, var_0.b.a, true), !select(select(vec3<bool>(arg_3.c.a, arg_1.a, false), vec3<bool>(true, false, arg_3.b.a), var_0.c.a), select(vec3<bool>(arg_1.a, arg_2.b.a, arg_2.b.a), vec3<bool>(var_0.c.a, arg_2.b.a, arg_2.c.a), arg_3.b.a), vec3<bool>(false, false, arg_2.c.a))), all(vec4<bool>(any(vec4<bool>(arg_1.a, false, true, true)) && (-4941i > var_0.c.b), false, all(vec4<bool>(var_0.b.a, arg_1.a, arg_1.a, arg_3.c.a)), true)));
    let var_2 = Struct_1(true, countOneBits(_wgslsmith_mult_i32(~(-u_input.a.x), 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, _wgslsmith_f_op_f32(-arg_2.c.c.x), _wgslsmith_f_op_f32(arg_3.b.c.x - 228f)) + var_0.c.c)), var_0.b.d);
    var_1 = vec3<bool>(!var_1.x, var_0.c.d != ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(51403u, arg_2.c.d, 19227u, u_input.b), vec4<u32>(u_input.b, var_0.c.d, var_0.c.d, 33102u)), ~86194u), var_1.x);
    var var_3 = ~var_2.d;
    return vec3<u32>(~(8608u ^ firstLeadingBit(arg_1.d)) | 0u, ~var_2.d, _wgslsmith_mult_u32(~0u, arg_3.c.d));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(arg_0.c.zz, vec2<f32>(1273f, 937f))), vec2<f32>(1f, 1f))), Struct_1(true & arg_0.a, ~(~(-20735i)), vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0.c.x)), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(sign(arg_0.c.x))), _wgslsmith_sub_u32(0u, u_input.c)), Struct_2(_wgslsmith_f_op_f32(-994f + _wgslsmith_f_op_f32(ceil(arg_0.c.x))), arg_0, arg_0), Struct_2(-643f, func_2(), arg_0)) << (~(~abs(~vec3<u32>(u_input.b, 0u, u_input.c))) % vec3<u32>(32u));
    var_0 = func_4(arg_0.c.yy, global1[_wgslsmith_index_u32(var_0.x ^ _wgslsmith_div_u32(abs(~4294967295u), u_input.c), 8u)], Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -674f), func_2(), Struct_1(!arg_0.a, u_input.a.x, arg_0.c, arg_0.d)), Struct_2(-266f, Struct_1(true, u_input.a.x, arg_0.c, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_0.d, 0u, u_input.c), vec4<u32>(50244u, var_0.x, 1u, arg_0.d)), reverseBits(vec4<u32>(var_0.x, arg_0.d, var_0.x, var_0.x)))), arg_0));
    let var_1 = !(min(arg_0.b, _wgslsmith_sub_i32(arg_0.b, arg_0.b)) != arg_0.b);
    return -60433i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~_wgslsmith_add_i32(~(-1i), 0i);
    var var_0 = u_input.a & vec3<i32>(8056i, _wgslsmith_div_i32(u_input.a.x, 19988i), func_1(Struct_1(true, u_input.a.x, vec3<f32>(1324f, -751f, -1410f), u_input.c)) | 1i);
    var_0 = u_input.a;
    let var_1 = u_input.b;
    var var_2 = Struct_2(456f, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -942f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(255f)), _wgslsmith_f_op_f32(578f + 999f)), -var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -917f, -461f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -331f, 2340f))))), ~0u), Struct_1(all(vec2<bool>(true, true)), func_2().b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2108f, 415f, 1082f)), vec3<f32>(533f, 184f, 1798f))), _wgslsmith_dot_vec4_u32(max(vec4<u32>(var_1, var_1, 16564u, u_input.b), vec4<u32>(u_input.b, 1u, 72505u, 1u)), vec4<u32>(~56206u, ~u_input.b, var_1, var_1))));
    var var_3 = _wgslsmith_f_op_f32(var_2.c.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.b.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -350f)))));
    var_3 = 915f;
    var_2 = Struct_2(var_2.b.c.x, Struct_1(true, countOneBits(_wgslsmith_mult_i32(-69456i, 7801i) | ~var_0.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(710f, var_2.b.c.x, -614f), vec3<f32>(var_2.c.c.x, var_2.a, -654f)), var_2.b.c), vec3<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_div_f32(var_2.a, -2439f), 954f))), reverseBits(var_2.c.d << (var_1 % 32u))), Struct_1(all(vec2<bool>(true, true)), -18617i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_2.b.c)))), 10240u));
    let x = u_input.a;
    s_output = StorageBuffer(31433u);
}

