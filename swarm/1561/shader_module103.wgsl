struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 3408i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    let var_0 = _wgslsmith_div_i32(min(-(~(u_input.a ^ u_input.a)), 23453i), -6027i);
    global0 = 1i;
    global0 = -(~var_0);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(247f, 301f)))))), _wgslsmith_f_op_f32(ceil(311f)))), Struct_1(~firstLeadingBit(vec2<u32>(u_input.c, u_input.c)) ^ countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, 1u))), false, vec2<i32>(~_wgslsmith_add_i32(var_0, 2147483647i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0, var_0, u_input.a)), ~vec3<i32>(-1i, -2147483647i, var_0))), _wgslsmith_f_op_f32(-1f)), ~(~(select(vec2<u32>(0u, 36056u), vec2<u32>(28246u, u_input.c), vec2<bool>(true, false)) | firstTrailingBit(vec2<u32>(4294967295u, u_input.c)))), vec4<i32>(-(u_input.b & 0i), -_wgslsmith_clamp_i32(-2147483647i, i32(-1i) * -16978i, 0i), -var_0, var_0));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -381f);
    return abs(min(vec2<i32>(-1i) * -(var_1.d.yw >> (var_1.c % vec2<u32>(32u))), vec2<i32>((i32(-1i) * -6666i) ^ ~var_1.b.c.x, -1i)));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_1(~_wgslsmith_sub_vec2_u32(firstTrailingBit(~vec2<u32>(4294967295u, 14142u)), ~(~vec2<u32>(u_input.c, u_input.c))), all(select(select(vec4<bool>(arg_0, arg_0, true, true), !vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(false, arg_0, true, true)), !vec4<bool>(arg_0, true, arg_0, arg_0), any(!vec3<bool>(arg_0, true, arg_0)))), func_3(), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2329f), 1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -801f))));
    let var_1 = -32836i;
    var var_2 = u_input.c;
    global0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(abs(-vec4<i32>(-37308i, var_1, var_0.c.x, -20441i)) & -_wgslsmith_add_vec4_i32(vec4<i32>(0i, -1i, var_0.c.x, var_1), vec4<i32>(1i, var_1, u_input.b, var_0.c.x)), -vec4<i32>(var_0.c.x, -var_0.c.x, i32(-1i) * -1i, _wgslsmith_add_i32(var_1, var_1))), max(abs(abs(vec4<i32>(8682i, -2147483647i, u_input.a, var_0.c.x) | vec4<i32>(2147483647i, var_0.c.x, var_1, 37826i))), -_wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, var_0.c.x, var_1, u_input.b), abs(vec4<i32>(-1i, 10404i, 2147483647i, 47144i)), vec4<i32>(-31690i, 0i, var_0.c.x, -2184i))));
    return 4768u;
}

