struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(561f, 1000f), vec3<f32>(-1000f, -1442f, 1000f), 1000f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-911f, -998f) - global0.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-959f, global0.b.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(floor(-1512f)), _wgslsmith_f_op_f32(f32(-1f) * -266f), 449f), global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.x, 630f))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1176f - 1054f), _wgslsmith_f_op_f32(f32(-1f) * -469f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-724f * _wgslsmith_div_f32(var_0.c, 1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(270f, _wgslsmith_f_op_f32(var_0.a.x * var_0.b.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -291f))));
    global0 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0.b.yx))))), _wgslsmith_f_op_vec2_f32(min(var_0.b.yx, vec2<f32>(global0.a.x, -213f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)), _wgslsmith_f_op_vec3_f32(-var_0.b))), -2190f);
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(553f, global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -555f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.c)) - _wgslsmith_f_op_f32(ceil(144f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.x)))))), global0.b, _wgslsmith_div_f32(1739f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -988f) * global0.a.x), global0.c))));
    var var_1 = u_input.c.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c))) + global0.b.x);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, _wgslsmith_f_op_f32(func_3()), -1000f, _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(-global0.b.x))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b.x, 1354f, 2542f, global0.a.x))))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-348f, global0.b.x, -991f, -1218f)), vec4<f32>(global0.b.x, -613f, global0.c, 547f))), vec4<f32>(global0.b.x, -587f, 177f, _wgslsmith_f_op_f32(global0.a.x + 1000f)), vec4<bool>(true, true, true, true))))), true));
    var_0 = vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1505f) + _wgslsmith_f_op_f32(select(-522f, -1000f, true))), 766f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-2415f, -830f)), _wgslsmith_f_op_f32(ceil(-669f)))), var_0.x) - global0.b.x));
    return -461f;
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(global0.b.yx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.c, -1038f, global0.b.x), global0.b)))), vec3<f32>(global0.b.x, _wgslsmith_div_f32(1000f, global0.a.x), _wgslsmith_f_op_f32(func_2()))))), _wgslsmith_f_op_f32(f32(-1f) * -1893f));
    var var_0 = vec2<f32>(global0.b.x, global0.b.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.xx)), _wgslsmith_f_op_vec3_f32(select(global0.b, _wgslsmith_f_op_vec3_f32(max(global0.b, vec3<f32>(var_0.x, _wgslsmith_f_op_f32(select(global0.a.x, 1443f, false)), global0.c))), vec3<bool>(true, ~u_input.c.x <= _wgslsmith_div_u32(u_input.c.x, 50943u), all(vec4<bool>(true, true, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-773f)), -885f)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.zx), vec2<f32>(_wgslsmith_f_op_f32(1211f - var_1.c), _wgslsmith_f_op_f32(trunc(var_0.x))))), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_1.b.x)) + global0.a.x));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(var_1.b.xx)), global0.b, var_2.c);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(step(648f, global0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(581f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(max(620f, -781f)))))), -522f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = 20591i;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-func_1().c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - 479f) * _wgslsmith_f_op_f32(-global0.b.x)), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.c, global0.c)) * -713f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -748f), _wgslsmith_f_op_f32(657f * 557f), _wgslsmith_f_op_f32(-global0.a.x), -386f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, -1000f, global0.b.x)), vec4<f32>(global0.b.x, -1315f, global0.a.x, 1000f)))))));
    var var_2 = Struct_1(global0.b.xy, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.wxw, global0.b, false))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, -1031f, 1106f) - global0.b)))), _wgslsmith_f_op_vec3_f32(-global0.b), any(vec4<bool>(true, true, true, true)))), global0.a.x);
    global0 = func_1();
    global0 = func_1();
    var var_3 = ~abs(~(vec3<u32>(68210u, u_input.c.x, 34922u) << (~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u))));
    let var_4 = Struct_1(vec2<f32>(-985f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), var_1.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -355f)), _wgslsmith_f_op_vec3_f32(select(var_1.wyz, _wgslsmith_f_op_vec3_f32(ceil(var_2.b)), true)))), 200f);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(firstTrailingBit(vec4<u32>(var_3.x, var_3.x, var_3.x, u_input.c.x) | vec4<u32>(64412u, u_input.c.x, 125161u, 0u))), u_input.a);
}

