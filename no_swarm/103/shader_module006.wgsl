struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
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

var<private> global0: vec4<f32>;

var<private> global1: bool;

var<private> global2: vec2<f32> = vec2<f32>(217f, 472f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<f32> {
    let var_0 = arg_0;
    let var_1 = min(~select(firstTrailingBit(~vec3<i32>(u_input.c.x, u_input.c.x, -1i)), select(u_input.c.xwy, u_input.c.xxw, false), vec3<bool>(false, all(vec3<bool>(arg_0.a, var_0.a, false)), true)), -countOneBits(vec3<i32>(u_input.c.x, countOneBits(u_input.c.x), u_input.c.x)));
    global2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(349f, 423f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 110f)) + vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -699f)), global2.x))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))) - global0.x);
    var var_3 = firstLeadingBit(u_input.a.zz);
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1640f + _wgslsmith_f_op_f32(-global0.x)), -421f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-713f, global0.x) * vec2<f32>(1848f, global2.x)), vec2<f32>(global0.x, 1095f)) - vec2<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(-290f + -1000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-529f, 1380f), _wgslsmith_f_op_vec2_f32(global0.ww + vec2<f32>(global0.x, global2.x)))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), -238f), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(!arg_3.a, 0u), vec2<u32>(_wgslsmith_mod_u32(~arg_0.b, ~arg_2.b), _wgslsmith_div_u32(reverseBits(arg_0.b), arg_3.b)))));
    global1 = u_input.c.x >= u_input.c.x;
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - var_0);
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0), _wgslsmith_f_op_vec2_f32(min(global0.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(679f, global2.x)))))))));
    var var_2 = arg_2;
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.x, 1000f), _wgslsmith_f_op_f32(max(-286f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, 1000f) + _wgslsmith_f_op_f32(global2.x - 867f))))), !(!var_2.a)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(false, arg_1.b);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-450f, _wgslsmith_f_op_f32(global2.x * global0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1264f), global2.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, 1000f))))));
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(910f, -1911f)))), arg_0.x));
    var var_1 = u_input.a.x;
    let var_2 = arg_1;
    return Struct_1(all(vec3<bool>(true, true, true)), firstLeadingBit(2329u));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(718f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, -1292f)) * _wgslsmith_div_f32(-377f, global0.x)), 917f, 1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1207f, _wgslsmith_f_op_f32(-755f + arg_0), _wgslsmith_f_op_f32(func_2(Struct_1(false, u_input.b), Struct_1(true, 16780u), Struct_1(false, u_input.b), Struct_1(false, u_input.b))), _wgslsmith_f_op_f32(210f * arg_0)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 823f, global0.x, global2.x)))), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), true))), Struct_1(true, max(0u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), ~37649u))), Struct_1(true, u_input.a.x), true);
    return -244f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(168f, _wgslsmith_f_op_f32(exp2(global2.x)), global2.x, _wgslsmith_f_op_f32(global2.x + global0.x)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-971f, -1378f, global0.x, -1000f)))))), vec4<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global2.x, 1999f)))), _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(step(-954f, global2.x)))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(-831f)), _wgslsmith_f_op_f32(min(global0.x, -503f))) - global0.x)));
    global2 = _wgslsmith_div_vec2_f32(global0.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.zx - vec2<f32>(global2.x, 1488f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(184f, global0.x)))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(false, 0u), vec2<u32>(u_input.b, u_input.b))), vec2<f32>(global2.x, -194f))))));
    var var_0 = u_input.a.x;
    let var_1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-133f))))), _wgslsmith_f_op_f32(func_2(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-178f, -256f, 742f, 601f)), func_4(vec4<f32>(global0.x, -695f, global2.x, global0.x), Struct_1(false, 4294967295u), Struct_1(false, u_input.a.x), true), func_4(vec4<f32>(global0.x, -1644f, -584f, global0.x), Struct_1(true, 0u), Struct_1(false, 1u), true), true), func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-899f, -1091f, -148f, -1000f), vec4<f32>(global2.x, 995f, 631f, 1234f), false)), Struct_1(true, u_input.b), func_4(vec4<f32>(global0.x, 189f, 1000f, 2652f), Struct_1(false, u_input.b), Struct_1(false, u_input.b), true), true), func_4(vec4<f32>(918f, global2.x, -1540f, -635f), Struct_1(true, 0u), Struct_1(true, u_input.b), u_input.a.x <= 4294967295u), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-862f, 208f, -1359f, 848f) + vec4<f32>(620f, global2.x, 873f, 331f)), Struct_1(false, 1u), func_4(vec4<f32>(global2.x, global0.x, 840f, -225f), Struct_1(false, u_input.b), Struct_1(false, 4294967295u), false), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(abs(1501f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(680f * 1461f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(exp2(global2.x))))), Struct_1(true, u_input.b), Struct_1(true, ~30745u), all(!vec2<bool>(any(vec2<bool>(true, true)), true)));
    var var_2 = ((firstLeadingBit(u_input.c.x) >= ~(~(-25069i))) != any(!(!vec3<bool>(false, var_1.a, true)))) & var_1.a;
    var var_3 = all(vec2<bool>(false, global0.x == 1686f));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b);
}

