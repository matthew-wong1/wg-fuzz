struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    var var_0 = false;
    let var_1 = global0.d.a;
    let var_2 = Struct_3(abs(i32(-1i) * -1i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.b.x, _wgslsmith_f_op_f32(round(global0.b.x)))) - _wgslsmith_f_op_f32(-1f)), global0.b.x, _wgslsmith_div_f32(-1768f, _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(f32(-1f) * -731f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(667f - _wgslsmith_div_f32(global0.b.x, global0.b.x)))), -1i, global0.d, !vec2<bool>(true, !select(false, global0.d.d.x, false)));
    var var_3 = var_2.a;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.b.x), global0.d.c.x))));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global0 = Struct_3(abs(-2147483647i), global0.b, -16638i, Struct_1(_wgslsmith_sub_vec2_u32(~global0.d.a >> (vec2<u32>(u_input.a, 3781u) % vec2<u32>(32u)), global0.d.a), -700f, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(global0.b.x - 700f))), -1082f, global0.d.c.x), select(vec4<bool>(global0.b.x < 870f, -1292f != global0.b.x, !arg_0.x, arg_0.x), select(!global0.d.d, global0.d.d, global0.d.d.x), global0.d.d)), arg_0.xy);
    let var_0 = Struct_2(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.a.x, global0.d.a.x, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, 52444u), vec3<u32>(global0.d.a.x, global0.d.a.x, 18106u)))) ^ u_input.a, 1u == (select(~global0.d.a.x, ~0u, arg_0.x | true) | u_input.a));
    var var_1 = 2959u;
    var var_2 = _wgslsmith_clamp_i32(global0.c, ~(firstTrailingBit(_wgslsmith_add_i32(u_input.b, global0.a)) ^ _wgslsmith_clamp_i32(2147483647i, -global0.c, i32(-1i) * -60601i)), firstTrailingBit(~u_input.b));
    var var_3 = Struct_3(max(global0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(0i), abs(2147483647i)), ~vec2<i32>(-28318i, u_input.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(global0.b.x + -1000f)), 1000f, -1716f)), i32(-1i) * -19297i, Struct_1(vec2<u32>(4294967295u, global0.d.a.x) | vec2<u32>(8401u, 65588u), global0.b.x, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.d.b))), global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -814f)), select(select(!vec4<bool>(var_0.b, arg_0.x, true, false), select(vec4<bool>(true, var_0.b, global0.e.x, true), global0.d.d, vec4<bool>(var_0.b, global0.e.x, var_0.b, true)), arg_0.x), select(global0.d.d, !global0.d.d, var_0.b), true)), !arg_0.xy);
    return var_3.d;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: f32) -> bool {
    var var_0 = 22063u;
    var_0 = ~40872u & _wgslsmith_mult_u32(global0.d.a.x, ~(~min(31227u, 0u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-466f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(362f + 1295f)))) - -518f));
    var var_2 = Struct_2(29729u, false);
    let var_3 = func_2(!(!global0.d.d.zwz));
    return var_3.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(867f, _wgslsmith_f_op_f32(-global0.b.x), !func_1(vec2<f32>(global0.b.x, global0.b.x), 2147483647i, 446f))), global0.d.b, true)));
    var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * 103f), _wgslsmith_f_op_f32(-var_0.x)), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + 368f))))));
}

