struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(0u, 1u, 4294967295u), 3341u);

var<private> global1: bool;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(global0.a, _wgslsmith_div_u32(reverseBits(4294967295u), 4294967295u));
    let var_1 = Struct_2(0u);
    var var_2 = ~(~(global0.a >> (global0.a % vec3<u32>(32u))));
    let var_3 = Struct_1(select(vec3<u32>(select(global0.a.x | var_0.a.x, var_2.x | 7301u, true), ~1u, ~abs(var_2.x)), ~vec3<u32>(~19604u, var_1.a << (4294967295u % 32u), ~1u), true), var_1.a);
    global0 = Struct_1(vec3<u32>(~(global0.a.x << (~17370u % 32u)), 4294967295u, ~(~_wgslsmith_sub_u32(var_2.x, var_2.x))), ~22529u);
    return 8746u;
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_2(func_3());
    return Struct_2(u_input.a);
}

fn func_1() -> Struct_2 {
    global1 = !(145f >= _wgslsmith_f_op_f32(-213f + _wgslsmith_f_op_f32(sign(1f))));
    var var_0 = ~countOneBits(1u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1427f, 1056f, -524f, -208f))) - vec4<f32>(272f, _wgslsmith_f_op_f32(ceil(1956f)), -1611f, _wgslsmith_div_f32(-393f, 349f)))));
    let var_2 = func_2(true || all(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), false)), ~(~global0.b));
    var var_3 = max(~global0.a.yy, vec2<u32>(_wgslsmith_div_u32(countOneBits(global0.b), 21672u & var_2.a), global0.a.x)) << ((~max(global0.a.zx, ~vec2<u32>(u_input.a, var_2.a)) | _wgslsmith_clamp_vec2_u32(~vec2<u32>(global0.a.x, 1u), vec2<u32>(_wgslsmith_sub_u32(49191u, var_2.a), 94248u), _wgslsmith_mod_vec2_u32(~global0.a.yy, vec2<u32>(u_input.a, 4294967295u) & global0.a.yx))) % vec2<u32>(32u));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(66115u);
    var var_1 = Struct_2(4294967295u);
    let var_2 = Struct_2(~abs(968u));
    var var_3 = -19921i;
    let var_4 = -1210f;
    var_0 = var_2;
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~global0.a.zz, ~(~(~vec4<u32>(4294967295u, global0.a.x, global0.b, 4294967295u))), ~0u, -34175i);
}

