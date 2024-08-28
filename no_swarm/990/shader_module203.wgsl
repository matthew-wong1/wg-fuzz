struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2450u, vec2<bool>(false, false));

var<private> global1: i32 = -153i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = -_wgslsmith_add_vec3_i32(-min(firstTrailingBit(vec3<i32>(-2147483647i, arg_0.x, 0i)), -vec3<i32>(arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_mult_vec3_i32(arg_0.wwz, vec3<i32>(0i, 1i, -arg_0.x)));
    let var_1 = Struct_1(~19019u, select(vec2<bool>(false, global0.b.x), vec2<bool>(true & select(global0.b.x, true, global0.b.x), !global0.b.x), !global0.b));
    global0 = var_1;
    let var_2 = -1i;
    var var_3 = Struct_1(var_1.a & countOneBits(~(4294967295u | global0.a)), !select(var_1.b, vec2<bool>(var_1.b.x, true), all(!vec3<bool>(false, global0.b.x, global0.b.x))));
    return Struct_1(_wgslsmith_div_u32(var_3.a, _wgslsmith_clamp_u32(~var_3.a, ~var_1.a, firstTrailingBit(4294967295u)) | ~20075u), var_1.b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<u32> {
    global1 = 13302i;
    var var_0 = ~(~_wgslsmith_sub_u32(68326u, abs(~global0.a)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -434f)))))));
    let var_2 = _wgslsmith_mult_i32(-max(~(-2147483647i) & _wgslsmith_clamp_i32(-1i, -50165i, -22290i), abs(_wgslsmith_sub_i32(-5528i, 2856i))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(~35520i, _wgslsmith_sub_i32(2147483647i, 0i), min(9729i, 39686i)), vec3<i32>(1i, 1i, 1i), !(!vec3<bool>(arg_1.x, false, false)))));
    var var_3 = Struct_1(~(~1u), select(global0.b, !func_2(vec4<i32>(var_2, var_2, 12457i, 1i)).b, select(arg_1, arg_1, vec2<bool>(u_input.b >= arg_0.a, var_2 > 2147483647i))));
    return vec4<u32>(u_input.b, 70422u, 1u, 1728u);
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(func_3(func_2(vec4<i32>(-29079i, -2147483647i, -1490i, -2147483647i)), global0.b), max(firstTrailingBit(vec4<u32>(u_input.a, u_input.b, 21925u, 51736u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 46462u, global0.a, 0u), vec4<u32>(39443u, arg_0.x, 19391u, 87825u)))), func_3(Struct_1(arg_0.x, global0.b), vec2<bool>(false, true)) | (~vec4<u32>(arg_0.x, arg_0.x, global0.a, global0.a) | ~vec4<u32>(global0.a, global0.a, 27327u, arg_0.x))), vec2<bool>(true, true));
    var var_1 = select(vec2<bool>(true, true != (false | func_2(vec4<i32>(77757i, -5929i, 2147483647i, 2147483647i)).b.x)), vec2<bool>(true, any(select(vec3<bool>(false, true, global0.b.x), vec3<bool>(global0.b.x, global0.b.x, true), vec3<bool>(true, global0.b.x, true)))), !(!global0.b.x));
    let var_2 = arg_0;
    let var_3 = func_2(countOneBits(vec4<i32>(-20293i, -23385i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstLeadingBit(vec4<i32>(51841i, 1i, 2147483647i, -11129i))), ~1i << (_wgslsmith_div_u32(25112u, var_2.x) % 32u))));
    global1 = 50805i;
    return func_2(~vec4<i32>(1i, 1i, 1i, 1i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_u32(abs(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, arg_0.a, 26673u, 4294967295u), ~vec4<u32>(u_input.a, arg_0.a, arg_1.a, global0.a)), select(vec4<u32>(arg_1.a, 13315u, u_input.a, global0.a), vec4<u32>(arg_1.a, global0.a, arg_1.a, arg_1.a), global0.b.x) & abs(vec4<u32>(11728u, 1u, 10197u, arg_0.a)))), ~min(~min(vec4<u32>(arg_0.a, 15068u, 69641u, 60219u), vec4<u32>(4294967295u, 13116u, global0.a, 24362u)), min(min(vec4<u32>(global0.a, 33381u, u_input.b, 4294967295u), vec4<u32>(0u, arg_1.a, arg_0.a, 52382u)), vec4<u32>(0u, arg_0.a, 1u, 1u))));
    var_0 = vec4<u32>(u_input.b, _wgslsmith_div_u32(min(global0.a, 1u), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(66414u, var_0.x, global0.a), arg_0.a)), 4294967295u, arg_0.a);
    var_0 = ~(vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(28344u, 23319u), func_3(arg_0, vec2<bool>(true, false)).ww), 1u, arg_1.a ^ 14861u) ^ vec4<u32>(func_3(func_2(vec4<i32>(-2147483647i, -64515i, 2147483647i, 2147483647i)), global0.b).x, ~(~10577u), ~(~u_input.b), func_3(Struct_1(arg_1.a, arg_0.b), vec2<bool>(global0.b.x, global0.b.x)).x | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, var_0.x), vec2<u32>(4294967295u, u_input.a))));
    global1 = -1i | (_wgslsmith_add_i32((-7656i >> (var_0.x % 32u)) >> (86635u % 32u), firstTrailingBit(~1i)) ^ 1i);
    global1 = abs(max(1i, 9634i));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(vec2<u32>(_wgslsmith_mult_u32(44600u, ~u_input.a), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(global0.a, 70957u, 37944u)), vec3<u32>(319u, 43846u, global0.a)))), func_1(~(~vec2<u32>(u_input.a, 1u) & vec2<u32>(55977u, global0.a))));
    var var_1 = any(!(!vec3<bool>(var_0.b.x, global0.a >= global0.a, func_2(vec4<i32>(61206i, 1i, 4872i, 1i)).b.x)));
    let var_2 = var_0;
    let var_3 = 331f;
    let var_4 = Struct_1(1u | _wgslsmith_mod_u32(global0.a, ~u_input.b), !select(global0.b, !vec2<bool>(var_2.b.x, false), vec2<bool>(var_0.b.x && false, var_0.b.x)));
    let var_5 = func_1(~abs(select(vec2<u32>(u_input.a, var_2.a) << (vec2<u32>(0u, var_0.a) % vec2<u32>(32u)), vec2<u32>(var_0.a, 18566u), global0.b.x)));
    var var_6 = (u_input.b & abs(~var_2.a)) >> (~((func_1(vec2<u32>(var_5.a, var_5.a)).a << (_wgslsmith_mult_u32(0u, 4294967295u) % 32u)) & 0u) % 32u);
    var var_7 = -vec4<i32>(~(~0i | (17828i >> (var_0.a % 32u))), -_wgslsmith_sub_i32(1i, abs(-17072i)), 2147483647i, -(i32(-1i) * -22995i));
    let var_8 = -firstTrailingBit(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.a, ~15112u, var_5.a), var_7.x, _wgslsmith_clamp_vec2_u32(~select(~vec2<u32>(global0.a, 1u), ~vec2<u32>(90885u, u_input.a), var_5.b), select(vec2<u32>(~4294967295u, var_2.a), select(~vec2<u32>(global0.a, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.a, var_5.a), vec2<u32>(u_input.a, u_input.b), vec2<u32>(0u, var_4.a)), global0.b.x), false), vec2<u32>(firstLeadingBit(var_5.a), ~(~24148u))));
}

