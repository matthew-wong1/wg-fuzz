struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec2<i32>) -> u32 {
    var var_0 = any(!select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(arg_2.a.x, 5u)]), vec2<bool>(false, 60942u < arg_2.a.x), select(vec2<bool>(true, true), !vec2<bool>(true, global0[_wgslsmith_index_u32(6806u, 5u)]), global0[_wgslsmith_index_u32(firstLeadingBit(1u), 5u)])));
    var var_1 = Struct_1(4294967295u, u_input.a, 1330i, arg_2.b);
    global0 = array<bool, 5>();
    var var_2 = Struct_4(arg_2.a, 2147483647i);
    let var_3 = Struct_3(arg_2.b);
    return _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~reverseBits(vec3<u32>(arg_2.a.x, 37122u, 40300u)) << (~vec3<u32>(4294967295u, 24015u, var_2.a.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_2.a.x, 1u), vec3<u32>(0u, var_1.a, var_2.a.x)), vec3<u32>(1u, 3977u, arg_2.a.x) << (vec3<u32>(134457u, 4294967295u, var_2.a.x) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mult_u32(4294967295u, 0u), max(var_1.a, var_2.a.x), 2235u))), ~(~vec3<u32>(~var_1.a, 1u, ~var_2.a.x)));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = !(!select(!(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 5u)], false, false, global0[_wgslsmith_index_u32(arg_0, 5u)])), vec4<bool>(true && global0[_wgslsmith_index_u32(3400u, 5u)], u_input.a <= u_input.b.x, global0[_wgslsmith_index_u32(8028u, 5u)], false | global0[_wgslsmith_index_u32(4294967295u, 5u)]), global0[_wgslsmith_index_u32(97661u, 5u)] && !global0[_wgslsmith_index_u32(42160u, 5u)]));
    var var_1 = Struct_4(~(~select(vec2<u32>(arg_0, 1u), vec2<u32>(32529u, 7599u), vec2<bool>(false, var_0.x))) << (firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 27700u) & vec2<u32>(4294967295u, arg_0), abs(vec2<u32>(arg_0, 4294967295u)), min(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, arg_0)))) % vec2<u32>(32u)), _wgslsmith_mod_i32(u_input.b.x, u_input.a));
    var var_2 = _wgslsmith_f_op_f32(min(1f, -766f));
    var_2 = -1109f;
    global0 = array<bool, 5>();
    return -16197i >> (var_1.a.x % 32u);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = vec4<bool>(all(vec4<bool>(any(vec2<bool>(true, false)), global0[_wgslsmith_index_u32(max(~1u, firstLeadingBit(0u)), 5u)], select(!global0[_wgslsmith_index_u32(10706u, 5u)], !global0[_wgslsmith_index_u32(7475u, 5u)], true), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(894f, -726f))))) == -202f, (global0[_wgslsmith_index_u32(1u, 5u)] | false) | global0[_wgslsmith_index_u32(func_2(-u_input.a & max(u_input.a, arg_0), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-411f, 929f, 495f) - vec3<f32>(574f, -704f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1512f, -1000f, -1000f) + vec3<f32>(-1385f, 805f, 408f)))), Struct_4(~vec2<u32>(4294967295u, 98521u), _wgslsmith_mult_i32(u_input.a, arg_0)), vec2<i32>(1i, 1i)), 5u)], false);
    let var_1 = Struct_3(func_3(~0u));
    let var_2 = Struct_2(Struct_1(16733u, -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.wx, u_input.b.xw, vec2<i32>(1i, -57914i)), u_input.b.xx), _wgslsmith_add_i32(max(countOneBits(1i), u_input.b.x), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_1.a, 1i), select(arg_0, arg_0, false))), _wgslsmith_add_i32(1i, i32(-1i) * -arg_0)), -1713f, Struct_1(4294967295u, -37177i << (~4294967295u % 32u), -(var_1.a & (i32(-1i) * -8639i)), ~u_input.a), Struct_1(~(~22217u), u_input.a, u_input.b.x, select(1i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), global0[_wgslsmith_index_u32(1u, 5u)] || true)));
    let var_3 = _wgslsmith_add_vec2_u32(abs(vec2<u32>(abs(~79387u), _wgslsmith_div_u32(0u >> (var_2.d.a % 32u), reverseBits(var_2.d.a)))), _wgslsmith_mult_vec2_u32(min(countOneBits(vec2<u32>(4120u, var_2.d.a)), vec2<u32>(var_2.d.a, var_2.c.a)), ~(~vec2<u32>(var_2.d.a, 43493u))) | vec2<u32>(~(~1u), _wgslsmith_add_u32(~var_2.d.a, ~var_2.a.a)));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2.b, var_2.b), _wgslsmith_f_op_f32(f32(-1f) * -781f), _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-1000f * -472f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1201f, 430f, -471f, 327f))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(1318f * _wgslsmith_f_op_f32(ceil(var_2.b))), var_2.b, -656f), vec4<f32>(var_2.b, _wgslsmith_f_op_f32(ceil(var_2.b)), -1042f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b, 2661f, false)))))));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(max(5421i, countOneBits(reverseBits(-5779i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-543f)), 803f)), func_1(-8262i), Struct_1(~func_1(u_input.b.x | 1i).a, ~(~(u_input.a ^ u_input.b.x)), _wgslsmith_dot_vec3_i32(u_input.b.wzy, u_input.b.yzx), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-u_input.b.zxx, u_input.b.zxx), func_1(-u_input.b.x).c)));
    global0 = array<bool, 5>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1248f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b + -1126f)))), -196f)));
    global0 = array<bool, 5>();
    let var_2 = abs(abs(u_input.b.yzy));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(44284i, _wgslsmith_clamp_i32(-u_input.b.x, var_2.x, _wgslsmith_clamp_i32(1i, -2147483647i, var_0.d.d)), var_2.x << (abs(var_0.c.a >> (var_0.c.a % 32u)) % 32u)), ~vec2<u32>(countOneBits(584u) | (var_0.d.a ^ 13799u), var_0.d.a ^ (var_0.a.a ^ var_0.a.a)));
}

