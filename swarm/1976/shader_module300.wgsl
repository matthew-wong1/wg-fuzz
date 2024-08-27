struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: u32) -> bool {
    global0 = vec3<bool>(arg_2.x, true | (true && (_wgslsmith_f_op_f32(round(-2487f)) <= arg_1.x)), false);
    var var_0 = Struct_1(vec4<f32>(-683f, _wgslsmith_f_op_f32(f32(-1f) * -320f), arg_1.x, -664f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1243f, arg_1.x) * arg_0.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-109f + -937f)));
    global0 = select(select(select(vec3<bool>(global0.x, arg_3 == arg_3, global0.x), select(select(vec3<bool>(var_0.b, arg_2.x, true), vec3<bool>(true, false, arg_2.x), vec3<bool>(true, arg_2.x, var_0.b)), select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(arg_2.x, true, false), vec3<bool>(arg_2.x, false, false)), !vec3<bool>(var_0.b, arg_2.x, false)), vec3<bool>(all(vec4<bool>(var_0.b, false, global0.x, global0.x)), any(vec2<bool>(global0.x, true)), arg_2.x)), !select(select(vec3<bool>(true, global0.x, true), vec3<bool>(var_0.b, var_0.b, arg_2.x), vec3<bool>(false, global0.x, false)), !vec3<bool>(true, false, global0.x), true), true), vec3<bool>(arg_2.x, all(vec3<bool>(true, true, !global0.x)), select(any(!global0.xz), !var_0.b, true)), !(!(!(!vec3<bool>(false, arg_2.x, var_0.b)))));
    let var_1 = -(~(-vec3<i32>(u_input.a, max(u_input.a, u_input.a), -u_input.a)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_0.a.xw);
    return !all(!vec4<bool>(var_2.x != arg_0.x, all(vec4<bool>(false, true, false, var_0.b)), false && arg_2.x, arg_2.x & false));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> bool {
    let var_0 = 59727u;
    var var_1 = !vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, arg_0), !global0.xz)), false, (!arg_0 && true) | (max(0i, -5078i) != u_input.a), true);
    global0 = select(select(select(vec3<bool>(true, true, true), var_1.xxz, true), select(vec3<bool>(any(var_1.xw), all(var_1.ww), var_0 >= var_0), !(!var_1.yxx), true), select(vec3<bool>(true, false, true), select(select(vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, global0.x, global0.x), true), vec3<bool>(true, var_1.x, true), var_1.x), select(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(global0.x, true, true), true), select(var_1.zwx, vec3<bool>(arg_0, false, true), true), any(var_1.zy)))), vec3<bool>(arg_0, !(all(vec4<bool>(true, global0.x, global0.x, arg_0)) || true), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-647f, 1000f)), vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), -707f, _wgslsmith_f_op_f32(2411f - -1480f), -287f), var_1.yw, var_0 >> (32846u % 32u))), any(vec4<bool>(false, any(!var_1.zxw), arg_0, false)));
    var_1 = select(vec4<bool>(!(!all(vec4<bool>(var_1.x, true, true, false))), _wgslsmith_add_u32(var_0, 20149u) <= _wgslsmith_add_u32(var_0, 22734u), all(var_1.wzx), _wgslsmith_div_i32(1i, arg_1.x) == u_input.a), select(select(select(select(vec4<bool>(arg_0, true, false, true), vec4<bool>(true, global0.x, global0.x, var_1.x), vec4<bool>(global0.x, global0.x, arg_0, true)), vec4<bool>(arg_0, true, true, false), false), !select(vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(false, true, false, global0.x), false), !(!vec4<bool>(global0.x, false, false, false))), !(!select(vec4<bool>(var_1.x, false, global0.x, global0.x), vec4<bool>(false, var_1.x, false, true), false)), all(global0.zy)), select(var_1.x, arg_1.x != 2147483647i, !var_1.x));
    global0 = !vec3<bool>(false, !arg_0, arg_0);
    return true;
}

