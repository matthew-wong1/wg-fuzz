struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = vec4<f32>(883f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c.a))))), _wgslsmith_f_op_f32(-global0.c.d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.a * 395f) - _wgslsmith_div_f32(-1566f, 611f)))))));
    global0 = Struct_2(vec3<bool>(global0.a.x, true, true), -(-global0.b & 9i), global0.c);
    let var_1 = Struct_2(select(!select(vec3<bool>(false, true, true), vec3<bool>(global0.a.x, false, global0.a.x), select(vec3<bool>(global0.a.x, global0.a.x, true), global0.a, true)), !global0.a, vec3<bool>(var_0.x > -1758f, select(any(vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x)), false, any(vec2<bool>(global0.a.x, false))), select(global0.a.x, global0.a.x, global0.a.x))), 1i, global0.c);
    global1 = u_input.a.x;
    var var_2 = var_1;
    return 1794f;
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = Struct_2(global0.a, 29633i, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - global0.c.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c.a)))), global0.c.b, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, u_input.b), 24261u), ~1u, u_input.b, u_input.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -884f))))));
    var var_1 = -566f;
    global0 = Struct_2(vec3<bool>(24061u > global0.c.b.x, true, true), global0.b, var_0.c);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0.b)) + _wgslsmith_f_op_f32(-245f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, -1548f, global0.a.x)), -627f))), vec2<u32>(19001u, abs(var_0.c.b.x)), var_0.c.c, 1051f);
    var_1 = _wgslsmith_f_op_f32(628f + 1f);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(760f))));
}

fn func_1() -> Struct_2 {
    global1 = u_input.a.x;
    let var_0 = vec3<f32>(global0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1i > u_input.a.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(firstLeadingBit(firstLeadingBit(-32921i)))), _wgslsmith_f_op_f32(global0.c.d - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(401f))))))));
    let var_1 = vec2<i32>(-2147483647i, 2147483647i);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global0.c.d)))))), global0.c.b, vec4<u32>(~u_input.b, min(u_input.b, select(_wgslsmith_div_u32(15632u, u_input.b), _wgslsmith_div_u32(global0.c.b.x, global0.c.b.x), select(global0.a.x, true, global0.a.x))), ~abs(global0.c.c.x) >> (0u % 32u), 20617u), _wgslsmith_f_op_f32(112f - global0.c.d));
    var var_3 = Struct_2(global0.a, global0.b >> (~firstTrailingBit(4294967295u) % 32u), global0.c);
    return Struct_2(!var_3.a, 28162i, global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.zz;
    let var_1 = func_1();
    var var_2 = func_1().c;
    var var_3 = var_2.a;
    let var_4 = ~1u;
    let var_5 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(abs((vec4<u32>(35200u, var_1.c.c.x, 1u, 0u) | vec4<u32>(81632u, var_2.b.x, 28907u, 1u)) ^ select(var_2.c, vec4<u32>(u_input.b, var_2.c.x, 45785u, var_4), vec4<bool>(var_1.a.x, true, false, false))), var_5.c), 19152u, i32(-1i) * -26853i);
}

