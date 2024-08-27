struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32) -> Struct_1 {
    return Struct_1(u_input.a);
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = !(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false))));
    var var_1 = func_1(u_input.a);
    var var_2 = false;
    var var_3 = select(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, ~0u, u_input.a, ~var_1.a), vec4<u32>(u_input.a, var_1.a, 1u, _wgslsmith_mod_u32(0u, u_input.a))), reverseBits(select((vec4<u32>(u_input.a, 98586u, u_input.a, u_input.a) >> (vec4<u32>(var_1.a, 4294967295u, var_1.a, var_1.a) % vec4<u32>(32u))) >> (countOneBits(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)) % vec4<u32>(32u)), firstTrailingBit(firstTrailingBit(vec4<u32>(48823u, 1u, 36851u, u_input.a))), vec4<bool>(all(vec2<bool>(var_0.x, var_0.x)), true, any(vec3<bool>(true, false, true)), all(vec3<bool>(var_0.x, false, true))))), false);
    let var_4 = ~select(vec3<u32>(firstTrailingBit(~u_input.a), 30590u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_1.a, u_input.a), 4294967295u)), firstLeadingBit(var_3.www), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, var_0.x, var_0.x), var_0.x), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true), var_0.x), select(vec3<bool>(var_0.x, false, true), vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true))));
    return ~(-20956i);
}

fn func_2(arg_0: vec2<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(select(func_3(vec4<i32>(arg_0.x, u_input.b.x, u_input.b.x, arg_0.x)), 1i, true), arg_0.x, u_input.b.x, 1i), -(~reverseBits(vec4<i32>(arg_0.x, -1i, arg_0.x, arg_0.x)))) | vec4<i32>(-abs(1i), ~_wgslsmith_dot_vec4_i32(~vec4<i32>(-8195i, arg_0.x, 1i, 46741i), firstTrailingBit(vec4<i32>(u_input.b.x, -54386i, arg_0.x, arg_0.x))), min(arg_0.x, -2461i), _wgslsmith_dot_vec2_i32(u_input.b, _wgslsmith_clamp_vec2_i32(select(arg_0, arg_0, vec2<bool>(true, true)), vec2<i32>(-48842i, 56022i) << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)), firstTrailingBit(u_input.b))));
    let var_1 = func_1(u_input.a);
    var var_2 = _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(var_1.a, u_input.a, 1u, u_input.a)), vec4<u32>(33918u, ~min(4309u, var_1.a), var_1.a, ~var_1.a)) | 80328u;
    var_2 = firstTrailingBit(1u);
    var_2 = firstLeadingBit(4294967295u);
    return select(select(select(vec3<bool>(true, u_input.a == u_input.a, true), vec3<bool>(true, any(vec4<bool>(true, true, false, false)), false), select(true, all(vec4<bool>(false, false, true, false)), true)), vec3<bool>(all(vec4<bool>(false, true, false, false)), true, ~0u >= reverseBits(u_input.a)), !(6312i > arg_0.x)), !select(vec3<bool>(-7346i >= arg_0.x, true, any(vec2<bool>(false, false))), vec3<bool>(any(vec3<bool>(false, true, true)), true, false), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), select(vec3<bool>(!select(false, false, true), true == all(vec3<bool>(false, true, false)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true))), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), vec3<bool>(true, false, true)));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f))) + _wgslsmith_f_op_f32(-1000f * -385f));
    var var_1 = arg_2;
    var_1 = arg_2;
    let var_2 = !vec4<bool>(!all(vec2<bool>(false, true)), arg_0, !select(any(arg_3), any(vec4<bool>(true, arg_0, arg_0, true)), false), func_2(vec2<i32>(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), u_input.b.x)).x);
    return func_1(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_2.a, 20051u, 24726u)), vec3<u32>(12397u, var_1.a, arg_2.a) >> (vec3<u32>(var_1.a, u_input.a, u_input.a) % vec3<u32>(32u))), 1u & var_1.a), ~_wgslsmith_add_u32(~u_input.a, 4294967295u ^ var_1.a)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(8459u << (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(0u, u_input.a), u_input.a, u_input.a, 2089u), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 13370u)), _wgslsmith_sub_u32(1u, arg_0.a), abs(arg_0.a), 0u)) % 32u));
    let var_1 = Struct_1(~arg_0.a);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(true, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !any(vec4<bool>(true, false, true, true))), func_1(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(3242u, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, 38056u)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), func_2(u_input.b), true)));
    var_0 = func_5(Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, var_0.a), var_0.a)));
    var_0 = func_5(func_1(abs(41207u)));
    var_0 = Struct_1(firstTrailingBit(1u));
    var var_1 = -850f;
    var_1 = -314f;
    var_1 = 894f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1248f, -450f)))) * _wgslsmith_div_vec2_f32(vec2<f32>(311f, 890f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -660f), vec2<f32>(604f, 272f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-624f, -768f), _wgslsmith_f_op_f32(f32(-1f) * -1490f))), true)), _wgslsmith_div_f32(2104f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-211f - -730f) + _wgslsmith_f_op_f32(floor(246f))))), _wgslsmith_mod_vec4_u32(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 31020u, 206973u, u_input.a)), vec4<u32>(u_input.a, 4294967295u, 5587u, 48090u) ^ vec4<u32>(var_0.a, var_0.a, u_input.a, 1u), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false)), vec4<u32>(firstLeadingBit(4294967295u), 0u, ~var_0.a, u_input.a) | ~(vec4<u32>(var_0.a, var_0.a, var_0.a, 4294967295u) & vec4<u32>(0u, u_input.a, var_0.a, 4294967295u))));
}

