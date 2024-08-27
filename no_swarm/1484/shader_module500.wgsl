struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: bool, arg_3: bool) -> vec4<bool> {
    var var_0 = arg_1;
    var_0 = u_input.a;
    var var_1 = vec2<u32>(arg_0.x, countOneBits(u_input.d.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(396f - -414f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(772f)), 1067f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(578f, -322f))))))));
    let var_3 = !all(vec4<bool>(true, !any(vec3<bool>(arg_3, arg_3, arg_3)), all(vec2<bool>(arg_2, false)), arg_1 >= arg_1));
    return vec4<bool>(var_3, false, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b & 26663u, u_input.d.x), select(u_input.d.x, ~4294967295u, true)) >= _wgslsmith_mult_u32(var_1.x, arg_0.x), !any(!vec3<bool>(arg_2, arg_3, false)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_3(-_wgslsmith_div_vec4_i32(vec4<i32>(48081i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, 2147483647i, -16600i), vec4<i32>(-21449i, arg_1.a, -43143i, -1i)), min(arg_1.a, arg_1.a), 1i), ~reverseBits(vec4<i32>(u_input.c.x, u_input.a, -2147483647i, u_input.c.x))));
    var var_1 = 401f;
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_1.b.x))));
    var_0 = Struct_3(vec4<i32>(_wgslsmith_mult_i32(u_input.c.x, max(u_input.a, arg_1.a) << (arg_1.d % 32u)), firstTrailingBit(arg_1.a) ^ ((var_0.a.x | var_0.a.x) & max(-39269i, arg_1.a)), _wgslsmith_dot_vec2_i32(var_0.a.zw, vec2<i32>(var_0.a.x, -1934i) | vec2<i32>(var_0.a.x, -15847i)), select(~u_input.c.x, -u_input.a, select(arg_1.c.x, false, false)) >> (abs(57627u) % 32u)));
    let var_2 = _wgslsmith_dot_vec2_i32(u_input.c, _wgslsmith_clamp_vec2_i32(~vec2<i32>(18175i, arg_1.a), vec2<i32>(2147483647i, ~(-63392i)), vec2<i32>(59054i, u_input.a)) ^ -u_input.c);
    return ~18320i;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_3) -> bool {
    let var_0 = !((any(vec2<bool>(true, true)) || true) & true);
    let var_1 = func_4(vec3<bool>(select(false, var_0, 2147483647i < u_input.c.x), _wgslsmith_add_i32(_wgslsmith_add_i32(arg_3.a.x, -45783i), u_input.a) <= -1i, select(all(func_3(vec4<u32>(1u, 14856u, 0u, 0u), 1256i, true, var_0)), any(!vec4<bool>(false, false, false, var_0)), true)), Struct_1(firstLeadingBit(i32(-1i) * -2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_2.x, 1000f, arg_0.x)))), func_3(min(_wgslsmith_add_vec4_u32(vec4<u32>(62115u, 3084u, u_input.b, u_input.d.x), vec4<u32>(1u, u_input.b, 1u, 20751u)), select(vec4<u32>(4294967295u, u_input.b, 0u, u_input.d.x), vec4<u32>(37636u, 4294967295u, 1u, 16253u), vec4<bool>(var_0, var_0, true, var_0))), u_input.a >> (u_input.b % 32u), _wgslsmith_f_op_f32(-2875f - arg_0.x) == arg_0.x, false), u_input.b));
    let var_2 = Struct_1(~1051i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.x + arg_0.x), _wgslsmith_div_f32(arg_0.x, arg_2.x), _wgslsmith_f_op_f32(-arg_0.x), arg_2.x) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, 703f, arg_2.x, arg_0.x))), vec4<f32>(1453f, -221f, arg_2.x, 692f)))))), func_3(abs(~(~vec4<u32>(u_input.b, 530u, 62838u, 0u))), ~u_input.c.x, !(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, u_input.a, -6006i, -11404i), arg_3.a) <= u_input.a), !(~4294967295u <= ~u_input.b)), 25452u);
    var var_3 = Struct_1(i32(-1i) * -reverseBits(select(-38435i, -28253i, false)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1044f + arg_0.x) + var_2.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1542f - arg_0.x), _wgslsmith_f_op_f32(round(arg_0.x)))))), arg_0.x, 628f), !vec4<bool>(any(var_2.c.xx), _wgslsmith_f_op_f32(f32(-1f) * -1362f) < arg_2.x, func_3(vec4<u32>(u_input.b, 50688u, u_input.d.x, 4294967295u), var_1, arg_2.x < -963f, var_2.c.x).x, var_2.c.x), _wgslsmith_mod_u32(49073u, var_2.d));
    var_3 = var_2;
    return select(true, any(func_3(select(~vec4<u32>(u_input.d.x, 1u, 0u, var_2.d), firstTrailingBit(vec4<u32>(var_3.d, var_2.d, 1u, u_input.b)), vec4<bool>(true, true, var_0, var_0)), 74802i, false, !var_2.c.x).wwy), true);
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    var var_0 = ~18513u;
    var var_1 = !select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), false)), !vec2<bool>(false, func_2(vec3<f32>(489f, -1369f, 1130f), Struct_3(vec4<i32>(u_input.a, arg_0.x, u_input.a, u_input.c.x)), vec2<f32>(-126f, 1009f), Struct_3(vec4<i32>(u_input.a, arg_0.x, arg_0.x, -2147483647i)))), true);
    var var_2 = Struct_1(arg_0.x << (~_wgslsmith_mult_u32(firstLeadingBit(45331u), 73914u) % 32u), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-456f, -1202f)) * 457f))), 609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(553f, 393f))))), _wgslsmith_div_f32(-412f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(551f)), _wgslsmith_f_op_f32(-750f + 1135f)))), !select(!vec4<bool>(false, false, var_1.x, var_1.x), !(!vec4<bool>(false, true, var_1.x, var_1.x)), any(vec4<bool>(false, var_1.x, true, true))), ~_wgslsmith_sub_u32(u_input.b, u_input.b));
    var var_3 = Struct_3(vec4<i32>(~abs(u_input.c.x), arg_0.x, 2147483647i, 0i));
    var var_4 = all(var_2.c.wwz);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-23985i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(func_1(-vec2<i32>(u_input.a, -2147483647i)), u_input.c.x), -668i, ~(-_wgslsmith_dot_vec2_i32(u_input.c, u_input.c))), u_input.a, u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_div_f32(967f, -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1217f))))));
    let var_2 = vec3<i32>(max(40473i, -_wgslsmith_div_i32(var_0.x ^ 8547i, var_0.x)), firstLeadingBit(-20749i), i32(-1i) * -17289i);
    let var_3 = u_input.c;
    let var_4 = Struct_3(vec4<i32>(var_0.x, abs(u_input.c.x) >> (max(~0u, u_input.b) % 32u), firstTrailingBit(var_0.x), min(func_4(func_3(vec4<u32>(u_input.d.x, u_input.b, 17058u, u_input.b), -26576i, false, false).wzw, Struct_1(3441i, vec4<f32>(-1341f, var_1.x, 1427f, var_1.x), vec4<bool>(true, false, false, true), 59608u)), _wgslsmith_dot_vec4_i32(var_0, var_0))));
    var var_5 = select(vec4<bool>(!func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -692f, 161f)), Struct_3(vec4<i32>(var_3.x, -29633i, -1i, -1i)), var_1.yz, Struct_3(vec4<i32>(u_input.c.x, -1i, 31451i, var_3.x))), all(vec4<bool>(true, true, var_1.x > 307f, false)), true, (any(vec2<bool>(false, false)) && true) | true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), func_3(abs(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.b)), ~u_input.a, true, true), !all(vec4<bool>(false, true, true, true))), func_3(firstTrailingBit(~vec4<u32>(0u, 19890u, u_input.d.x, u_input.d.x)), -51551i << ((0u | u_input.b) % 32u), true, true)), var_1.x == var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~min(1i, ~var_3.x), ~4294967295u, i32(-1i) * -(~_wgslsmith_mod_i32(0i, -30933i)), 0u, u_input.d);
}