fn func_1() -> vec2<bool> {
    let var_0 = !vec3<bool>(true, all(vec4<bool>(true, all(vec3<bool>(true, global0.x, global0.x)), true, global0.x)), true);
    let var_1 = ~(~select(vec2<u32>(1u, 1u), vec2<u32>(74083u, 91015u), var_0.yx)) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(~4294967295u, reverseBits(0u)), vec2<u32>(35267u, 1u)) % vec2<u32>(32u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(-1738f + 699f), _wgslsmith_f_op_f32(-475f * -615f), _wgslsmith_f_op_f32(max(-225f, -641f)))))), func_2(true, -(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1064i, -1i, u_input.a, 55269i), vec4<i32>(u_input.a, -2147483647i, u_input.a, -3562i), vec4<i32>(-9576i, -2565i, u_input.a, u_input.a)) & ~vec4<i32>(u_input.a, -1i, u_input.a, u_input.a))));
    global0 = !select(select(select(!var_0, vec3<bool>(true, false, var_0.x), any(vec2<bool>(false, true))), !select(vec3<bool>(false, var_2.b, true), var_0, false), vec3<bool>(false, false | var_0.x, true)), !vec3<bool>(any(vec2<bool>(false, true)), false & var_2.b, var_2.b), !(true & (var_2.a.x <= -1322f)));
    global0 = !var_0;
    return select(!vec2<bool>(false, !var_2.b), vec2<bool>(global0.x, func_2(true, abs(-vec4<i32>(1i, u_input.a, 1i, 63861i)))), vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(641f * -1077f), 1f, _wgslsmith_div_f32(1797f, 1303f), -589f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(976f, -2574f, -1557f, -396f) * vec4<f32>(220f, -426f, 729f, -215f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-308f, 318f, -349f, 606f) - vec4<f32>(-153f, 210f, -823f, -773f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2178f, -1496f, 508f, -1099f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1583f, -1375f, -1235f, -473f)), all(vec4<bool>(false, true, false, true)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(851f, -483f, 351f, 1580f), vec4<f32>(334f, -1033f, -726f, -114f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-362f, 1000f, 818f, 736f) - vec4<f32>(-1102f, -427f, 1690f, 800f)))), vec4<bool>(global0.x, true, true, u_input.a >= u_input.a)))), all(!func_1()));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a - var_0.a), var_0.b);
    var var_2 = ~abs(~(~vec4<u32>(1u, 1u, 1u, 1u)));
    var var_3 = select(~(-4069i), 2147483647i, !(!(u_input.a > firstTrailingBit(-35673i))));
    var var_4 = _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_2.x, var_2.x), vec3<u32>(var_2.x, ~countOneBits(firstTrailingBit(var_2.x)), min(reverseBits(firstLeadingBit(var_2.x)), min(var_2.x, _wgslsmith_sub_u32(var_2.x, var_2.x)))), abs(var_2.wyz));
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-266f, 146f, var_1.a.x, var_0.a.x))) * var_1.a)));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, 1165f, var_1.a.x), _wgslsmith_f_op_vec4_f32(-var_0.a)) + vec4<f32>(_wgslsmith_f_op_f32(var_5.x - 1476f), _wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(607f + -267f), _wgslsmith_f_op_f32(var_0.a.x - -396f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, -357f, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, var_1.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-887f, var_1.a.x, var_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_5.x)))), true & var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_5.x)))) != _wgslsmith_f_op_f32(abs(108f)));
    var var_6 = ~firstLeadingBit(~(~0u)) == (~_wgslsmith_mod_u32(~48624u, var_4.x) | _wgslsmith_mod_u32(~21262u, var_2.x));
    var var_7 = -countOneBits(select(abs(-vec2<i32>(6052i, 1073i)), abs(vec2<i32>(2147483647i, -16357i)), false));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_4.x));
}

