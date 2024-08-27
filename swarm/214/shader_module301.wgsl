struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec2<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec2<u32> {
    global1 = arg_1.d.c.wz;
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 68423u, u_input.b, u_input.a.x), _wgslsmith_mod_vec4_u32(u_input.a, u_input.a)), _wgslsmith_sub_vec4_u32(reverseBits(u_input.a), max(vec4<u32>(global0.x, 0u, 1u, global0.x), vec4<u32>(arg_1.c, 63210u, 53361u, global0.x)))) << ((u_input.a >> (_wgslsmith_mod_vec4_u32(~u_input.a, firstLeadingBit(vec4<u32>(71216u, arg_1.b, 1u, global0.x))) % vec4<u32>(32u))) % vec4<u32>(32u)), ~u_input.a);
    var var_1 = _wgslsmith_sub_u32(27605u, abs(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c >> (global0.x % 32u), u_input.b), _wgslsmith_add_u32(~u_input.a.x, ~7034u))));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(409f))), -829f));
    let var_3 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_1.a, arg_1.d.b.x, -32396i, -78642i), (vec4<i32>(-1i, arg_1.a, arg_1.e.a, -1i) ^ vec4<i32>(2147483647i, -2147483647i, -2147483647i, arg_1.e.b.x)) & -vec4<i32>(-25278i, arg_1.e.a, arg_1.a, 2147483647i)), vec4<i32>(_wgslsmith_sub_i32(select(-64697i, arg_1.d.a, true), _wgslsmith_mult_i32(-2147483647i, -1i)), i32(-1i) * -12165i, countOneBits(0i), _wgslsmith_mod_i32(0i, 1i))), _wgslsmith_mod_vec2_i32(arg_1.d.b, vec2<i32>(_wgslsmith_mult_i32(-2147483647i, arg_1.e.b.x), i32(-1i) * -1i) & -(~arg_1.e.b)), !arg_1.d.c);
    return ~_wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(1u), arg_1.c), ~u_input.a.wz);
}

