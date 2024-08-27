struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 1000f;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: vec3<bool>) -> vec4<u32> {
    let var_0 = arg_3.x;
    var var_1 = u_input.b.x;
    var var_2 = global0.b;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(-2142f, _wgslsmith_f_op_f32(331f + global0.a))), u_input.a.x | ~13304u);
    let var_4 = 1i;
    return vec4<u32>(u_input.a.x, arg_0.b, ~_wgslsmith_mod_u32(~var_3.b, u_input.a.x) & u_input.a.x, 63657u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(1285f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1642f + -1000f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global0.a, 1503f))))))), _wgslsmith_clamp_u32(0u, ~(~firstTrailingBit(arg_1.b)), arg_1.b));
    global0 = Struct_1(-1123f, arg_3.x & ~(~arg_3.x));
    global1 = global0.a;
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1477f + arg_0.a), -482f, arg_1.a));
    var var_1 = (arg_3.yz | (_wgslsmith_mult_vec2_u32(select(u_input.a.zw, vec2<u32>(26244u, arg_1.b), vec2<bool>(false, false)), select(arg_3.zy, vec2<u32>(arg_2.b, global0.b), vec2<bool>(false, false))) << (arg_3.yz % vec2<u32>(32u)))) << (countOneBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(arg_3.xx << (vec2<u32>(arg_0.b, arg_0.b) % vec2<u32>(32u)), ~u_input.a.zx), max(_wgslsmith_div_vec2_u32(u_input.a.xy, u_input.a.wx), u_input.a.zz), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, arg_2.b), firstLeadingBit(vec2<u32>(2516u, 1u))))) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(991f * 977f) * global0.a), _wgslsmith_f_op_f32(-arg_1.a))))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(Struct_1(global0.a, select(2671u | u_input.a.x, 1u, -136f <= global0.a)), Struct_1(global0.a, ~(~4294967295u)), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(-309f, global0.a), -379f), 11233u), ~(func_3(Struct_1(global0.a, u_input.a.x), u_input.a.ywy, u_input.b.x, vec3<bool>(true, true, true)) | _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 47798u, global0.b), vec4<u32>(u_input.a.x, 44102u, global0.b, u_input.a.x))))), global0.b);
    var var_1 = u_input.a.xy;
    var var_2 = var_1.x ^ ~0u;
    let var_3 = select(!vec2<bool>(select(true, true, true), true), vec2<bool>(~min(0u, var_0.b) != _wgslsmith_dot_vec2_u32(~u_input.a.yx, u_input.a.yx), all(vec2<bool>(true, true))), true);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), 4294967295u);
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-301f, -2121f, all(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a)))), ~(~global0.b));
}

fn func_5(arg_0: vec3<bool>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(max(vec3<u32>(0u, u_input.a.x, u_input.a.x), u_input.a.yyz)), vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 29464u, 4294967295u, global0.b), vec4<u32>(global0.b, arg_3.b, u_input.a.x, u_input.a.x)), _wgslsmith_add_u32(0u, u_input.a.x))), ~abs(u_input.a.yxx)), reverseBits(1u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a.wzy, _wgslsmith_sub_vec3_u32(firstLeadingBit(u_input.a.xww), reverseBits(u_input.a.zww))), 874u), ~global0.b);
    return u_input.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: bool, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_u32(func_5(select(!select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, arg_2, true)), select(!vec3<bool>(true, true, arg_2), select(vec3<bool>(true, false, true), vec3<bool>(false, arg_2, arg_2), arg_2), true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), -1000f, arg_2)) * -130f), _wgslsmith_f_op_f32(-global0.a), func_2()), ~(~u_input.a));
    let var_1 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(47706u, ~(arg_0.x ^ abs(4294967295u))), ~(~var_0.x));
    let var_2 = global0.a < arg_3.x;
    let var_3 = 1i;
    var var_4 = _wgslsmith_dot_vec4_u32(firstTrailingBit(min(vec4<u32>(arg_0.x, var_0.x, 1u, 12851u), ~u_input.a) >> (_wgslsmith_sub_vec4_u32(~u_input.a, u_input.a) % vec4<u32>(32u))), var_0);
    return func_2();
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global0 = func_2();
    var var_0 = all(!select(vec4<bool>(true, true, false, true == arg_3), !select(vec4<bool>(arg_3, false, arg_3, false), vec4<bool>(arg_3, true, arg_3, arg_3), vec4<bool>(false, arg_3, arg_3, arg_3)), !arg_3));
    let var_1 = _wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.b.x, u_input.d), _wgslsmith_div_i32(u_input.b.x, -21890i), u_input.d, 2147483647i), select(vec4<i32>(1i, u_input.b.x, u_input.b.x, 7838i) & vec4<i32>(-1i, 35289i, u_input.c, 11312i), ~vec4<i32>(u_input.b.x, 32494i, -46462i, u_input.d), vec4<bool>(false, true, false, arg_3))), reverseBits(~(reverseBits(vec4<i32>(-54974i, u_input.d, u_input.c, -2147483647i)) ^ abs(vec4<i32>(u_input.b.x, -19110i, 27029i, 1i)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_2.a), 45677u);
    var var_3 = vec4<bool>(!(!all(vec2<bool>(arg_3, false))), true, false, false);
    return Struct_1(_wgslsmith_f_op_f32(579f - _wgslsmith_f_op_f32(f32(-1f) * -1223f)), ~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(~global0.b, 1u), u_input.a.yy), vec4<i32>(u_input.d | 2147483647i, u_input.c ^ u_input.b.x, _wgslsmith_div_i32(1i, u_input.c), 1i) | abs(select(vec4<i32>(u_input.c, u_input.c, u_input.c, 13284i), vec4<i32>(u_input.d, -21558i, u_input.d, u_input.c), false)), any(vec3<bool>(any(vec4<bool>(false, false, false, false)), true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global0.a) * vec2<f32>(global0.a, 1263f)) * vec2<f32>(global0.a, global0.a)))), _wgslsmith_f_op_f32(select(1967f, _wgslsmith_f_op_f32(f32(-1f) * -138f), !(true | (global0.b == global0.b)))), Struct_1(global0.a, u_input.a.x), !all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), select(false, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a, var_0.a, -1148f), vec3<f32>(-564f, -1566f, 579f), vec3<bool>(true, true, false))))))), vec3<f32>(global0.a, _wgslsmith_f_op_f32(-1000f * var_0.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(323f, -1017f) - var_0.a)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), true))), vec3<f32>(265f, func_6(func_2(), 773f, func_2(), select(true, true, false) && true).a, _wgslsmith_f_op_f32(func_4(Struct_1(-966f, ~u_input.a.x), func_2(), Struct_1(global0.a, var_0.b), _wgslsmith_clamp_vec4_u32(u_input.a, select(u_input.a, vec4<u32>(16015u, 23500u, 0u, var_0.b), vec4<bool>(true, true, true, false)), vec4<u32>(global0.b, 5041u, 117711u, 24772u))))), ~_wgslsmith_mod_vec2_u32(u_input.a.zz, _wgslsmith_sub_vec2_u32(vec2<u32>(45482u, var_0.b), u_input.a.wx)) & (u_input.a.xx ^ ~_wgslsmith_mult_vec2_u32(u_input.a.wz, u_input.a.xz)));
}

