struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: bool) -> u32 {
    let var_0 = Struct_3(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(global0.a.x, -1i), select(abs(1i), min(global0.a.x, 0i), true), 1i), -(i32(-1i) * -1i) | _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-19636i, u_input.c, 0i, 51869i)), vec4<i32>(global0.a.x, 1089i, u_input.c, -11932i) & vec4<i32>(global0.a.x, u_input.a, u_input.a, 0i))), u_input.b, !global0.c, ~global0.d);
    let var_1 = Struct_1(u_input.a, all(!(!select(vec2<bool>(true, false), vec2<bool>(true, var_0.c), vec2<bool>(false, var_0.c)))), ~(~max(var_0.d.wy, global0.d.zw)) << (~global0.d.xx % vec2<u32>(32u)));
    global0 = var_0;
    global0 = Struct_3(_wgslsmith_div_vec2_i32(~(vec2<i32>(var_1.a, var_1.a) >> (~var_0.d.xx % vec2<u32>(32u))), select(max(vec2<i32>(-1i, var_0.a.x), countOneBits(vec2<i32>(u_input.a, 8066i))), -select(vec2<i32>(22026i, 2147483647i), global0.a, arg_0), true)), select(~var_1.c.x, global0.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * -318f))) != 988f), false, var_0.d);
    global0 = var_0;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(min(~u_input.b, _wgslsmith_dot_vec3_u32(global0.d.yxw, var_0.d.zxy)), ~(~(var_1.c.x << (u_input.b % 32u)))), vec2<u32>(_wgslsmith_clamp_u32(1u << (var_1.c.x % 32u), 350u, 4294967295u) & abs(~global0.d.x), var_1.c.x << (1u % 32u)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: vec2<i32>) -> vec2<i32> {
    let var_0 = Struct_1(~(~0i), arg_2.c, vec2<u32>(arg_2.b, func_3(arg_1, select(false, !arg_0, false))));
    let var_1 = ~_wgslsmith_sub_i32(~(~1i), 2147483647i);
    var var_2 = countOneBits(_wgslsmith_clamp_i32(-min(global0.a.x, ~var_0.a), 12311i, -firstTrailingBit(24153i) ^ _wgslsmith_clamp_i32(u_input.c, 0i, 0i)));
    var_2 = countOneBits(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(37513i, global0.a.x & 2147483647i)), abs(vec2<i32>(_wgslsmith_clamp_i32(var_1, -59842i, u_input.a), _wgslsmith_mult_i32(var_0.a, var_0.a)))));
    global0 = Struct_3(abs(vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.a, var_0.a, -15719i) << (vec4<u32>(global0.d.x, arg_2.b, var_0.c.x, 22967u) % vec4<u32>(32u)), reverseBits(vec4<i32>(1i, -2147483647i, var_0.a, 1i))))), ~_wgslsmith_sub_u32(~_wgslsmith_mod_u32(arg_2.d.x, 0u), reverseBits(_wgslsmith_mod_u32(var_0.c.x, arg_2.b))), arg_2.c, global0.d ^ ~(~max(vec4<u32>(1u, var_0.c.x, u_input.b, 4294967295u), global0.d)));
    return _wgslsmith_sub_vec2_i32(~(arg_2.a | _wgslsmith_mult_vec2_i32(select(global0.a, vec2<i32>(var_0.a, global0.a.x), false), arg_3)), abs(reverseBits(select(vec2<i32>(12550i, arg_3.x), vec2<i32>(arg_2.a.x, u_input.a), vec2<bool>(var_0.b, false))) ^ (vec2<i32>(2147483647i, 12714i) | abs(global0.a))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>) -> bool {
    global0 = arg_1;
    return !arg_0;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: u32) -> vec4<f32> {
    let var_0 = Struct_2(arg_0.c, !(!(!arg_0.b)), -7351i, vec4<u32>(abs(~(~57438u)), _wgslsmith_mod_u32(1198u, arg_0.d.x), ~_wgslsmith_clamp_u32(~global0.d.x, ~global0.d.x, ~4294967295u), global0.d.x), Struct_1(global0.a.x, func_4(global0.c, Struct_3(func_2(global0.c, global0.c, Struct_3(arg_1.ww, 19643u, global0.c, vec4<u32>(arg_3, u_input.b, u_input.b, 0u)), global0.a), ~arg_3, arg_0.e.b, countOneBits(vec4<u32>(global0.d.x, arg_0.d.x, 35726u, 70067u))), arg_0.e.c), vec2<u32>(abs(~21745u), min(u_input.b, _wgslsmith_mult_u32(u_input.b, global0.d.x)))));
    let var_1 = vec2<bool>(all(!vec3<bool>(true, var_0.b.x, select(arg_0.e.b, arg_0.e.b, true))), true);
    let var_2 = arg_2.yww;
    let var_3 = all(vec4<bool>((var_0.a & min(u_input.c, 0i)) >= 58281i, func_4(false, Struct_3(vec2<i32>(u_input.a, -7362i), arg_3, false, global0.d), vec2<u32>(2310u, u_input.b)) & global0.c, !(!func_4(arg_0.b.x, Struct_3(vec2<i32>(var_0.c, arg_0.a), global0.d.x, false, vec4<u32>(100836u, u_input.b, 4294967295u, 4294967295u)), vec2<u32>(u_input.b, 4294967295u))), all(select(vec4<bool>(false, true, var_1.x, global0.c), !vec4<bool>(false, var_0.e.b, false, false), select(vec4<bool>(false, var_1.x, true, var_0.b.x), vec4<bool>(arg_0.b.x, true, global0.c, arg_0.e.b), global0.c)))));
    global0 = Struct_3(vec2<i32>(global0.a.x, ~global0.a.x), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, u_input.b), arg_0.e.c), _wgslsmith_mult_u32(var_0.e.c.x, arg_0.e.c.x)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(func_3(false, false), firstTrailingBit(arg_3), arg_3), vec3<u32>(arg_3, 44544u & global0.b, 27866u)), u_input.b < 4930u, _wgslsmith_mod_vec4_u32(vec4<u32>(28571u, 0u, _wgslsmith_add_u32(var_0.e.c.x, arg_3), ~global0.d.x), ~vec4<u32>(1u, arg_3, arg_0.d.x, 1u)) << (firstLeadingBit(arg_0.d) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~4179i, 854u == global0.b, ~(~global0.d.xx));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-132f, -1000f, 1629f, 393f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-466f, 153f, -536f, 625f), vec4<f32>(-633f, -305f, 1000f, 185f), var_0.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(628f, 532f, 384f, 1729f) + vec4<f32>(-1685f, -1748f, 1997f, -559f)) - vec4<f32>(-283f, -1335f, 1120f, -1000f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_2(-1i, vec2<bool>(var_0.b, true), 1i, global0.d, Struct_1(u_input.a, var_0.b, var_0.c)), vec4<i32>(var_0.a, var_0.a, -4798i, 1i), vec4<f32>(-664f, 379f, 726f, 1144f), 0u))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-511f, -502f, 789f, 1438f) + vec4<f32>(-1000f, 1502f, -1667f, -331f))))), global0.c || true));
    var var_2 = Struct_2(_wgslsmith_dot_vec3_i32(max(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -8523i, 447i), vec3<i32>(1i, u_input.a, -18646i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(1i, global0.a.x, -35941i), vec3<i32>(0i, global0.a.x, -1i))), ~select(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(1i, -19748i, 12055i), vec3<i32>(var_0.a, global0.a.x, u_input.c), vec3<bool>(true, global0.c, false)), !vec3<bool>(var_0.b, true, var_0.b))), !vec2<bool>(any(!vec2<bool>(global0.c, global0.c)), all(vec4<bool>(var_0.b, true, false, var_0.b))), _wgslsmith_clamp_i32(global0.a.x | global0.a.x, -2147483647i, 2147483647i), vec4<u32>(var_0.c.x, ~var_0.c.x, abs(global0.b), _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 1u), abs(~u_input.b))), Struct_1(firstTrailingBit(abs(-9770i)), all(vec3<bool>(true, global0.c, !global0.c)), global0.d.wz));
    var_0 = var_2.e;
    let var_3 = Struct_3(vec2<i32>(~(1i << (_wgslsmith_div_u32(11971u, 4294967295u) % 32u)), 1i), ~_wgslsmith_add_u32(~var_2.e.c.x, ~(~global0.d.x)), (var_2.b.x | !all(vec2<bool>(true, true))) | false, countOneBits(~vec4<u32>(u_input.b, 21814u, 41956u, global0.d.x) | (vec4<u32>(4294967295u, 20894u, 48813u, 0u) | global0.d)) << ((abs(vec4<u32>(4294967295u, 0u, 4294967295u, global0.d.x)) << (abs(vec4<u32>(59739u, 50953u, var_0.c.x, u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_4 = Struct_2(abs(_wgslsmith_mult_i32(u_input.c, _wgslsmith_add_i32(19918i & global0.a.x, ~(-26048i)))), vec2<bool>(var_0.b, false), 5251i, vec4<u32>(var_0.c.x, _wgslsmith_add_u32(4258u, 28803u), ~((26454u << (u_input.b % 32u)) | global0.d.x), ~31733u), var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<i32>(var_4.e.a, -1i, var_0.a, var_0.a) >> (var_4.d % vec4<u32>(32u))), _wgslsmith_sub_vec3_u32(var_4.d.zzw, vec3<u32>(~var_0.c.x, _wgslsmith_div_u32(abs(4294967295u), 19956u), _wgslsmith_mod_u32(0u, 1u))), abs(_wgslsmith_dot_vec2_u32(max(~var_4.d.yw, vec2<u32>(var_4.d.x, 1u)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(var_3.d.zw, vec2<u32>(var_2.e.c.x, 24283u)), vec2<u32>(var_0.c.x, 0u) ^ var_2.e.c))));
}

