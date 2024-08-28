struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 26629u;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_4(!vec3<bool>(all(vec4<bool>(true, false, false, false)), any(vec3<bool>(true, true, true)), true), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1.b.yw, _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(2147483647i, arg_1.a))), arg_1.b.wy >> (min(vec2<u32>(1u, arg_2.b), vec2<u32>(arg_2.b, 4294967295u)) % vec2<u32>(32u))), arg_1.b.wz ^ -vec2<i32>(-13401i, -50913i)), _wgslsmith_f_op_f32(755f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -873f)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_2.a, vec4<f32>(-174f, 451f, arg_3.x, arg_2.a.x))), 15429u));
    global0 = 0u;
    global0 = 13715u;
    var var_1 = arg_1;
    let var_2 = firstTrailingBit(~select(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.b, 35325u, 4294967295u, var_0.d.b), vec4<u32>(arg_2.b, 26014u, arg_2.b, arg_0.b)), vec4<u32>(arg_0.b, arg_2.b, arg_2.b, arg_2.b)), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_2.b, arg_0.b, var_0.d.b, var_0.d.b), ~vec4<u32>(0u, 40285u, arg_0.b, 82943u)), true & var_0.a.x));
    return _wgslsmith_mult_u32(~(~_wgslsmith_mult_u32(arg_0.b, 20625u)), 75559u);
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global0 = 11952u;
    global0 = arg_2.b;
    var var_0 = Struct_2(arg_1.a, arg_1.b);
    let var_1 = Struct_3(~17320u);
    var var_2 = arg_2.b > (_wgslsmith_sub_u32(~1u, func_3(Struct_2(var_0.a, arg_2.b), Struct_1(u_input.a.x, vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, 60669i)), Struct_2(vec4<f32>(arg_2.a.x, var_0.a.x, -344f, -922f), 0u), vec3<f32>(983f, arg_0, arg_1.a.x))) << (var_0.b % 32u));
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b, var_1.a, var_1.a) << (vec3<u32>(4294967295u, var_1.a, var_1.a) % vec3<u32>(32u)), abs(vec3<u32>(4294967295u, arg_2.b, arg_2.b) << (vec3<u32>(0u, 1u, 26184u) % vec3<u32>(32u)))), select(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 50355u, 4294967295u), vec3<u32>(var_1.a, 24359u, arg_1.b)), ~var_1.a), var_0.b, min(var_0.b, var_1.a) ^ 51776u), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_2.b, var_0.b, 0u), vec3<u32>(arg_1.b, 0u, 0u))), !any(vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -972f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(462f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_3), arg_3, _wgslsmith_f_op_f32(f32(-1f) * -881f), 410f) + arg_2) + arg_2));
    global0 = arg_1.a;
    var var_1 = vec4<u32>(47607u, _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.a, ~53256u), 60637u), ~(~_wgslsmith_sub_u32(arg_1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.a, 1u, 51682u), vec4<u32>(59501u, 1u, 1u, arg_1.a)))), arg_1.a);
    let var_2 = arg_1;
    var_0 = arg_2;
    return var_2;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> vec2<i32> {
    global0 = 1u;
    let var_0 = func_4(any(vec2<bool>(true, func_2(-1000f, Struct_2(vec4<f32>(563f, -279f, 1000f, -1325f), 0u), Struct_2(vec4<f32>(-111f, 805f, -246f, 1000f), 34115u)) > ~20465u)), Struct_3(_wgslsmith_div_u32(~85957u, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(21124u, 23882u), vec2<u32>(1u, 1u))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-900f, -661f, -408f, -581f)) - vec4<f32>(1613f, 407f, 2123f, 171f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(943f, 440f, 1000f, -319f))), _wgslsmith_div_vec4_f32(vec4<f32>(-592f, -1057f, -2317f, 919f), vec4<f32>(912f, -1332f, -636f, -283f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(318f - _wgslsmith_f_op_f32(-674f - -1000f)), 964f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1124f, 106f, true)) - _wgslsmith_f_op_f32(-2186f - 1000f)))), 1471f);
    let var_1 = false;
    global0 = 0u >> (func_3(Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(-478f, 2137f, 1256f, -1201f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1541f, 479f, 200f, -415f), vec4<f32>(364f, -910f, 1056f, -922f), true))), func_3(Struct_2(vec4<f32>(-352f, 777f, -202f, 346f), var_0.a), arg_1, Struct_2(vec4<f32>(385f, -678f, -273f, 759f), var_0.a), _wgslsmith_div_vec3_f32(vec3<f32>(-1692f, 168f, -226f), vec3<f32>(1813f, -111f, -696f)))), Struct_1(max(_wgslsmith_add_i32(arg_1.b.x, arg_0.x), ~u_input.a.x), u_input.a), Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1000f, 1494f, -585f), vec4<f32>(827f, -303f, 677f, -1941f)))), var_0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(209f, -711f, -2188f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1988f, 648f) - vec3<f32>(-1215f, 1050f, -310f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1827f, -1275f, -652f))))) % 32u);
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, max(_wgslsmith_clamp_i32(arg_1.b.x, max(-1i, arg_1.a), abs(0i)), _wgslsmith_dot_vec2_i32(-arg_0, countOneBits(u_input.c))), arg_1.a, ~_wgslsmith_mod_i32(u_input.c.x, -1i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(1i), ~arg_0.x, 2147483647i | arg_1.a, arg_0.x), vec4<i32>(firstLeadingBit(1i), arg_0.x << (43809u % 32u), u_input.a.x, arg_1.b.x)));
    return abs(vec2<i32>(~arg_0.x, -38007i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(vec3<bool>(!all(vec3<bool>(false, true, true)), all(vec2<bool>(true, false)), true), _wgslsmith_sub_vec2_i32(vec2<i32>(29476i, 1i), func_1(u_input.a.wy, Struct_1(u_input.b, u_input.a << (vec4<u32>(1u, 1u, 0u, 27569u) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(724f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -453f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1165f))))), Struct_2(vec4<f32>(553f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(644f * -406f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -927f)), _wgslsmith_f_op_f32(f32(-1f) * -457f)), firstTrailingBit(7296u)));
    let var_1 = ~(var_0.b.x | -2147483647i);
    var var_2 = vec4<u32>(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.c, var_0.c)))), var_0.d, var_0.d), ~(~1u), (15486u << (~min(var_0.d.b, 30978u) % 32u)) >> ((((var_0.d.b & 4294967295u) ^ ~var_0.d.b) >> (var_0.d.b % 32u)) % 32u), max(_wgslsmith_mod_u32(countOneBits(abs(26532u)), var_0.d.b), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.b, var_0.d.b, var_0.d.b), vec3<u32>(61376u, var_0.d.b, var_0.d.b)) | _wgslsmith_mod_u32(var_0.d.b, 8735u))));
    global0 = firstLeadingBit(~abs(68423u));
    global0 = 75361u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.d.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(431f, var_0.d.a.x, 1381f, var_0.d.a.x) * _wgslsmith_f_op_vec4_f32(var_0.d.a * var_0.d.a))))), -vec3<i32>(var_1, 19026i << (var_0.d.b % 32u), -40704i), _wgslsmith_clamp_i32(u_input.b, -44748i, ~(~_wgslsmith_div_i32(var_1, 1i))), var_0.d.b & ~(39768u >> (countOneBits(0u) % 32u)));
}

