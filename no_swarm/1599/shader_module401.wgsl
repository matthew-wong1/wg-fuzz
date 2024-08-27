struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(1u, vec2<i32>(0i, -33089i), vec3<bool>(false, true, true), 1461f);

var<private> global2: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> Struct_2 {
    var var_0 = u_input.b;
    return Struct_2(vec3<bool>(all(vec3<bool>(any(vec3<bool>(arg_1, false, arg_1)), true, global1.c.x)), true, !global0.b), true, vec3<bool>(false, false, any(select(select(vec4<bool>(true, global0.d, false, false), vec4<bool>(global1.c.x, arg_0.x, global0.d, global2.a.x), vec4<bool>(global1.c.x, arg_0.x, true, false)), !vec4<bool>(global0.a.x, global0.c.x, arg_0.x, false), vec4<bool>(false, false, false, true)))), true);
}

fn func_3() -> i32 {
    let var_0 = Struct_1(48635u >> (u_input.c % 32u), vec2<i32>(u_input.e.x, -firstLeadingBit(17894i << (global1.a % 32u))), !func_1(select(select(global1.c.zy, vec2<bool>(global2.d, global2.c.x), global0.c.x), vec2<bool>(global1.c.x, global1.c.x), !vec2<bool>(false, global1.c.x)), false).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d), 1835f))) - _wgslsmith_f_op_f32(-334f + 375f)));
    global2 = Struct_2(var_0.c, global0.d, vec3<bool>(var_0.d > var_0.d, _wgslsmith_mod_u32(~global1.a, var_0.a) != ~0u, false), true);
    global1 = Struct_1(4294967295u, min(countOneBits(vec2<i32>(-1i) * -u_input.a), ~u_input.a), var_0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(257f - _wgslsmith_f_op_f32(-var_0.d)))))));
    global0 = Struct_2(select(func_1(global2.c.xy, true).c, !vec3<bool>(true, any(vec4<bool>(global1.c.x, true, false, global0.a.x)), true), global0.c), true, global1.c, reverseBits(global1.a) != var_0.a);
    global1 = var_0;
    return u_input.a.x;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(firstTrailingBit(1u), u_input.a, vec3<bool>(false, false, global2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(1f - 1059f)))));
    global1 = var_0;
    var var_1 = vec3<i32>(-func_3(), global1.b.x, global1.b.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.wy) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.d, 1540f)) * _wgslsmith_f_op_f32(-174f * 439f)), _wgslsmith_f_op_f32(f32(-1f) * -811f)))));
    global2 = Struct_2(vec3<bool>(global0.c.x, var_0.c.x, global1.b.x == abs(18269i)), global1.c.x, vec3<bool>(true, func_1(vec2<bool>(true, true), var_0.c.x).c.x, true), !all(select(!var_0.c.yx, func_1(vec2<bool>(global1.c.x, var_0.c.x), global1.c.x).a.yx, select(global0.c.zx, vec2<bool>(false, global0.a.x), false))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(select(vec2<bool>(global1.c.x, any(global2.a.yx) && global1.c.x), select(global0.a.xy, global1.c.yy, global2.c.yx), !all(!vec3<bool>(global0.b, global1.c.x, global0.d))), !global0.d);
    var var_0 = 4294967295u;
    var var_1 = func_2(_wgslsmith_mult_u32(_wgslsmith_mod_u32(countOneBits(0u), _wgslsmith_mod_u32(93922u, global1.a)), u_input.d) << (4266u % 32u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d, -1901f) - vec2<f32>(-285f, 1126f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, global1.d), vec2<f32>(628f, global1.d))))))), vec2<u32>(1u, 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-177f, global1.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.d * global1.d))), _wgslsmith_div_f32(758f, _wgslsmith_f_op_f32(global1.d - global1.d)))));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.d, -377f))), vec2<f32>(var_1.d, var_1.d));
    let var_3 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-324f + -613f) + _wgslsmith_f_op_f32(766f + -228f)), global1.d)), ~vec4<u32>(var_1.a, global1.a, global1.a, global1.a));
}

