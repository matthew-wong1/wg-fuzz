struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> vec2<bool> {
    let var_0 = Struct_1(-999f, arg_0, global0.c);
    var var_1 = global0.a;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))))));
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-1054f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(748f - 677f), _wgslsmith_f_op_f32(select(var_2, 547f, true)))) - _wgslsmith_f_op_f32(f32(-1f) * -548f)))));
    var var_3 = var_0;
    return !vec2<bool>(795f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_3.a)), global0.c.x);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.a, global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1310f)) - _wgslsmith_f_op_f32(999f + global0.b))))), _wgslsmith_f_op_f32(589f + -364f), select(global0.c, !vec2<bool>(global0.c.x, any(global0.c)), vec2<bool>(!global0.c.x, 1u >= abs(u_input.e))));
    global0 = Struct_1(613f, global0.b, select(func_3(global0.a, u_input.c.wz), vec2<bool>(global0.c.x, select(u_input.e >= arg_0, all(vec2<bool>(false, global0.c.x)), global0.c.x)), true));
    let var_0 = global0.c.x;
    var var_1 = global0.c.x;
    var var_2 = vec3<bool>(all(!(!vec3<bool>(global0.c.x, false, global0.c.x))), global0.c.x || true, !(true | global0.c.x));
    return Struct_1(1000f, _wgslsmith_f_op_f32(1360f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global0.b)), _wgslsmith_f_op_f32(-global0.b))) - _wgslsmith_div_f32(-1177f, 1112f))), !select(vec2<bool>(true, true), !var_2.xz, any(global0.c)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = abs(u_input.e);
    var var_1 = Struct_1(-921f, -1683f, !vec2<bool>(!arg_1.c.x, false));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) + -339f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1.a))))), -143f)), _wgslsmith_f_op_f32(abs(-2551f)), true));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b, -977f, -161f, var_1.b))), vec4<f32>(-480f, arg_1.b, -2790f, 695f)) + vec4<f32>(2377f, 906f, _wgslsmith_f_op_f32(select(-710f, 660f, true)), _wgslsmith_f_op_f32(min(-380f, -1501f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, -456f, global0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(357f, 1936f, arg_1.a, global0.a)), !vec4<bool>(var_1.c.x, false, true, arg_1.c.x)))) - vec4<f32>(global0.b, _wgslsmith_f_op_f32(global0.a * 332f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -641f), _wgslsmith_f_op_f32(floor(-1052f)))), var_1.b)));
    let var_4 = arg_1;
    return u_input.c.zy;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    var var_0 = select(_wgslsmith_clamp_vec2_u32(func_4(arg_2.yww >> (~vec3<u32>(4294967295u, arg_0, u_input.e) % vec3<u32>(32u)), func_2(1u)), vec2<u32>(countOneBits(u_input.e) << ((u_input.c.x & arg_0) % 32u), arg_0), u_input.c.yy), vec2<u32>(~(~(~arg_0)), _wgslsmith_dot_vec2_u32(u_input.c.xz, u_input.c.zy)), !global0.c);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, 276f, global0.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, -256f, 1000f), vec3<f32>(global0.b, global0.a, global0.a))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, global0.a, 829f)))), false)));
    global1 = -1000f;
    let var_2 = func_2(arg_0);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.b, 539f, -1078f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, global0.a, var_2.a))), vec3<bool>(false, global0.c.x, var_2.c.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 620f, -1104f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(216f, -317f, global0.a)))) + vec3<f32>(var_1.x, var_1.x, global0.b))));
    return Struct_1(_wgslsmith_f_op_f32(ceil(-1019f)), var_3.x, vec2<bool>(global0.c.x, any(global0.c)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = arg_0.a;
    var var_1 = arg_0;
    let var_2 = ~(~0u);
    let var_3 = func_1((_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, vec4<u32>(0u, 1u, 97136u, u_input.c.x)), vec4<u32>(var_2, var_2, 0u, var_2)) << (var_2 % 32u)) & _wgslsmith_sub_u32(countOneBits(countOneBits(u_input.e)), 31842u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2(var_2 & u_input.c.x).b), 1000f), vec4<i32>(u_input.d, u_input.d, ~firstLeadingBit(_wgslsmith_div_i32(u_input.d, u_input.a)), u_input.a), _wgslsmith_dot_vec4_i32(-abs(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 2147483647i, -2147483647i, 2147483647i), vec4<i32>(5437i, 2147483647i, -11231i, u_input.a))), reverseBits(reverseBits(vec4<i32>(1i, 2147483647i, 0i, 0i)))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -902f));
    return func_1(~42404u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.b, _wgslsmith_div_f32(558f, var_1.a))))), min(select(~vec4<i32>(5773i, 2147483647i, 1i, 2147483647i) ^ vec4<i32>(u_input.d, u_input.a, u_input.a, u_input.d), ~(~vec4<i32>(-24258i, u_input.d, u_input.a, -9702i)), !(!vec4<bool>(false, var_1.c.x, global0.c.x, arg_0.c.x))), -(firstTrailingBit(vec4<i32>(93534i, u_input.a, u_input.a, u_input.d)) << (vec4<u32>(var_2, 0u, var_2, 66312u) % vec4<u32>(32u)))), 2147483647i);
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0, 491f, true)), func_2(~u_input.c.x).b) + 974f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a, arg_2.b)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1991f + 348f))))));
    var var_1 = -(~_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_3.x, -4582i, arg_1) | vec3<i32>(-29540i, u_input.a, u_input.a), ~vec3<i32>(arg_1, u_input.d, arg_3.x)), _wgslsmith_add_vec3_i32(vec3<i32>(-6115i, 2147483647i, arg_3.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-53936i, arg_1, -44799i), vec3<i32>(1794i, arg_3.x, -1i)))));
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(20664i, ~(arg_3.x & -2188i)), var_1.x, arg_1, -_wgslsmith_div_i32(var_1.x, var_1.x));
    var var_3 = arg_2.c;
    let var_4 = vec3<u32>(_wgslsmith_add_u32(29810u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.c.x, 4294967295u, u_input.c.x), ~vec4<u32>(u_input.c.x, 85760u, 21794u, 59477u)) | u_input.b), ~(~(~(~u_input.e))), 1u);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(696f * -561f))) * global0.a), max(~(1i | _wgslsmith_mult_i32(u_input.a, u_input.d)), u_input.a), func_5(func_1(u_input.b, global0.b, vec4<i32>(-395i >> (u_input.c.x % 32u), u_input.a, 0i, abs(1i)), ~(-5627i ^ u_input.d)), vec2<bool>((u_input.b ^ u_input.c.x) < firstTrailingBit(4294967295u), ~0i > ~u_input.d)), vec2<i32>(firstTrailingBit(firstLeadingBit(u_input.a | u_input.d)), firstLeadingBit(firstLeadingBit(1i))));
    let var_0 = vec4<bool>(!any(!vec4<bool>(false, global0.c.x, global0.c.x, global0.c.x)), true, any(vec2<bool>(true, global0.c.x)), func_2(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(43604u, u_input.b), ~min(u_input.b, u_input.c.x), 33851u)).c.x);
    let var_1 = var_0.x;
    let var_2 = select(vec4<bool>(select(true, var_0.x | true, true), var_1, ~u_input.b <= u_input.b, all(select(var_0.xxx, select(vec3<bool>(true, var_0.x, true), var_0.zyw, var_0.wxy), any(var_0)))), var_0, func_2(abs(u_input.c.x)).c.x);
    global0 = func_1(u_input.b, func_6(global0.a, abs(104395i), Struct_1(global0.b, _wgslsmith_f_op_f32(f32(-1f) * -152f), !func_2(u_input.c.x).c), select(abs(~vec2<i32>(u_input.a, u_input.a)), firstTrailingBit(-vec2<i32>(-210i, 46306i)), func_6(-777f, select(u_input.a, u_input.d, global0.c.x), Struct_1(global0.a, global0.a, var_0.xz), ~vec2<i32>(u_input.d, 41672i)).c)).a, abs(vec4<i32>(firstTrailingBit(firstLeadingBit(u_input.a)), u_input.a, -1i, max(u_input.a, u_input.d) ^ -20227i)), 2147483647i);
    var var_3 = var_2.x;
    global1 = _wgslsmith_f_op_f32(step(-504f, _wgslsmith_f_op_f32(abs(global0.b))));
    let var_4 = vec3<i32>(-1i) * -(_wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a, -1i, u_input.a)), ~vec3<i32>(55884i, u_input.d, -2147483647i)) & reverseBits(abs(vec3<i32>(0i, u_input.a, 0i))));
    global0 = func_5(Struct_1(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -693f), func_3(_wgslsmith_f_op_f32(min(352f, _wgslsmith_f_op_f32(global0.b * 106f))), ~(~u_input.c.xy))), vec2<bool>(true, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(-1114f + _wgslsmith_f_op_f32(1697f + -623f)), -492f)), var_4, ~var_4.xx >> (abs(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c.yx, vec2<u32>(u_input.e, u_input.e), vec2<u32>(u_input.c.x, u_input.e)), u_input.c.xx)) % vec2<u32>(32u)));
}

