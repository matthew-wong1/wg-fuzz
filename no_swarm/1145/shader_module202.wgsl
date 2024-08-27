struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<f32>(295f, 506f, 464f), 0i, i32(-2147483648)), 81053u, Struct_1(vec3<f32>(-205f, -946f, -687f), 18416i, 1i), Struct_1(vec3<f32>(-653f, 631f, 295f), 0i, -1i), Struct_1(vec3<f32>(127f, 766f, -378f), -1i, -13389i));

var<private> global2: Struct_1 = Struct_1(vec3<f32>(1766f, 562f, 432f), -7312i, -52761i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_2(global1.a, reverseBits(~(33853u ^ global1.b) & _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.b), 36697u)), global1.c, global1.e, global1.a);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(410f * var_0.d.a.x), global2.a.x, 905f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)) + 582f)));
    global1 = var_0;
    global0 = Struct_1(var_0.e.a, _wgslsmith_add_i32(~_wgslsmith_div_i32(u_input.d.x >> (u_input.c.x % 32u), global2.c), -abs(u_input.d.x & -56099i)), -2147483647i);
    var var_2 = vec3<u32>(~max(_wgslsmith_mult_u32(global1.b, ~4294967295u), 1u), _wgslsmith_sub_u32(1u, min(global1.b, var_0.b >> (min(27242u, 0u) % 32u))), ~(~67851u));
    return ~vec2<u32>(firstTrailingBit(4294967295u), 0u);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> i32 {
    let var_0 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(global1.b | u_input.c.x, _wgslsmith_mod_u32(4294967295u, u_input.c.x)), ~_wgslsmith_mult_u32(global1.b, global1.b))), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.xz, vec2<u32>(_wgslsmith_clamp_u32(12924u, 0u, global1.b), u_input.b)), func_3()), vec2<u32>(_wgslsmith_clamp_u32(reverseBits(global1.b) << (57424u % 32u), 59573u, abs(u_input.b)), global1.b));
    let var_1 = Struct_2(global1.d, var_0.x, global1.d, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1165f, -2158f, 2302f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(865f, 443f, arg_1), vec3<f32>(-841f, 392f, 308f)))) * _wgslsmith_f_op_vec3_f32(-global2.a)), global0.c >> (1u % 32u), ~_wgslsmith_add_i32(global1.d.c, u_input.d.x)), Struct_1(global0.a, _wgslsmith_div_i32(0i, _wgslsmith_div_i32(~global0.c, 1i)), global2.b << ((~global1.b | ~4294967295u) % 32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(807f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.c.a.x, _wgslsmith_f_op_f32(abs(-1150f)))), -1162f), 2106f, -273f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 918f, 163f, arg_1)) * vec4<f32>(-1000f, 1000f, arg_1, arg_0.x)))));
    var var_3 = select(_wgslsmith_mod_u32(var_1.b, 0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 16634u), u_input.c.zw), true && (false | any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)))));
    var_3 = _wgslsmith_sub_u32(~(var_1.b & (func_3().x & countOneBits(67261u))), var_1.b);
    return var_1.e.b;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: bool) -> vec3<bool> {
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-global1.d.a), 1i, u_input.d.x);
    var var_0 = global1.d;
    var_0 = Struct_1(vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(448f * var_0.a.x)) * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(285f + _wgslsmith_f_op_f32(trunc(global2.a.x))) * var_0.a.x)), global0.c, select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, global0.b, 1i, global0.c), vec4<i32>(1i, 0i, func_2(global2.a.xy, var_0.a.x), u_input.a)), reverseBits(-1i ^ global1.d.b), false));
    let var_1 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, global1.a.b, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.b, 1i, global1.c.b, 1i) & vec4<i32>(-1i, 0i, -83041i, 1877i), vec4<i32>(0i, global0.b, -34583i, 83279i) | vec4<i32>(23141i, var_0.c, global2.c, -12403i))), ~((vec4<i32>(-2147483647i, -16257i, -1i, var_0.c) << (vec4<u32>(30071u, arg_0, 1u, 1u) % vec4<u32>(32u))) >> (vec4<u32>(u_input.c.x, 31186u, u_input.c.x, 23574u) % vec4<u32>(32u))), vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(u_input.a, ~var_0.c, -63881i), i32(-1i) * -2147483647i, -var_0.b));
    var var_2 = max(var_1, select(~firstLeadingBit(max(var_1, vec4<i32>(1i, 2147483647i, u_input.d.x, var_1.x))), _wgslsmith_add_vec4_i32(var_1, -var_1), select(select(select(vec4<bool>(true, true, arg_2, false), vec4<bool>(false, arg_2, arg_2, false), vec4<bool>(arg_2, true, true, false)), !vec4<bool>(true, true, arg_2, true), select(vec4<bool>(arg_2, arg_2, false, true), vec4<bool>(false, arg_2, false, arg_2), false)), select(!vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(false, arg_2, false, true), !vec4<bool>(false, arg_2, arg_2, true)), true)));
    return !vec3<bool>(true, !all(vec3<bool>(true, false, arg_2)), !any(vec4<bool>(true, false, arg_2, arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var var_1 = select(vec3<bool>(true, false, 37632i == u_input.d.x), select(func_1(global1.b, reverseBits(vec4<u32>(116214u, global1.b, global1.b, 1u)), false), vec3<bool>(true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true))), true), vec3<bool>(true, true, true)), true);
    var_0 = _wgslsmith_sub_i32(-u_input.a, u_input.a);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.a)) + global2.a), u_input.a, global2.b);
    let var_3 = !(!vec4<bool>(all(vec3<bool>(false, var_1.x, var_1.x)), false, all(vec2<bool>(false, var_1.x)), !var_1.x));
    var var_4 = global1.d;
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.a, ((~vec4<i32>(global1.c.b, -1i, global1.e.c, global2.b) << (~vec4<u32>(4294967295u, 31678u, u_input.c.x, u_input.b) % vec4<u32>(32u))) & select(vec4<i32>(-31968i, global1.d.b, 59177i, var_4.c), _wgslsmith_mult_vec4_i32(vec4<i32>(-13427i, 1i, global0.b, -90527i), vec4<i32>(global2.b, u_input.a, 60195i, var_4.b)), var_3.x != false)) ^ select(vec4<i32>(u_input.d.x, 0i, -1i, 45398i) << (max(vec4<u32>(u_input.b, u_input.b, 1u, 1u), vec4<u32>(8089u, 17930u, u_input.c.x, u_input.c.x)) % vec4<u32>(32u)), vec4<i32>(-var_4.b, -12168i, 1i, 56136i), _wgslsmith_f_op_f32(-512f - global0.a.x) != _wgslsmith_f_op_f32(-1787f * 380f)), reverseBits(vec4<i32>(-1i) * -(vec4<i32>(global2.c, 23407i, var_2.b, -2147483647i) & vec4<i32>(-1i, u_input.d.x, global0.c, 23746i))), ~reverseBits(abs(select(var_4.c, global0.b, var_3.x))));
}

