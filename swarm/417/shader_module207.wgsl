struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: f32,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(reverseBits(~vec4<u32>(u_input.a, 0u, 1u, 1u)) >> (abs(abs(~vec4<u32>(u_input.a, u_input.b.x, u_input.a, 4294967295u))) % vec4<u32>(32u)), global0.xx, vec2<i32>(-1i) * -vec2<i32>(1i, 1i), !select(select(vec4<bool>(false, true, true, global0.x), select(vec4<bool>(false, false, global0.x, false), vec4<bool>(global0.x, false, false, true), global0.x), true), select(!vec4<bool>(global0.x, false, global0.x, global0.x), !vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x)), select(select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, false, true, true), vec4<bool>(global0.x, global0.x, true, false)), !vec4<bool>(global0.x, global0.x, true, false), global0.x)));
    var var_1 = abs(_wgslsmith_div_vec2_u32(var_0.a.xz, u_input.b));
    let var_2 = var_0.c;
    var var_3 = u_input.b;
    let var_4 = max(~_wgslsmith_div_vec3_i32(-(~vec3<i32>(0i, -1i, var_2.x)), vec3<i32>(countOneBits(-33434i), firstLeadingBit(var_2.x), ~2101i)), vec3<i32>(-21135i, ~(-20859i) ^ abs(var_0.c.x), min(var_2.x, -7890i) ^ _wgslsmith_clamp_i32(-42791i, var_0.c.x, var_0.c.x)) >> (var_0.a.yyx % vec3<u32>(32u)));
    return true;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>) -> vec4<f32> {
    global0 = !select(vec3<bool>(!all(vec3<bool>(arg_0.c, arg_0.c, true)), false, any(vec4<bool>(global0.x, true, false, arg_0.c))), !(!vec3<bool>(true, arg_0.c, true)), !(!vec3<bool>(false, global0.x, global0.x)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-603f)) * 1000f);
    global0 = select(!vec3<bool>(global0.x, arg_0.c, ~arg_1.x >= 67513i), !(!select(select(vec3<bool>(true, global0.x, arg_0.c), vec3<bool>(false, true, global0.x), global0.x), !vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, true, arg_0.c))), (-1i | -arg_0.d.x) < -(i32(-1i) * -25735i));
    var var_1 = Struct_1(arg_0.e, vec2<bool>(true, _wgslsmith_add_u32(max(u_input.a, 71557u), ~4294967295u) < ~min(0u, arg_0.e.x)), vec2<i32>(arg_1.x, ~arg_0.d.x), vec4<bool>(any(vec3<bool>(true, true, true)), !global0.x, 56944u >= countOneBits(u_input.a), true));
    var var_2 = Struct_2(_wgslsmith_dot_vec4_u32(var_1.a, arg_0.a), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -681f), 1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(1000f + -572f)) + var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(round(var_0))), Struct_1(arg_0.a, global0.zy, arg_0.d.zy, !vec4<bool>(arg_0.d.x != arg_1.x, false, true, var_1.d.x == true)));
    return var_2.b;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<f32> {
    global0 = select(!vec3<bool>(!select(true, global0.x, global0.x), true, arg_1.b.x > -1790f), vec3<bool>(arg_1.b.x >= 1486f, global0.x, true), select(!(!arg_1.c.d.ywz), arg_1.c.d.wzy, !all(global0.yz) || global0.x));
    global0 = select(!vec3<bool>(false, !any(arg_1.c.d), _wgslsmith_mod_u32(u_input.a, 0u) <= 0u), arg_1.c.d.yxw, true);
    var var_0 = _wgslsmith_mod_i32(arg_0.x, 1i);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec4<u32>(firstLeadingBit(arg_1.a), 78788u, 27725u, ~arg_1.c.a.x), arg_1.c.a.x, func_3(), select(vec4<i32>(2147483647i, arg_0.x, 5249i, -21586i), arg_0, arg_1.c.d), vec4<u32>(4294967295u, 1u, select(1u, 4294967295u, arg_1.c.d.x), arg_1.a)), ~arg_0.wzx ^ firstTrailingBit(vec3<i32>(arg_0.x, 22984i, -55786i)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_1.b))));
}

