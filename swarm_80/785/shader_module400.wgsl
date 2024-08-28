struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: f32;

var<private> global2: vec2<u32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>) -> bool {
    let var_0 = u_input.a.x;
    var var_1 = !any(select(select(vec2<bool>(true, true), vec2<bool>(true, arg_1.c.a.x), select(vec2<bool>(true, arg_1.c.a.x), arg_1.b.a.xz, arg_1.b.a.x)), arg_1.c.a.yz, arg_1.c.a.zx));
    let var_2 = abs(29471u);
    var var_3 = arg_1;
    let var_4 = Struct_2(Struct_1(select(!select(var_3.b.a, vec3<bool>(true, true, true), vec3<bool>(var_3.a.a.x, var_3.c.a.x, false)), !(!var_3.a.a), select(arg_1.a.a, arg_1.a.a, arg_1.c.a.x)), _wgslsmith_f_op_vec2_f32(ceil(var_3.b.b))), arg_1.b, Struct_1(select(var_3.b.a, select(arg_1.b.a, var_3.c.a, select(arg_1.c.a, vec3<bool>(arg_1.c.a.x, arg_1.b.a.x, arg_1.b.a.x), arg_1.b.a.x)), arg_1.b.a), _wgslsmith_f_op_vec2_f32(-var_3.b.b)));
    return all(var_3.a.a);
}

fn func_2() -> vec4<f32> {
    global2 = _wgslsmith_clamp_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(u_input.a, u_input.a)) & (vec2<u32>(u_input.a.x, u_input.a.x) & vec2<u32>(u_input.b, firstLeadingBit(global2.x))), u_input.a, _wgslsmith_sub_vec2_u32(countOneBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(global2.x, u_input.b))), vec2<u32>(~u_input.b, ~global2.x >> (~29253u % 32u))));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-642f)), -1000f), vec2<f32>(_wgslsmith_f_op_f32(472f - -1345f), _wgslsmith_f_op_f32(f32(-1f) * -457f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1894f, 662f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -529f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(240f, 586f), vec2<f32>(-232f, -380f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-506f, 2558f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-813f, -1064f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(498f, 1000f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1066f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-378f, 1128f)))), true))));
    let var_1 = Struct_1(!(!vec3<bool>(true, all(vec2<bool>(false, false)), func_3(-1437f, Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<f32>(988f, var_0.x)), Struct_1(vec3<bool>(false, true, true), vec2<f32>(504f, var_0.x)), Struct_1(vec3<bool>(false, true, false), vec2<f32>(-2426f, var_0.x))), vec3<i32>(57503i, -41735i, -1i)))), vec2<f32>(1319f, _wgslsmith_f_op_f32(round(var_0.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, -2278f, _wgslsmith_f_op_f32(ceil(-314f))))));
    global2 = reverseBits(select(u_input.a, vec2<u32>(9902u, ~global2.x) & ~u_input.a, any(select(select(vec4<bool>(true, true, var_1.a.x, true), vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true)), vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), true))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, 1677f, -284f, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1879f, 999f, var_0.x, 2095f) * vec4<f32>(-1107f, var_2.x, 1008f, var_1.b.x))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, var_1.b.x, -210f)))))) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1000f, 1000f, any(vec2<bool>(var_1.a.x, true)))))), -521f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(234f - var_2.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_2())));
    let var_1 = !arg_0.a.x;
    let var_2 = _wgslsmith_sub_vec2_u32(~u_input.a, u_input.a);
    var var_3 = Struct_1(!(!arg_0.a), _wgslsmith_f_op_vec2_f32(select(arg_0.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, arg_1))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_0.b.x), _wgslsmith_f_op_vec2_f32(-var_0.zz))), (_wgslsmith_f_op_f32(ceil(arg_0.b.x)) <= arg_0.b.x) & any(arg_0.a))));
    let var_4 = _wgslsmith_f_op_vec4_f32(func_2()).x != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-763f))) * arg_1)));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1657f + var_3.b.x)))), arg_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(all(vec2<bool>(true, true)) | true, select(all(vec3<bool>(true, true, true)), true, true), !all(vec4<bool>(false, false, true, false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec3<bool>(true, true, true), vec2<f32>(-325f, 916f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(248f, 677f) * _wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-172f, 1228f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(351f, 770f), vec2<f32>(768f, 445f), vec2<bool>(false, true))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(692f, -142f))))));
    let var_1 = var_0.b.x;
    global2 = _wgslsmith_div_vec2_u32(~u_input.a, ~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, u_input.b), vec2<u32>(global2.x, global2.x))) >> (_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(~u_input.b, ~global2.x)) % vec2<u32>(32u)));
    let var_2 = u_input.a;
    var_0 = Struct_1(select(var_0.a, var_0.a, var_0.a.x), var_0.b);
    let var_3 = (abs(countOneBits(~global2.x)) != (~(~var_2.x) | (countOneBits(4294967295u) | u_input.a.x))) & false;
    var var_4 = !select(vec4<bool>(true, select(var_0.b.x == 189f, !var_3, var_3), !any(var_0.a), (var_0.a.x | true) || var_0.a.x), vec4<bool>(true, true, true, true), 0u >= ~_wgslsmith_div_u32(u_input.a.x, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(select(select(select(vec2<i32>(-1i, 12072i), vec2<i32>(53726i, 2147483647i), var_4.xy), -vec2<i32>(29276i, -27135i), var_3), vec2<i32>(select(-21756i, 19617i, var_4.x), 64094i), !select(var_0.a.yx, vec2<bool>(var_3, true), true)), select(vec2<i32>(1i, 1i), select(select(vec2<i32>(-35100i, 0i), vec2<i32>(49333i, -2147483647i), true), -vec2<i32>(409i, 0i), false), select(vec2<bool>(true, true), var_0.a.zz, var_4.yz))), 2309f, 1i, var_0.b.x);
}

