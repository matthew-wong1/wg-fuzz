struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(-21576i, Struct_1(vec3<bool>(false, false, true), vec3<f32>(-1683f, -662f, 633f), 219f, vec3<u32>(0u, 32387u, 4294967295u))), Struct_2(-1i, Struct_1(vec3<bool>(false, false, true), vec3<f32>(-909f, 1165f, 165f), -108f, vec3<u32>(1u, 7190u, 4294967295u))), Struct_2(i32(-2147483648), Struct_1(vec3<bool>(false, false, true), vec3<f32>(-1799f, 621f, -1099f), 992f, vec3<u32>(0u, 42759u, 0u))), Struct_2(-43999i, Struct_1(vec3<bool>(false, false, true), vec3<f32>(2017f, -1621f, -2417f), -837f, vec3<u32>(32576u, 52354u, 1u))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    let var_0 = Struct_1(vec3<bool>(((u_input.b ^ u_input.b) >> (~1u % 32u)) == (u_input.b & _wgslsmith_add_u32(0u, u_input.d.x)), false, any(!global1.xzx) && !(true | global1.x)), global0[_wgslsmith_index_u32(firstLeadingBit(~(reverseBits(4294967295u) >> (select(43456u, 0u, global1.x) % 32u))), 17u)], -1550f, u_input.d);
    global1 = !vec4<bool>(!(!var_0.a.x | !global1.x), var_0.a.x, all(var_0.a.zx), false);
    var var_1 = var_0.d.x | max(_wgslsmith_dot_vec3_u32(vec3<u32>(39272u, min(1u, u_input.d.x), var_0.d.x), vec3<u32>(46404u, 92778u, var_0.d.x) ^ (var_0.d | vec3<u32>(u_input.b, 24878u, 36424u))), ~(~1u));
    var var_2 = global1.zy;
    global2 = array<Struct_2, 4>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(530f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(-1i, -363f)), _wgslsmith_f_op_f32(-arg_3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(696f - -754f)))));
    global1 = select(vec4<bool>(!all(select(vec4<bool>(true, global1.x, arg_2, arg_3.a.x), vec4<bool>(true, true, false, arg_2), vec4<bool>(arg_3.a.x, arg_3.a.x, arg_2, true))), arg_2, true, true & (arg_2 || false)), !select(select(select(vec4<bool>(true, arg_3.a.x, true, false), vec4<bool>(arg_3.a.x, true, arg_2, global1.x), vec4<bool>(true, false, false, arg_2)), vec4<bool>(global1.x, arg_2, arg_2, arg_3.a.x), select(vec4<bool>(global1.x, arg_2, arg_2, true), vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(true, false, false, arg_2))), select(!vec4<bool>(global1.x, arg_2, true, true), select(vec4<bool>(false, arg_2, false, true), vec4<bool>(true, true, arg_3.a.x, false), vec4<bool>(true, arg_2, false, arg_3.a.x)), vec4<bool>(arg_3.a.x, arg_2, arg_3.a.x, false)), !select(vec4<bool>(false, true, arg_2, true), vec4<bool>(arg_3.a.x, arg_3.a.x, true, arg_2), vec4<bool>(arg_2, global1.x, global1.x, true))), true);
    global2 = array<Struct_2, 4>();
    var var_1 = arg_3;
    var var_2 = global0[_wgslsmith_index_u32(u_input.d.x, 17u)];
    return ~u_input.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<i32> {
    let var_0 = Struct_1(global1.xwz, global0[_wgslsmith_index_u32(55050u, 17u)], 1000f, ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.d.x, abs(arg_2.d.x), 37005u), vec3<u32>(u_input.d.x, ~0u, ~arg_2.d.x)));
    global0 = array<vec3<f32>, 17>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(step(-169f, _wgslsmith_f_op_f32(-var_0.b.x)))) + _wgslsmith_f_op_vec2_f32(-var_0.b.zx));
    let var_2 = -max(-vec2<i32>(u_input.a ^ -22312i, 1i), ~arg_0.yz);
    global2 = array<Struct_2, 4>();
    return vec4<i32>(~2147483647i, -1i, func_2(~(~(~vec2<u32>(13057u, 1u))), 18084u, var_0.c < -564f, var_0), var_2.x & arg_1);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = !(!select(!vec4<bool>(arg_1, false, arg_0.b.a.x, true), select(select(vec4<bool>(true, arg_0.b.a.x, false, true), vec4<bool>(arg_0.b.a.x, arg_1, arg_0.b.a.x, arg_0.b.a.x), global1.x), vec4<bool>(true, false, arg_0.b.a.x, true), any(vec4<bool>(true, true, arg_1, true))), !(!vec4<bool>(arg_0.b.a.x, true, arg_1, false))));
    let var_1 = ~(select(arg_0.a, arg_2, !(arg_0.b.b.x >= -2302f)) << (29087u % 32u));
    var var_2 = Struct_1(vec3<bool>(true, select(!global1.x, arg_0.b.a.x, all(vec2<bool>(var_0.x, true))), select(true | global1.x, var_0.x, select(arg_0.b.a.x, arg_1, false))), _wgslsmith_f_op_vec3_f32(exp2(global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_0.b.d.x, 0u, u_input.b, 9678u)), vec4<u32>(1u, u_input.d.x, arg_0.b.d.x, arg_0.b.d.x))), 17u)])), 967f, vec3<u32>(1u, 1u, u_input.b));
    var var_3 = Struct_1(select(global1.xyz, var_0.yxy, !(!vec3<bool>(true, false, var_0.x))), _wgslsmith_f_op_vec3_f32(var_2.b + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, -1344f, _wgslsmith_f_op_f32(arg_0.b.c + var_2.c)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(4294967295u, 17u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - -1580f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))))), _wgslsmith_mult_vec3_u32(~max(var_2.d, u_input.d) & select(u_input.d, _wgslsmith_sub_vec3_u32(u_input.d, vec3<u32>(4294967295u, 0u, arg_0.b.d.x)), vec3<bool>(true, false, false)), vec3<u32>(_wgslsmith_mod_u32(arg_0.b.d.x, 35954u), ~1u, ~31778u) << (((u_input.d | vec3<u32>(var_2.d.x, var_2.d.x, 4294967295u)) | (vec3<u32>(11268u, u_input.d.x, var_2.d.x) << (vec3<u32>(var_2.d.x, var_2.d.x, 0u) % vec3<u32>(32u)))) % vec3<u32>(32u))));
    global1 = !select(!select(!vec4<bool>(arg_0.b.a.x, true, arg_1, var_0.x), vec4<bool>(var_3.a.x, var_3.a.x, false, false), vec4<bool>(false, true, false, arg_0.b.a.x)), select(!select(vec4<bool>(var_3.a.x, false, false, global1.x), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, var_0.x)), vec4<bool>(var_3.a.x && false, true, false, !var_2.a.x), !(!vec4<bool>(arg_1, var_3.a.x, false, false))), !(!(!var_3.a.x)));
    return Struct_1(vec3<bool>(arg_0.b.a.x, all(!select(vec4<bool>(var_0.x, arg_1, global1.x, var_3.a.x), vec4<bool>(var_2.a.x, var_3.a.x, true, var_2.a.x), var_2.a.x)), var_2.a.x | var_2.a.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c - -2103f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c)), arg_0.b.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.b.c)) - _wgslsmith_f_op_f32(-var_3.c)) * _wgslsmith_f_op_f32(func_3(max(2147483647i, 2147483647i), 1105f))) - _wgslsmith_f_op_f32(-523f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.c, 1091f) * var_2.b.x))), ~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, var_2.d.x), ~4294967295u), firstTrailingBit(70745u), _wgslsmith_add_u32(select(4294967295u, var_3.d.x, var_2.a.x), arg_0.b.d.x)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.c;
    let var_1 = firstLeadingBit(vec3<i32>(-_wgslsmith_sub_i32(-u_input.a, var_0), firstTrailingBit(~40839i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0, max(24939i, u_input.a), -var_0), -(vec4<i32>(var_0, -11529i, u_input.a, -2147483647i) << (vec4<u32>(1u, 1u, arg_0.d.x, 1u) % vec4<u32>(32u))))));
    let var_2 = -u_input.c;
    global1 = !(!select(vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x), select(vec4<bool>(global1.x, arg_0.a.x, arg_0.a.x, global1.x), !vec4<bool>(true, global1.x, false, arg_0.a.x), true), !(!vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x))));
    let var_3 = global2[_wgslsmith_index_u32(32700u, 4u)];
    return Struct_1(var_3.b.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(step(arg_0.b.x, arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.b.x)), 267f) * _wgslsmith_f_op_vec3_f32(select(arg_0.b, global0[_wgslsmith_index_u32(41395u, 17u)], vec3<bool>(var_3.b.a.x, global1.x | false, !arg_0.a.x)))), var_3.b.b.x, vec3<u32>(firstTrailingBit(~arg_0.d.x), firstTrailingBit(_wgslsmith_mod_u32(~1u, ~15560u)), countOneBits(~_wgslsmith_mod_u32(52183u, arg_0.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((u_input.b & u_input.d.x) << (u_input.b % 32u)) & u_input.d.x;
    var var_1 = Struct_2(abs(u_input.a), func_5(func_4(global2[_wgslsmith_index_u32(1u, 4u)], abs(u_input.d.x) != u_input.d.x, u_input.c, func_1(select(vec4<i32>(2147483647i, u_input.c, 0i, u_input.c), vec4<i32>(u_input.c, -25725i, u_input.a, -2014i), vec4<bool>(true, true, false, global1.x)), u_input.a, Struct_1(vec3<bool>(global1.x, true, false), vec3<f32>(752f, -1367f, 1240f), 381f, vec3<u32>(u_input.d.x, 0u, 59333u)), u_input.d.zy))));
    var_0 = var_1.b.d.x | ~u_input.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-292f, var_1.b.c, 632f, 402f)) - vec4<f32>(var_1.b.c, -1520f, var_1.b.b.x, -1096f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2196f, 1869f, 1236f, var_1.b.c) + vec4<f32>(1280f, 1241f, var_1.b.c, var_1.b.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-137f, var_1.b.c, var_1.b.b.x, var_1.b.b.x)))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2801f), -1685f, -1571f, 1523f)))));
    var_1 = Struct_2(18210i, func_5(Struct_1(vec3<bool>(!var_1.b.a.x, true, var_1.b.c > -1019f), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 951f, -262f), _wgslsmith_f_op_vec3_f32(vec3<f32>(702f, var_1.b.c, -988f) - vec3<f32>(-302f, var_1.b.c, 683f))), _wgslsmith_f_op_f32(-var_1.b.b.x), select(~vec3<u32>(0u, var_1.b.d.x, u_input.b), var_1.b.d, true))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(countOneBits(abs(-vec3<i32>(u_input.a, 30910i, var_1.a)))), -_wgslsmith_clamp_i32(func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, var_1.a, 1i, u_input.c), vec4<i32>(u_input.c, 9846i, u_input.a, var_1.a)), u_input.a, var_1.b, ~u_input.d.xx).x, select(32108i, var_1.a << (0u % 32u), global1.x), -18681i), ~var_1.a);
}

