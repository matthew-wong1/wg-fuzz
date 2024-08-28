struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(11431u, 18311u, 4294967295u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    global0 = vec3<u32>(~reverseBits(_wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, 39079u), 67249u)), select(countOneBits(_wgslsmith_clamp_u32(4294967295u, global0.x, global0.x)), global0.x, true), _wgslsmith_mult_u32(~(_wgslsmith_div_u32(0u, global0.x) ^ firstLeadingBit(33034u)), global0.x));
    global0 = firstLeadingBit(~vec3<u32>(_wgslsmith_div_u32(max(4294967295u, 125320u), ~116752u), 1u, max(_wgslsmith_div_u32(4294967295u, 1u), ~global0.x)));
    var var_0 = Struct_2(_wgslsmith_add_vec4_u32(u_input.b, u_input.b), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true))), !select(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), any(vec2<bool>(false, false))), vec2<bool>(true, false), 1u < _wgslsmith_dot_vec3_u32(u_input.b.zxz, u_input.e)), -2147483647i);
    var var_1 = (~var_0.a >> (vec4<u32>(_wgslsmith_add_u32(max(u_input.a.x, 28327u), 4294967295u << (u_input.c.x % 32u)), var_0.a.x | _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, u_input.d, 22198u, u_input.c.x), vec4<u32>(var_0.a.x, 1u, u_input.b.x, 25865u)), u_input.d, global0.x) % vec4<u32>(32u))) ^ u_input.b;
    var_1 = vec4<u32>(var_0.a.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.x), u_input.c.yy), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, global0.x), vec2<u32>(var_1.x, var_1.x)), ~global0.x), vec4<u32>(41368u, var_1.x & 4294967295u, ~var_1.x, 10428u))), min(59174u, ~(~abs(var_0.a.x))), ~(var_0.a.x << (1u % 32u)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-494f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -646f), _wgslsmith_f_op_f32(ceil(-568f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1699f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1568f)) - _wgslsmith_f_op_f32(f32(-1f) * -571f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-225f - 196f)), -1681f))));
}

fn func_2(arg_0: vec4<bool>) -> vec4<f32> {
    var var_0 = reverseBits(_wgslsmith_clamp_i32(40138i, 2147483647i, 2147483647i));
    var_0 = firstTrailingBit(-1i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * 1f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3())))) - -1562f);
    var var_2 = Struct_1(vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(1i, 23572i), reverseBits(i32(-1i) * -1i)), ~(-vec2<i32>(1158i, -21200i)) >> (abs(~vec2<u32>(u_input.a.x, global0.x)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(290f, 1717f, -2295f, 910f) + vec4<f32>(1884f, -1000f, 202f, -1000f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-500f, 944f, 1040f, -1000f) * vec4<f32>(-741f, 1348f, -767f, -1144f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-153f, -1689f, -211f, -1273f)), arg_0))))), ~vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(16898u), ~u_input.c.x), 1u | u_input.a.x, global0.x), vec4<u32>(7382u, abs(4294967295u), global0.x & (global0.x ^ u_input.b.x), 1u) >> (~vec4<u32>(~u_input.e.x, ~17183u, 1u, ~23972u) % vec4<u32>(32u)));
    var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(~var_2.b.x, -(var_2.b.x | var_2.a.x)), ~(-firstTrailingBit(var_2.b))), vec2<i32>(1i, var_2.b.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.c.x, -334f, false)) * -640f), 925f, 2734f, 1000f), vec4<f32>(-159f, -583f, var_2.c.x, var_2.c.x), !(~22354i == (var_2.a.x << (u_input.a.x % 32u))))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 10271i, ~firstTrailingBit(3237i)), vec3<i32>(~_wgslsmith_mult_i32(-11285i, -1i), 1317i, 1i)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(1i, -16378i), 2147483647i), vec2<i32>(~0i, -1i), vec2<i32>(1i, _wgslsmith_add_i32(-2147483647i, 2147483647i))), _wgslsmith_f_op_vec4_f32(func_2(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false)), vec4<bool>(true, true, true, true), true))), _wgslsmith_div_vec3_u32(~min(reverseBits(vec3<u32>(u_input.c.x, 45359u, 9026u)), countOneBits(u_input.b.zxy)), vec3<u32>(0u, _wgslsmith_div_u32(global0.x >> (1u % 32u), 20973u), 1u >> (_wgslsmith_mult_u32(4294967295u, u_input.c.x) % 32u))), _wgslsmith_mult_vec4_u32(u_input.b, ~reverseBits(u_input.b)));
    global0 = vec3<u32>(_wgslsmith_mod_u32(abs(1u << (u_input.a.x % 32u)), var_0.d.x), global0.x, min(4294967295u, ~_wgslsmith_mod_u32(81358u, global0.x))) << (u_input.b.yzw % vec3<u32>(32u));
    let var_1 = vec4<u32>(10831u, ~1u, var_0.d.x, min(var_0.e.x, ~(global0.x >> (11465u % 32u))));
    let var_2 = vec3<bool>(true, any(vec3<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), !all(vec3<bool>(true, false, true)))), select(all(vec2<bool>(any(vec2<bool>(false, true)), false)), false, true));
    let var_3 = -(~(-(~vec4<i32>(var_0.a.x, var_0.b.x, var_0.b.x, -2147483647i)) >> (vec4<u32>(~1u, 1u, _wgslsmith_div_u32(var_0.d.x, global0.x), ~global0.x) % vec4<u32>(32u))));
    return var_0;
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = abs(~arg_0.b);
    global0 = _wgslsmith_clamp_vec3_u32(u_input.b.wyx, func_1().d, reverseBits(firstLeadingBit(~vec3<u32>(global0.x, arg_0.e.x, 4294967295u))));
    let var_1 = u_input.d;
    let var_2 = func_1();
    var_0 = arg_0.a.xy;
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var_0 = global0.x & ~(~6547u);
    var_0 = abs(4294967295u);
    let var_1 = _wgslsmith_f_op_vec4_f32(func_4(func_1()));
    let var_2 = func_1();
    let var_3 = Struct_2(vec4<u32>(var_2.e.x, 1u, reverseBits(8882u >> (_wgslsmith_mult_u32(1u, var_2.e.x) % 32u)), 29445u), vec4<bool>(false, true, u_input.a.x < abs(select(u_input.c.x, 24207u, true)), true), !select(vec2<bool>(false, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), false), any(vec4<bool>(false, false, true, false)) & any(vec2<bool>(true, false))), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zyw);
}