fn func_4(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-arg_0.x), Struct_1(~firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 12524u), vec2<u32>(13043u, arg_1))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, true, false)))), select(vec2<i32>(max(u_input.a, 14590i), ~u_input.b), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.x, -1510f), arg_0.x)) - _wgslsmith_f_op_f32(ceil(642f)))), select(~(select(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.c, arg_1), false) | reverseBits(vec2<u32>(arg_1, 4294967295u))), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(26197u, 31662u), vec2<u32>(19235u, u_input.c))), true & any(vec2<bool>(true, true))), vec4<i32>(~_wgslsmith_sub_i32(-19333i, firstLeadingBit(u_input.a)), max(_wgslsmith_add_i32(u_input.b, ~u_input.a), 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a << (arg_1 % 32u), u_input.a, -20194i), vec3<i32>(u_input.b, u_input.b >> (u_input.c % 32u), u_input.b)), -1i));
    let var_1 = !(!(!select(select(vec4<bool>(var_0.b.b, var_0.b.b, false, var_0.b.b), vec4<bool>(var_0.b.b, true, false, var_0.b.b), true), select(vec4<bool>(var_0.b.b, var_0.b.b, false, var_0.b.b), vec4<bool>(var_0.b.b, false, var_0.b.b, false), true), arg_0.x >= 1784f)));
    var var_2 = firstTrailingBit(var_0.d.xxy);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(-498f, var_0.a))))), var_0.b, ~var_0.b.a, vec4<i32>(-1i) * -var_0.d);
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, var_3.b.d)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, var_3.a)))))));
    return Struct_1(vec2<u32>(var_3.c.x, var_0.b.a.x), false, var_3.b.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(abs(1f))))));
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_2(arg_0.d, Struct_1(~arg_0.a, any(select(!vec4<bool>(true, false, arg_0.b, false), select(vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b), vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b), false), false & arg_0.b)), _wgslsmith_add_vec2_i32(abs(-vec2<i32>(2147483647i, -1i)), -(~vec2<i32>(u_input.a, 0i))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, arg_0.d, arg_0.d) + vec3<f32>(-674f, 194f, arg_0.d)), u_input.c).d - arg_0.d)), abs(select(~vec2<u32>(35120u, 4941u), arg_0.a, !vec2<bool>(arg_0.b, arg_0.b))), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b, _wgslsmith_sub_i32(-1i, u_input.b), 1i, arg_0.c.x), ~vec4<i32>(-51001i, 1i, ~arg_0.c.x, ~u_input.a)));
    global0 = -_wgslsmith_div_i32(1i, 37332i);
    let var_1 = Struct_1(~firstLeadingBit(arg_0.a), !all(select(vec4<bool>(var_0.b.b, false, false, true), !vec4<bool>(false, true, arg_0.b, var_0.b.b), !vec4<bool>(false, false, var_0.b.b, true))), vec2<i32>(_wgslsmith_add_i32(arg_0.c.x | arg_0.c.x, 1i), -2147483647i), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -424f)));
    var var_2 = u_input.c >> (1u % 32u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(-var_1.d))), _wgslsmith_f_op_f32(select(var_1.d, var_1.d, var_1.b)));
}

fn func_1() -> f32 {
    global0 = 2147483647i;
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(vec3<f32>(-971f, -1000f, -676f), func_2(false)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -846f))) - 1072f)), -460f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1332f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-399f, -688f)) - _wgslsmith_f_op_f32(floor(-1045f))) + _wgslsmith_f_op_f32(f32(-1f) * -518f))));
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(430f, var_0.x))), -1146f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-227f - var_0.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))))))));
    var var_1 = ~(~(max(vec2<u32>(41039u, 4294967295u) | vec2<u32>(16941u, u_input.c), firstTrailingBit(vec2<u32>(u_input.c, u_input.c))) << ((~vec2<u32>(101290u, u_input.c) & ~vec2<u32>(u_input.c, 0u)) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(var_1.x, _wgslsmith_div_u32(65840u, var_1.x), 1u, 1u)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(43250u, 0u, 0u, u_input.c)) & ((vec4<u32>(1u, 0u, 71825u, u_input.c) | vec4<u32>(0u, 1u, var_1.x, 1u)) & ~vec4<u32>(1u, var_1.x, 4294967295u, 50992u)), (~vec4<u32>(5277u, u_input.c, var_1.x, 0u) >> (select(vec4<u32>(var_1.x, u_input.c, 1u, u_input.c), vec4<u32>(var_1.x, u_input.c, u_input.c, 69157u), false) % vec4<u32>(32u))) ^ (~vec4<u32>(1u, 13034u, 54802u, u_input.c) | ~vec4<u32>(u_input.c, u_input.c, var_1.x, 0u)), ~(~reverseBits(vec4<u32>(u_input.c, 90030u, 82328u, u_input.c)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_i32(u_input.a, abs(_wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 7461i, 0i), vec3<i32>(u_input.a, u_input.a, u_input.b)))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()));
    global0 = func_3().x;
    global0 = abs(~(-9775i));
    let var_1 = any(vec2<bool>(!(!func_4(vec3<f32>(-104f, -307f, 384f), u_input.c).b), true));
    let x = u_input.a;
    s_output = StorageBuffer(-(~u_input.a), u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -387f)), var_0);
}