fn func_2() -> vec4<bool> {
    global0 = vec2<u32>(0u, abs(0u));
    global0 = func_3(false, Struct_2(1i, _wgslsmith_dot_vec2_u32(u_input.a.ww, vec2<u32>(global0.x, u_input.a.x)) & global0.x, ~(~u_input.c), Struct_1(_wgslsmith_add_i32(-16803i, 1i), -vec2<i32>(-2147483647i, -23715i), select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, false, true, true), vec4<bool>(global1.x, global1.x, global1.x, true))), Struct_1(1i, ~vec2<i32>(35099i, 0i), vec4<bool>(true, false, global1.x, true)))) | ((select(vec2<u32>(u_input.c, 22933u), u_input.a.zz, true) & u_input.a.xx) ^ u_input.a.wz);
    global0 = ~min(vec2<u32>(max(max(1u, 1u), 4294967295u), 1923u), ~vec2<u32>(max(34701u, global0.x), 9786u));
    return vec4<bool>(global1.x & !global1.x, select(true, global0.x > _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, 0u, 0u, 99111u), ~u_input.a), firstLeadingBit(0u) == (68984u >> (global0.x % 32u))), all(vec2<bool>(global1.x, (global1.x & global1.x) | select(true, true, global1.x))), true);
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = !func_2();
    let var_1 = vec3<u32>(countOneBits(37708u), 63156u, firstLeadingBit(_wgslsmith_div_u32(select(~0u, abs(0u), !global1.x), _wgslsmith_dot_vec2_u32(u_input.a.wx, u_input.a.zy))));
    let var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(~(-29954i)), _wgslsmith_add_i32(1i, -2147483647i)), abs(_wgslsmith_mult_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(abs(7324i), -20067i))), vec2<i32>(1i, 1i));
    global1 = var_0.zw;
    var var_3 = Struct_2(var_2.x, _wgslsmith_mod_u32(~33020u, 4294967295u), 8267u, Struct_1(-(abs(var_2.x) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(41758i, var_2.x, -1i, 24556i), vec4<i32>(2147483647i, -2147483647i, -2147483647i, var_2.x))), _wgslsmith_mod_vec2_i32(var_2, max(~var_2, _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.x, -2147483647i), var_2))), select(!select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(global1.x, global1.x, var_0.x, false), global1.x), vec4<bool>(func_2().x, global1.x & true, global1.x, all(vec4<bool>(true, true, true, true))), vec4<bool>(global1.x, true, true, true))), Struct_1(var_2.x, _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(81990i, var_2.x), abs(_wgslsmith_clamp_vec2_i32(var_2, vec2<i32>(53400i, var_2.x), vec2<i32>(-3205i, -1i)))), vec4<bool>(false, false, false, !(!var_0.x))));
    return false | all(!select(!var_0.zz, vec2<bool>(var_3.d.c.x, false), vec2<bool>(false, var_0.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = select(vec3<bool>(!(!(-150f >= arg_2.x)), false, -732f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), -383f)), select(vec3<bool>(false, !arg_0.x, all(!vec4<bool>(arg_0.x, true, global1.x, global1.x))), func_2().xyw, global1.x), vec3<bool>(func_1(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global0.x, global0.x, global0.x, 20266u))), global1.x, arg_0.x));
    var_0 = !func_2().wwx;
    let var_1 = -vec3<i32>(_wgslsmith_add_i32(countOneBits(~arg_1), -21338i), ~1i, _wgslsmith_mod_i32(arg_1, arg_1 >> (~global0.x % 32u)));
    var var_2 = select(~vec2<u32>(~4294967295u, 0u), u_input.a.zw, -1396f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.x - arg_2.x)))));
    let var_3 = arg_0.x;
    return Struct_1(2147483647i, vec2<i32>(~arg_1, -1i), !vec4<bool>(!arg_0.x | true, true, any(select(arg_0, vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, var_3, false))), var_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 40784i, -2019i) << (vec3<u32>(global0.x, 60010u, 41649u) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(1i, 43138i, -66857i)))) | -1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1129f, _wgslsmith_f_op_f32(step(-208f, -1579f)), _wgslsmith_div_f32(2517f, _wgslsmith_f_op_f32(max(-2325f, 1000f))), -661f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1239f, -1756f, -292f, -329f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-440f, -359f, -1293f, 108f) + vec4<f32>(-983f, 374f, 437f, 1216f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1609f, -114f, -856f, -337f))), vec4<bool>(true, all(vec4<bool>(false, global1.x, false, global1.x)), !global1.x, true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-518f, 457f, 1000f, 1185f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1083f, -740f, 254f, 377f))))));
    var var_2 = func_4(vec3<bool>(true, countOneBits(var_0) > ~1i, any(vec2<bool>(func_1(u_input.a.x), true))), reverseBits(min(-var_0, ~0i ^ var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.wyw), _wgslsmith_f_op_vec3_f32(var_1.xyz + var_1.wwy)), var_1.yyw))));
    let var_3 = 4294967295u;
    let var_4 = Struct_1(_wgslsmith_dot_vec3_i32(select(_wgslsmith_add_vec3_i32(vec3<i32>(-50021i, var_0, 41775i), vec3<i32>(59815i, var_0, var_2.b.x)) >> (firstTrailingBit(vec3<u32>(u_input.b, 15381u, var_3)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.a, -9195i, 11378i), vec3<i32>(0i, -28737i, 0i)) >> (vec3<u32>(global0.x, 64902u, 38343u) % vec3<u32>(32u)), var_2.c.xzz), vec3<i32>(var_2.b.x, var_2.b.x, -29592i)), vec2<i32>(var_2.a, abs(var_0)), var_2.c);
    global1 = !var_4.c.wy;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(14871i)));
}

