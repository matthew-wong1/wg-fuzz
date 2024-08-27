struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 5581u;

var<private> global1: array<i32, 10> = array<i32, 10>(0i, -1i, 1i, 0i, 0i, -12474i, 8949i, -1i, -70495i, -57664i);

var<private> global2: array<vec2<u32>, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>) -> bool {
    global2 = array<vec2<u32>, 19>();
    let var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(arg_0, arg_0 << (vec4<u32>(arg_0.x, 0u, 4294967295u, u_input.e) % vec4<u32>(32u))), firstLeadingBit(45914u)), arg_0.yw ^ vec2<u32>(abs(arg_0.x), _wgslsmith_mult_u32(u_input.e, u_input.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(176f, 309f, 673f, -479f) * vec4<f32>(452f, -451f, 559f, -1733f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-630f, 1010f, -1087f, -377f), vec4<f32>(1381f, 250f, 142f, -273f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1243f, 633f, 344f, 1295f)))))))));
    var var_2 = -_wgslsmith_sub_i32(~select(u_input.c.x, 1197i ^ global1[_wgslsmith_index_u32(var_0.x, 10u)], any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), global1[_wgslsmith_index_u32(arg_0.x, 10u)]);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1650f + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.x, 120f)))) - _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, 254f), _wgslsmith_f_op_f32(var_1.x * -1135f))), _wgslsmith_f_op_vec3_f32(var_1.wxz + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-237f, var_1.x, var_1.x))))), 1f, vec3<bool>(any(!arg_1), true, !all(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) - vec2<f32>(577f, -1850f)));
    return !any(select(select(!var_3.d, var_3.d, var_3.d), var_3.d, var_3.d.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    global2 = array<vec2<u32>, 19>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1646f)), _wgslsmith_div_vec3_f32(vec3<f32>(-227f, _wgslsmith_f_op_f32(941f * _wgslsmith_f_op_f32(ceil(-903f))), arg_0.b.x), vec3<f32>(arg_0.b.x, -240f, arg_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(844f + 474f)))), vec3<bool>(any(vec2<bool>(arg_0.d.x, true)) || true, true, arg_0.d.x), _wgslsmith_f_op_vec2_f32(-arg_0.e));
    global2 = array<vec2<u32>, 19>();
    global1 = array<i32, 10>();
    var var_1 = !(!arg_0.d.x);
    return firstLeadingBit(u_input.a);
}

fn func_2() -> u32 {
    global0 = 4294967295u;
    global2 = array<vec2<u32>, 19>();
    global2 = array<vec2<u32>, 19>();
    return _wgslsmith_mod_u32(func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1601f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(218f, 1133f, -1147f)) * vec3<f32>(-976f, 1064f, -429f)), _wgslsmith_f_op_f32(abs(-107f)), vec3<bool>(true, u_input.c.x > global1[_wgslsmith_index_u32(1u, 10u)], func_3(vec4<u32>(u_input.a, u_input.a, 57415u, 1u), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1706f, -1000f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -759f))))), ~(~u_input.b.xy), -firstLeadingBit(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.e, 10u)], 1i))), 73090u);
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = u_input.e;
    global0 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(abs(42925u), 7071u, 0u), countOneBits(1u), func_2());
    global1 = array<i32, 10>();
    var var_0 = all(select(vec2<bool>(true, arg_0.d.x), select(select(vec2<bool>(arg_0.d.x, true), arg_0.d.yx, true), !arg_0.d.xy, !arg_0.d.yz), true));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(exp2(arg_0.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(min(1125f, arg_0.b.x))) * _wgslsmith_f_op_vec3_f32(-arg_0.b))), 1542f, arg_0.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1320f - 806f) - -1000f)) * arg_0.e));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec2<bool>(func_1(Struct_1(_wgslsmith_f_op_f32(110f + -1154f), _wgslsmith_f_op_vec3_f32(vec3<f32>(393f, 503f, 1039f) + vec3<f32>(-111f, 533f, -381f)), -172f, vec3<bool>(true, true, true), vec2<f32>(425f, -919f))), func_3(vec4<u32>(0u, ~u_input.a, u_input.e, _wgslsmith_div_u32(u_input.a, 1u)), vec2<bool>(true, true))));
    var var_1 = 46485i;
    var_1 = u_input.c.x;
    let var_2 = vec4<u32>(~u_input.a, u_input.e, u_input.a, 10216u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.zx, var_2.xwy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(207f, 1000f, true))), _wgslsmith_f_op_f32(f32(-1f) * -792f), -1275f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(168f, 574f, -1242f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-613f, 767f, -671f) + vec3<f32>(-1561f, 900f, -914f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(828f, -766f, 1510f), vec3<f32>(-500f, 2019f, -897f)))))));
}

