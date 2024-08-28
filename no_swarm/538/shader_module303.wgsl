struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec4<i32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(-1i, 1454i, 2147483647i, i32(-2147483648), 0i, -22468i, -1i, i32(-2147483648), 13986i, i32(-2147483648), 1i, i32(-2147483648), -22921i, 22120i, 28770i, -21235i, i32(-2147483648), 0i, -24091i, 0i, 33664i, -1i, 20524i, -65384i, 12437i, 0i);

var<private> global1: array<i32, 16>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> u32 {
    global1 = array<i32, 16>();
    let var_0 = 240f;
    let var_1 = Struct_4(firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(1u, 16u)], abs(global1[_wgslsmith_index_u32(0u, 16u)]) & 1i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, 2147483647i, global0[_wgslsmith_index_u32(40828u, 26u)], u_input.a.x), vec4<i32>(global1[_wgslsmith_index_u32(48743u, 16u)], 1i, global0[_wgslsmith_index_u32(1u, 26u)], -2147483647i)), ~vec4<i32>(global1[_wgslsmith_index_u32(1u, 16u)], arg_0, global0[_wgslsmith_index_u32(1u, 26u)], 2147483647i)), -2985i)), Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2481f, -1000f, 636f, var_0))))), -1i >> ((countOneBits(16396u) << (~4294967295u % 32u)) % 32u)), vec4<i32>(-_wgslsmith_mod_i32(-44102i, -56385i) << (_wgslsmith_add_u32(abs(0u), 1u) % 32u), 19639i, ~u_input.a.x, global1[_wgslsmith_index_u32(1u, 16u)]), select(vec2<bool>(true, false), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, false))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - 1749f) * 412f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(441f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(var_1.b.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_1.b.a, vec4<f32>(-1498f, -404f, 1747f, var_0))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-706f, var_1.b.a.x, 1000f, -2022f))))))));
    var var_3 = _wgslsmith_mult_u32(select(1u & (abs(0u) ^ _wgslsmith_clamp_u32(4294967295u, 0u, 0u)), 1u, true), _wgslsmith_mult_u32(min(_wgslsmith_clamp_u32(_wgslsmith_div_u32(6100u, 7474u), _wgslsmith_div_u32(4294967295u, 1u), 0u >> (1u % 32u)), 0u), ~(~43941u)));
    return ~1u;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(~func_3(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(17782u, 61889u, 26472u), 26u)]), ~45226u);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(255f, 808f, -3326f, 156f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1831f, -1608f, 155f, 1539f)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1403f), _wgslsmith_f_op_f32(-354f * -143f))), 1411f, 1418f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -805f), _wgslsmith_f_op_f32(975f - 161f)))), false)), global0[_wgslsmith_index_u32(~56062u, 26u)]);
    var var_2 = abs(vec3<u32>(_wgslsmith_sub_u32(25794u, var_0.b), abs(_wgslsmith_mult_u32(~var_0.a, var_0.b)), _wgslsmith_mod_u32(var_0.a & var_0.a, ~var_0.b) ^ max(~var_0.b, func_3(66314i))));
    var_2 = firstLeadingBit(~(~vec3<u32>(1u, var_2.x, firstLeadingBit(var_2.x))));
    var_2 = ~_wgslsmith_div_vec3_u32(~max(~vec3<u32>(var_2.x, 61657u, var_2.x), ~vec3<u32>(var_2.x, 1u, var_2.x)), vec3<u32>(~var_2.x, var_0.b, ~var_0.b));
    return Struct_3(var_2.x, 0u);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(1354u, 16u)];
    var var_1 = Struct_1(!select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1726f * _wgslsmith_f_op_f32(-arg_1.a.x))) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(425f + -1846f) * _wgslsmith_f_op_f32(arg_1.a.x - -505f)))), true);
    var var_2 = Struct_4(~(vec4<i32>(arg_0.x, i32(-1i) * -2147483647i, u_input.a.x, 1i) << (vec4<u32>(5180u, reverseBits(4294967295u), arg_2.b, ~arg_2.a) % vec4<u32>(32u))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.a, vec4<f32>(-490f, arg_1.a.x, -409f, arg_1.a.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(617f, 125f, arg_1.a.x, 258f) + vec4<f32>(arg_1.a.x, -217f, arg_1.a.x, arg_1.a.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_1.a)), _wgslsmith_f_op_vec4_f32(-arg_1.a))), ~select(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(arg_2.a, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], -1i), arg_0.wyz), u_input.a.x, var_1.a.x & true)), arg_0, var_1.a.zx, 1296f);
    var_1 = Struct_1(select(!select(vec3<bool>(var_1.b, var_1.c, var_2.d.x), !var_1.a, vec3<bool>(var_1.c, false, false)), vec3<bool>(!var_2.d.x, var_2.d.x, var_2.d.x), var_1.a), !(true && !select(true, true, false)), var_1.b || (var_2.d.x && any(!vec4<bool>(true, false, true, var_2.d.x))));
    var_2 = Struct_4(reverseBits(_wgslsmith_mult_vec4_i32(min(vec4<i32>(global0[_wgslsmith_index_u32(57145u, 26u)], arg_0.x, arg_0.x, 21951i), vec4<i32>(-17754i, var_2.c.x, u_input.a.x, -3675i)), vec4<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(41153u, 16u)], 2147483647i), 38648i, -var_2.b.b, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2.a, arg_2.a), vec3<u32>(4294967295u, 36521u, arg_2.a)), 16u)]))), arg_1, select(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(var_2.c, firstLeadingBit(var_2.c)), firstTrailingBit(min(vec4<i32>(-20959i, var_2.b.b, -39827i, 0i), vec4<i32>(-1i, u_input.a.x, 0i, 17498i)))), vec4<i32>(-2147483647i, -2147483647i, -max(1i, global1[_wgslsmith_index_u32(71854u, 16u)]), _wgslsmith_dot_vec3_i32(select(u_input.a, vec3<i32>(global1[_wgslsmith_index_u32(arg_2.b, 16u)], -9513i, -12852i), var_1.a), -vec3<i32>(0i, u_input.a.x, arg_0.x))), vec4<bool>(!any(var_1.a.xx), var_1.b, false, false)), var_1.a.zy, arg_1.a.x);
    return Struct_1(vec3<bool>(var_1.b, var_2.d.x, true != !any(vec2<bool>(var_2.d.x, var_1.c))), var_2.d.x, all(select(select(!vec4<bool>(var_2.d.x, var_2.d.x, false, var_2.d.x), select(vec4<bool>(var_2.d.x, true, var_2.d.x, false), vec4<bool>(false, var_2.d.x, var_2.d.x, true), vec4<bool>(var_2.d.x, false, false, var_2.d.x)), true), vec4<bool>(all(vec3<bool>(false, false, false)), true, select(var_2.d.x, true, false), true), true)));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(-(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(global0[_wgslsmith_index_u32(1u, 26u)], u_input.a.x, 57421i, 41532i)), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], -50595i, 0i, 1i) >> (vec4<u32>(27272u, 4294967295u, 1u, 1u) % vec4<u32>(32u))) << (firstLeadingBit(vec4<u32>(1u, 1u, 1614u, 5464u)) % vec4<u32>(32u))), Struct_2(vec4<f32>(-1487f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(446f + -348f) * -866f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1154f))), 1393f), 1i), func_2());
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1313f)) * 233f);
    global0 = array<i32, 26>();
    let var_2 = Struct_3(max(_wgslsmith_mod_u32(1u, ~_wgslsmith_sub_u32(49023u, 0u)), abs(4294967295u)), select(1u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~1784u, abs(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(71410u, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(52487u, 42308u, 4294967295u)))), var_0.b));
    let var_3 = reverseBits(-global1[_wgslsmith_index_u32(61095u, 16u)]) | -(global0[_wgslsmith_index_u32(0u, 26u)] | -global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(63763u, 0u, 88161u, 0u), vec4<u32>(1u, 4294967295u, 9870u, 28592u)), 26u)]);
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(258f)), var_1), 1569f, any(vec4<bool>(var_0.c, false, false, var_0.a.x)))), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 26>();
    let x = u_input.a;
    s_output = func_1();
}

