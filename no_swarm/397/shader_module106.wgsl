struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = arg_0;
    var var_1 = Struct_1(!select(!(!vec2<bool>(false, arg_0.a.x)), select(arg_0.a.zz, !global0.xx, vec2<bool>(true, true)), false), arg_1.b.e, min(1u, 74420u), vec2<i32>(17211i, arg_1.b.d.x), arg_1.b.e);
    var_1 = arg_1.b;
    var_1 = Struct_1(select(var_1.a, select(!vec2<bool>(var_1.a.x, var_1.a.x), select(global0.yy, select(vec2<bool>(false, arg_0.b.a.x), vec2<bool>(global0.x, arg_1.b.a.x), global0.yz), arg_1.b.a.x & var_0.b.a.x), false), vec2<bool>(!any(arg_0.a.zw), any(select(vec2<bool>(var_1.a.x, false), global0.zz, vec2<bool>(arg_0.b.a.x, false))))), arg_0.b.e, firstTrailingBit(_wgslsmith_sub_u32(select(1u, 1u, arg_0.a.x) ^ ~0u, _wgslsmith_add_u32(firstLeadingBit(4294967295u), ~var_1.c))), _wgslsmith_div_vec2_i32(~(~_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -24666i), vec2<i32>(arg_0.b.d.x, 13977i))), ~(~abs(arg_0.b.d))), var_1.e);
    var_1 = var_0.b;
    return ~arg_0.b.c;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x & u_input.a.x;
    var var_1 = 1u;
    let var_2 = Struct_3(-(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, u_input.a.x, var_0, u_input.a.x), vec4<i32>(-2147483647i, -31052i, 1i, var_0), vec4<i32>(3115i, var_0, var_0, 62907i)))), Struct_1(vec2<bool>(true, func_3(Struct_2(vec4<bool>(global0.x, global0.x, false, false), Struct_1(vec2<bool>(true, true), vec2<f32>(-611f, 1098f), 34398u, vec2<i32>(var_0, 2147483647i), vec2<f32>(1509f, 471f))), Struct_2(vec4<bool>(global0.x, true, global0.x, global0.x), Struct_1(global0.yy, vec2<f32>(-2428f, 1060f), 0u, vec2<i32>(-33060i, -9799i), vec2<f32>(-263f, -1717f)))) >= 1u), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - 1167f), 472f)), -921f), ~(~1u), min(~_wgslsmith_add_vec2_i32(u_input.a.yx, vec2<i32>(var_0, -44848i)), u_input.a.yz), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1129f, _wgslsmith_f_op_f32(round(-1000f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-728f, 271f)))))), i32(-1i) * -2147483647i);
    var_1 = ~(~var_2.b.c);
    let var_3 = -499f;
    return var_2.b;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_3(vec4<i32>(1i, reverseBits(5512i), -arg_2.d.x << (~(~arg_2.c) % 32u), -u_input.a.x), func_2(), 26865i);
    var var_1 = Struct_2(vec4<bool>(global0.x, !(var_0.b.d.x == 2147483647i), 1i == ~_wgslsmith_div_i32(29413i, arg_2.d.x), true), arg_2);
    global0 = !vec3<bool>(func_2().a.x, true, any(func_2().a));
    global0 = vec3<bool>(~_wgslsmith_div_u32(~41328u, arg_2.c & arg_1.x) < _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.c, 58115u, arg_2.c, 0u), vec4<u32>(arg_1.x, arg_2.c, 0u, 21084u)), select(1u, countOneBits(4294967295u), true)), -(~83180i << (0u % 32u)) <= (_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-1i, 14792i)), ~var_0.a.wz) | -1i), select(all(vec2<bool>(all(vec4<bool>(var_0.b.a.x, false, false, true)), arg_1.x >= 0u)), true, true));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -594f), var_0.b.e.x))));
    return _wgslsmith_f_op_f32(arg_2.e.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(global0.x, all(!(!select(vec3<bool>(global0.x, false, false), vec3<bool>(false, true, global0.x), global0.x))), global0.x);
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1113f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(!vec4<bool>(false, false, global0.x, global0.x), vec2<u32>(0u, 27116u), Struct_1(global0.yy, vec2<f32>(362f, 1001f), 13039u, u_input.a.zy, vec2<f32>(-868f, 1048f))))), -1000f));
    var var_1 = Struct_1(vec2<bool>(all(vec4<bool>(493f == var_0.x, !global0.x, !global0.x, all(vec4<bool>(true, global0.x, global0.x, global0.x)))), true), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * -292f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -873f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1687f, var_0.x))))), 1u, -min(func_2().d, abs(max(vec2<i32>(0i, 1i), u_input.a.zy))), var_0.yx);
    var var_2 = vec4<u32>(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, 4294967295u, var_1.c, 4294967295u), vec4<u32>(var_1.c, 1u, var_1.c, var_1.c))), ~0u, 59041u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, 0u, var_1.c, 4294967295u), vec4<u32>(var_1.c, 0u, 0u, 62091u)) << (~firstTrailingBit(var_1.c) % 32u)) >> (vec4<u32>(0u, 0u, 0u, ~(var_1.c & firstTrailingBit(var_1.c))) % vec4<u32>(32u));
    var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(reverseBits(abs(~1u)), func_2().c, _wgslsmith_dot_vec3_u32(var_2.yyy, var_2.ywz >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_1.c, var_2.x), var_2.yyx, vec3<u32>(1u, var_2.x, var_1.c)) % vec3<u32>(32u))), 80309u), vec4<u32>(12062u, _wgslsmith_dot_vec4_u32(~max(vec4<u32>(var_1.c, 40150u, var_1.c, 0u), vec4<u32>(var_2.x, var_1.c, var_1.c, var_1.c)), vec4<u32>(~0u, ~var_1.c, ~0u, 0u)), ~_wgslsmith_mult_u32(~var_2.x, _wgslsmith_mult_u32(var_1.c, var_2.x)), var_2.x & (0u >> (1u % 32u))));
    let var_3 = Struct_2(!(!vec4<bool>(global0.x | global0.x, var_0.x <= var_1.b.x, all(vec4<bool>(false, false, var_1.a.x, global0.x)), var_1.a.x)), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.xyy, var_2.wzw);
}

