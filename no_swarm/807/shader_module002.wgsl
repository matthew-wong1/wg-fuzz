struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(2166f, -1307f, 154f, -919f, 194f, 918f, 1027f, 1000f, -2130f, -203f, -189f, 2169f, -577f, -670f, -1559f, -774f, -170f, 245f, -619f, -2009f, -1000f, 788f, 602f, 491f, 1209f, -1072f, 1000f, -179f, -1000f);

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<u32>(49742u, 29708u, 1u, 96969u), -525f, vec2<u32>(1u, 1u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = global1[_wgslsmith_index_u32(24582u, 1u)];
    var var_1 = 0u;
    global1 = array<Struct_1, 1>();
    global1 = array<Struct_1, 1>();
    var var_2 = (1u & ~_wgslsmith_dot_vec2_u32(var_0.a.yw, ~var_0.a.yx)) == var_0.a.x;
    return vec3<bool>(all(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(1u, 29u)] != var_0.b), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true))), true, false);
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    var var_0 = func_3(-1i, _wgslsmith_add_vec4_i32(u_input.d, select(~u_input.d, max(u_input.d, u_input.d), vec4<bool>(any(vec2<bool>(false, false)), true, true, u_input.b >= u_input.b))));
    global1 = array<Struct_1, 1>();
    global0 = array<f32, 29>();
    let var_1 = Struct_2(~vec4<u32>(u_input.c.x | u_input.b, u_input.b << (1u % 32u), _wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(21046u, u_input.b)), u_input.b), any(select(!(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), !vec4<bool>(var_0.x, true, false, false), true)), 1i, Struct_1(min(firstTrailingBit(select(vec4<u32>(u_input.c.x, u_input.b, 20086u, u_input.c.x), vec4<u32>(61750u, u_input.b, 1u, u_input.c.x), var_0.x)), vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 1u, 1u, 3115u)), -153f, countOneBits(vec2<u32>(abs(57007u), u_input.b))), abs(~vec3<u32>(_wgslsmith_mult_u32(1u, 1u), 1u, _wgslsmith_sub_u32(u_input.b, u_input.b))));
    var_0 = !vec3<bool>(!any(!vec3<bool>(var_0.x, true, var_1.b)), true, ~1u <= u_input.b);
    return var_1.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: vec2<bool>) -> vec4<u32> {
    global1 = array<Struct_1, 1>();
    let var_0 = all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(any(arg_3), arg_3.x, false, true), func_2(arg_2.yz) == 1u), vec4<bool>(arg_3.x, false, true, func_3(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), firstLeadingBit(arg_2)).x), arg_3.x));
    let var_1 = ~countOneBits(_wgslsmith_add_u32(arg_1.x, _wgslsmith_mult_u32(abs(0u), min(0u, arg_0.a.x))));
    global1 = array<Struct_1, 1>();
    global0 = array<f32, 29>();
    return vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0.a, arg_0.a), ~4294967295u, firstTrailingBit(arg_1.x), 52169u);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: u32) -> vec3<u32> {
    let var_0 = vec3<i32>(u_input.a.x >> (1u % 32u), ~(_wgslsmith_clamp_i32(u_input.a.x, 2147483647i >> (arg_3 % 32u), 0i) << (u_input.c.x % 32u)), 62610i);
    var var_1 = ~arg_3;
    var var_2 = Struct_2(~func_1(Struct_1(arg_2, global0[_wgslsmith_index_u32(arg_3 << (2944u % 32u), 29u)], vec2<u32>(47624u, 78990u)), vec3<u32>(1u, min(arg_3, u_input.b), func_1(global1[_wgslsmith_index_u32(u_input.c.x, 1u)], vec3<u32>(arg_3, u_input.b, 1u), u_input.d, arg_0.yx).x), vec4<i32>(countOneBits(u_input.a.x), _wgslsmith_mod_i32(-74307i, -57999i), u_input.d.x, ~arg_1.x), func_3(i32(-1i) * -1i, ~u_input.d).yy), true && !any(select(arg_0.zx, arg_0.yx, arg_0.x)), arg_1.x, Struct_1(firstLeadingBit(abs(vec4<u32>(0u, 2381u, 4294967295u, arg_2.x))) << (~max(vec4<u32>(13382u, 0u, 0u, 4294967295u), vec4<u32>(1u, 7995u, arg_3, 87558u)) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(func_2(firstLeadingBit(vec2<i32>(2147483647i, arg_1.x)) & ~arg_1), 29u)], ~(firstLeadingBit(vec2<u32>(arg_2.x, 4294967295u)) & (arg_2.xy | arg_2.zy))), _wgslsmith_add_vec3_u32(arg_2.wzw, vec3<u32>(arg_3, 1u, 1u | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 48363u, 63143u), vec3<u32>(arg_2.x, 4294967295u, arg_2.x)))));
    var var_3 = var_2.c;
    global1 = array<Struct_1, 1>();
    return _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(92483u >> (arg_3 % 32u), u_input.c.x, select(4294967295u, u_input.b, arg_0.x)), arg_2.xzx) ^ vec3<u32>(23309u, _wgslsmith_sub_u32(arg_2.x, 1u), var_2.a.x), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.b, 0u, arg_2.x)), vec3<u32>(arg_2.x, u_input.b & 35568u, firstTrailingBit(var_2.e.x))), arg_2.zxx));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(arg_0.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1214f, -1608f, arg_1.x, -707f)), vec4<f32>(global0[_wgslsmith_index_u32(arg_0.a.a.x, 29u)], 2280f, arg_0.b, arg_2.b), vec4<bool>(arg_0.a.b, true, arg_0.a.b, arg_0.a.b))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b, arg_1.x, -107f, 568f), vec4<f32>(arg_1.x, global0[_wgslsmith_index_u32(arg_0.d, 29u)], -1053f, global0[_wgslsmith_index_u32(u_input.b, 29u)])))))) - arg_1));
    var var_1 = arg_0;
    global1 = array<Struct_1, 1>();
    var var_2 = i32(-1i) * -43182i;
    let var_3 = var_1.a.a;
    return StorageBuffer(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(~13932u, _wgslsmith_dot_vec2_u32(u_input.c, arg_0.a.e.yz)) >> (u_input.b % 32u)), 29u)], arg_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(-1i, u_input.a.x), 2147483647i);
    global0 = array<f32, 29>();
    global1 = array<Struct_1, 1>();
    global0 = array<f32, 29>();
    global1 = array<Struct_1, 1>();
    let var_1 = -121f;
    let x = u_input.a;
    s_output = func_5(Struct_3(Struct_2(reverseBits(~vec4<u32>(70993u, 14259u, u_input.b, u_input.c.x)), true, 1i, Struct_1(~vec4<u32>(u_input.c.x, 4294967295u, 53398u, 0u), _wgslsmith_f_op_f32(select(541f, -733f, false)), vec2<u32>(u_input.c.x, u_input.b)), func_4(vec3<bool>(false, false, true), vec2<i32>(-28054i, u_input.d.x) << (u_input.c % vec2<u32>(32u)), func_1(Struct_1(vec4<u32>(u_input.c.x, 0u, 53438u, u_input.b), var_1, u_input.c), vec3<u32>(u_input.b, 35572u, u_input.c.x), u_input.d, vec2<bool>(true, true)), ~u_input.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(min(58983u, 0u), 29u)] * _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(15841u, 29u)]))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(u_input.c.x, 29u)], -1153f, 432f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(940f, 1000f, 1000f, -805f))) + vec4<f32>(108f, 917f, -1249f, -1068f))), 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1245f, global0[_wgslsmith_index_u32(u_input.c.x, 29u)], -738f, 1066f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1245f, global0[_wgslsmith_index_u32(0u, 29u)], 495f, global0[_wgslsmith_index_u32(25749u, 29u)]))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1112f), global0[_wgslsmith_index_u32(75177u, 29u)], global0[_wgslsmith_index_u32(~11498u, 29u)], _wgslsmith_f_op_f32(-var_1)), (global0[_wgslsmith_index_u32(24088u, 29u)] < -1785f) && true))), Struct_1(reverseBits(~_wgslsmith_add_vec4_u32(vec4<u32>(21122u, u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, u_input.b, 82402u, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1369f))), _wgslsmith_add_vec2_u32(vec2<u32>(1u, abs(11431u)), u_input.c)));
}

