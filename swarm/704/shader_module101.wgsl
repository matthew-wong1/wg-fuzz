struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(154f, _wgslsmith_f_op_f32(f32(-1f) * -712f))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(388f * -108f)) + -686f) - 647f));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -185f);
    var var_1 = u_input.a.x ^ 7222u;
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-261f, -166f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1250f, -120f)))), 1f), _wgslsmith_f_op_f32(ceil(-282f))));
    return -2215f;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> StorageBuffer {
    let var_0 = Struct_1(~1i, true, true);
    let var_1 = !var_0.c;
    var var_2 = 202f;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(503f + 1113f), -1884f, var_0.c)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), 436f)));
    let var_3 = true;
    return StorageBuffer(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~vec2<i32>(-15796i, _wgslsmith_clamp_i32(44785i, -3413i, 1i)), 1u);
}

