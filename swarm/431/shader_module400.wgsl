struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: bool) -> vec2<bool> {
    global0 = Struct_1(u_input.c.x);
    global0 = Struct_1(~abs(-35471i));
    global0 = Struct_1(2147483647i);
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-415f, 2153f), vec2<f32>(483f, 1047f)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, -174f, 778f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(862f)), _wgslsmith_f_op_f32(ceil(865f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), select(select(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, true), arg_1), vec2<bool>(true, true), !all(vec2<bool>(false, arg_1))), vec2<bool>(false, ~u_input.a > ~0u), vec2<bool>(-2147483647i >= global0.a, (arg_1 || arg_1) & !arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-319f, -1868f, _wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1782f, var_0.b.x, _wgslsmith_f_op_f32(ceil(var_0.d)), _wgslsmith_f_op_f32(-var_0.a.x)))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(437f)) * var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(399f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)) - -552f)));
    return select(select(!vec2<bool>(var_0.c.x, true), select(!select(var_0.c, var_0.c, var_0.c), var_0.c, any(!vec4<bool>(true, arg_1, true, var_0.c.x))), select(select(true && arg_1, true, -177f < var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -761f) <= _wgslsmith_f_op_f32(-357f + var_1.x), ~arg_0 != (u_input.b.x & arg_0))), !(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(var_0.c.x, false), arg_0 < 1u)), !vec2<bool>(arg_1, arg_1));
}

fn func_2() -> Struct_2 {
    global0 = Struct_1(-1i);
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1548f - _wgslsmith_f_op_f32(round(526f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * _wgslsmith_f_op_f32(-205f + -451f)), -339f, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(555f, _wgslsmith_f_op_f32(trunc(-801f)), _wgslsmith_f_op_f32(-1287f + 170f)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, false, false, false)))), !(!func_3(u_input.a, true)), !select(vec2<bool>(true, false), vec2<bool>(true, true), func_3(u_input.a, false))), 594f);
}

fn func_1() -> i32 {
    global0 = Struct_1(_wgslsmith_sub_i32(-global0.a, 1i));
    let var_0 = func_2();
    var var_1 = min(~(~(~(~u_input.a))), ~u_input.e.x);
    global0 = Struct_1(_wgslsmith_mult_i32(~(u_input.d.x ^ global0.a), ~u_input.c.x) >> (u_input.a % 32u));
    let var_2 = var_0;
    return select(max(1i, _wgslsmith_div_i32(~_wgslsmith_div_i32(-1i, global0.a), countOneBits(12209i))), -(i32(-1i) * -14871i), !(true | !var_0.c.x) != false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(func_1(), countOneBits(46459i));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-852f * -1236f) + _wgslsmith_f_op_f32(f32(-1f) * -1316f)), _wgslsmith_f_op_f32(select(-123f, 358f, true)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1238f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -178f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(445f - 362f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(172f, -1411f)), _wgslsmith_f_op_f32(select(492f, -489f, true)), true))), vec2<bool>(!all(vec2<bool>(true, true)), true), 1f);
    let var_2 = reverseBits(~select(vec4<u32>(max(7511u, u_input.e.x), u_input.b.x, _wgslsmith_sub_u32(u_input.a, u_input.a), u_input.b.x), vec4<u32>(u_input.a, ~u_input.e.x, u_input.a >> (u_input.b.x % 32u), ~u_input.a), var_1.c.x && any(vec3<bool>(var_1.c.x, false, false))));
    global0 = Struct_1(-global0.a);
    var var_3 = !(all(select(vec3<bool>(false, true, var_1.c.x), vec3<bool>(var_1.c.x, true, true), false)) || any(select(vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, false), vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x), vec4<bool>(true, false, var_1.c.x, true)))) || (func_2().c.x & var_1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b.x, -173f, 483f, var_1.d))) * vec4<f32>(107f, var_1.d, var_1.b.x, 1248f))))));
}

