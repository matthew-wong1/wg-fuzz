struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    return ~arg_0.x;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(892f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-679f)), _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)))))));
    var var_1 = Struct_2(1u, abs(func_3(select(vec4<i32>(10915i, 42025i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i), false))));
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(743f, _wgslsmith_div_f32(global0.x, var_0), -1421f, global0.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -645f, 1000f, -372f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, var_0, global0.x))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, var_0, global0.x, var_0), vec4<f32>(global0.x, 210f, -847f, var_0))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, var_0, global0.x, var_0))), vec4<bool>(true, true, false, false)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -478f), _wgslsmith_f_op_f32(f32(-1f) * -874f))))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(step(217f, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(trunc(global0.x))))));
    var var_3 = Struct_1(firstTrailingBit(-var_1.b));
    return Struct_3(vec3<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)), all(vec4<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(true, false, true)), true, true)), false || (_wgslsmith_f_op_f32(f32(-1f) * -121f) < var_2.x)));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    global0 = vec4<f32>(global0.x, global0.x, global0.x, _wgslsmith_f_op_f32(global0.x - -1639f));
    var var_0 = func_2(_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.a, 3594u, u_input.a, arg_1.a)), ~vec4<u32>(29501u, abs(arg_1.a), _wgslsmith_mult_u32(11056u, 36193u), countOneBits(0u))));
    var var_1 = -33837i;
    let var_2 = 48222u;
    var_0 = func_2(vec4<u32>(_wgslsmith_add_u32(~firstLeadingBit(arg_1.a), 33488u), 57748u, ~(arg_1.a >> (21805u % 32u)) >> (~select(0u, arg_1.a, arg_0) % 32u), ~min(1u, 3070u)));
    return func_2((vec4<u32>(1u, arg_1.a ^ var_2, ~var_2, ~var_2) ^ reverseBits(vec4<u32>(arg_1.a, 0u, 0u, arg_1.a) << (vec4<u32>(1056u, u_input.a, u_input.a, 1u) % vec4<u32>(32u)))) << (vec4<u32>(var_2, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, 10178u), vec4<u32>(arg_1.a, 1u, arg_1.a, 1u)) ^ 1u, ~select(74352u, 4294967295u, true), u_input.a) % vec4<u32>(32u)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> vec2<i32> {
    return _wgslsmith_mod_vec2_i32(-select(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, arg_1), vec2<i32>(arg_3, arg_3)), vec2<i32>(arg_1, arg_3), true), vec2<i32>(max(arg_1, 27153i), -1i) | reverseBits(vec2<i32>(-1382i, arg_3))) & (~(firstTrailingBit(vec2<i32>(16208i, arg_3)) >> (~vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))) << (min(vec2<u32>(1u, 1u) ^ (vec2<u32>(u_input.a, 50727u) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))), ~vec2<u32>(11746u, 1u)) % vec2<u32>(32u)));
}

fn func_5(arg_0: vec2<i32>) -> bool {
    global0 = vec4<f32>(1202f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))) + global0.x))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -935f), _wgslsmith_f_op_f32(round(global0.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(573f, -1000f, 203f, global0.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1693f, global0.x, global0.x, global0.x), vec4<f32>(836f, global0.x, 425f, global0.x))) + vec4<f32>(584f, global0.x, global0.x, -995f)))));
    var var_0 = false;
    let var_1 = vec4<f32>(-1035f, global0.x, global0.x, 770f);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(483f))));
    return true | func_2(reverseBits(select(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) ^ vec4<u32>(4564u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 1u, 47730u), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false)))).a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(select(_wgslsmith_add_vec4_u32(~select(vec4<u32>(16786u, 16151u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), false), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 67413u, 4294967295u, 19595u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 68624u, u_input.a)))), ~abs(~vec4<u32>(64957u, 10546u, u_input.a, u_input.a)), func_5(func_4(false, 1i, func_1(false, Struct_2(4294967295u, 0i)), firstTrailingBit(21847i)))));
    var var_1 = _wgslsmith_mult_i32(~0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-18421i, 61159i, -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 27669i, -1855i), vec3<i32>(2147483647i, 13283i, -28246i), vec3<i32>(-2147483647i, -28589i, -2147483647i))) & max(-76i, 399i)) & 35577i;
    var_0 = _wgslsmith_sub_vec4_u32(select(vec4<u32>(~_wgslsmith_dot_vec2_u32(var_0.wy, vec2<u32>(var_0.x, u_input.a)), var_0.x << (~4294967295u % 32u), ~(~var_0.x), var_0.x), select(vec4<u32>(u_input.a, ~u_input.a, var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 35497u), var_0.xww)), vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.wwx, vec3<u32>(4294967295u, var_0.x, 10474u)), ~u_input.a, firstLeadingBit(var_0.x), var_0.x), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true)), select(vec4<bool>(all(vec3<bool>(false, false, true)), true, true, func_5(vec2<i32>(60607i, 35933i))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)))), abs(abs(vec4<u32>(select(var_0.x, u_input.a, true), 7981u, u_input.a, u_input.a))));
    let var_2 = Struct_3(!vec3<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), false, (4294967295u >> (u_input.a % 32u)) > var_0.x));
    var var_3 = var_0.zxz | var_0.zzz;
    var var_4 = Struct_1(_wgslsmith_sub_i32(1i, 18554i));
    let var_5 = Struct_2(13434u, var_4.a);
    var_0 = vec4<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(21812u, 0u), var_3.xz | var_3.xy), var_0.x, var_3.x, ~_wgslsmith_div_u32(var_3.x, max(0u, var_5.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-571f, _wgslsmith_f_op_f32(sign(-534f)), select(22291u, var_0.x, var_2.a.x != all(vec2<bool>(false, true))), 341f);
}

