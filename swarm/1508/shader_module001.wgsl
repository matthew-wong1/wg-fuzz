struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(734f, -1229f, vec2<bool>(false, true), true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<bool>) -> f32 {
    let var_0 = Struct_1(arg_0.a.b, _wgslsmith_f_op_f32(f32(-1f) * -1661f), !(!(!select(vec2<bool>(arg_1.x, arg_3.x), arg_1.yy, true))), true);
    let var_1 = !select(!arg_1, !(!(!vec4<bool>(false, false, global0.c.x, arg_0.a.d))), true);
    let var_2 = Struct_1(225f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(378f, 889f)) * global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b) + _wgslsmith_f_op_f32(-var_0.a)))), select(global0.c, select(arg_1.yz, var_1.zz, vec2<bool>(arg_2, false)), (u_input.a.x >> (~u_input.b.x % 32u)) <= _wgslsmith_dot_vec2_i32(u_input.a, max(u_input.a, vec2<i32>(u_input.a.x, -1i)))), false);
    var var_3 = all(var_2.c);
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, 1609f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1766f))));
    return _wgslsmith_div_f32(700f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(117f))))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = u_input.b.x;
    global0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.b, 354f), 1392f)), _wgslsmith_f_op_f32(-2356f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global0.a)))))), global0.c, false);
    global0 = Struct_1(global0.b, global0.a, vec2<bool>(all(!vec2<bool>(global0.d, arg_0.x)), _wgslsmith_div_f32(914f, _wgslsmith_f_op_f32(step(1140f, -361f))) == _wgslsmith_f_op_f32(global0.a - -1413f)), true | arg_0.x);
    var var_1 = u_input.b;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(global0.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(-1056f, global0.a, arg_0.zz, arg_0.x), -1i), vec4<bool>(false, false, false, false), arg_0.x, vec4<bool>(global0.d, true, arg_0.x, global0.d))), -511f)), _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1134f, global0.a)), _wgslsmith_f_op_f32(global0.a * global0.a)))), arg_0.zz, !arg_0.x), firstLeadingBit(u_input.a.x));
    return Struct_2(Struct_1(-1221f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.a.a - var_2.a.b), global0.a)), select(vec2<bool>(true, arg_0.x), select(select(vec2<bool>(false, global0.c.x), var_2.a.c, global0.c), vec2<bool>(var_2.a.d, true), 34293i < var_2.b), true), select(any(select(vec4<bool>(var_2.a.d, var_2.a.c.x, var_2.a.c.x, arg_0.x), vec4<bool>(global0.d, true, true, true), vec4<bool>(global0.d, true, true, false))), all(select(var_2.a.c, vec2<bool>(false, false), global0.c)), false)), ~(-21434i));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<u32>) -> f32 {
    let var_0 = abs(_wgslsmith_sub_i32(u_input.a.x << (~60791u % 32u), ~select(1i, 2147483647i, global0.c.x))) >> (~(~(~(~4294967295u))) % 32u);
    var var_1 = func_2(!vec3<bool>(global0.c.x, true, global0.c.x));
    var var_2 = func_2(vec3<bool>(all(!select(var_1.a.c, global0.c, vec2<bool>(var_1.a.c.x, true))), any(!var_1.a.c), !(false | arg_2) != var_1.a.d));
    var_1 = func_2(vec3<bool>(false, all(select(var_1.a.c, !vec2<bool>(global0.d, arg_2), true)), (arg_3.x | reverseBits(1u)) <= 27161u));
    var var_3 = var_2.a;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-147f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(569f - global0.b))))), _wgslsmith_f_op_f32(-var_1.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, _wgslsmith_div_f32(264f, -878f), !(!global0.c), true);
    global0 = Struct_1(-598f, 524f, global0.c, !any(!(!vec4<bool>(true, global0.c.x, false, global0.c.x))));
    let var_0 = -(~(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.a), u_input.a.x)));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1591f, global0.b)))) * _wgslsmith_f_op_f32(step(1936f, 1335f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1492f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(firstTrailingBit(vec3<i32>(14459i, u_input.a.x, -14580i)), abs(vec4<u32>(u_input.b.x, 32124u, 34881u, 26090u)), global0.c.x, u_input.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(-1000f, 1620f, global0.c, true), var_0), vec4<bool>(global0.d, false, global0.d, true), false, vec4<bool>(true, global0.d, global0.c.x, global0.d))))))))), global0.c, global0.d);
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(532f, -688f, !global0.d)) * global0.a))));
    var_2 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(~reverseBits(var_0)), 14071i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, -1946f, global0.b, -302f) - vec4<f32>(global0.b, -1181f, global0.a, -1913f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-474f, -680f, -585f, -834f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1811f, -1370f, global0.a, -141f) * vec4<f32>(global0.a, 645f, -891f, global0.b))))), max(-var_0, _wgslsmith_add_i32(-32470i, 0i)) != countOneBits(1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-982f, global0.a, 313f), vec3<f32>(-1236f, global0.b, -385f))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.a, global0.b, global0.b)))))));
}

