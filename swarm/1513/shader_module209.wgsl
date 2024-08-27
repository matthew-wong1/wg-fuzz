struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: array<vec4<i32>, 5>;

var<private> global2: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> vec4<bool> {
    let var_0 = global2.a;
    global2 = Struct_1(global0.x);
    global2 = Struct_1(false);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1490f))))));
    var var_2 = !global0.x;
    return select(vec4<bool>(select(all(vec4<bool>(global2.a, true, global2.a, true)), any(!global0.zz), all(!global0.xy)), true, !(all(global0.wy) != global0.x), false), select(vec4<bool>(true & any(vec4<bool>(arg_1, true, false, false)), arg_1, true, any(vec2<bool>(true, true))), !vec4<bool>(!arg_1, true, global0.x, any(global0.yyw)), select(global2.a, false, true && !global0.x)), select(select(!vec4<bool>(global0.x, arg_1, global0.x, global0.x), select(!vec4<bool>(global2.a, arg_1, false, global0.x), !vec4<bool>(true, arg_1, arg_1, false), !arg_1), false), select(!(!vec4<bool>(true, false, global2.a, false)), select(vec4<bool>(global0.x, arg_1, global2.a, true), select(vec4<bool>(global2.a, false, arg_1, global2.a), vec4<bool>(global2.a, arg_1, global2.a, arg_1), vec4<bool>(false, global2.a, global2.a, global0.x)), vec4<bool>(arg_1, global2.a, arg_1, false)), any(global0.wy)), !any(select(vec4<bool>(true, global0.x, true, global2.a), vec4<bool>(false, true, false, false), vec4<bool>(false, arg_1, true, true)))));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(true);
    var var_1 = !func_3(~(~vec2<u32>(66892u, u_input.a) & ~vec2<u32>(22161u, u_input.a)), true);
    let var_2 = Struct_1(var_0.a);
    global0 = select(!select(vec4<bool>(false, !global0.x, true, true), vec4<bool>(global0.x, any(vec3<bool>(true, global0.x, global0.x)), false | var_0.a, !var_0.a), func_3(vec2<u32>(0u, u_input.a), false)), !func_3(~(~vec2<u32>(4294967295u, u_input.a)), true), !select(vec4<bool>(var_1.x, true, true, var_2.a), !vec4<bool>(var_0.a, false, false, var_1.x), !(!vec4<bool>(true, false, var_1.x, false))));
    let var_3 = -991f;
    return var_3;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    global0 = !vec4<bool>(true, !(!arg_2.x), arg_1.a, true);
    let var_0 = _wgslsmith_f_op_f32(trunc(-1000f));
    let var_1 = global0.yyz;
    let var_2 = vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), -841f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), -767f)));
    var var_3 = true;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(166f * -742f))))))));
    var var_1 = func_1(max(vec3<u32>(_wgslsmith_div_u32(61192u, arg_1) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 31320u), vec2<u32>(59666u, arg_1)), arg_1, arg_1 | arg_1), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(arg_1, u_input.a), _wgslsmith_div_u32(1u, 32908u), 1u), vec3<u32>(61799u, ~u_input.a, ~u_input.a))), Struct_1(!global2.a), select(vec2<bool>(true, true), !(!(!vec2<bool>(global2.a, false))), global0.zw));
    global2 = Struct_1(!(func_3(vec2<u32>(0u, u_input.a) >> (vec2<u32>(arg_1, arg_1) % vec2<u32>(32u)), var_1.a).x | (func_1(vec3<u32>(0u, 1u, 1u), arg_0, vec2<bool>(false, global2.a)).a | all(vec4<bool>(false, global0.x, global0.x, false)))));
    var var_2 = arg_0;
    global2 = arg_0;
    return vec4<bool>(arg_0.a, any(vec2<bool>(true, (1196f != var_0) && global0.x)), arg_0.a, var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!(!(!vec4<bool>(global2.a, global2.a, true, true))), vec4<bool>(false, !global2.a, true, true), false);
    var var_0 = _wgslsmith_mult_vec2_i32(u_input.c.xy, u_input.c.zz);
    global0 = !(!(!select(select(vec4<bool>(true, false, global2.a, true), vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global2.a, global2.a, global0.x, true)), !vec4<bool>(true, global2.a, false, global2.a), vec4<bool>(global0.x, global0.x, global0.x, global0.x))));
    global0 = func_4(func_1(vec3<u32>(~abs(u_input.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, u_input.a)), 4294967295u), Struct_1(!any(vec4<bool>(global0.x, global0.x, global2.a, global0.x))), !(!global0.xy)), 0u);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-219f, -849f), _wgslsmith_f_op_f32(1000f + -1200f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1020f))), _wgslsmith_f_op_f32(-548f + 1f));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -164f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -407f, var_1)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(350f, 1632f, var_1) + vec3<f32>(var_1, 357f, -663f)))), func_3(vec2<u32>(u_input.a, 23389u), all(global0.wyw)).wxw));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

