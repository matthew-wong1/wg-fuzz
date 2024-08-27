struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: f32 = -878f;

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-696f - -1552f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(388f * 1020f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-869f * _wgslsmith_f_op_f32(f32(-1f) * -1459f))));
    var var_0 = u_input.c >= ~_wgslsmith_dot_vec4_i32((vec4<i32>(1i, u_input.c, 25829i, u_input.c) >> (vec4<u32>(26110u, 28171u, arg_0.a.x, 72904u) % vec4<u32>(32u))) << (vec4<u32>(4294967295u, 93427u, arg_0.a.x, u_input.b) % vec4<u32>(32u)), abs(~vec4<i32>(global0.x, -20274i, u_input.c, global0.x)));
    global3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-28520i, ~global0.x, -(21379i | global0.x) << (_wgslsmith_div_u32(arg_0.a.x | u_input.b, u_input.a.x) % 32u), select(_wgslsmith_dot_vec4_i32(vec4<i32>(-16473i, u_input.c, u_input.c, 21677i) >> (vec4<u32>(3024u, 4294967295u, arg_0.a.x, 47864u) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, 16437i, 11135i, -46319i)), _wgslsmith_div_i32(21927i, global0.x >> (4294967295u % 32u)), true | any(global1.zyy))), vec4<i32>(-55006i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0.x), global0.yx), u_input.c, u_input.c));
    var var_1 = false;
    let var_2 = select(vec4<u32>(~arg_0.a.x, 32715u, 4294967295u, u_input.b | ~(~u_input.a.x)), select(_wgslsmith_mod_vec4_u32(~firstLeadingBit(vec4<u32>(1u, 33904u, 45691u, u_input.b)), vec4<u32>(_wgslsmith_clamp_u32(6241u, u_input.b, 4294967295u), ~4294967295u, ~arg_0.a.x, arg_0.a.x)), reverseBits(vec4<u32>(65897u, arg_0.a.x, 1u, arg_0.a.x)) ^ ~(~vec4<u32>(u_input.b, 4294967295u, arg_0.a.x, arg_0.a.x)), true), all(!select(vec4<bool>(true, global1.x, true, false), vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(false, global1.x, true, global1.x))) || global1.x);
    return !vec4<bool>(592f == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-200f)), _wgslsmith_f_op_f32(select(-2644f, -1766f, global1.x)))), true != !all(vec4<bool>(global1.x, global1.x, true, global1.x)), !global1.x, all(select(global1.wwx, vec3<bool>(global1.x, global1.x, true), global1.x)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = true;
    global1 = func_3(Struct_1(~u_input.a.zy));
    var var_1 = Struct_2(abs(_wgslsmith_add_i32(20989i, 23979i)), 4294967295u, Struct_1(max(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(u_input.b, u_input.b)), max(vec2<u32>(u_input.a.x, 55631u), vec2<u32>(u_input.b, u_input.a.x))), u_input.a.yy >> (u_input.a.yx % vec2<u32>(32u)))), Struct_1(vec2<u32>(countOneBits(u_input.a.x), 1u)), _wgslsmith_mod_i32(-(i32(-1i) * -1i), global0.x));
    var var_2 = Struct_3(var_1.c, ~78668u);
    var var_3 = -18366i;
    return Struct_1(abs(var_2.a.a));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(arg_0, _wgslsmith_div_u32(1u, ~1u));
    let var_1 = _wgslsmith_sub_vec2_u32(arg_0.a, ~(vec2<u32>(arg_0.a.x, ~35983u) << (u_input.a.xx % vec2<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1805f)));
    var var_3 = Struct_2(_wgslsmith_add_i32(~(-(global0.x >> (var_1.x % 32u))), u_input.c), arg_0.a.x, arg_0, func_2(any(vec2<bool>(select(global1.x, true, global1.x), false))), -u_input.c);
    var var_4 = _wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_mult_i32(global0.x, 2147483647i >> (u_input.a.x % 32u))), ~var_3.e, _wgslsmith_sub_i32(u_input.c >> (~4294967295u % 32u), abs(1i)), u_input.c), abs(vec4<i32>(12175i, -firstLeadingBit(-41754i), var_3.e, ~(-13129i))));
    return Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -abs(var_4.x)), -(global0.zy >> (var_1 % vec2<u32>(32u))) & vec2<i32>(~global0.x, firstTrailingBit(1i))), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(36280u, var_0.b, 38049u)) & firstLeadingBit(vec3<u32>(var_1.x, 41034u, arg_0.a.x) ^ u_input.a), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(var_3.c.a.x, 1u, var_0.a.a.x), u_input.a), vec3<u32>(_wgslsmith_clamp_u32(0u, 1u, 4294967295u), 1u ^ arg_0.a.x, 1u))), Struct_1(vec2<u32>(arg_0.a.x, ~(var_1.x ^ u_input.b))), func_2(global1.x), -1i);
}

fn func_1(arg_0: u32) -> vec4<bool> {
    var var_0 = -(reverseBits(-vec3<i32>(-1i, -1i, global0.x) & (vec3<i32>(u_input.c, u_input.c, global0.x) | vec3<i32>(2147483647i, 43987i, global0.x))) & _wgslsmith_mod_vec3_i32(vec3<i32>(7593i, global0.x, ~1i), ~firstTrailingBit(vec3<i32>(-35781i, global0.x, -4068i))));
    var var_1 = func_4(func_2(true));
    let var_2 = var_0.x;
    var var_3 = func_3(func_2(u_input.c == -max(-53638i, -1i))).yw;
    var var_4 = func_3(var_1.c).xxz;
    return vec4<bool>(true, (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-120f, -1084f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-183f)))) == any(select(!global1.zwy, vec3<bool>(var_4.x, var_4.x, false), true)), var_3.x, var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!(!(!select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(false, global1.x, true, false)))), vec4<bool>(true, all(func_1(62630u)), global1.x, global1.x), select(vec4<bool>(false, all(vec4<bool>(true, true, true, global1.x)), false, all(select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, false), false))), vec4<bool>(false, global1.x, true, false), func_1(~(72796u >> (0u % 32u)))));
    let var_0 = vec2<bool>(true, global1.x);
    let var_1 = any(vec4<bool>(true, global1.x, func_3(func_4(Struct_1(vec2<u32>(u_input.b, 4294967295u))).d).x, any(!select(vec3<bool>(global1.x, global1.x, global1.x), global1.wxy, false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1353f)), _wgslsmith_f_op_f32(floor(1840f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-232f, -155f))), _wgslsmith_f_op_f32(trunc(-918f))), 1258f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(401f + _wgslsmith_f_op_f32(min(1340f, -117f))) * _wgslsmith_f_op_f32(-631f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2250f))))));
}

