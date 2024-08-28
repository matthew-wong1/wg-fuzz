struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: array<i32, 14> = array<i32, 14>(-9190i, -65973i, 44242i, 49048i, 36330i, 1i, 15228i, -20242i, 22800i, 0i, 1017i, -10497i, -25570i, 4228i);

var<private> global3: vec3<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    var var_0 = select(vec2<bool>(true, true), select(select(vec2<bool>(true, any(vec2<bool>(true, false))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), _wgslsmith_f_op_f32(398f * arg_1) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * -465f) + 245f)), all(vec4<bool>(true, any(vec3<bool>(true, true, false)), arg_1 < global3.x, true)) == (_wgslsmith_f_op_f32(select(1386f, -1693f, true)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.x)))));
    var var_1 = Struct_2(-43985i);
    let var_2 = !var_0.x;
    var_1 = Struct_2(global1.a);
    var var_3 = !(!select(!vec4<bool>(var_0.x, var_2, true, var_0.x), vec4<bool>(true, select(var_2, true, false), all(vec4<bool>(var_0.x, false, var_0.x, var_2)), var_0.x), vec4<bool>(true, !var_2, !var_0.x, true)));
    return ~min(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(global2[_wgslsmith_index_u32(firstLeadingBit(164188u), 14u)], abs(39148i), select(2147483647i, global2[_wgslsmith_index_u32(arg_0, 14u)], true))), -31003i);
}

fn func_2() -> i32 {
    let var_0 = ~u_input.a.x;
    let var_1 = 0u;
    var var_2 = ~(~var_0);
    global3 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(global1.b)), 583f);
    global3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.x, global1.b, 1032f), vec3<f32>(global3.x, 1903f, 573f))), _wgslsmith_div_vec3_f32(vec3<f32>(-2132f, 158f, global1.b), vec3<f32>(108f, global3.x, 1436f)))))), vec3<f32>(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_div_f32(global1.b, 1338f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + 154f)), _wgslsmith_f_op_f32(f32(-1f) * -1026f)));
    return func_3(~min(var_1, ~firstTrailingBit(1u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f) - global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + 909f))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec4<f32> {
    var var_0 = ~1u;
    var var_1 = Struct_1(func_2(), global1.b);
    var_0 = ~(~arg_3);
    global1 = Struct_1(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(~global2[_wgslsmith_index_u32(arg_3, 14u)], ~(-26969i)), ~abs(1i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -228f) - arg_2.b))))));
    let var_2 = arg_1;
    return vec4<f32>(1793f, arg_2.b, -449f, 1096f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(firstLeadingBit(~1u), Struct_2(2147483647i), Struct_1(-1i, _wgslsmith_f_op_f32(f32(-1f) * -1501f)), u_input.a.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(reverseBits(u_input.d.x), Struct_2(1i), Struct_1(global1.a, global3.x), ~u_input.a.x))))));
    global0 = firstTrailingBit(global2[_wgslsmith_index_u32(~40333u, 14u)]);
    global1 = Struct_1(2147483647i, _wgslsmith_f_op_f32(-820f + 1000f));
    var var_2 = Struct_1(u_input.e | -abs(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c)), -267f);
    let var_3 = _wgslsmith_f_op_vec3_f32(var_1.wyx * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -871f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2082f, _wgslsmith_f_op_f32(sign(-363f)), false)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.x)) + var_1.x)), var_2.b));
    let var_4 = Struct_1(0i, var_1.x);
    var_2 = Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(35373i, var_4.a, 2147483647i), u_input.c) << (4294967295u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_3.x)))) - 1891f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.b));
}

