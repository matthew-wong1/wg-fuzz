struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: vec4<f32> = vec4<f32>(-1000f, -681f, -575f, -194f);

var<private> global2: vec3<f32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    let var_0 = -vec2<i32>(firstLeadingBit(21732i), max(u_input.d, u_input.c.x));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2115f + global2.x), _wgslsmith_div_f32(global1.x, global2.x))), 799f)))), -1104f, -1096f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-405f - _wgslsmith_f_op_f32(min(556f, global1.x)))) + -442f));
    global1 = vec4<f32>(_wgslsmith_div_f32(global1.x, var_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-492f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + 1376f), global1.x))))), 140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(496f))));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1f * -812f), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3759f - global1.x))))));
    var var_2 = Struct_2(~2147483647i);
    return abs(u_input.a) != u_input.b.x;
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.wzz));
    let var_1 = Struct_1(u_input.d, reverseBits(max(~(~(-2147483647i)), reverseBits(_wgslsmith_div_i32(u_input.d, u_input.d)))));
    let var_2 = 22181i;
    var_0 = _wgslsmith_f_op_vec3_f32(global1.yyw * vec3<f32>(-957f, _wgslsmith_f_op_f32(select(-443f, -1000f, func_3())), var_0.x));
    global2 = global1.yyx;
    return !(true || ((any(vec2<bool>(arg_0, arg_0)) || false) || true));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<f32>) -> bool {
    let var_0 = vec4<bool>(arg_1 == 441f, any(vec2<bool>(false, func_2(true))) || (func_2(all(vec2<bool>(false, true))) || false), all(vec4<bool>(true, 676f >= arg_1, any(vec3<bool>(true, false, false)), false)) & (4294967295u < ~abs(u_input.b.x)), func_3());
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1744f - -1211f) * global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, -434f)) - _wgslsmith_f_op_f32(max(arg_2.x, 1280f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(-global1.x))), 134f, global1.x));
    var var_1 = arg_2.x;
    global0 = array<Struct_2, 1>();
    global0 = array<Struct_2, 1>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.x, -1482f), -1125f)), !(var_0.x & false))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.yxw;
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -589f, 1000f)))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))), global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1856f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1157f, global2.x, 356f))))));
    global1 = vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1916f + 655f))), _wgslsmith_f_op_f32(step(global1.x, -132f)), func_1(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x), var_0.x, global1.wwx) || false))), -827f, _wgslsmith_f_op_f32(-var_0.x));
    let var_1 = Struct_2(i32(-1i) * -(~(~(-32956i))));
    global0 = array<Struct_2, 1>();
    var var_2 = u_input.b.x;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(-139f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(577f, 930f, all(vec2<bool>(false, true)))) - var_0.x)), global1.x, _wgslsmith_f_op_f32(-global1.x));
    var_2 = (u_input.a | u_input.a) << (u_input.b.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(_wgslsmith_div_u32(u_input.b.x, abs(u_input.a))), _wgslsmith_dot_vec3_i32(max(select(firstTrailingBit(u_input.c), ~vec3<i32>(0i, var_1.a, u_input.d), all(vec4<bool>(true, true, false, false))), _wgslsmith_clamp_vec3_i32(-u_input.c, u_input.c, u_input.c)), vec3<i32>(1i, ~(i32(-1i) * -2147483647i), u_input.c.x)), _wgslsmith_f_op_vec3_f32(-var_3.zzy), var_0.x, u_input.b.wxy);
}

