struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-370f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -740f) * _wgslsmith_f_op_f32(ceil(-659f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-927f, 832f, false)) * _wgslsmith_f_op_f32(-588f - 443f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1283f + -2482f))))), Struct_2(true, u_input.a, 681u, u_input.b & firstTrailingBit(_wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(1i, u_input.b.x)))), !all(vec2<bool>(arg_0, false)) & !(!any(vec4<bool>(arg_0, arg_0, arg_0, arg_0))), Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, -615f, 1330f) * vec4<f32>(626f, -329f, -1694f, -1582f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1155f, 2071f, -319f, 586f), vec4<f32>(-417f, 1148f, 916f, -1064f))), vec4<f32>(1f, 1f, 1f, 1f), select(vec4<bool>(arg_0, false, false, true), vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(false, true, arg_0, false)))))));
    var var_1 = !(!(true & arg_0));
    let var_2 = select(!select(vec2<bool>(var_0.b.c < var_0.b.c, true), !select(vec2<bool>(true, true), vec2<bool>(true, arg_0), arg_0), false), vec2<bool>(!arg_0, var_0.c), var_0.c);
    let var_3 = Struct_1(var_0.d.a.xy, vec2<i32>(-11931i ^ u_input.a, u_input.a));
    let var_4 = var_0.a;
    return ~reverseBits(~(~var_0.b.c));
}

fn func_2(arg_0: Struct_3) -> vec3<f32> {
    var var_0 = Struct_1(arg_0.a.wz, vec2<i32>(-1i) * -u_input.b);
    var var_1 = abs(abs(vec4<u32>(~23294u, func_3(false), 105573u, ~1u) >> (vec4<u32>(1u, _wgslsmith_clamp_u32(1u, 115356u, 12072u), ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 7196u, 4294967295u), vec4<u32>(3299u, 15592u, 38819u, 1u))) % vec4<u32>(32u))));
    var var_2 = min(var_1.zw, var_1.zy);
    var_1 = select(~(~(~(vec4<u32>(1u, var_2.x, var_2.x, 0u) | vec4<u32>(1u, 30973u, 31533u, var_1.x)))), ~vec4<u32>(32075u, var_1.x, var_1.x, ~1u), !all(vec2<bool>(false, all(vec4<bool>(false, false, false, true)))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-arg_0.a.x))))), _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - 1000f))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1685f, _wgslsmith_f_op_f32(1762f * -149f), _wgslsmith_f_op_f32(-var_0.a.x))), arg_0.a.xzz));
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_3 {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f - -255f), _wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(-401f * -634f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec4<f32>(-579f, -687f, -1101f, 598f)))))));
    var_0 = abs(-select(firstTrailingBit(vec2<i32>(var_0.x, -25260i)), -vec2<i32>(u_input.a, var_0.x), false));
    let var_2 = u_input.b;
    var var_3 = var_1.x;
    return Struct_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec4<f32>(var_1.x, 1000f, var_1.x, var_1.x)))).x), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-833f - -1978f)), _wgslsmith_f_op_f32(ceil(var_1.x))))));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<u32>) -> vec3<i32> {
    let var_0 = arg_1.x;
    var var_1 = ~1i | _wgslsmith_clamp_i32(0i, arg_0.b.b, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), -32839i, ~47458i), ~(~2147483647i)));
    var_1 = _wgslsmith_mod_i32(-arg_0.b.b, ~_wgslsmith_sub_i32(abs(arg_0.b.d.x), ~arg_0.b.b));
    var_1 = arg_0.b.d.x | -2147483647i;
    var var_2 = u_input.a >> (arg_1.x % 32u);
    return ~min(reverseBits(vec3<i32>(~2147483647i, min(arg_0.b.b, u_input.a), ~(-84216i))), _wgslsmith_mod_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, arg_0.b.d.x), vec3<i32>(arg_0.b.d.x, arg_0.b.b, -13997i)), vec3<i32>(u_input.b.x, -2147483647i, 9007i) >> (arg_1.yzw % vec3<u32>(32u)), any(vec3<bool>(true, arg_0.c, true))), firstLeadingBit(min(vec3<i32>(0i, u_input.a, -1i), vec3<i32>(62564i, arg_0.b.d.x, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(reverseBits(reverseBits(vec3<i32>(17900i, -5276i, u_input.b.x))), func_4(Struct_5(_wgslsmith_div_f32(-296f, -2360f), Struct_2(true, u_input.b.x, 8546u, u_input.b), true, func_1(true, 0u)), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(1u, 10115u, 9595u, 8164u)), countOneBits(vec4<u32>(1u, 9582u, 48158u, 77459u))))) >> (1u % 32u);
    var_0 = min(26433i, -35316i);
    let var_1 = Struct_5(-827f, Struct_2(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), all(vec3<bool>(true, true, true)))), ~min(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(13143i, 4183i, u_input.a, u_input.a))), firstLeadingBit(1u), func_4(Struct_5(_wgslsmith_f_op_f32(535f + -2017f), Struct_2(true, u_input.a, 51439u, vec2<i32>(u_input.a, u_input.a)), select(true, true, false), func_1(false, 0u)), vec4<u32>(func_3(false), reverseBits(4294967295u), select(33042u, 23236u, false), 1u)).zy), all(vec3<bool>(true, false, all(vec3<bool>(true, true, true)))), func_1(!select(any(vec2<bool>(false, true)), false, false), ~_wgslsmith_sub_u32(~1u, ~4294967295u)));
    var var_2 = !(!(!(!vec2<bool>(var_1.b.a, true))));
    var var_3 = ~max(_wgslsmith_div_vec2_u32(vec2<u32>(func_3(false), var_1.b.c), vec2<u32>(var_1.b.c, var_1.b.c) >> (~vec2<u32>(3749u, var_1.b.c) % vec2<u32>(32u))), ~(~vec2<u32>(60107u, 23128u)));
    let var_4 = ~var_3.x;
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_3(var_1.d.a))).yz), countOneBits(-var_1.b.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.d.a + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_5.a.x, var_5.a.x, var_5.a.x, var_1.d.a.x))))))));
}

