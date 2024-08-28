struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>) -> vec3<f32> {
    let var_0 = reverseBits(_wgslsmith_mult_u32(109662u, ~(~reverseBits(u_input.a.x))));
    var var_1 = select(countOneBits(~(~max(vec4<u32>(4294967295u, 2185u, 4294967295u, var_0), vec4<u32>(u_input.a.x, 25112u, 4294967295u, 51421u)))), max(select(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, 55321u, 54205u, 4294967295u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 5001u)), vec4<u32>(u_input.a.x, u_input.a.x, var_0, u_input.a.x), vec4<bool>(false, true, true, false)) & vec4<u32>(~0u, ~0u, 4294967295u, u_input.a.x), ~(~vec4<u32>(u_input.a.x, u_input.a.x, var_0, u_input.a.x) & select(vec4<u32>(var_0, u_input.a.x, 0u, var_0), vec4<u32>(var_0, var_0, var_0, 4294967295u), vec4<bool>(arg_1.a.b, false, false, arg_1.a.b)))), vec4<bool>(any(select(vec2<bool>(arg_1.a.b, false), !vec2<bool>(true, global0.b), u_input.a.x < 0u)), false, true, (1u << (~u_input.a.x % 32u)) == 1u));
    let var_2 = -arg_1.b;
    let var_3 = Struct_2(arg_1.a, _wgslsmith_add_i32(reverseBits(var_2 ^ _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_2, arg_1.b), vec3<i32>(var_2, arg_1.b, var_2))), arg_1.b));
    let var_4 = all(select(select(!vec4<bool>(global0.b, false, true, var_3.a.b), select(vec4<bool>(false, true, var_3.a.b, global0.b), vec4<bool>(true, true, false, global0.b), vec4<bool>(var_3.a.b, true, var_3.a.b, true)), !vec4<bool>(global0.b, true, arg_1.a.b, false)), select(select(vec4<bool>(false, var_3.a.b, false, global0.b), vec4<bool>(var_3.a.b, arg_1.a.b, var_3.a.b, false), vec4<bool>(global0.b, false, arg_1.a.b, global0.b)), select(vec4<bool>(global0.b, true, global0.b, global0.b), vec4<bool>(false, arg_1.a.b, global0.b, false), false), select(vec4<bool>(global0.b, true, true, true), vec4<bool>(false, false, arg_1.a.b, global0.b), global0.b)), vec4<bool>(all(vec3<bool>(global0.b, true, var_3.a.b)), !global0.b, arg_1.a.b, select(false, arg_1.a.b, var_3.a.b)))) & any(!select(!vec2<bool>(global0.b, false), vec2<bool>(global0.b, true), true));
    return _wgslsmith_f_op_vec3_f32(max(arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.a + -1467f), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(-global0.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_2)))) * arg_2)));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(abs(arg_2.a.a)), arg_2, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.a.a, -596f, -1419f)))))), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(-597f, arg_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a, -518f, 121f) - vec3<f32>(arg_2.a.a, -2705f, -167f)))).x, global0.a, _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(sign(global0.a))))))));
    global0 = Struct_1(var_1.x, global0.a > -1196f);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, arg_2.a.a, true)) - arg_2.a.a)), !arg_2.a.b), -2147483647i);
    global0 = var_2.a;
    return Struct_1(var_1.x, global0.b);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = Struct_1(arg_2, !(global0.b && !(arg_3 == -1989i)));
    var_0 = func_2(select(vec2<i32>(1i, firstTrailingBit(108263i) & arg_3), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_3, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_3, arg_3, arg_3), vec4<i32>(arg_3, arg_3, -54221i, 0i))), -vec2<i32>(arg_3, -46294i) >> (~u_input.a.yy % vec2<u32>(32u))), !(!(!vec2<bool>(arg_0.b, arg_0.b)))), true, Struct_2(arg_0, _wgslsmith_div_i32(arg_3, _wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_3, arg_3), ~arg_3))), !select(vec4<bool>(true, any(vec2<bool>(true, true)), false, global0.b), !vec4<bool>(false, false, var_0.b, false), var_0.b));
    global0 = func_2(select(~(-vec2<i32>(-1i, 1i) & vec2<i32>(arg_3, arg_3)), _wgslsmith_div_vec2_i32(vec2<i32>(~arg_3, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, arg_3, arg_3), vec3<i32>(1i, arg_3, -1i))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_3, arg_3), vec2<i32>(arg_3, arg_3)), vec2<i32>(arg_3, 42867i), vec2<i32>(-43489i, arg_3))), false), any(vec3<bool>(true, true, true)), Struct_2(arg_0, _wgslsmith_dot_vec2_i32(max(vec2<i32>(35017i, arg_3), vec2<i32>(arg_3, 2081i)) ^ select(vec2<i32>(-1i, 1i), vec2<i32>(0i, arg_3), var_0.b), (vec2<i32>(arg_3, 43453i) ^ vec2<i32>(arg_3, -29881i)) & -vec2<i32>(arg_3, -66907i))), vec4<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, var_0.b), arg_0.b)), any(select(!vec2<bool>(global0.b, true), vec2<bool>(var_0.b, var_0.b), vec2<bool>(arg_0.b, false))), var_0.b, !(true == !global0.b)));
    let var_1 = Struct_2(Struct_1(1434f, false), arg_3);
    global0 = func_2(abs(~(~vec2<i32>(-44535i, arg_3))), var_0.b, var_1, select(!(!select(vec4<bool>(var_0.b, arg_0.b, global0.b, true), vec4<bool>(false, var_1.a.b, true, var_0.b), true)), !vec4<bool>(!global0.b, false, true, !var_0.b), select(select(vec4<bool>(arg_0.b, true, var_0.b, var_0.b), !vec4<bool>(var_1.a.b, false, var_0.b, false), !vec4<bool>(true, var_0.b, global0.b, global0.b)), !vec4<bool>(arg_0.b, var_0.b, true, global0.b), select(vec4<bool>(global0.b, true, false, var_1.a.b), !vec4<bool>(arg_0.b, global0.b, arg_0.b, var_0.b), var_1.a.b | var_1.a.b))));
    return -(~(~(~arg_3)));
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_clamp_u32(u_input.a.x, countOneBits(~(~105507u)) << (countOneBits(0u) % 32u), 0u);
    var var_1 = Struct_1(340f, false);
    var var_2 = var_0 << (_wgslsmith_sub_u32(var_0, ~_wgslsmith_clamp_u32(var_0 | 4294967295u, 104448u, min(32841u, 0u))) % 32u);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-1995f * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * global0.a), _wgslsmith_f_op_f32(1062f + -225f)), global0.a))), true);
    let var_3 = _wgslsmith_div_i32(_wgslsmith_sub_i32(-116i, max(-64959i, func_4(func_2(vec2<i32>(2147483647i, 35601i), global0.b, Struct_2(Struct_1(var_1.a, true), -2147483647i), vec4<bool>(false, false, global0.b, false)), vec2<f32>(842f, -432f), _wgslsmith_f_op_f32(-var_1.a), abs(1i)))), -1i);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, var_1.a), vec2<f32>(global0.a, -126f), all(vec2<bool>(var_1.b, var_1.b)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-868f, 154f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a, 517f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-180f, var_1.a), vec2<f32>(492f, -709f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(global0.a, 1102f), global0.a), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 509f)))))))));
    global0 = Struct_1(var_0.x, !(!all(vec3<bool>(global0.b, false, global0.b))));
    global0 = func_2(vec2<i32>(~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, -1i, 0i), select(min(vec3<i32>(-1i, 0i, 6002i), vec3<i32>(-1i, 14406i, 9571i)), _wgslsmith_div_vec3_i32(vec3<i32>(7626i, 41664i, -1i), vec3<i32>(25918i, 50485i, -1i)), true))), 1u < countOneBits(u_input.a.x), Struct_2(func_2(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(0i, 26249i)), vec2<i32>(-2147483647i, -16343i)), all(select(vec2<bool>(false, false), vec2<bool>(global0.b, global0.b), vec2<bool>(true, false))), Struct_2(Struct_1(global0.a, false), 1i), vec4<bool>(true, all(vec4<bool>(false, false, true, false)), any(vec4<bool>(global0.b, global0.b, global0.b, global0.b)), !global0.b)), _wgslsmith_clamp_i32(-10706i << (1u % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, 1i), vec3<i32>(2147483647i, -1i, 0i)), ~30927i)), !select(vec4<bool>(1509f != global0.a, false, var_0.x < global0.a, true), select(select(vec4<bool>(global0.b, true, true, false), vec4<bool>(true, false, global0.b, global0.b), vec4<bool>(false, global0.b, global0.b, false)), vec4<bool>(false, true, global0.b, false), select(vec4<bool>(false, true, global0.b, global0.b), vec4<bool>(global0.b, global0.b, true, global0.b), global0.b)), vec4<bool>(global0.b, true, !global0.b, !global0.b)));
    global0 = Struct_1(110f, all(select(vec3<bool>(!global0.b, var_0.x < 677f, global0.b), select(vec3<bool>(global0.b, global0.b, global0.b), !vec3<bool>(global0.b, global0.b, global0.b), select(vec3<bool>(global0.b, true, false), vec3<bool>(global0.b, false, false), true)), any(select(vec2<bool>(global0.b, true), vec2<bool>(global0.b, true), vec2<bool>(false, false))))));
    global0 = func_2(vec2<i32>(40714i & select(~1i, -2147483647i >> (0u % 32u), false & global0.b), -_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-38766i, 1i, 45604i)), vec3<i32>(1i, 1i, 1i))), !(abs(~3920u) < _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.a.x, u_input.a.x)), ~vec3<u32>(u_input.a.x, 1u, u_input.a.x))), Struct_2(func_2(-vec2<i32>(2147483647i, 1i) >> (~u_input.a.zx % vec2<u32>(32u)), ~4294967295u > abs(u_input.a.x), Struct_2(Struct_1(413f, global0.b), ~(-17680i)), select(vec4<bool>(global0.b, true, true, true), vec4<bool>(global0.b, global0.b, global0.b, global0.b), global0.b && global0.b)), func_4(Struct_1(var_0.x, !global0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(585f, -647f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), ~(-2147483647i))), select(!select(vec4<bool>(global0.b, global0.b, global0.b, global0.b), !vec4<bool>(global0.b, global0.b, global0.b, global0.b), !vec4<bool>(global0.b, false, global0.b, global0.b)), select(vec4<bool>(false, global0.b, all(vec4<bool>(true, global0.b, true, false)), false), select(select(vec4<bool>(true, global0.b, true, true), vec4<bool>(false, global0.b, false, global0.b), vec4<bool>(global0.b, global0.b, global0.b, global0.b)), select(vec4<bool>(global0.b, global0.b, true, global0.b), vec4<bool>(global0.b, true, true, global0.b), global0.b), !vec4<bool>(true, global0.b, global0.b, false)), vec4<bool>(global0.b, u_input.a.x >= 0u, true, global0.b)), vec4<bool>(false, any(select(vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(global0.b, global0.b, false), vec3<bool>(false, true, true))), false, global0.b)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.a)), _wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_div_i32(-1i << (u_input.a.x % 32u), 1i) < -reverseBits(0i)), -2147483647i);
    var var_2 = Struct_2(var_1.a, var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, var_1.b, var_1.b) << (u_input.a % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(var_1.b, -55652i), 0i, -var_1.b), -firstTrailingBit(vec3<i32>(-26485i, 0i, var_1.b))));
}

