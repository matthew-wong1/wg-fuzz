struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec3<i32>(-30206i, -50205i, -1i), vec4<bool>(true, false, false, false), Struct_1(-388f), Struct_1(-217f), 2040f), Struct_2(vec3<i32>(35634i, -19538i, -60861i), vec4<bool>(true, false, true, false), Struct_1(1180f), Struct_1(1066f), -2307f), Struct_2(vec3<i32>(1i, -1i, 0i), vec4<bool>(false, true, true, false), Struct_1(1281f), Struct_1(177f), 467f), Struct_2(vec3<i32>(20943i, 30641i, -5593i), vec4<bool>(true, false, false, true), Struct_1(970f), Struct_1(-865f), 166f), Struct_2(vec3<i32>(-13014i, -57649i, -20051i), vec4<bool>(true, true, false, false), Struct_1(-1304f), Struct_1(-895f), -519f), Struct_2(vec3<i32>(-46656i, 0i, 22725i), vec4<bool>(false, true, true, false), Struct_1(-1000f), Struct_1(-1447f), -455f), Struct_2(vec3<i32>(i32(-2147483648), 1i, -6719i), vec4<bool>(false, true, true, true), Struct_1(-180f), Struct_1(1434f), 463f), Struct_2(vec3<i32>(-23404i, -13943i, -11340i), vec4<bool>(false, true, true, true), Struct_1(383f), Struct_1(-1852f), -473f));

var<private> global3: Struct_1 = Struct_1(-1428f);

