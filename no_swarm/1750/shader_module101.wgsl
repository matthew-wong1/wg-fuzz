struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> i32 {
    let var_0 = -firstLeadingBit(_wgslsmith_sub_vec2_i32(arg_1, select(min(arg_1, arg_0.b), arg_0.b, select(global0.zz, arg_0.c.xz, global0.x))));
    var var_1 = Struct_2(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.b.x), u_input.b.yy) | ~u_input.c, u_input.c), arg_0, _wgslsmith_f_op_f32(min(-652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(228f, _wgslsmith_f_op_f32(step(737f, 112f)), true))))));
    var var_2 = var_1.c;
    let var_3 = arg_2;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1080f));
    return ~firstTrailingBit(arg_0.a ^ 1i);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_2(arg_0, Struct_1(countOneBits(-1416i >> (~arg_0 % 32u)), vec2<i32>(u_input.d.x, 2147483647i) & vec2<i32>(~u_input.a.x, func_3(Struct_1(2147483647i, vec2<i32>(2147483647i, 13905i), vec4<bool>(true, false, true, global0.x)), u_input.d.yy, Struct_1(1i, u_input.a.yx, vec4<bool>(global0.x, global0.x, true, true)))), !select(select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(false, true, global0.x, global0.x)), vec4<bool>(global0.x, false, global0.x, true), any(global0.wz))), -1567f);
    var var_1 = var_0.b.b.x;
    var var_2 = var_0.b;
    let var_3 = var_0.c;
    var var_4 = var_0.b;
    return var_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global0 = vec4<bool>(false, func_2(arg_1.a).c.x, true, -1i >= arg_1.b.a);
    global0 = !(!(!select(arg_0.b.c, !vec4<bool>(arg_1.b.c.x, arg_0.b.c.x, arg_0.b.c.x, true), select(vec4<bool>(true, arg_1.b.c.x, global0.x, true), arg_0.b.c, vec4<bool>(false, false, false, true)))));
    global0 = select(!func_2(u_input.c >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.a), vec2<u32>(arg_0.a, 0u)) % 32u)).c, !arg_1.b.c, all(select(select(!arg_1.b.c, arg_1.b.c, arg_0.b.c), !arg_0.b.c, any(select(vec4<bool>(false, arg_1.b.c.x, arg_1.b.c.x, true), arg_1.b.c, arg_1.b.c.x)))));
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(arg_1.a, ~1u), 0u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(8170u, arg_0.a), countOneBits(u_input.b.yz), vec2<u32>(u_input.c, 21890u) << (u_input.b.zy % vec2<u32>(32u))), ~(u_input.b.xz | vec2<u32>(28995u, arg_0.a))), _wgslsmith_div_vec2_u32(u_input.b.yy, u_input.b.zy)));
    let var_1 = -1739f;
    return Struct_1(u_input.a.x, _wgslsmith_sub_vec2_i32(abs(arg_1.b.b), vec2<i32>(~_wgslsmith_clamp_i32(arg_1.b.a, u_input.d.x, 1i), 0i)), !(!select(func_2(57262u).c, arg_1.b.c, select(arg_0.b.c, vec4<bool>(false, global0.x, global0.x, false), arg_1.b.c.x))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = abs(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.c, 8813u), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 4294967295u) | vec4<u32>(u_input.b.x, 51276u, u_input.b.x, 4294967295u), vec4<u32>(u_input.c, u_input.c, 55589u, u_input.b.x)), ~(~vec4<u32>(u_input.c, 1u, u_input.c, 94912u))));
    var var_1 = func_4(Struct_2(~(~_wgslsmith_clamp_u32(var_0, var_0, 69810u)), func_2(51638u), 613f), Struct_2(4294967295u, Struct_1(_wgslsmith_dot_vec3_i32(select(u_input.a, vec3<i32>(u_input.a.x, 38463i, u_input.d.x), vec3<bool>(false, arg_0.x, global0.x)), vec3<i32>(12186i, u_input.d.x, u_input.a.x)), u_input.d.yx, !select(vec4<bool>(false, false, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, global0.x, arg_0.x), true)), _wgslsmith_f_op_f32(f32(-1f) * -866f)));
    var var_2 = func_4(Struct_2(~(~u_input.b.x), Struct_1(reverseBits(-var_1.b.x), u_input.d.yy, select(vec4<bool>(true, global0.x, var_1.c.x, false), select(var_1.c, var_1.c, vec4<bool>(true, arg_0.x, false, false)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(2128f)))))), Struct_2(u_input.c, Struct_1(select(func_3(Struct_1(var_1.a, vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(true, var_1.c.x, true, false)), vec2<i32>(2147483647i, u_input.d.x), Struct_1(u_input.d.x, vec2<i32>(-1i, u_input.d.x), var_1.c)), _wgslsmith_div_i32(u_input.a.x, -15423i), true), ~vec2<i32>(var_1.b.x, 46517i), var_1.c), -771f));
    var_1 = func_2(~var_0);
    var var_3 = Struct_2(~var_0, Struct_1(-701i, vec2<i32>(_wgslsmith_mod_i32(var_1.a, var_1.a), abs(_wgslsmith_clamp_i32(-73769i, -21454i, var_1.a))), vec4<bool>(false, any(!vec3<bool>(false, arg_0.x, var_1.c.x)), arg_0.x, select(any(vec2<bool>(true, false)), true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(434f, 764f)), 453f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-129f, -734f))))));
    return Struct_1(var_1.b.x, -(var_3.b.b << (_wgslsmith_mod_vec2_u32(vec2<u32>(var_0, 25179u), ~u_input.b.zz) % vec2<u32>(32u))), func_2(var_3.a).c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~u_input.c, func_1(global0.wzy), -1074f);
    global0 = vec4<bool>(true, true, !all(!vec4<bool>(var_0.b.c.x, var_0.b.c.x, var_0.b.c.x, true)), global0.x);
    let var_1 = func_1(var_0.b.c.ywy);
    global0 = var_0.b.c;
    global0 = var_1.c;
    let var_2 = func_2(~(~var_0.a));
    var var_3 = global0.x;
    global0 = vec4<bool>(var_1.c.x, !all(var_0.b.c), func_2(_wgslsmith_dot_vec2_u32((vec2<u32>(u_input.b.x, 13827u) ^ vec2<u32>(1u, u_input.b.x)) | firstTrailingBit(vec2<u32>(u_input.b.x, 12201u)), u_input.b.zy)).c.x, all(!var_1.c.yxx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.c)), _wgslsmith_f_op_f32(ceil(var_0.c))), var_0.c))));
}

