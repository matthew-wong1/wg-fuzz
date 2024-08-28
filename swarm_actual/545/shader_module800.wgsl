struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = ~u_input.b;
    let var_1 = true;
    let var_2 = Struct_1(arg_3.x);
    global0 = Struct_3(firstTrailingBit(_wgslsmith_dot_vec4_u32(~var_0, _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b, arg_1.x, global0.a, 4294967295u) ^ vec4<u32>(1u, 4294967295u, 34411u, 0u), ~u_input.b))), u_input.b.x);
    global0 = Struct_3(_wgslsmith_mod_u32(18210u, 4294967295u), ~_wgslsmith_add_u32(0u, 17609u));
    return Struct_1(false);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> vec3<bool> {
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, 521f) + global1.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, 1793f) - global1.a))))), arg_1);
    var var_0 = Struct_3(countOneBits(u_input.b.x), reverseBits(global1.b) << (40625u % 32u));
    var var_1 = u_input.b.wz;
    var var_2 = Struct_1(false);
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1500f, global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1021f))), _wgslsmith_f_op_f32(min(global1.a.x, _wgslsmith_f_op_f32(max(global1.a.x, global1.a.x))))))));
    return !(!vec3<bool>(any(vec3<bool>(false, arg_2.a, true)) | any(vec3<bool>(arg_2.a, true, true)), arg_2.a, false));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_3(~3328u, ~(~4294967295u));
    global1 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(-290f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-271f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a)))), 76150u);
    return Struct_2(global1.a, 14038u);
}

fn func_1() -> Struct_2 {
    global1 = func_4(global1.a.x, select(vec3<bool>(false, any(vec2<bool>(true, true)), any(vec2<bool>(true, false))), select(func_3(_wgslsmith_mult_u32(4113u, 57263u), ~68316u, func_2(178f, vec3<u32>(15605u, global1.b, 0u), vec3<i32>(2147483647i, -31643i, 24331i), vec3<bool>(true, true, true))), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), func_3(~global1.b, 118649u, func_2(-430f, vec3<u32>(0u, global0.b, u_input.b.x), vec3<i32>(u_input.a.x, -49744i, u_input.a.x), vec3<bool>(false, false, false)))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)));
    let var_0 = Struct_3(global0.b, 0u);
    global0 = Struct_3(~(~u_input.b.x << (func_4(global1.a.x, vec3<bool>(false, false, false)).b % 32u)) & ~(~0u), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + 3026f) * _wgslsmith_div_f32(-171f, 554f)) - func_4(func_4(-844f, vec3<bool>(true, false, false)).a.x, select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))).a.x), func_3(var_0.a, _wgslsmith_dot_vec2_u32(~u_input.b.wz, u_input.b.wz), func_2(global1.a.x, ~u_input.b.www, vec3<i32>(1i, u_input.a.x, -20141i) << (u_input.b.xyy % vec3<u32>(32u)), vec3<bool>(true, true, true)))).b);
    global0 = Struct_3(17104u, ~_wgslsmith_mult_u32(global0.a, ~var_0.a));
    var var_1 = select(!vec3<bool>(any(vec4<bool>(false, false, true, true)), !(u_input.a.x <= -2147483647i), 0u >= global1.b), !func_3(0u, ~(~1u), Struct_1(true)), vec3<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)), (_wgslsmith_f_op_f32(-1102f - global1.a.x) == _wgslsmith_f_op_f32(f32(-1f) * -1112f)) | true));
    return func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -289f) * -928f)))), vec3<bool>(true, true, all(!select(vec3<bool>(var_1.x, true, false), vec3<bool>(true, var_1.x, var_1.x), true))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = !(!all(select(select(vec3<bool>(false, true, true), vec3<bool>(arg_1.a, true, arg_1.a), true), func_3(global0.b, 45771u, Struct_1(arg_1.a)), vec3<bool>(arg_1.a, true, arg_2.a))));
    var_0 = false;
    global1 = arg_0;
    var var_1 = _wgslsmith_mult_vec3_i32(~firstTrailingBit(vec3<i32>(abs(39447i), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -1i)))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, reverseBits(-20222i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, -2147483647i, u_input.a.x), ~vec3<i32>(-2147483647i, u_input.a.x, 1i)) >> (u_input.b.wzz % vec3<u32>(32u))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - global1.a.x) > global1.a.x;
    return vec4<i32>(firstLeadingBit(1i), _wgslsmith_add_i32(u_input.a.x, u_input.a.x), _wgslsmith_sub_i32(u_input.a.x, max(u_input.a.x, ~_wgslsmith_div_i32(u_input.a.x, var_1.x))), ~(u_input.a.x >> (reverseBits(abs(1u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), func_2(global1.a.x, vec3<u32>(46685u | global0.b, 6866u, global0.b), abs(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), func_3(~4294967295u, 0u, Struct_1(false))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -728f), ~_wgslsmith_div_vec3_u32(vec3<u32>(40434u, 126229u, 4294967295u), vec3<u32>(u_input.b.x, global0.a, global0.b)), vec3<i32>(-35149i, 2147483647i, u_input.a.x) & vec3<i32>(-25220i, -20316i, u_input.a.x), !func_3(u_input.b.x, 0u, Struct_1(false)))) ^ firstLeadingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(25567i, -1i, -4491i, u_input.a.x) ^ countOneBits(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x)), -countOneBits(vec4<i32>(u_input.a.x, -1i, u_input.a.x, -76005i))));
    var var_1 = Struct_3(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, firstTrailingBit(global0.b)), global1.b, global0.b), 23255u);
    var_0 = ~_wgslsmith_div_vec4_i32(min(select(vec4<i32>(u_input.a.x, -2147483647i, -24077i, var_0.x) ^ vec4<i32>(0i, var_0.x, var_0.x, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 43481i, -1i, var_0.x), vec4<i32>(u_input.a.x, var_0.x, u_input.a.x, -2147483647i)), vec4<bool>(true, false, true, false)), vec4<i32>(u_input.a.x, -40274i << (0u % 32u), u_input.a.x & u_input.a.x, ~51265i)), abs(-vec4<i32>(u_input.a.x, 28830i, var_0.x, 51545i)) & vec4<i32>(u_input.a.x >> (4294967295u % 32u), ~var_0.x, ~u_input.a.x, reverseBits(u_input.a.x)));
    var var_2 = _wgslsmith_mult_vec2_u32(u_input.b.wx, vec2<u32>(3238u, 4294967295u));
    global0 = Struct_3(func_1().b, ~var_2.x);
    let var_3 = Struct_3(22321u, global0.b);
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.a.x)) * _wgslsmith_f_op_f32(-937f * global1.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -647f), _wgslsmith_f_op_f32(-159f - global1.a.x)))))) >= global1.a.x;
    var_0 = ~(~(-func_5(func_4(-242f, vec3<bool>(false, true, true)), Struct_1(false), func_2(global1.a.x, u_input.b.xxz, vec3<i32>(-19477i, -22392i, var_0.x), vec3<bool>(false, false, true)))));
    var var_5 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(~select(func_5(Struct_2(global1.a, global1.b), Struct_1(var_5.a), Struct_1(true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 0i, var_0.x, -38873i), -vec4<i32>(-1i, -2147483647i, -1i, 2431i), firstLeadingBit(vec4<i32>(var_0.x, u_input.a.x, 1i, 1i))), !vec4<bool>(var_5.a, true, true, var_5.a)), u_input.a);
}

