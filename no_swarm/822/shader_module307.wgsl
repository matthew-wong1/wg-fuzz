struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> vec4<u32> {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2533f + -222f) * _wgslsmith_f_op_f32(ceil(arg_0))), arg_0, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + 1867f), 805f), _wgslsmith_div_f32(-1354f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(466f, 430f))), _wgslsmith_f_op_f32(f32(-1f) * -1377f)), ~min(firstLeadingBit(reverseBits(0u)), select(u_input.b | u_input.c, max(u_input.c, u_input.e.x), true)));
    var var_1 = abs(u_input.c);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.a.x, 201f))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.x - -1332f)))));
    let var_3 = 0i;
    let var_4 = 1f;
    return select(reverseBits(vec4<u32>(1u, ~var_0.b ^ (var_0.b >> (57603u % 32u)), 4294967295u, ~_wgslsmith_dot_vec2_u32(u_input.e, u_input.e))), reverseBits((~vec4<u32>(29431u, u_input.c, u_input.e.x, u_input.e.x) & (vec4<u32>(6897u, 53598u, u_input.c, var_0.b) >> (vec4<u32>(4294967295u, 1u, var_0.b, 1u) % vec4<u32>(32u)))) >> ((abs(vec4<u32>(4294967295u, 1u, var_0.b, 35182u)) >> (min(vec4<u32>(var_0.b, u_input.b, 37523u, 0u), vec4<u32>(0u, 13379u, var_0.b, 46292u)) % vec4<u32>(32u))) % vec4<u32>(32u))), true);
}

fn func_2(arg_0: vec2<bool>) -> bool {
    let var_0 = u_input.e.x;
    var var_1 = false;
    var var_2 = Struct_2(~func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), countOneBits(~_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.b, var_0, u_input.e.x, 4294967295u), vec4<u32>(u_input.e.x, 0u, var_0, u_input.b), true), _wgslsmith_div_vec4_u32(vec4<u32>(13168u, 38168u, 56565u, 4294967295u), vec4<u32>(u_input.e.x, var_0, u_input.c, 9383u)))), select(select(select(!vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), true), !vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), all(vec3<bool>(false, true, arg_0.x))), select(!select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(false, false, false, true), vec4<bool>(arg_0.x, arg_0.x, false, true)), vec4<bool>(true, true, true, false), !vec4<bool>(arg_0.x, true, false, false)), (true == (0u <= u_input.e.x)) || !(!arg_0.x)), select(!vec4<bool>(!arg_0.x, all(vec4<bool>(false, true, false, arg_0.x)), true, any(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))), vec4<bool>(select(all(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), true, true), !all(vec4<bool>(false, arg_0.x, true, false)), false, all(vec2<bool>(true, arg_0.x))), all(vec2<bool>(false, true))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-696f, 1410f, -472f, -832f))), ~(~u_input.c)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_2.e.a))), 1u);
    let var_4 = reverseBits(_wgslsmith_div_u32(var_3.b, ~min(var_0, 4294967295u) >> (4294967295u % 32u)));
    return false;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: i32, arg_3: f32) -> Struct_2 {
    var var_0 = arg_0.x;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, -492f, arg_1.x)) * -2792f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) * arg_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-arg_0.x)))), abs(0i), !(!func_2(arg_1.xy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(549f)))))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(885f * 519f) - _wgslsmith_div_f32(_wgslsmith_div_f32(570f, 475f), arg_0.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_0.x, arg_3)))), _wgslsmith_mult_i32(-13139i, -11647i), true, arg_3);
    let var_3 = Struct_2(select(vec4<u32>(u_input.e.x, ~(~0u), ~u_input.c, 27989u), func_3(_wgslsmith_f_op_f32(f32(-1f) * -499f)), !(!arg_1)), abs(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, 85983u, 34377u, 36714u), vec4<u32>(u_input.b, u_input.c, 1u, 34178u))) << (_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.e.x, u_input.c, u_input.b, 10897u), vec4<u32>(u_input.b >> (4294967295u % 32u), 1u, u_input.b, u_input.b)) % vec4<u32>(32u)), arg_1, !arg_1, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_2.b, arg_3, 780f) + vec4<f32>(-721f, arg_0.x, arg_3, -536f)))), 45860u));
    var var_4 = var_3.e;
    return Struct_2(select(vec4<u32>(abs(u_input.c), ~u_input.b, 4294967295u ^ _wgslsmith_mod_u32(u_input.b, 29712u), _wgslsmith_add_u32(u_input.e.x, func_3(1061f).x)), firstTrailingBit(firstLeadingBit(var_3.a ^ vec4<u32>(u_input.b, var_4.b, var_4.b, u_input.b))), true || (var_3.d.x && select(true, var_2.d, arg_1.x))), var_3.b, var_3.d, vec4<bool>(var_2.d, true, !(var_2.d & any(vec3<bool>(false, true, arg_1.x))), !any(!arg_1.zxy)), var_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1728f, 1000f));
    let var_1 = -1000f < var_0.x;
    var var_2 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), var_0.x, 1502f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(930f, 937f, var_0.x) * vec3<f32>(-133f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1090f, -934f, 894f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(562f, -1165f, var_0.x) - vec3<f32>(2383f, -1091f, var_0.x)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, 850f, -115f)))))), !(!vec4<bool>(!var_1, var_1, var_0.x != 485f, all(vec2<bool>(true, true)))), _wgslsmith_sub_i32(firstLeadingBit(i32(-1i) * -21233i), _wgslsmith_clamp_i32(u_input.a, ~u_input.d.x, ~u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(556f, var_0.x))))));
    var var_3 = 0i;
    var var_4 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.e.b, 0u), u_input.e), var_2.a.xw & vec2<u32>(u_input.c, var_2.e.b)), max(var_2.e.b, 0u), 69100u, ~_wgslsmith_mult_u32(u_input.b, u_input.e.x)), var_2.b.x, 69592i, u_input.a);
}

