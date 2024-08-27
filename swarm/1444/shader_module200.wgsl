struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: Struct_2) -> bool {
    let var_0 = arg_0.x;
    var var_1 = Struct_1(_wgslsmith_div_u32(abs(~1u), var_0) ^ 1u);
    var_1 = Struct_1(51269u);
    let var_2 = arg_1.yx;
    var_1 = Struct_1(u_input.a);
    return any(vec3<bool>(true, _wgslsmith_f_op_f32(-arg_3.a) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.a * 319f), _wgslsmith_f_op_f32(floor(arg_3.a)))), !arg_1.x));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-130f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1238f, -171f)), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-341f * 1411f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(-718f, -1181f), 1180f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(357f, 1636f))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_0.x), vec2<f32>(2197f, var_0.x))) - vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 605f)))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f) - 1401f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + var_0.x), -284f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)) * var_0.x), var_0.x)));
    return vec2<f32>(-1899f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.x, 660f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -226f))))));
}

fn func_1() -> Struct_1 {
    let var_0 = !vec4<bool>(func_2(vec2<u32>(min(4294967295u, 4294967295u), _wgslsmith_div_u32(0u, 16855u)), vec3<bool>(true, true, true), vec2<bool>(true, true), Struct_2(-506f)), true, !select(true, true, true), !(1i < _wgslsmith_dot_vec3_i32(vec3<i32>(16580i, u_input.b.x, u_input.b.x), u_input.b.zww)));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3(var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(999f, -630f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-723f, -400f) - 736f), 1f)));
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_mod_vec3_u32(~vec3<u32>(abs(var_2 ^ u_input.a), u_input.a, ~(u_input.a | 11514u)), abs(min(vec3<u32>(1u, 1u, u_input.a), ~vec3<u32>(4294967295u, u_input.a, var_2)) ^ vec3<u32>(4294967295u, 81439u, _wgslsmith_mult_u32(var_2, u_input.a))));
    var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x * 1133f))), _wgslsmith_f_op_f32(-559f + -202f)), vec2<f32>(1f, var_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-513f, var_1.x) - _wgslsmith_f_op_vec2_f32(func_3(var_0.x)))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(723f, -491f)))), any(var_0.wwy)));
    return Struct_1(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a);
    var_0 = func_1();
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(195f, 1000f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-406f + -830f)), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(825f + -414f))), _wgslsmith_f_op_f32(f32(-1f) * -418f), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1150f, _wgslsmith_f_op_f32(ceil(664f)))));
    var_0 = func_1();
    var_0 = func_1();
    var var_2 = Struct_1(17747u);
    let var_3 = 496f;
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.b.x, 47213i, -22992i), min(vec4<i32>(1i, u_input.b.x, -36498i, -20694i), vec4<i32>(-4108i, -1i, u_input.b.x, -24621i)))), firstTrailingBit(reverseBits(_wgslsmith_add_vec4_i32(u_input.b, u_input.b))), vec4<bool>(all(vec4<bool>(true, false, true, true)), var_3 <= _wgslsmith_div_f32(var_3, var_1.x), false, true)));
}

