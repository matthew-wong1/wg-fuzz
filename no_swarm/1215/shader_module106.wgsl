struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: i32;

var<private> global2: bool = true;

var<private> global3: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(2600f, 161f, 1585f, 1907f), vec4<f32>(-464f, 678f, -977f, 565f), vec4<f32>(635f, -430f, 1236f, 1063f), vec4<f32>(328f, 534f, -201f, -443f), vec4<f32>(562f, -932f, -528f, -2504f), vec4<f32>(-645f, 599f, 1768f, 1651f), vec4<f32>(-1838f, 389f, 1205f, -908f), vec4<f32>(-977f, -1644f, 285f, 1000f), vec4<f32>(657f, 917f, -621f, -1594f), vec4<f32>(136f, 1106f, 1000f, 641f), vec4<f32>(-554f, -225f, 899f, -1607f), vec4<f32>(1325f, -271f, -235f, -129f), vec4<f32>(-1000f, -1009f, -771f, 118f), vec4<f32>(-1794f, -958f, 304f, -824f), vec4<f32>(223f, -1062f, 1000f, -763f), vec4<f32>(-1078f, -182f, 467f, -1169f), vec4<f32>(122f, 659f, 1297f, -953f), vec4<f32>(-1327f, 304f, 440f, -852f));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    global1 = 1i;
    let var_0 = _wgslsmith_clamp_i32(-3069i, reverseBits(1i), _wgslsmith_clamp_i32(arg_0.b.x, -1388i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-46661i, arg_0.b.x, arg_1.b.x), vec3<i32>(-2147483647i, arg_0.b.x, arg_0.b.x) >> (arg_2.a.yzy % vec3<u32>(32u))), -countOneBits(27858i))));
    let var_1 = arg_1.a;
    var var_2 = arg_3;
    var var_3 = any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(true, false), any(vec4<bool>(true, false, true, false))), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
    return any(select(vec3<bool>(select(true, any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), true, _wgslsmith_dot_vec4_u32(vec4<u32>(10274u, var_1, 123020u, 0u), arg_2.a) >= 1u), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), any(vec4<bool>(false, true, false, true))), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), true)), vec3<bool>(all(vec2<bool>(true, false)) != (1369f < global0.x), false, true)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>) -> Struct_2 {
    global2 = all(vec4<bool>(false, func_3(Struct_1(1u, _wgslsmith_add_vec2_i32(vec2<i32>(1i, 298i), vec2<i32>(7i, -1i))), Struct_1(1u, vec2<i32>(1i, 0i)), Struct_2(~vec4<u32>(24979u, u_input.a.x, 4294967295u, u_input.a.x), 1037f, Struct_1(4294967295u, vec2<i32>(-2147483647i, -51737i))), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1424f, -286f, global0.x)), ~u_input.b, _wgslsmith_mult_u32(79077u, u_input.b.x), u_input.b.x)), (_wgslsmith_add_u32(u_input.b.x, 40177u) == 1u) & true, arg_1.x));
    let var_0 = Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a), u_input.a.x, _wgslsmith_mod_u32(firstLeadingBit(26854u), _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), ~0u), (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, u_input.a.x), vec4<u32>(18673u, 4294967295u, 0u, 83397u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a.x)) ^ select(vec4<u32>(12354u, u_input.b.x, u_input.b.x, 104419u), vec4<u32>(u_input.a.x, 4294967295u, u_input.b.x, 0u), arg_1)) | vec4<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x, 1u)), 1000f, Struct_1(u_input.a.x, vec2<i32>(-_wgslsmith_div_i32(16438i, 1i), -1i)));
    let var_1 = var_0;
    var var_2 = ~(~abs(vec3<u32>(48250u, var_0.a.x ^ u_input.b.x, firstTrailingBit(77147u))));
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> vec3<f32> {
    var var_0 = vec4<bool>(false, false | !func_3(arg_0.c, Struct_1(1u, vec2<i32>(-32805i, 1i)), func_2(vec2<bool>(false, true), vec4<bool>(false, true, true, true)), Struct_3(vec3<f32>(-519f, -111f, arg_1.b), vec2<u32>(arg_1.c.a, 4294967295u), 4294967295u, 1u)), false, false);
    global0 = vec3<f32>(-668f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(639f + 698f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2185f, arg_1.b)), _wgslsmith_div_f32(arg_1.b, 886f))) * arg_1.b), _wgslsmith_f_op_f32(-1142f - global0.x));
    global2 = var_0.x;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.b, arg_0.b, -793f))))), arg_1.a.wz, 4982u, ~_wgslsmith_div_u32(u_input.a.x, 1u));
    global1 = -2147483647i;
    return var_1.a;
}

fn func_1() -> vec3<bool> {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -1254f));
    var_0 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-154f, var_1, -664f), vec3<f32>(var_1, 1000f, var_1))))) - _wgslsmith_f_op_vec3_f32(func_4(func_2(vec2<bool>(true, true), vec4<bool>(true, true, true, true)), func_2(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec4<bool>(false, false, false, true)), i32(-1i) * -2147483647i)))));
    var var_3 = Struct_1(u_input.b.x, countOneBits(vec2<i32>(abs(_wgslsmith_div_i32(-42913i, -9526i)), reverseBits(_wgslsmith_div_i32(1i, 1i)))));
    return !select(vec3<bool>(select(true, any(vec4<bool>(false, true, false, false)), true), true, ~u_input.a.x == ~var_3.a), vec3<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 18>();
    let var_0 = func_1();
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1106f, 773f, global0.x)) - vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 165f, -174f), vec3<f32>(global0.x, global0.x, 462f))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, -(-1i ^ _wgslsmith_clamp_i32(i32(-1i) * -1i, ~1i, 34811i)), ~(~(~u_input.a) ^ ~min(vec2<u32>(u_input.b.x, 53001u), vec2<u32>(29363u, u_input.a.x))), 1u, u_input.a.x);
}

