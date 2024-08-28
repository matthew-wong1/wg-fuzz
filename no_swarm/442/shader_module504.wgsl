struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<u32> = vec3<u32>(7716u, 1u, 1u);

var<private> global2: i32 = -1i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec4<bool>(true, true, true, true))), !(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false))), !(global1.x != ~min(global1.x, global1.x)));
    var var_1 = Struct_3(_wgslsmith_add_u32(~countOneBits(17670u), 0u));
    global1 = ~_wgslsmith_clamp_vec3_u32(countOneBits(u_input.c), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 3062u, 1u), u_input.c, vec3<u32>(arg_2.b, var_1.a, 38473u)), vec3<u32>(global1.x, 6016u, global0.a)), ~vec3<u32>(20173u, 1u, u_input.b)), vec3<u32>(select(global1.x, global0.a, all(vec4<bool>(true, var_0.x, var_0.x, false))), abs(_wgslsmith_sub_u32(4052u, global0.a)), ~_wgslsmith_clamp_u32(1u, arg_2.b, u_input.c.x)));
    let var_2 = firstLeadingBit(~1u);
    global0 = Struct_3(~1u);
    return ~select(var_2, _wgslsmith_sub_u32(reverseBits(arg_2.b), 1u) >> (~select(var_2, 1u, var_0.x) % 32u), abs(_wgslsmith_div_u32(global1.x, 4294967295u)) != var_1.a);
}

fn func_2() -> bool {
    var var_0 = vec4<u32>(0u, 19796u, 16478u, ~func_3(-u_input.a, Struct_2(vec4<f32>(-1000f, -1000f, -865f, 821f)), Struct_1(-35078i, u_input.c.x), _wgslsmith_f_op_f32(select(-1000f, 1741f, true))) & 7820u);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1244f)))), -146f))));
    global2 = 0i;
    var var_2 = -_wgslsmith_sub_vec3_i32(vec3<i32>(~26437i << ((u_input.c.x & var_0.x) % 32u), -11582i, -u_input.a.x), abs(u_input.a.zxx));
    let var_3 = vec2<i32>(min(1i, -10467i), var_2.x);
    return true;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = false;
    let var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.yyx, u_input.d.yxy), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.d.x, -2147483647i), select(639i, -1i, arg_1)), _wgslsmith_mod_i32(u_input.d.x, firstTrailingBit(u_input.a.x)), countOneBits(0i))), u_input.a.xzz);
    let var_2 = _wgslsmith_add_i32(~_wgslsmith_sub_i32(var_1.x, ~(-30872i)), reverseBits(countOneBits(-28875i))) >> (global0.a % 32u);
    let var_3 = arg_0;
    let var_4 = _wgslsmith_clamp_vec2_u32(u_input.c.xx, ~global1.yy, ~_wgslsmith_mod_vec2_u32(u_input.c.zz, u_input.c.xx));
    return arg_2.a.x;
}

fn func_1(arg_0: bool, arg_1: u32) -> vec4<i32> {
    let var_0 = 130f;
    global1 = ~(~(~u_input.c));
    let var_1 = false || (_wgslsmith_f_op_f32(func_4(Struct_3(_wgslsmith_dot_vec2_u32(global1.xx, vec2<u32>(4294967295u, global0.a))), func_2(), Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(190f, var_0, 2446f, -1560f), vec4<f32>(var_0, var_0, 425f, 707f))))) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1000f)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-439f, 1331f, var_0, var_0), vec4<f32>(565f, var_0, -772f, 581f), vec4<bool>(true, false, false, var_1)))))));
    let var_3 = var_2.a.ywy;
    return _wgslsmith_div_vec4_i32(min(vec4<i32>(~u_input.d.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.a, u_input.d), ~u_input.d.x), u_input.a.x, -14122i), vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(~u_input.d.x, ~u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.d.x, u_input.a.x), vec4<i32>(2147483647i, -25079i, u_input.a.x, -18857i))), -2147483647i, u_input.d.x)), _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(-(-6179i & u_input.d.x), -71403i, _wgslsmith_clamp_i32(u_input.d.x << (u_input.c.x % 32u), u_input.a.x ^ -2147483647i, u_input.d.x), u_input.d.x)));
}

fn func_5(arg_0: vec4<i32>) -> StorageBuffer {
    global1 = vec3<u32>(~u_input.c.x, u_input.b, u_input.c.x);
    var var_0 = Struct_3(1u << (_wgslsmith_mod_u32(~(~u_input.b), u_input.b) % 32u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(988f - 1000f)))))), -201f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(454f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1970f, _wgslsmith_f_op_f32(f32(-1f) * -360f)))));
    let var_2 = abs(1u);
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(func_4(Struct_3(43701u), true, Struct_2(vec4<f32>(var_1.x, var_1.x, 652f, 668f)))), var_1.x) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1546f, var_1.x)) + vec3<f32>(var_1.x, -1455f, -917f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(526f, var_1.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-964f, var_1.x, -1419f)) - _wgslsmith_div_vec3_f32(vec3<f32>(242f, var_1.x, 626f), vec3<f32>(var_1.x, var_1.x, 719f)))))));
    return StorageBuffer(u_input.c, vec4<u32>(var_2, 0u, ~(1u >> (var_0.a % 32u)), global1.x), ~(~_wgslsmith_clamp_i32(-arg_0.x, _wgslsmith_clamp_i32(u_input.d.x, -2147483647i, 0i), ~(-13239i))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))))), min(-2147483647i, i32(-1i) * -17549i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(0u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f));
    global2 = _wgslsmith_mult_i32(2147483647i, min(1i, _wgslsmith_mod_i32(abs(-1i), _wgslsmith_mod_i32(u_input.d.x, u_input.a.x))));
    let x = u_input.a;
    s_output = func_5(func_1(true, ~(~u_input.c.x)));
}

