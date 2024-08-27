struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true), -3394i, vec3<i32>(-3496i, 48098i, -21141i));

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = Struct_1(select(!select(global0.a, global0.a, vec2<bool>(global1.x, global1.x)), vec2<bool>(global1.x, global1.x), !global0.a), ~firstLeadingBit(u_input.b.x ^ u_input.a.x) << (~select(0u, ~u_input.d, true) % 32u), global0.c);
    let var_0 = -5025i;
    var var_1 = Struct_1(vec2<bool>(global0.a.x, false), ~(~var_0), -(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.wyw, u_input.b.zxz), _wgslsmith_mod_i32(1i, 34277i), u_input.a.x) << (vec3<u32>(~u_input.d, ~24088u, u_input.c) % vec3<u32>(32u))));
    global1 = !select(global0.a, vec2<bool>(true, global0.a.x), global0.a.x);
    let var_2 = select(global0.a, vec2<bool>(false, var_1.a.x), var_1.a);
    return global0.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>) -> i32 {
    global0 = Struct_1(!(!vec2<bool>(true && global0.a.x, !global1.x)), min(arg_0.x, func_3()), vec3<i32>(_wgslsmith_div_i32(min(u_input.a.x, u_input.a.x), global0.b), -arg_0.x, _wgslsmith_dot_vec3_i32(u_input.b.wxw ^ u_input.a.yzy, reverseBits(vec3<i32>(global0.b, u_input.b.x, 1i)))) >> (arg_1 % vec3<u32>(32u)));
    let var_0 = select(firstTrailingBit(vec2<u32>(u_input.e.x, arg_1.x) << (min(vec2<u32>(40237u, arg_1.x), ~vec2<u32>(arg_1.x, 63684u)) % vec2<u32>(32u))), u_input.e, !select(!global0.a, !(!global0.a), select(global0.a, global0.a, !global0.a)));
    var var_1 = firstTrailingBit(max(vec3<i32>(_wgslsmith_mod_i32(firstTrailingBit(34319i), global0.c.x | 1i), firstLeadingBit(_wgslsmith_mult_i32(u_input.b.x, u_input.a.x)), 1668i), ~(global0.c >> (arg_1 % vec3<u32>(32u)))));
    var var_2 = -(~(-23266i));
    var var_3 = Struct_1(vec2<bool>(any(!select(vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, false))), global1.x), ~1i, abs(firstTrailingBit(vec3<i32>(-arg_0.x, _wgslsmith_div_i32(-1i, 1i), abs(u_input.a.x)))));
    return 1i;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: bool) -> Struct_1 {
    global1 = !vec2<bool>(false, true && (min(2147483647i, arg_1) >= func_2(global0.c.yx, vec3<u32>(u_input.c, 48388u, u_input.c))));
    global0 = Struct_1(global0.a, -max(func_2(~u_input.a.ww, vec3<u32>(arg_2, 0u, 0u)), u_input.a.x), vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, 32191i), u_input.a.zwy)), countOneBits(global0.c.x), -2147483647i) | select(-vec3<i32>(1i, 12322i, -16002i), ~(vec3<i32>(arg_1, global0.b, 1i) >> (vec3<u32>(arg_2, 0u, 19266u) % vec3<u32>(32u))), vec3<bool>(arg_3 && false, global1.x, true)));
    global0 = Struct_1(select(global0.a, select(select(select(global0.a, vec2<bool>(false, global0.a.x), global0.a), global0.a, false), !select(global0.a, global0.a, global1.x), vec2<bool>(true, true)), select(select(!vec2<bool>(false, global0.a.x), vec2<bool>(true, false), select(vec2<bool>(true, arg_0), global0.a, vec2<bool>(true, global1.x))), !global0.a, arg_0)), 1i, -vec3<i32>(abs(~1i), _wgslsmith_sub_i32(arg_1, _wgslsmith_add_i32(u_input.a.x, global0.c.x)), -16615i));
    global0 = Struct_1(!global0.a, firstTrailingBit(1i >> (arg_2 % 32u)), ~u_input.b.xwx);
    global1 = global0.a;
    return Struct_1(vec2<bool>(any(!(!vec3<bool>(arg_0, arg_0, false))), true), global0.c.x, countOneBits(global0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(10991i, -2147483647i), vec2<i32>(_wgslsmith_sub_i32(u_input.b.x, global0.b | -3934i), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2369i), vec2<i32>(global0.c.x, global0.b)))), -4066i);
    global0 = func_1(true, firstTrailingBit(2147483647i), u_input.d & (u_input.e.x ^ 39661u), global1.x);
    global0 = func_1(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, !global0.a.x), select(vec3<bool>(true, true, true), select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global0.a.x, false, false), vec3<bool>(global1.x, global1.x, global0.a.x)), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, true, false), true)))), global0.c.x, max(13278u, u_input.d), true);
    var var_1 = vec4<bool>(global0.a.x, 627f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(103f, 110f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1000f))), false, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.d, u_input.e.x, u_input.c)), vec3<u32>(4294967295u, 44649u, 13814u) << (vec3<u32>(25784u, u_input.c, 10469u) % vec3<u32>(32u))), 65226u) > ~_wgslsmith_dot_vec2_u32(u_input.e & u_input.e, _wgslsmith_div_vec2_u32(vec2<u32>(1u, 12094u), vec2<u32>(28531u, 4294967295u))));
    var var_2 = func_1(any(var_1.yzx), ~global0.b, firstLeadingBit(max(u_input.d, 4294967295u)), all(vec4<bool>(true, true, true, true)));
    var_1 = select(!vec4<bool>((false || var_2.a.x) & (var_0.x < var_0.x), true, select(true, var_2.a.x, global0.a.x), any(select(vec2<bool>(var_2.a.x, global0.a.x), vec2<bool>(var_2.a.x, global0.a.x), global1.x))), select(vec4<bool>(false, !func_1(global0.a.x, global0.c.x, u_input.c, false).a.x, true, true), select(select(vec4<bool>(false, false, false, var_2.a.x), select(vec4<bool>(var_1.x, var_1.x, global1.x, true), vec4<bool>(true, var_1.x, true, var_1.x), global0.a.x), !vec4<bool>(true, var_2.a.x, var_1.x, var_2.a.x)), !(!vec4<bool>(global1.x, true, global1.x, global0.a.x)), select(select(vec4<bool>(var_2.a.x, false, var_2.a.x, global0.a.x), vec4<bool>(var_1.x, global0.a.x, true, global1.x), var_1.x), select(vec4<bool>(true, global1.x, var_2.a.x, global1.x), vec4<bool>(true, global1.x, global0.a.x, true), vec4<bool>(true, false, true, true)), !vec4<bool>(var_1.x, var_2.a.x, var_1.x, true))), !vec4<bool>(false, !global1.x, global0.a.x, 2147483647i == var_2.b)), !select(false, all(func_1(true, -3155i, 0u, global0.a.x).a), !(335i <= var_0.x)));
    let var_3 = func_1(var_2.a.x, 1i | _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-15595i, -1i, var_2.b), vec3<i32>(-30727i, global0.b, -2147483647i)), select(vec3<i32>(var_0.x, 5947i, 2147483647i), u_input.b.wyx, global1.x)), 0i), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 22818u, min(reverseBits(u_input.c), u_input.d >> (1u % 32u))), vec3<u32>(_wgslsmith_mult_u32(max(1u, 4294967295u), _wgslsmith_dot_vec2_u32(u_input.e, u_input.e)), firstTrailingBit(1u), 4294967295u)), !global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(103f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-226f, -545f, 186f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1753f, -1261f, 240f), vec3<f32>(-131f, -445f, -756f))), vec3<bool>(var_2.a.x, global0.a.x, false))))), vec3<f32>(_wgslsmith_f_op_f32(173f + _wgslsmith_f_op_f32(sign(439f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-312f * -981f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(399f, 903f) - _wgslsmith_f_op_f32(min(-485f, -670f)))), vec3<bool>(func_1(false, _wgslsmith_add_i32(u_input.b.x, 14464i), ~u_input.e.x, var_3.a.x && global0.a.x).a.x, global0.a.x, true & (global0.a.x | true)))), _wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 0u, 0u, u_input.d), vec4<u32>(1u, u_input.d, 35824u, 4294967295u))) | ~vec4<u32>(u_input.e.x, 82790u, 0u, u_input.c), vec4<u32>(~0u, 1u, abs(u_input.d) & u_input.e.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(6940u, 1u, u_input.c), vec3<u32>(20097u, 1u, u_input.e.x), vec3<u32>(u_input.d, 0u, 1u)), ~vec3<u32>(0u, 37299u, u_input.d))), vec4<u32>(~abs(4294967295u), ~4294967295u, countOneBits(_wgslsmith_dot_vec2_u32(u_input.e, u_input.e)), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c, 4294967295u), u_input.c))), ~vec4<u32>(22297u, ~countOneBits(u_input.c), max(reverseBits(75713u), _wgslsmith_mult_u32(u_input.e.x, u_input.e.x)), 4294967295u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(46961u, 78114u), u_input.e) % 32u)), abs(u_input.e) ^ firstTrailingBit(vec2<u32>(u_input.e.x, ~19448u)));
}