fn func_1() -> vec3<bool> {
    global0 = vec3<bool>(global0.x, any(!vec4<bool>(select(global0.x, global0.x, false), !global0.x, true, true)), global0.x);
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_vec4_i32(min(vec4<i32>(1i, -22425i, -9162i, 19818i), vec4<i32>(0i, 76366i, 1i, 2147483647i)), reverseBits(vec4<i32>(-1i, -47124i, 937i, 2147483647i))), Struct_2(_wgslsmith_sub_u32(u_input.a, 1u), vec4<f32>(-1000f, 775f, -1788f, 466f), Struct_1(vec4<u32>(u_input.a, 52838u, 29805u, u_input.b.x), vec2<bool>(false, global0.x), vec2<i32>(60646i, -21243i), vec4<bool>(global0.x, global0.x, global0.x, true)))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(572f, 1219f, 894f, 974f))), vec4<f32>(-165f, 205f, 564f, 785f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1890f, 1247f, -1315f, -1000f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1101f, -1143f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1312f, -354f, -1000f))));
    let var_1 = Struct_2(~firstLeadingBit(4055u), vec4<f32>(var_0.x, -1019f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 1000f))), _wgslsmith_f_op_f32(1301f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-194f)))))), Struct_1(abs(vec4<u32>(u_input.b.x, u_input.a, 4294967295u, 4294967295u) | vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.a)), select(vec2<bool>(!global0.x, !global0.x), vec2<bool>(true, true), global0.x), vec2<i32>(1i, 1i), vec4<bool>(_wgslsmith_f_op_f32(var_0.x * -423f) > _wgslsmith_f_op_f32(f32(-1f) * -1384f), true | select(global0.x, global0.x, false), !all(vec2<bool>(false, true)), !(global0.x && true))));
    return var_1.c.d.zxx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = select(func_1(), func_1(), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-530f, _wgslsmith_f_op_vec4_f32(func_4(Struct_3(vec4<u32>(u_input.b.x, 0u, u_input.b.x, 32320u), 1u, true, vec4<i32>(-11965i, -9422i, -41388i, 3200i), vec4<u32>(u_input.a, u_input.a, 1u, u_input.b.x)), vec3<i32>(-2147483647i, 4566i, -35514i))).x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -483f), _wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(-1i, 63845i, -4351i, -2147483647i), Struct_2(45300u, vec4<f32>(1636f, -733f, 1219f, 1000f), Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec2<bool>(false, false), vec2<i32>(3397i, 29617i), vec4<bool>(false, global0.x, var_0, true))))).x), _wgslsmith_div_f32(675f, -610f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-734f, 835f) + -331f), -1400f, _wgslsmith_f_op_vec4_f32(func_2(~vec4<i32>(2147483647i, 2147483647i, -22208i, 2147483647i), Struct_2(u_input.a, vec4<f32>(549f, 339f, 116f, -2265f), Struct_1(vec4<u32>(46552u, u_input.a, 4294967295u, 4294967295u), global0.xz, vec2<i32>(-2147483647i, 10372i), vec4<bool>(false, true, true, true))))).x))));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-712f, _wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1726f)) - _wgslsmith_f_op_f32(f32(-1f) * -420f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 427f, 832f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1692f, var_1.x, var_1.x) * vec3<f32>(var_1.x, 773f, 2192f)))))));
    global0 = select(!select(!(!vec3<bool>(var_0, true, var_0)), vec3<bool>(true | var_0, true, true), any(vec4<bool>(true, global0.x, var_0, var_0))), vec3<bool>(true, var_0, all(!(!vec4<bool>(var_0, global0.x, var_0, false)))), all(vec3<bool>(any(vec4<bool>(var_0, var_0, global0.x, false)) | all(global0.zz), true, true)));
    let var_2 = select(!select(global0.xx, select(vec2<bool>(true, false), global0.zx, global0.xy), select(select(global0.xx, global0.yx, global0.yy), global0.xy, vec2<bool>(var_0, true))), global0.yy, vec2<bool>(global0.x, false));
    let var_3 = Struct_2(u_input.b.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 1379f) * _wgslsmith_f_op_f32(-1000f + 845f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)) * _wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1392f + var_1.x), -590f, !var_0))))), Struct_1(~(~abs(vec4<u32>(u_input.b.x, 81651u, 69081u, u_input.b.x))), func_1().xz, vec2<i32>(-53744i, 0i), vec4<bool>(!(!var_0), true, ~u_input.b.x > ~u_input.b.x, false || !global0.x)));
    let var_4 = Struct_4(-2034f, Struct_3(vec4<u32>(_wgslsmith_sub_u32(u_input.a & 3100u, _wgslsmith_dot_vec2_u32(vec2<u32>(67061u, 0u), vec2<u32>(u_input.b.x, 1u))), u_input.b.x, u_input.a, abs(4294967295u)), var_3.c.a.x, select(any(!vec4<bool>(var_2.x, false, true, false)), var_2.x && true, any(vec2<bool>(var_0, global0.x))), ~countOneBits(vec4<i32>(var_3.c.c.x, var_3.c.c.x, var_3.c.c.x, var_3.c.c.x)), var_3.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(firstTrailingBit(~65517u), ~4204u), _wgslsmith_mult_u32(abs(~_wgslsmith_add_u32(47190u, u_input.b.x)), u_input.b.x), _wgslsmith_dot_vec2_i32(-select(var_3.c.c, vec2<i32>(var_3.c.c.x, var_3.c.c.x), var_2.x) << (_wgslsmith_mult_vec2_u32(~vec2<u32>(var_3.c.a.x, u_input.b.x), ~var_4.b.a.ww) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_sub_i32(-12343i, -1674i), i32(-1i) * -5326i) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 51485u), _wgslsmith_clamp_vec2_u32(var_3.c.a.zz, var_4.b.e.wz, vec2<u32>(u_input.b.x, 0u))) % vec2<u32>(32u))), vec2<f32>(703f, var_3.b.x));
}

