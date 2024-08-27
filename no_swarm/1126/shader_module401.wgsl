struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(u_input.a);
    var_0 = Struct_1(u_input.a << (u_input.a % 32u));
    var_0 = Struct_1(21029u);
    var_0 = Struct_1(var_0.a);
    var var_1 = Struct_1(~firstTrailingBit(u_input.a));
    return Struct_1(u_input.a);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    var var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), true))), vec2<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))))), vec2<bool>(true, true), vec2<bool>(!(!any(vec2<bool>(false, false))), false));
    var var_1 = ~1u;
    var_0 = !vec2<bool>(true, var_0.x);
    var_0 = !select(vec2<bool>(var_0.x || (var_0.x | var_0.x), false), vec2<bool>(~(-18806i) > _wgslsmith_clamp_i32(arg_1.x, 23161i, 12728i), false), vec2<bool>(true, any(vec2<bool>(false, var_0.x))));
    var var_2 = Struct_2(max(~u_input.a << (u_input.a % 32u), 1u) ^ ~35173u);
    return abs(-2147483647i);
}

fn func_1(arg_0: i32) -> StorageBuffer {
    var var_0 = _wgslsmith_clamp_i32(select(arg_0, -2147483647i, select(any(vec2<bool>(true, false)), true, true)), _wgslsmith_sub_i32(func_3(func_2(), vec2<i32>(1i, 1i)), arg_0) & _wgslsmith_div_i32(-5391i, arg_0), -12001i);
    var_0 = -1i;
    var var_1 = vec3<u32>(1u & _wgslsmith_sub_u32(_wgslsmith_add_u32(~u_input.a, min(1u, u_input.a)), 0u), u_input.a, 1u);
    let var_2 = true;
    let var_3 = func_2();
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -266f), _wgslsmith_f_op_f32(f32(-1f) * -829f)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1821f, -799f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1421f, -743f), vec2<f32>(1264f, -369f)))))) + vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(322f, -607f)), -1202f)), -273f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.a);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mod_i32(-89417i, -abs(15011i)) >> (u_input.a % 32u));
}

