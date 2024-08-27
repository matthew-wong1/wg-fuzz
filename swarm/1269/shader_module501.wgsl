struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = min(~(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, -11855i), vec2<i32>(-2147483647i, u_input.b))) & _wgslsmith_add_vec2_i32(vec2<i32>(arg_0, arg_0) & vec2<i32>(-16264i, 38656i), vec2<i32>(u_input.b, u_input.b))), -abs(~vec2<i32>(arg_0, 1i) & (vec2<i32>(38035i, u_input.b) ^ vec2<i32>(u_input.b, u_input.b))));
    var var_1 = u_input.a;
    var var_2 = 10397i < countOneBits(u_input.b);
    var var_3 = Struct_1(_wgslsmith_sub_vec4_i32(firstTrailingBit(reverseBits(countOneBits(vec4<i32>(var_0.x, arg_0, 27087i, -2147483647i)))), vec4<i32>(arg_0, 20132i, (arg_0 ^ u_input.b) | (var_0.x ^ -46365i), ~countOneBits(u_input.b))));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-637f, _wgslsmith_f_op_f32(f32(-1f) * -256f), 555f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1434f, -1046f, _wgslsmith_div_f32(-1910f, -1411f))) + vec3<f32>(-1190f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1213f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1402f))))));
    return var_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1162f * 481f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(275f * -308f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-485f)) - 540f)))));
    let var_1 = -firstTrailingBit(~vec2<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), -9011i));
    var var_2 = vec4<u32>(~80585u, _wgslsmith_mult_u32(u_input.a, 1u), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 0u);
    let var_3 = vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, max(arg_1, 7821i)), arg_0.a.zw), countOneBits(1i), 0i);
    global0 = var_2.x;
    return vec4<bool>(true && all(vec2<bool>(true, true)), false, !global1.x, -_wgslsmith_dot_vec4_i32(~arg_0.a, arg_0.a) < -reverseBits(~(-23816i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    var var_0 = func_4(arg_1, func_3(abs(arg_1.a.x)) << ((_wgslsmith_add_u32(u_input.c.x, u_input.a | u_input.c.x) << (112440u % 32u)) % 32u));
    var_0 = !select(!select(!vec4<bool>(false, true, arg_2.x, arg_2.x), !vec4<bool>(false, global1.x, false, var_0.x), !vec4<bool>(true, false, arg_2.x, false)), func_4(arg_1, arg_1.a.x), var_0.x);
    global1 = !(!vec4<bool>(var_0.x, all(var_0.xz) | any(vec4<bool>(global1.x, true, true, var_0.x)), true, !global1.x));
    var var_1 = arg_0;
    var var_2 = vec4<u32>(_wgslsmith_div_u32(139876u, 15713u), 1u, 4294967295u, ~(firstLeadingBit(49222u) | _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.c.x), u_input.c.xx, vec2<u32>(15467u, u_input.c.x)), u_input.c.yz | vec2<u32>(u_input.a, u_input.c.x))));
    return u_input.a;
}

fn func_1() -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.b, _wgslsmith_mult_i32(u_input.b, -12283i), 32591i, 0i), -_wgslsmith_div_vec4_i32(vec4<i32>(-20152i, 2147483647i, u_input.b, 5627i), vec4<i32>(-44450i, -2147483647i, u_input.b, -1i))), abs(vec4<i32>(u_input.b, _wgslsmith_sub_i32(u_input.b, 1i), abs(1i), u_input.b))));
    var var_1 = Struct_1(~vec4<i32>(67719i << (u_input.a % 32u), -2147483647i, _wgslsmith_dot_vec3_i32(var_0.a.xzw, ~var_0.a.yyx), 0i));
    let var_2 = Struct_1(-var_1.a);
    global1 = !vec4<bool>(select(true, global1.x, !all(vec4<bool>(global1.x, global1.x, global1.x, global1.x))), !global1.x, true || any(select(global1.wwz, vec3<bool>(false, true, global1.x), global1.x)), !(_wgslsmith_f_op_f32(step(1830f, -1000f)) <= _wgslsmith_f_op_f32(f32(-1f) * -558f)));
    var var_3 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(0u, select(33286u, func_2(Struct_1(var_1.a), Struct_1(vec4<i32>(var_0.a.x, var_2.a.x, var_0.a.x, 1i)), global1.xx), global1.x)), u_input.c.x), u_input.a & firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), select(u_input.c.xy, vec2<u32>(u_input.a, u_input.c.x), false))));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, firstLeadingBit(~111989u), ~(~(~2200u))), vec3<u32>(max(select(31204u, 8327u, global1.x) >> (u_input.c.x % 32u), u_input.a), 4294967295u, abs(~(~4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(u_input.c.x == select(func_1(), 1u, true), true, global1.x), global1.xxz, select(select(select(!global1.zyw, vec3<bool>(true, global1.x, false), true), !global1.wyw, false), !(!(!vec3<bool>(true, global1.x, global1.x))), global1.xzw));
    let var_1 = Struct_1(min(~(abs(vec4<i32>(4071i, 7945i, u_input.b, 41809i)) >> (abs(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_div_i32(u_input.b, u_input.b), -30610i, -16899i ^ u_input.b, ~u_input.b) | select(vec4<i32>(u_input.b, u_input.b, 23100i, u_input.b) << (vec4<u32>(0u, u_input.c.x, 52866u, 28407u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 1i, -22127i, -20483i), vec4<i32>(u_input.b, u_input.b, -1662i, u_input.b)), !vec4<bool>(global1.x, false, global1.x, true))));
    global1 = select(vec4<bool>(any(var_0.zy), false, !global1.x, var_0.x), !vec4<bool>(all(vec2<bool>(global1.x, true)), true, true, global1.x), vec4<bool>(!var_0.x, select(abs(u_input.a), reverseBits(63474u), any(vec3<bool>(false, false, false))) <= u_input.a, true, all(var_0.zz)));
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -270f)));
    var_0 = global1.xwz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~abs(u_input.c.yz) >> (abs(~vec2<u32>(u_input.c.x, 1u)) % vec2<u32>(32u)), ~(vec2<u32>(u_input.c.x, u_input.a) ^ countOneBits(vec2<u32>(u_input.c.x, 0u)))), 4294967295u, ~_wgslsmith_mod_i32(2147483647i, var_1.a.x), 4294967295u);
}

