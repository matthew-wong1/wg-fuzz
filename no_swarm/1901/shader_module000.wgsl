struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    global0 = Struct_1(!(!vec2<bool>(arg_1.a.x, any(vec3<bool>(false, global0.a.x, true)))));
    let var_0 = arg_1;
    var var_1 = var_0;
    var var_2 = _wgslsmith_sub_i32(~1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, i32(-1i) * -28827i), 59400i) << (_wgslsmith_div_u32(firstLeadingBit(4401u), arg_2.x) % 32u));
    var var_3 = true;
    return var_0.a.x;
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_1(vec2<bool>(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1629f - -271f)), Struct_1(global0.a), select(~vec4<u32>(13579u, 0u, 49642u, 15610u), abs(vec4<u32>(42244u, 45012u, 1u, 60388u)), true)), select(true, true, true)));
    global0 = Struct_1(vec2<bool>(!all(select(vec4<bool>(false, false, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, global0.a.x, true), vec4<bool>(false, true, var_0.a.x, true))), all(select(select(var_0.a, vec2<bool>(true, false), true), vec2<bool>(true, var_0.a.x), vec2<bool>(true, false)))));
    let var_1 = vec3<i32>(-(~_wgslsmith_mod_i32(select(u_input.a, -25445i, var_0.a.x), ~16929i)), -23926i, -2147483647i);
    var var_2 = Struct_1(select(!global0.a, var_0.a, !(!select(var_0.a, var_0.a, var_0.a))));
    var var_3 = Struct_1(!select(vec2<bool>(true, true), global0.a, !func_3(-1251f, Struct_1(var_0.a), vec4<u32>(1u, 43392u, 4294967295u, 1u))));
    return vec4<u32>(_wgslsmith_div_u32(~4294967295u, 1u), 15668u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(6902u, 5790u)), ~(~vec2<u32>(1u, 0u))), ~45055u) | reverseBits(select(select(vec4<u32>(52743u, 4294967295u, 32379u, 13537u), vec4<u32>(44932u, 11926u, 3895u, 59689u), false) >> (~vec4<u32>(366u, 24182u, 0u, 10515u) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u), global0.a.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    return Struct_1(!(!(!select(global0.a, vec2<bool>(true, false), true))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(!select(vec2<bool>(false, true), select(global0.a, arg_1.a, vec2<bool>(global0.a.x, false)), true));
    let var_1 = arg_1;
    var_0 = func_4(vec3<u32>(1u, ~(~55517u), _wgslsmith_dot_vec4_u32(func_2(), reverseBits(~vec4<u32>(0u, 1u, 1u, 19296u)))), arg_0);
    let var_2 = func_4(reverseBits(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 1u, 46031u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), 1f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), -2785f, true)))));
    global0 = Struct_1(var_0.a);
    return ~(0u << (_wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(24517u, 0u, 6483u, 61755u), vec4<u32>(1u, 4054u, 72810u, 32150u))), firstLeadingBit(0u)) % 32u));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = 21897u;
    global0 = func_4(_wgslsmith_div_vec3_u32(vec3<u32>(abs(4294967295u), min(var_1, 1u), ~86382u), countOneBits(abs(vec3<u32>(var_1, arg_3.x, 99010u)))) << ((_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(13321u, var_1, 10955u), vec3<u32>(arg_3.x, 14885u, arg_3.x)), vec3<u32>(arg_3.x, var_1, var_1)) ^ vec3<u32>(var_1 | arg_3.x, _wgslsmith_div_u32(4294967295u, 32155u), arg_3.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(min(-1298f, _wgslsmith_f_op_f32(floor(-1437f))))))));
    global0 = func_4(countOneBits(select(~vec3<u32>(1u, 4294967295u, 33347u) << (~vec3<u32>(var_1, 4294967295u, arg_3.x) % vec3<u32>(32u)), ~(vec3<u32>(arg_3.x, 1u, 1u) >> (vec3<u32>(arg_3.x, 4294967295u, 1u) % vec3<u32>(32u))), vec3<bool>(u_input.b != -43994i, !global0.a.x, func_4(vec3<u32>(22724u, arg_3.x, 87803u), arg_0.x).a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -953f)));
    let var_2 = ~u_input.a;
    return Struct_1(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a);
    global0 = func_5(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-154f, 117f))))), Struct_1(!select(select(vec2<bool>(false, true), global0.a, vec2<bool>(false, global0.a.x)), !global0.a, true)), !(!(all(vec2<bool>(global0.a.x, global0.a.x)) || true)), ~vec2<u32>(_wgslsmith_clamp_u32(func_1(1000f, Struct_1(global0.a)), 40715u, firstTrailingBit(4294967295u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 68425u), vec3<u32>(5977u, 0u, 14416u)), 0u)));
    let var_0 = select(vec3<bool>(true, func_5(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -2029f))), func_5(vec2<f32>(1093f, 723f), func_4(vec3<u32>(1u, 40358u, 1u), 1721f), global0.a.x, _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(93597u, 4294967295u))), global0.a.x, firstLeadingBit(firstTrailingBit(vec2<u32>(45044u, 1u)))).a.x, global0.a.x), !select(!vec3<bool>(true, global0.a.x, global0.a.x), !select(vec3<bool>(false, global0.a.x, global0.a.x), vec3<bool>(false, global0.a.x, false), global0.a.x), true), func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-1921f)), _wgslsmith_f_op_f32(max(663f, 1000f)))), func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1872f, 1371f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2118f, 1020f), vec2<f32>(157f, 1000f), global0.a.x))), Struct_1(vec2<bool>(false, false)), true, func_2().xw), true, _wgslsmith_mult_vec2_u32(vec2<u32>(firstLeadingBit(66803u), 1u), firstTrailingBit(vec2<u32>(42490u, 100893u)))).a.x);
    var var_1 = true;
    var var_2 = global0.a;
    var_1 = !(firstTrailingBit(firstLeadingBit(23384u)) > _wgslsmith_div_u32(0u, select(0u, 36952u, var_0.x))) || false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(select(1u, select(_wgslsmith_mult_u32(1u, 44259u), func_1(1000f, Struct_1(vec2<bool>(false, true))), true), false), _wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, 0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(35150u, 1u), vec2<u32>(1u, 1u))), 23667u, ~62735u));
}

