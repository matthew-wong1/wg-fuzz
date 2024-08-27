struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    var var_0 = -(abs(select(max(vec3<i32>(global0.a, global0.a, u_input.a), vec3<i32>(u_input.a, -1i, u_input.a)), -vec3<i32>(-10181i, 35876i, u_input.a), select(vec3<bool>(arg_0, true, true), vec3<bool>(false, global0.b, true), vec3<bool>(global0.b, global0.b, true)))) | _wgslsmith_div_vec3_i32(-vec3<i32>(15174i, 1i, -12379i), abs(firstTrailingBit(vec3<i32>(-5641i, 2147483647i, -1i)))));
    var_0 = abs(max(vec3<i32>(-var_0.x, -2147483647i, -81401i), ~(vec3<i32>(var_0.x, 0i, u_input.a) << (vec3<u32>(0u, 58558u, 19505u) % vec3<u32>(32u))))) ^ ~(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, var_0.x, 944i), vec3<i32>(u_input.a, -2147483647i, global0.a))));
    var var_1 = vec2<u32>(_wgslsmith_add_u32(38069u, 2729u) >> (~(~1u) % 32u), countOneBits(4294967295u));
    var_1 = select(~_wgslsmith_add_vec2_u32(vec2<u32>(992u, 0u) << (vec2<u32>(var_1.x, var_1.x) % vec2<u32>(32u)), min(~vec2<u32>(var_1.x, var_1.x), vec2<u32>(4294967295u, var_1.x))), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, 42599u), abs(vec2<u32>(2103u, var_1.x)), ~vec2<u32>(1u, var_1.x))), var_1.x < var_1.x);
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(119f, -377f, -2345f)), vec3<f32>(1f, 1f, 1f))) * vec3<f32>(-1358f, -733f, 517f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -1121f, 393f))), vec3<f32>(-1591f, 1852f, -1120f)), vec3<f32>(_wgslsmith_f_op_f32(2310f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1571f), _wgslsmith_f_op_f32(ceil(-386f)))))))));
}

fn func_2() -> Struct_1 {
    let var_0 = global0.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(true))));
    var var_2 = ~(~27488u);
    var_2 = min((abs(1u) >> (min(_wgslsmith_add_u32(1u, 69904u), 1u) % 32u)) | _wgslsmith_clamp_u32(_wgslsmith_div_u32(42660u, firstLeadingBit(1u)), ~1u, _wgslsmith_clamp_u32(4294967295u, ~1u, _wgslsmith_clamp_u32(16853u, 572u, 48851u))), 1u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.zz)))))));
    return Struct_1(u_input.a, all(select(!(!vec3<bool>(global0.b, true, global0.b)), vec3<bool>(global0.b, !global0.b, false), vec3<bool>(true, true, true))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> f32 {
    global1 = -u_input.a;
    let var_0 = func_2();
    let var_1 = var_0;
    global0 = var_1;
    let var_2 = Struct_1(-var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3132f + _wgslsmith_f_op_f32(1001f * -842f))) >= _wgslsmith_f_op_f32(step(186f, _wgslsmith_f_op_f32(f32(-1f) * -345f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_vec3_f32(func_3(var_1.b)).x) - 2293f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1168f, -492f))), _wgslsmith_f_op_vec3_f32(func_3(all(vec3<bool>(global0.b, var_0.b, true)))).x)));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(min(0u, _wgslsmith_add_u32(firstLeadingBit(0u), _wgslsmith_add_u32(69295u, 12049u))), abs(1u), 15423u), abs(~max(countOneBits(vec3<u32>(4294967295u, 4294967295u, 1u)), vec3<u32>(57089u, 23985u, 0u))), reverseBits(vec3<u32>(1u, 1u, 1u)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(abs(reverseBits(-9403i)), true), (_wgslsmith_f_op_f32(exp2(arg_0)) < 929f) == any(!vec4<bool>(false, true, false, global0.b)), _wgslsmith_sub_u32(firstTrailingBit(~4294967295u), _wgslsmith_mod_u32(var_0.x, var_0.x) << (7967u % 32u)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(arg_1.b)).x)));
    global1 = u_input.a;
    let var_2 = !(!(!vec2<bool>(global0.b, false)));
    return Struct_1(-(arg_1.a << (_wgslsmith_dot_vec2_u32(var_0.yz, vec2<u32>(7330u, var_0.x)) % 32u)), all(vec3<bool>(arg_1.b, !(false | var_2.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -u_input.a;
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(0i, false), true, firstLeadingBit(37337u))))), func_2());
    global1 = _wgslsmith_div_i32(-13832i, ~2147483647i);
    let var_1 = any(vec3<bool>(!all(vec3<bool>(true, true, true)), func_4(905f, var_0).b, all(select(!vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(false, false), vec2<bool>(global0.b, false), vec2<bool>(false, global0.b)), true))));
    global1 = _wgslsmith_mult_i32(abs(u_input.a), _wgslsmith_mod_i32(u_input.a & global0.a, -min(func_2().a, i32(-1i) * -4589i)));
    var var_2 = any(vec2<bool>(_wgslsmith_mult_u32(7099u, 10653u) <= _wgslsmith_clamp_u32(4294967295u, 4294967295u, 50484u), true)) != !all(select(select(vec2<bool>(var_1, false), vec2<bool>(global0.b, false), vec2<bool>(var_0.b, false)), !vec2<bool>(var_1, true), select(vec2<bool>(true, false), vec2<bool>(var_0.b, true), false)));
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-436f - -1018f), 1562f), ~vec2<u32>(min(_wgslsmith_mult_u32(53160u, 58185u), 73181u), 1u), vec2<u32>(1u, 1u), -879f);
}

