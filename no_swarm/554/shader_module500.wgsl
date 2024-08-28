struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_3(~(vec4<i32>(~u_input.d, u_input.e, -57736i, ~(-11910i)) & reverseBits(vec4<i32>(u_input.d, u_input.d, 2147483647i, -8371i))));
    let var_1 = Struct_2(Struct_1(select(~(~arg_0), vec3<u32>(u_input.c.x, _wgslsmith_sub_u32(33474u, arg_0.x), 1u), vec3<bool>(true, true, true))), -468f, true);
    let var_2 = Struct_2(Struct_1(~firstTrailingBit(vec3<u32>(4294967295u, 35411u, u_input.a) ^ vec3<u32>(arg_0.x, 31u, 36554u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + _wgslsmith_f_op_f32(3175f - var_1.b)) - var_1.b), var_1.b != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1732f)) + _wgslsmith_f_op_f32(f32(-1f) * -789f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b + 692f), var_1.b)));
    let var_3 = var_2.b;
    let var_4 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_div_f32(-292f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + var_2.b) + 2359f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(353f))))), -957f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-600f)), -994f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-154f)))));
    return 1759f;
}

fn func_2() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(885f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(496f, 784f)))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c.zxy))));
    return _wgslsmith_mult_vec3_u32(u_input.c.zzx, _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c.wzw, u_input.c.zwy), vec3<u32>(1u, ~abs(0u), 67305u)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = -vec2<i32>(u_input.e, u_input.d);
    let var_1 = Struct_1(_wgslsmith_add_vec3_u32(u_input.c.wyx, func_2()));
    var_0 = firstLeadingBit(~_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, 2147483647i), vec2<i32>(0i << (var_1.a.x % 32u), var_0.x)));
    var var_2 = all(!vec2<bool>(false, all(vec3<bool>(true, true, true))));
    var_2 = true;
    return Struct_1(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1595f, 657f))) - vec2<f32>(1f, 1f)) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(666f)), _wgslsmith_f_op_f32(589f - 556f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1602f, -1224f) - vec2<f32>(748f, 287f))))));
    let var_1 = _wgslsmith_f_op_f32(func_3(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.a.x, u_input.c.x, u_input.c.x) & u_input.c, u_input.c), abs(var_0.a.x) >> (u_input.c.x % 32u), 0u)));
    var var_2 = Struct_2(Struct_1(var_0.a | ~u_input.c.wzx), var_1, !(_wgslsmith_f_op_f32(step(1693f, var_1)) < _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(-var_1)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-378f, -309f, var_2.b), vec3<f32>(-1005f, var_2.b, var_2.b))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1493f, var_1, var_2.b), vec3<f32>(var_1, var_2.b, 1000f)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, var_1, var_2.b))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_2.b, -1181f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, -725f, var_1))))))), !vec3<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(var_2.c, true), vec2<bool>(var_2.c, true))), any(vec2<bool>(true, true)))));
    var var_4 = abs(45201u);
    var_4 = u_input.a;
    var_4 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, 472f), vec2<f32>(-295f, -1103f)) + vec2<f32>(var_2.b, 341f))).a.x, _wgslsmith_mult_u32(1885u, (var_0.a.x | var_2.a.a.x) | var_2.a.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, -128f) + vec2<f32>(-821f, var_3.x))))))), ~vec3<u32>(var_0.a.x, countOneBits(func_2().x), var_0.a.x));
}

