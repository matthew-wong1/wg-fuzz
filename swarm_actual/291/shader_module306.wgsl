struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    global0 = Struct_1(!(arg_1.x <= arg_1.x));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) * 1362f)));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-763f * -1108f) > _wgslsmith_f_op_f32(func_3(select(global0.a, false, false) == (u_input.a.x >= u_input.a.x), vec4<i32>(-61295i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), ~(-38201i), _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), Struct_1(false))));
    global0 = Struct_1(all(!vec4<bool>(true, false, any(vec2<bool>(global0.a, global0.a)), 35237u >= u_input.b.x)));
    global0 = Struct_1(all(select(select(!vec4<bool>(var_0.a, global0.a, false, var_0.a), select(vec4<bool>(false, true, var_0.a, false), vec4<bool>(global0.a, true, global0.a, global0.a), vec4<bool>(true, global0.a, var_0.a, true)), u_input.b.x > 451u), vec4<bool>(28028u != u_input.b.x, all(vec3<bool>(false, global0.a, true)), true, false), vec4<bool>(var_0.a, all(vec3<bool>(var_0.a, false, false)), true, var_0.a && var_0.a))));
    var var_1 = !(1u > u_input.b.x);
    global0 = Struct_1(!all(select(select(vec3<bool>(false, var_0.a, global0.a), vec3<bool>(false, var_0.a, false), vec3<bool>(true, var_0.a, false)), !vec3<bool>(true, global0.a, true), true)));
    return ~(~(abs(u_input.a.x | 16923i) | reverseBits(max(37169i, 51613i))));
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_1(abs(-10583i) > countOneBits(~func_2()));
    global0 = Struct_1(false && !(!all(vec2<bool>(var_0.a, true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-591f, 148f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -104f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-142f, -1778f)), -1000f, var_0.a)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(409f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -155f)), -539f))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1044f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1833f))), 1f)));
    let var_2 = Struct_1(all(vec2<bool>(any(!vec3<bool>(true, global0.a, var_0.a)), any(!vec2<bool>(var_0.a, var_0.a)))));
    return vec4<u32>(~55204u, 0u, ~4294967295u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    let var_1 = 1319f;
    global0 = Struct_1(global0.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_f_op_f32(abs(var_1))), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1, 180f)) * var_1)), -148f)));
    let var_3 = ~(~select(func_1(), vec4<u32>(14030u, 8413u, u_input.b.x, 3466u), !global0.a)) & vec4<u32>(~(~(u_input.b.x & 28786u)), u_input.b.x, 0u, func_1().x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b.x), _wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(-var_2.x))), 0u, ~1u, var_2.x);
}

