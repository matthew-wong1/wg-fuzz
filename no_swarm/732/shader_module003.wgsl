struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-823f, -457f, 656f, 1075f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = Struct_1(vec3<u32>(u_input.a, max(~select(1u, u_input.a, false), 4294967295u), countOneBits(select(abs(u_input.a), _wgslsmith_mult_u32(31871u, u_input.a), true))), vec2<bool>(true, true), vec4<u32>(countOneBits(u_input.a), select(reverseBits(~u_input.a), firstTrailingBit(4294967295u), false), u_input.a | _wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_div_u32(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 16103u), vec2<u32>(19803u, u_input.a))), 1u)), abs(vec3<u32>(~u_input.a, 1u, u_input.a)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -742f, _wgslsmith_div_f32(-545f, -300f))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -475f) - 190f), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -966f), global0.x))));
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1245f, global0.x, 652f, global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 302f, 698f) - vec4<f32>(global0.x, 459f, -1544f, 1548f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1532f, -356f, 666f, global0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, global0.x)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(floor(-732f)), -1275f, 1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1291f, global0.x, global0.x, global0.x)))))))));
    let var_1 = vec4<bool>(any(select(!select(vec4<bool>(true, true, true, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, false, false), var_0.b.x), vec4<bool>(false & var_0.b.x, global0.x <= -127f, var_0.b.x & false, var_0.b.x), !(!vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true)))), var_0.b.x, var_0.b.x, var_0.b.x);
    let var_2 = vec4<bool>(u_input.a > var_0.c.x, true, false, all(!var_1.wz));
    return min(~(~(~var_0.d.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.d.x) >> (vec2<u32>(var_0.c.x, 4294967295u) % vec2<u32>(32u)), min(vec2<u32>(1u, var_0.c.x), var_0.a.xz))) ^ 0u;
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_1(vec3<u32>(u_input.a, func_3(~max(-33678i, 2147483647i)), 4294967295u), vec2<bool>(!all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false)), false), vec4<u32>(min(13152u, 86234u), 1u, ~80559u, 20605u), _wgslsmith_add_vec3_u32(~min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 69312u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(7470u, u_input.a, 95708u), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(1u, 1u, 4294967295u))), vec3<u32>(~(~4294967295u), 0u, 11427u)));
    var var_1 = true;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-518f, -349f, _wgslsmith_f_op_f32(f32(-1f) * -489f), _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 432f, 1000f, global0.x)) + vec4<f32>(-628f, global0.x, global0.x, global0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1002f, global0.x, -1187f, 325f)) - vec4<f32>(global0.x, global0.x, -383f, -1188f)) - vec4<f32>(_wgslsmith_f_op_f32(select(global0.x, -1228f, var_0.b.x)), global0.x, -1710f, _wgslsmith_f_op_f32(trunc(-728f)))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -1150f) + -190f), _wgslsmith_f_op_f32(-580f * _wgslsmith_f_op_f32(f32(-1f) * -618f)))));
    var var_2 = Struct_1(vec3<u32>(u_input.a, ~(~72662u), var_0.a.x), var_0.b, ~(~vec4<u32>(u_input.a >> (69904u % 32u), ~4294967295u, 29267u, 54453u)), abs(vec3<u32>(max(abs(var_0.c.x), u_input.a), abs(73211u), max(var_0.a.x, ~u_input.a))));
    var var_3 = Struct_1(~(~(vec3<u32>(0u, 1983u, var_0.c.x) >> (vec3<u32>(var_0.c.x, 4062u, var_0.a.x) % vec3<u32>(32u)))) >> (firstLeadingBit(~var_2.c.ywy) % vec3<u32>(32u)), var_0.b, _wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a, var_0.a.x, u_input.a, var_2.d.x) & var_0.c), ~(vec4<u32>(39638u, u_input.a, 18323u, 4294967295u) | vec4<u32>(55019u, var_2.a.x, var_0.c.x, 1u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, var_0.c.x, 48653u, 0u), ~var_0.c) % vec4<u32>(32u))), ~(~vec3<u32>(max(0u, var_2.c.x), 1u, var_2.c.x)));
    return _wgslsmith_div_vec3_i32(-select(select(vec3<i32>(u_input.b, -71662i, u_input.b), vec3<i32>(u_input.c, 15210i, u_input.c), var_2.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-43283i, u_input.c, 2936i), vec3<i32>(u_input.b, -1i, 3257i)), vec3<bool>(true, true, true)), ~abs(-vec3<i32>(u_input.c, u_input.b, 1i))) | -abs(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c, -24106i, u_input.b), abs(vec3<i32>(41685i, -1i, -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, -1i), vec3<i32>(u_input.b, u_input.c, u_input.b))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(1254f, _wgslsmith_f_op_f32(-global0.x))), 254f, -521f, global0.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -108f), _wgslsmith_f_op_f32(-1488f * global0.x), _wgslsmith_f_op_f32(-1003f + 984f))))) - vec4<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-354f))), global0.x), _wgslsmith_f_op_f32(floor(-555f)), -896f));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 662f, 1751f, global0.x) - vec4<f32>(global0.x, -744f, -1755f, global0.x))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1342f, global0.x) + vec4<f32>(-855f, -535f, -1336f, -624f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1543f, 1000f) * vec4<f32>(106f, global0.x, global0.x, -1641f)) - vec4<f32>(global0.x, 740f, global0.x, global0.x)) + vec4<f32>(_wgslsmith_f_op_f32(-685f * global0.x), global0.x, _wgslsmith_f_op_f32(global0.x + global0.x), 365f))));
    var var_1 = _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(arg_0.x, 0i, arg_0.x, -2687i) & (vec4<i32>(u_input.b, 13637i, arg_0.x, -39482i) << (arg_1.c % vec4<u32>(32u)))) ^ (~(-vec4<i32>(2147483647i, -2147483647i, -9890i, arg_0.x)) & ~vec4<i32>(-6498i, var_0.x, u_input.c, 7927i)), vec4<i32>(-1347i, _wgslsmith_dot_vec3_i32(arg_0, _wgslsmith_mod_vec3_i32(vec3<i32>(16517i, arg_0.x, -21618i), firstLeadingBit(arg_0))), -u_input.b, -_wgslsmith_div_i32(-u_input.b, u_input.c)));
    var_1 = vec4<i32>(var_0.x, 2147483647i, ~(-var_1.x >> (_wgslsmith_dot_vec2_u32(arg_1.d.xz, abs(vec2<u32>(29440u, 17431u))) % 32u)), 0i);
    return Struct_1(arg_1.a, vec2<bool>(!all(vec4<bool>(false, arg_1.b.x, true, arg_1.b.x)), true), ~arg_1.c, _wgslsmith_mult_vec3_u32(~(~(arg_1.c.xyz << (vec3<u32>(arg_1.d.x, 1u, arg_1.c.x) % vec3<u32>(32u)))), arg_1.a));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1((arg_0.a >> (_wgslsmith_sub_vec3_u32(~arg_0.d, vec3<u32>(1u, arg_0.c.x, u_input.a)) % vec3<u32>(32u))) ^ ~(~vec3<u32>(u_input.a, 4294967295u, 0u)), arg_0.b, _wgslsmith_mult_vec4_u32(firstLeadingBit(select(arg_0.c, arg_0.c, vec4<bool>(arg_0.b.x, true, arg_0.b.x, arg_0.b.x))) ^ arg_0.c, func_1(abs(-vec3<i32>(2147483647i, u_input.c, -1i)), Struct_1(select(vec3<u32>(4294967295u, arg_0.d.x, arg_0.d.x), vec3<u32>(u_input.a, u_input.a, u_input.a), true), vec2<bool>(arg_0.b.x, arg_0.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 13958u, u_input.a, u_input.a), arg_0.c), vec3<u32>(u_input.a, u_input.a, 2422u))).c), arg_0.c.wzw >> (vec3<u32>(_wgslsmith_add_u32(arg_0.d.x, 60445u) | 4294967295u, firstTrailingBit(1u), 56098u) % vec3<u32>(32u)));
    let var_1 = var_0.c;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_f32(581f - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -311f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -791f, global0.x, global0.x), vec4<f32>(global0.x, -371f, global0.x, global0.x), arg_0.b.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-519f, -796f, 174f, global0.x))))))));
    var var_2 = Struct_1(select(~(~vec3<u32>(62864u, 11957u, 1u)) ^ select(var_0.a, reverseBits(var_1.xwy), !var_0.b.x), ~arg_0.a, !vec3<bool>(!var_0.b.x, arg_0.b.x & false, global0.x != global0.x)), vec2<bool>(arg_0.b.x, false), arg_0.c, _wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(14351u, 0u, arg_0.d.x), var_0.c.yyy), vec3<u32>(30778u, 4294967295u, arg_0.a.x) << (~vec3<u32>(arg_0.c.x, arg_0.d.x, 39519u) % vec3<u32>(32u))) << (vec3<u32>(var_1.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_0.c.wx, vec2<u32>(4294967295u, 0u)), arg_0.d.x, 1u), min(var_0.d.x, ~0u)) % vec3<u32>(32u)));
    let var_3 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(115f)))))) + -608f);
    let var_1 = Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, ~22453u), _wgslsmith_mod_vec3_u32(~vec3<u32>(43190u, 1u, u_input.a), ~vec3<u32>(u_input.a, 0u, u_input.a))), ~((vec3<u32>(u_input.a, u_input.a, 25054u) & vec3<u32>(4294967295u, u_input.a, 17562u)) | vec3<u32>(4294967295u, 87333u, u_input.a))), !(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), true))), abs(~(vec4<u32>(u_input.a, 9128u, 0u, u_input.a) >> (vec4<u32>(0u, u_input.a, 34285u, 4294967295u) % vec4<u32>(32u)))), vec3<u32>(~(~1u), _wgslsmith_clamp_u32(~u_input.a, max(24547u, 4294967295u), 34556u), 52989u) << (_wgslsmith_div_vec3_u32(reverseBits(~vec3<u32>(u_input.a, 20180u, u_input.a)), countOneBits(abs(vec3<u32>(94622u, u_input.a, 59522u)))) % vec3<u32>(32u)));
    var var_2 = var_1;
    var_2 = func_4(func_1(vec3<i32>(u_input.c, -2147483647i, -u_input.c), var_1));
    var var_3 = ~(_wgslsmith_sub_vec3_i32(~(-vec3<i32>(u_input.b, -2147483647i, u_input.c)), firstTrailingBit(~vec3<i32>(u_input.b, u_input.c, 36798i))) ^ _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-2147483647i, -1i, 41122i)), ~vec3<i32>(-34233i, 1i, u_input.c) ^ ~vec3<i32>(u_input.c, -12699i, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer((~func_4(var_1).c.x ^ 4294967295u) | 15891u, var_1.d.zz);
}

