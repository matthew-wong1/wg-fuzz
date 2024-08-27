struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: u32 = 2572u;

var<private> global2: array<Struct_1, 29>;

var<private> global3: array<i32, 28>;

var<private> global4: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), arg_1.x, 1977f, _wgslsmith_f_op_f32(min(456f, -659f))));
    var var_1 = ~firstLeadingBit(abs(-_wgslsmith_mod_vec3_i32(u_input.a, u_input.a)));
    let var_2 = 2147483647i;
    let var_3 = vec4<u32>(~u_input.c.x, _wgslsmith_add_u32(_wgslsmith_div_u32(31481u, ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.b.x, 14u)], 14u)]), ~60994u >> (~min(u_input.b.x, 41108u) % 32u)), abs(~u_input.c.x), ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(1u, 14u)], 4294967295u), ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42245u, 14u)], 14u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68396u, 14u)], 14u)])), ~global0[_wgslsmith_index_u32(114451u, 14u)]));
    global1 = _wgslsmith_mod_u32(firstLeadingBit(select(~var_3.x, global0[_wgslsmith_index_u32(~var_3.x, 14u)], false)), 3907u);
    return u_input.c.x;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = select(!vec3<bool>(all(vec3<bool>(arg_2.e.x, arg_1.e.x, arg_0.x)), any(!vec2<bool>(arg_1.e.x, arg_1.e.x)), any(!vec4<bool>(true, false, true, arg_2.e.x))), select(select(vec3<bool>(true, arg_0.x, u_input.c.x == arg_2.d), select(vec3<bool>(false, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, arg_1.e.x, arg_1.e.x), true), true), !(!select(vec3<bool>(true, arg_0.x, false), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_1.e.x, arg_0.x, true))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(arg_1.e.x, arg_2.e.x, true), arg_2.e.x), vec3<bool>(arg_2.e.x, true, arg_0.x), false), vec3<bool>(true, arg_2.e.x, true), vec3<bool>(all(vec4<bool>(false, true, false, false)), arg_1.e.x, select(false, false, true)))), !select(!(!vec3<bool>(false, arg_0.x, true)), vec3<bool>(!arg_2.e.x, true, arg_2.e.x), arg_1.e.x));
    var var_1 = _wgslsmith_dot_vec3_u32(~u_input.b.yzx, vec3<u32>(~arg_2.d >> (arg_1.d % 32u), 54329u, ~(~_wgslsmith_sub_u32(4294967295u, 71708u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1270f, -1802f, -1000f, _wgslsmith_div_f32(-1337f, -1000f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-252f, _wgslsmith_f_op_f32(min(158f, 381f)), _wgslsmith_f_op_f32(min(1027f, -2034f)), _wgslsmith_f_op_f32(sign(205f)))))));
    var var_3 = Struct_1(((~global3[_wgslsmith_index_u32(14365u, 28u)] >> (firstLeadingBit(1u) % 32u)) & firstLeadingBit(_wgslsmith_clamp_i32(46240i, arg_1.c.x, arg_2.b.x))) | ~select(~global3[_wgslsmith_index_u32(u_input.c.x, 28u)], arg_1.c.x, true), arg_2.b ^ vec3<i32>(~arg_2.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 28u)], ~_wgslsmith_div_i32(1i, -20410i)), ~abs(vec2<i32>(abs(u_input.a.x), firstLeadingBit(arg_1.a))), 4294967295u, !arg_0);
    let var_4 = arg_1;
    return !select(arg_0, vec2<bool>(!arg_2.e.x, arg_2.e.x), !(!all(vec4<bool>(false, false, var_4.e.x, var_3.e.x))));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: i32) -> Struct_1 {
    global1 = ~global0[_wgslsmith_index_u32(~(~(~(~1u))), 14u)];
    global1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(func_2(1f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1640f, -1503f, -735f, -721f))), 65311u & global0[_wgslsmith_index_u32(u_input.c.x, 14u)]), reverseBits(u_input.c.x));
    global0 = array<u32, 14>();
    var var_0 = arg_0;
    let var_1 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), func_3(vec2<bool>(true, all(vec4<bool>(false, true, true, true))), Struct_1(-24617i, u_input.a << (u_input.b.wzx % vec3<u32>(32u)), ~vec2<i32>(arg_0, 22760i), min(u_input.c.x, u_input.c.x), select(vec2<bool>(false, false), vec2<bool>(false, true), true)), global2[_wgslsmith_index_u32(~63542u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(92570u, 14u)], 70407u), vec2<u32>(39105u, 9804u)), 29u)]), !func_3(select(vec2<bool>(false, false), vec2<bool>(true, false), false), global2[_wgslsmith_index_u32(38902u, 29u)], global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 14u)], 29u)])), vec2<bool>(false | any(func_3(vec2<bool>(false, true), global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(u_input.c.x, 29u)])), false), !select(vec2<bool>(false, any(vec4<bool>(false, false, false, true))), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true))));
    return Struct_1(abs(arg_0), vec3<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-2147483647i, -2147483647i, -1i)), vec3<i32>(25504i, 2147483647i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 28u)])), max(~arg_2, 2147483647i), -20356i | arg_1.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 14u)], u_input.c.x, 0u), vec3<u32>(62183u, u_input.b.x, 14486u)), global0[_wgslsmith_index_u32(9927u, 14u)] << (u_input.c.x % 32u), 1u), vec3<u32>(1u, func_2(1047f, vec4<f32>(190f, 1734f, 193f, 2290f)), _wgslsmith_mod_u32(25951u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)]))) % vec3<u32>(32u)), u_input.a.zy, 35500u, vec2<bool>(true, var_1.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(u_input.a.x, vec3<i32>(i32(-1i) * -8529i, abs(0i), _wgslsmith_mult_i32(-u_input.a.x | (arg_2.x & 10164i), u_input.a.x)), vec2<i32>(min(arg_3.b.x, _wgslsmith_div_i32(0i, u_input.a.x) >> (arg_1.d % 32u)), _wgslsmith_clamp_i32(~(-4007i) << (_wgslsmith_mult_u32(u_input.c.x, global0[_wgslsmith_index_u32(arg_0.d, 14u)]) % 32u), -49436i, -countOneBits(global3[_wgslsmith_index_u32(1u, 28u)]))), func_1(countOneBits(-55162i), vec4<i32>(~(arg_2.x ^ -17484i), i32(-1i) * -1i, global3[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_mod_i32(arg_0.a, 8700i)), arg_3.b.x).d, !vec2<bool>(true, !any(vec4<bool>(arg_0.e.x, false, true, arg_3.e.x))));
    global4 = _wgslsmith_div_u32(arg_1.d, _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0.d, countOneBits(arg_1.d)), arg_0.d)) >> (abs(4294967295u) % 32u);
    global3 = array<i32, 28>();
    var var_1 = vec4<u32>(var_0.d, 7919u, ~(~abs(global0[_wgslsmith_index_u32(func_1(14016i, vec4<i32>(0i, -47393i, 77403i, 6063i), var_0.a).d, 14u)])), _wgslsmith_mult_u32(reverseBits(var_0.d), ~func_2(_wgslsmith_f_op_f32(f32(-1f) * -911f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -692f, -1249f, 838f)))));
    global1 = 1u;
    return func_1(17461i, ~(~(~(vec4<i32>(69600i, 1i, global3[_wgslsmith_index_u32(4294967295u, 28u)], var_0.b.x) >> (vec4<u32>(arg_1.d, u_input.b.x, arg_3.d, u_input.c.x) % vec4<u32>(32u))))), global3[_wgslsmith_index_u32(0u, 28u)] & (i32(-1i) * -33046i));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-705f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-350f - 513f)))))));
    let var_1 = arg_0;
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_2, ~global0[_wgslsmith_index_u32(abs(4294967295u | var_1.d), 14u)]), _wgslsmith_dot_vec4_u32(u_input.b << (min(vec4<u32>(var_1.d, 423u, 0u, 75200u), vec4<u32>(arg_0.d, 0u, u_input.c.x, global0[_wgslsmith_index_u32(arg_0.d, 14u)])) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1, 4294967295u), vec3<u32>(arg_0.d, arg_2, 36062u)), ~4294967295u, func_4(Struct_1(var_1.a, vec3<i32>(u_input.a.x, global3[_wgslsmith_index_u32(4294967295u, 28u)], -12650i), var_1.b.zz, 0u, var_1.e), var_1, vec2<i32>(40390i, 19297i), arg_0).d, ~arg_2) ^ ~(~vec4<u32>(arg_0.d, 67131u, var_1.d, 1u)))), 29u)];
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1575f, _wgslsmith_f_op_f32(-1193f * _wgslsmith_f_op_f32(-631f - 1000f)), true && func_4(Struct_1(12902i, u_input.a, vec2<i32>(arg_0.a, -2147483647i), var_2.d, var_2.e), var_1, vec2<i32>(var_2.a, var_2.b.x), Struct_1(-1i, u_input.a, vec2<i32>(u_input.a.x, 2147483647i), 25453u, var_2.e)).e.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) + var_0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(499f, _wgslsmith_f_op_f32(var_0 * var_0))), var_0))));
    var var_4 = reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(arg_1, var_1.d, u_input.b.x) >> (vec3<u32>(arg_1, u_input.c.x, 0u) % vec3<u32>(32u)), u_input.b.xww, all(arg_0.e)), u_input.b.zyx, vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(arg_0.d, 14u)], 76275u, var_1.d)), ~arg_0.d)), ~u_input.b.zyx, vec3<u32>(arg_0.d, ~(~var_1.d), 0u)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(386f, 1327f, var_0)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, 1028f, var_0))), !arg_0.e.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-904f, 540f, 655f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1047f, -183f, var_0), vec3<f32>(592f, var_0, -803f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_5(func_4(func_1(u_input.a.x, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, global3[_wgslsmith_index_u32(4480u, 28u)], global3[_wgslsmith_index_u32(23520u, 28u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 28u)]), vec4<i32>(1i, 24924i, 11135i, u_input.a.x)), -2147483647i), global2[_wgslsmith_index_u32(~11164u, 29u)], select(u_input.a.zy, u_input.a.yz, true), func_1(13206i, abs(vec4<i32>(u_input.a.x, u_input.a.x, 1i, global3[_wgslsmith_index_u32(0u, 28u)])), -1i)), u_input.b.x, ~select(1u, 68803u, true))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(20095u, 83962u, ~1u), 14u)]);
}

