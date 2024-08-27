struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 482f;

var<private> global1: f32 = 177f;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> bool {
    let var_0 = Struct_2(vec3<bool>(arg_1, arg_1, arg_1 & !all(vec4<bool>(arg_1, false, arg_1, true))), _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_sub_i32((u_input.a.x ^ arg_0) ^ abs(36384i), _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, u_input.a.x), arg_0))));
    let var_1 = _wgslsmith_mod_i32(-var_0.b, _wgslsmith_add_i32(abs(var_0.b), ~firstLeadingBit(0i << (arg_2.x % 32u))));
    var var_2 = var_0;
    global2 = !(!select(var_2.a.xy, select(var_0.a.yz, !var_2.a.zx, any(vec2<bool>(false, false))), !var_2.a.xy));
    var_2 = var_0;
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> f32 {
    global2 = !(!vec2<bool>(true, global2.x | true));
    let var_0 = !all(select(vec4<bool>(arg_0.a.x && true, global2.x, u_input.a.x >= arg_0.b, any(vec4<bool>(arg_0.a.x, false, true, global2.x))), !select(vec4<bool>(global2.x, true, arg_0.a.x, true), vec4<bool>(global2.x, true, false, global2.x), false), func_3(reverseBits(arg_0.b), all(vec3<bool>(global2.x, true, arg_0.a.x)), abs(vec3<u32>(1u, 107780u, 38602u)))));
    let var_1 = 58095u;
    var var_2 = Struct_4(select(!select(vec4<bool>(arg_0.a.x, var_0, arg_0.a.x, true), select(vec4<bool>(false, var_0, false, arg_0.a.x), vec4<bool>(true, var_0, true, var_0), vec4<bool>(true, var_0, false, arg_0.a.x)), false), vec4<bool>(false, true, func_3(-6907i, 0i != arg_0.b, ~vec3<u32>(var_1, 4294967295u, 0u)), true || all(arg_0.a.xz)), all(arg_0.a.zz)), vec2<bool>(arg_0.a.x, !any(vec4<bool>(false, false, var_0, false)) != true), var_1, vec2<bool>(all(vec4<bool>(true, true, true, true)), false));
    global0 = -149f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_1(arg_0: Struct_4) -> vec3<u32> {
    global1 = -1000f;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1555f), 1116f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_2(arg_0.a.xyz, 2147483647i), _wgslsmith_div_f32(554f, -834f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1918f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1623f)))));
    var var_1 = Struct_4(!select(arg_0.a, !select(arg_0.a, vec4<bool>(global2.x, arg_0.a.x, global2.x, global2.x), global2.x), arg_0.a), select(select(arg_0.b, select(select(vec2<bool>(arg_0.d.x, arg_0.a.x), arg_0.a.yx, vec2<bool>(true, arg_0.d.x)), vec2<bool>(true, true), arg_0.d), vec2<bool>(any(vec4<bool>(arg_0.d.x, arg_0.d.x, false, false)), global2.x & arg_0.b.x)), !(!arg_0.a.xy), true | arg_0.d.x), abs(arg_0.c), arg_0.d);
    let var_2 = !arg_0.a.xxw;
    var var_3 = firstLeadingBit(~vec2<u32>(1u, 1u)) & abs(reverseBits(vec2<u32>(4294967295u, arg_0.c) | ~vec2<u32>(0u, 4294967295u)));
    return abs(_wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(14500u, var_1.c, 21709u)), ~(vec3<u32>(var_3.x, 76762u, 1u) | vec3<u32>(arg_0.c, 110201u, var_1.c)), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, 8886u), vec3<u32>(4294967295u, var_1.c, var_1.c)))) ^ (~(~vec3<u32>(var_3.x, var_3.x, var_3.x)) & ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, var_3.x, 0u), vec3<u32>(4294967295u, var_3.x, arg_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-1458f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(518f))));
    var var_0 = 10998i;
    var var_1 = select(~(~vec4<u32>(53730u, 1u, 1u, 1u)), vec4<u32>(max(~(~1u), 1u), 1u, ~_wgslsmith_dot_vec3_u32(func_1(Struct_4(vec4<bool>(global2.x, global2.x, true, global2.x), vec2<bool>(global2.x, global2.x), 1u, vec2<bool>(global2.x, global2.x))), firstTrailingBit(vec3<u32>(62007u, 76921u, 4294967295u))), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 69694u, 1u, 89140u)), ~(~vec4<u32>(48204u, 52131u, 1u, 0u)))), global2.x | !global2.x);
    let var_2 = (_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x | u_input.a.x, i32(-1i) * -46373i, ~u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), -(~vec4<i32>(1i, 2592i, u_input.a.x, -2147483647i))) | firstLeadingBit(abs(vec4<i32>(-24188i, u_input.a.x, 0i, -1i)))) & firstLeadingBit(abs(~vec4<i32>(u_input.a.x, 1i, 2147483647i, u_input.a.x)));
    let var_3 = vec3<i32>(~_wgslsmith_mult_i32(-10992i, -2565i), abs(var_2.x), _wgslsmith_mult_i32(1i, u_input.a.x));
    var var_4 = Struct_2(vec3<bool>(22895i > firstTrailingBit(u_input.a.x), global2.x, !(!global2.x | global2.x)), _wgslsmith_add_i32(var_2.x & 0i, 2147483647i));
    var_1 = ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)) & (~vec4<u32>(24234u, var_1.x, var_1.x, var_1.x) << (vec4<u32>(var_1.x, var_1.x, 0u, 15202u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(abs(abs(vec4<u32>(var_1.x, 37733u, var_1.x, 17875u))), ~(~vec4<u32>(92062u, 1781u, 4294967295u, 0u))));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(28968i, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1059f, 724f, 327f, -187f) - vec4<f32>(-148f, -1627f, -323f, -298f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(422f, 827f, 812f, -391f)))))))), select(~vec2<i32>(-56051i, -2147483647i), -vec2<i32>(var_5.x, var_4.b), false) | u_input.a.xz, max(firstTrailingBit(var_3.x), var_3.x), _wgslsmith_add_vec2_u32(firstTrailingBit(var_1.xy), reverseBits(var_1.wy ^ vec2<u32>(0u, 7084u)) | _wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, 13490u) >> (vec2<u32>(var_1.x, 31555u) % vec2<u32>(32u)), countOneBits(var_1.zw))));
}

