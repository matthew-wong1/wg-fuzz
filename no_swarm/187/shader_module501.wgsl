struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> f32 {
    let var_0 = ~4294967295u;
    return arg_1;
}

fn func_3() -> vec4<bool> {
    global0 = !vec4<bool>(false, true, global0.x, _wgslsmith_div_f32(1510f, _wgslsmith_f_op_f32(sign(-661f))) <= 846f);
    var var_0 = 1u;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-217f, 995f))), _wgslsmith_f_op_f32(func_1(reverseBits(_wgslsmith_div_vec2_i32(u_input.d.xw, vec2<i32>(u_input.b, u_input.c.x))), 806f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2578f, -1000f), vec2<f32>(1501f, 230f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 774f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1209f, 377f)), u_input.d.x == u_input.b)))), 1u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-677f, 180f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(abs(u_input.a.zz), _wgslsmith_f_op_f32(ceil(446f))))))));
    var var_2 = _wgslsmith_f_op_f32(sign(var_1.a.a));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(func_1(firstLeadingBit(-vec2<i32>(u_input.a.x, u_input.b)), -875f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.a, var_1.a.b)))))));
    return !select(!select(vec4<bool>(global0.x, global0.x, false, global0.x), !vec4<bool>(false, true, false, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(true, true, true, global0.x))), vec4<bool>(global0.x, global0.x, global0.x, !all(vec2<bool>(false, global0.x))), vec4<bool>(true, any(global0.wz), global0.x & global0.x, global0.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> bool {
    global0 = !select(select(select(select(vec4<bool>(false, true, false, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), false), !vec4<bool>(global0.x, true, false, true), func_3()), vec4<bool>(false, all(vec2<bool>(false, false)), !global0.x, func_3().x), vec4<bool>(global0.x, global0.x, global0.x, true)), !select(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), global0.x), vec4<bool>(true, true, global0.x, false), false), vec4<bool>(global0.x, !(-1628f < arg_2.b.x), true, true));
    let var_0 = arg_2.c >= 0u;
    var var_1 = arg_2.c;
    return !global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(1615f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -644f)) - _wgslsmith_f_op_f32(sign(-751f)))), 1f);
    global0 = select(vec4<bool>(!(all(global0.yxz) & true), true, global0.x, !all(select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, false, true, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), vec4<bool>(_wgslsmith_f_op_f32(min(-1111f, _wgslsmith_f_op_f32(f32(-1f) * -375f))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.b, var_0.b)), var_0.b), global0.x & false, abs(u_input.d.x) > reverseBits(u_input.a.x), any(vec2<bool>(global0.x, true))), global0.x);
    let var_1 = Struct_1(223f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(reverseBits(vec2<i32>(u_input.d.x, u_input.b)), var_0.b)))));
    global0 = select(select(!select(!vec4<bool>(true, false, global0.x, false), !vec4<bool>(false, global0.x, true, global0.x), false), vec4<bool>(!global0.x != global0.x, false & global0.x, !func_2(vec2<f32>(var_1.b, -841f), var_0.b, Struct_2(Struct_1(-1000f, var_1.b), vec2<f32>(515f, -904f), 62414u, Struct_1(var_1.b, var_0.a)), -26877i), all(global0.zwx)), false), !(!select(!vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, true), any(vec3<bool>(global0.x, true, global0.x)))), select(!vec4<bool>(var_0.b > 777f, true, true, any(global0.yx)), !func_3(), !(!global0.x) || !all(global0.ww)));
    var var_2 = any(global0.xxw);
    let var_3 = min(abs(u_input.c.x), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(firstLeadingBit(countOneBits(firstLeadingBit(u_input.d))), vec4<i32>(u_input.d.x, i32(-1i) * -26338i, -1i, -var_3) & u_input.d), vec3<f32>(var_1.b, var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_f32(round(var_0.b)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-390f, _wgslsmith_f_op_f32(max(508f, _wgslsmith_f_op_f32(ceil(-1120f)))))));
}