var<private> global4: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    return ~31040u;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    let var_0 = !all(vec2<bool>(false, global1.x));
    global4 = arg_1.a;
    var var_1 = Struct_2(vec3<i32>(u_input.e.x, _wgslsmith_sub_i32(firstLeadingBit(1i & u_input.c), u_input.b), u_input.c), !(!vec4<bool>(global1.x, var_0, false, u_input.b <= 1i)), arg_1, arg_1, global3.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1164f, _wgslsmith_f_op_f32(max(global3.a, _wgslsmith_f_op_f32(f32(-1f) * -328f))), _wgslsmith_f_op_f32(sign(var_1.d.a))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, global3.a, 405f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global3.a, 742f)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(arg_1.a, -284f), _wgslsmith_f_op_f32(var_1.c.a * 485f), global3.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-421f, -1028f, 309f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, 751f, -1000f))))))), true));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-768f, 720f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1336f, -680f))), 852f)), vec4<f32>(var_2.x, -603f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global3.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - _wgslsmith_f_op_f32(-1052f - arg_1.a))))));
    return !var_1.b.x;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    global1 = arg_1.b.wyx;
    return Struct_2(-arg_1.a, arg_1.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-788f, 570f, u_input.c == u_input.d)))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.d.a, -1497f) + _wgslsmith_f_op_f32(min(global3.a, arg_1.c.a))), global3.a))), global3.a);
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<bool>(global1.x, select(any(global1.yy) || true, true, false), _wgslsmith_f_op_f32(-global3.a) < 365f, any(global1.xy));
    let var_1 = func_4(func_2(u_input.a.x, u_input.e.x ^ _wgslsmith_dot_vec2_i32(u_input.e, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(u_input.e.x, u_input.c))), u_input.e, global2[_wgslsmith_index_u32(19237u, 8u)]), Struct_2(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, u_input.c, u_input.e.x), vec4<i32>(u_input.c, -2147483647i, -2147483647i, u_input.d)) & -2147483647i, ~u_input.b), vec4<bool>(true, true, !func_3(u_input.a.x, Struct_1(-1198f), vec3<bool>(global1.x, false, var_0.x)), true && !var_0.x), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1116f - global3.a)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1293f, 3655f, var_0.x)))), 571f), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a >> (firstTrailingBit(u_input.a) % vec3<u32>(32u)), abs(~u_input.a)), abs(u_input.a)));
    let var_2 = func_4(~(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(21380u, 73538u, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, 81025u, 0u)), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, 23208u))), Struct_2(vec3<i32>(1i, _wgslsmith_add_i32(13712i, countOneBits(0i)), var_1.a.x), vec4<bool>(func_4(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), func_4(10589u, global2[_wgslsmith_index_u32(4294967295u, 8u)], 108444u), u_input.a.x).b.x, (var_1.a.x << (u_input.a.x % 32u)) >= _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.a.x, var_1.a.x, 19540i), vec4<i32>(0i, var_1.a.x, var_1.a.x, 24206i)), var_0.x, !all(vec3<bool>(var_0.x, global1.x, global1.x))), func_4(u_input.a.x, var_1, 85059u).c, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -919f)))), _wgslsmith_f_op_f32(trunc(global3.a))), _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(~0u, ~select(u_input.a.x, u_input.a.x, global1.x)))).d;
    var var_3 = func_4(firstTrailingBit(u_input.a.x), global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(~1u, 0u >> (u_input.a.x % 32u)) >> ((u_input.a.x ^ abs(55377u)) % 32u)), 8u)], u_input.a.x).c;
    global1 = !select(select(!(!vec3<bool>(false, var_0.x, false)), select(select(vec3<bool>(true, true, var_1.b.x), vec3<bool>(var_1.b.x, false, true), vec3<bool>(false, true, var_0.x)), func_4(u_input.a.x, Struct_2(vec3<i32>(var_1.a.x, 2147483647i, var_1.a.x), vec4<bool>(var_1.b.x, global1.x, var_1.b.x, var_1.b.x), var_2, Struct_1(var_3.a), -656f), u_input.a.x).b.wxw, any(vec4<bool>(true, global1.x, true, false))), vec3<bool>(true, var_1.a.x <= 25691i, var_1.b.x)), select(vec3<bool>(func_4(u_input.a.x, Struct_2(vec3<i32>(7459i, 176i, u_input.c), vec4<bool>(var_0.x, global1.x, true, global1.x), Struct_1(-1000f), Struct_1(global3.a), 1245f), u_input.a.x).b.x, true, var_1.b.x | var_1.b.x), vec3<bool>(true, all(var_0.ywy), var_1.e >= -243f), false), vec3<bool>(global1.x, select(false || global1.x, true, false), func_4(23377u, func_4(62874u, Struct_2(var_1.a, var_1.b, Struct_1(1039f), var_2, global3.a), u_input.a.x), 1u).b.x));
    return var_1.d;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    var var_0 = ~(-2147483647i) & ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.e.x & u_input.c, min(u_input.e.x, -7918i)), max(-vec3<i32>(u_input.e.x, -14846i, u_input.c), vec3<i32>(u_input.e.x, u_input.e.x, -8509i)));
    global0 = 25450u;
    let var_1 = arg_2;
    return func_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(firstLeadingBit(arg_1), ~arg_1, ~arg_0, _wgslsmith_clamp_u32(u_input.a.x, 24667u, arg_1)), _wgslsmith_sub_vec4_u32(max(vec4<u32>(u_input.a.x, 21045u, 11866u, 32466u), _wgslsmith_add_vec4_u32(vec4<u32>(43767u, 1u, 98589u, u_input.a.x), vec4<u32>(arg_1, arg_1, 92705u, arg_0))), reverseBits(~vec4<u32>(3014u, arg_0, u_input.a.x, arg_1)))), func_4(arg_0, func_4(~u_input.a.x & 4294967295u, global2[_wgslsmith_index_u32(func_2(~4294967295u, u_input.c | u_input.b, vec2<i32>(0i, 1i) >> (u_input.a.zy % vec2<u32>(32u)), Struct_2(vec3<i32>(19053i, -7963i, u_input.e.x), vec4<bool>(true, global1.x, global1.x, false), Struct_1(arg_3), var_1, -2238f)), 8u)], _wgslsmith_sub_u32(u_input.a.x, arg_0)), 4294967295u), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.a.x, 18885u, func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.a)) + global3.a) - func_1().a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a - var_0.e) * _wgslsmith_div_f32(1662f, global3.a)) - -1000f), -977f, -1876f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.a)) - _wgslsmith_div_f32(global3.a, var_0.c.a))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.e, _wgslsmith_f_op_f32(max(-1000f, -264f)), -181f, func_1().a))))));
    var_0 = func_4(1u >> ((4294967295u & ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) % 32u), Struct_2(vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(15112i, 2147483647i)), -44764i, _wgslsmith_mod_i32(reverseBits(var_0.a.x), _wgslsmith_mult_i32(61903i, -5907i))), func_4(u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 8u)], 0u).b, Struct_1(-633f), var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1092f * global3.a)))), ~firstTrailingBit(u_input.a.x ^ 34077u) << (u_input.a.x % 32u));
    global1 = func_4(max(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 1u), global2[_wgslsmith_index_u32(28992u, 8u)], u_input.a.x).b.xxz;
    var var_2 = func_4(0u, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~1u) ^ u_input.a.x, ~(~_wgslsmith_add_u32(34358u, u_input.a.x))), 8u)], 1u);
    var var_3 = func_5(firstLeadingBit(1u), ~_wgslsmith_sub_u32(25648u, u_input.a.x & countOneBits(u_input.a.x)), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-502f))));
    var var_4 = abs(min(-1536i << (_wgslsmith_div_u32(0u, u_input.a.x) % 32u), _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, u_input.d), 404i)));
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(1831u, u_input.a.x, Struct_1(665f), var_0.d.a).e)))), _wgslsmith_f_op_f32(-371f - 1029f), 1259f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(370f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1601f) + global3.a) * var_0.e), _wgslsmith_f_op_vec3_f32(trunc(var_1.xyw)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 1057f) - _wgslsmith_f_op_f32(-1353f + -900f)), -1877f))), -var_3.a.x, 41031i);
}

