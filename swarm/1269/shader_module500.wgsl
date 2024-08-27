struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 10>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(true, _wgslsmith_add_vec4_u32(~(~vec4<u32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x)) >> (global0.b % vec4<u32>(32u)), select(vec4<u32>(0u, ~global0.c, global0.c, ~4294967295u), ~global0.b, _wgslsmith_f_op_f32(f32(-1f) * -932f) == _wgslsmith_f_op_f32(-global0.e))), ~min(~4294967295u, _wgslsmith_clamp_u32(global0.c, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, global0.b.x, 0u), vec3<u32>(global0.b.x, 0u, 1u)), _wgslsmith_clamp_u32(global0.b.x, 53968u, 28247u))), global0.d, global0.e);
    let var_1 = Struct_1(any(!(!(!vec4<bool>(false, var_0.a, global0.a, true)))), ~(~(~(~var_0.b))), min(countOneBits(6445u), abs(var_0.b.x)), global0.d, _wgslsmith_f_op_f32(global0.e + global0.e));
    let var_2 = var_1.c;
    let var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~0u, 4294967295u) << (var_1.b.xx % vec2<u32>(32u)), var_1.b.ww), var_1.b.wz);
    global0 = var_1;
    return var_1.c;
}

fn func_2() -> u32 {
    let var_0 = ~select(vec2<u32>(global0.b.x, func_3()), vec2<u32>(_wgslsmith_dot_vec2_u32(~global0.b.xy, global0.b.ww | vec2<u32>(global0.c, 54124u)), 1u), vec2<bool>(global0.a, false));
    var var_1 = !(!(!select(vec3<bool>(global0.a, false, false), !vec3<bool>(global0.a, global0.a, false), vec3<bool>(global0.a, global0.a, global0.a))));
    let var_2 = Struct_1(var_1.x, _wgslsmith_clamp_vec4_u32(~global0.b, vec4<u32>(global0.b.x, (var_0.x & 101372u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.c, 25417u), global0.b.xyw), ~(~113487u), 1u), vec4<u32>(1u, ~var_0.x, var_0.x << (var_0.x % 32u), var_0.x) & ~(global0.b << (vec4<u32>(4294967295u, global0.c, var_0.x, 0u) % vec4<u32>(32u)))), ~(~(_wgslsmith_clamp_u32(96747u, global0.c, global0.b.x) >> (max(global0.b.x, 0u) % 32u))), vec4<i32>(u_input.a, select(-1i, _wgslsmith_mod_i32(u_input.a, u_input.a), all(!var_1.yx)), -16913i, firstLeadingBit(1i)), global0.e);
    global1 = array<vec3<i32>, 10>();
    var var_3 = var_2;
    return _wgslsmith_mult_u32(~var_2.b.x, 9026u);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: bool) -> vec4<u32> {
    var var_0 = arg_0.x;
    var var_1 = vec3<i32>(-40081i, _wgslsmith_sub_i32(-8038i, u_input.a), -21035i);
    var_0 = min(func_2(), arg_0.x << (4294967295u % 32u)) | arg_0.x;
    let var_2 = !vec2<bool>(false, select(any(vec2<bool>(global0.a, false)), !global0.a, 39073i != u_input.a) || any(select(vec4<bool>(false, false, false, false), vec4<bool>(arg_2, false, arg_2, arg_2), vec4<bool>(global0.a, false, arg_2, global0.a))));
    let var_3 = firstLeadingBit(global0.c);
    return global0.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = array<vec3<i32>, 10>();
    var var_0 = arg_1.d.ww;
    return Struct_1(global0.a, arg_2.b, _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, select(~arg_2.b.x, arg_1.c >> (arg_2.c % 32u), global0.a), ~(~global0.c), arg_2.c), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_1.b.x, arg_0.x, 12971u, arg_1.c), global0.b), abs(reverseBits(vec4<u32>(20228u, 4294967295u, 16183u, 1u))))), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, ~arg_2.d.x, ~(-1697i), select(19358i, -49294i, false)), arg_1.d) >> (max(~vec4<u32>(global0.c, 2506u, arg_2.b.x, arg_1.c), _wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, arg_2.c, arg_0.x, global0.c), _wgslsmith_mod_vec4_u32(arg_1.b, vec4<u32>(arg_0.x, global0.b.x, arg_1.b.x, 42970u)), arg_2.b >> (arg_1.b % vec4<u32>(32u)))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.e + _wgslsmith_f_op_f32(-169f * 1189f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 10>();
    var var_0 = func_4(firstTrailingBit(global0.b.zz), Struct_1(false, func_1(~firstTrailingBit(vec4<u32>(1u, 4294967295u, 1u, 1121u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1052f)) + -1667f), global0.a), global0.c, -vec4<i32>(global0.d.x, 1i, _wgslsmith_sub_i32(u_input.a, global0.d.x), reverseBits(-3226i)), global0.e), Struct_1(-1023f > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1034f + global0.e))), min(global0.b, vec4<u32>(global0.b.x, 1u, 1u, global0.c)) >> (abs(vec4<u32>(global0.c, 0u, 0u, global0.b.x) ^ vec4<u32>(0u, global0.c, 4294967295u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_clamp_u32(min(reverseBits(69514u), ~global0.b.x), ~func_3(), _wgslsmith_sub_u32(26127u, _wgslsmith_div_u32(global0.c, 4294967295u))), global0.d | vec4<i32>(_wgslsmith_mult_i32(global0.d.x, 0i), -3429i, ~global0.d.x, -global0.d.x), global0.e));
    let var_1 = ~abs(abs(~global0.b.wzy) ^ ~global0.b.wwy);
    var var_2 = func_2();
    global0 = Struct_1(!(_wgslsmith_mult_i32(u_input.a << (var_0.b.x % 32u), firstLeadingBit(2147483647i)) < global0.d.x), countOneBits(vec4<u32>(25541u, firstTrailingBit(0u), ~28538u, global0.c)) >> (var_0.b % vec4<u32>(32u)), 0u, ~select((var_0.d >> (vec4<u32>(var_1.x, var_0.c, 16964u, 18361u) % vec4<u32>(32u))) & -vec4<i32>(-43799i, u_input.a, global0.d.x, var_0.d.x), var_0.d, false), _wgslsmith_f_op_f32(-1055f + _wgslsmith_f_op_f32(select(-342f, _wgslsmith_f_op_f32(1781f + _wgslsmith_f_op_f32(var_0.e - 345f)), true))));
    let var_3 = Struct_1(all(vec2<bool>(true, true)), firstLeadingBit(~vec4<u32>(var_0.b.x, 4294967295u, 20442u, 24765u) | vec4<u32>(var_1.x >> (4294967295u % 32u), func_2(), var_0.c >> (30855u % 32u), 5388u)), _wgslsmith_dot_vec3_u32(global0.b.wzy, func_1(global0.b, var_0.e, !global0.a).wwy | vec3<u32>(4065u, firstLeadingBit(var_1.x), 33051u)), max(-_wgslsmith_div_vec4_i32(~var_0.d, select(var_0.d, var_0.d, vec4<bool>(global0.a, true, global0.a, false))), func_4((vec2<u32>(var_1.x, 0u) << (var_1.xy % vec2<u32>(32u))) ^ (vec2<u32>(1u, 0u) << (global0.b.xx % vec2<u32>(32u))), Struct_1(var_0.a, firstLeadingBit(global0.b), 8345u, -global0.d, 229f), func_4(vec2<u32>(24158u, var_1.x), func_4(var_1.yy, Struct_1(true, global0.b, global0.b.x, var_0.d, var_0.e), Struct_1(global0.a, vec4<u32>(global0.b.x, global0.c, var_1.x, global0.c), 63918u, var_0.d, -574f)), func_4(vec2<u32>(4294967295u, var_1.x), Struct_1(true, vec4<u32>(global0.c, global0.c, var_1.x, var_0.b.x), var_0.b.x, var_0.d, -1414f), Struct_1(false, vec4<u32>(var_1.x, var_0.b.x, 4294967295u, var_0.b.x), 42393u, vec4<i32>(-70145i, -12841i, -25822i, global0.d.x), var_0.e)))).d), global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~global0.d.ww << ((vec2<u32>(1u, global0.c) << (global0.b.xz % vec2<u32>(32u))) % vec2<u32>(32u)))), vec3<i32>(global0.d.x, var_3.d.x, _wgslsmith_dot_vec2_i32(-(~global0.d.yw), -(~var_3.d.wx))));
}

