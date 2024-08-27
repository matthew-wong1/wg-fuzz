struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20>;

var<private> global1: array<vec4<u32>, 9>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(586f, -978f, -1229f, 572f), -1076f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = vec2<u32>(0u, ~1u >> (1u % 32u));
    var var_1 = Struct_2(select(!(!(!global0[_wgslsmith_index_u32(var_0.x, 20u)])), select(select(vec2<bool>(false, false), vec2<bool>(false, false), any(vec3<bool>(false, false, true))), !select(global0[_wgslsmith_index_u32(var_0.x, 20u)], global0[_wgslsmith_index_u32(var_0.x, 20u)], true), vec2<bool>(true, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(1u, 9u)], select(global1[_wgslsmith_index_u32(36009u, 9u)], global1[_wgslsmith_index_u32(var_0.x, 9u)], vec4<bool>(false, true, false, true))), _wgslsmith_mod_vec4_u32(~vec4<u32>(25730u, var_0.x, var_0.x, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(40420u, 46757u, var_0.x, var_0.x), vec4<u32>(35612u, 15122u, 60491u, 3423u)))), 20u)]), arg_0);
    let var_2 = arg_0;
    var var_3 = Struct_2(global0[_wgslsmith_index_u32(max(var_0.x, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 4294967295u) & vec3<u32>(var_0.x, var_0.x, var_0.x), min(vec3<u32>(30939u, var_0.x, 25241u), vec3<u32>(40482u, var_0.x, var_0.x))), min(1u, ~65715u))), 20u)], var_2);
    var var_4 = 26731i;
    return _wgslsmith_f_op_f32(var_2.a.x * -463f) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(831f * _wgslsmith_f_op_f32(-1060f + arg_0.a.x)), arg_0.a.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = -1546f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1283f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1010f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.b)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1217f + _wgslsmith_f_op_f32(min(1599f, _wgslsmith_f_op_f32(1000f * 428f)))) * 1000f);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-132f, _wgslsmith_f_op_f32(f32(-1f) * -179f)))), -623f);
    let var_4 = 129f;
    return -464f;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    global0 = array<vec2<bool>, 20>();
    var var_0 = Struct_1(arg_0, _wgslsmith_f_op_f32(func_4(arg_1, _wgslsmith_mod_vec2_u32(select(vec2<u32>(32833u, 13150u), vec2<u32>(1u, 88795u), func_3(Struct_1(vec4<f32>(arg_2, arg_2, arg_0.x, arg_2), 620f))), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(5155u, 81184u)), firstLeadingBit(vec2<u32>(23424u, 40486u)), vec2<u32>(16912u, 8915u))), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(arg_0)))), _wgslsmith_f_op_f32(626f + _wgslsmith_f_op_f32(1000f * global2.b))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, arg_2, global2.b, 1043f) + arg_0) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(372f, global2.a.x, -206f, global2.a.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1482f + 803f), _wgslsmith_f_op_f32(max(arg_0.x, arg_2))))))));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(min(~_wgslsmith_sub_u32(~49647u, firstTrailingBit(26796u)), ~(~abs(1u))), 20u)], Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_0 - arg_0))))), -1000f));
    global1 = array<vec4<u32>, 9>();
    global1 = array<vec4<u32>, 9>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1093f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + 1285f) + _wgslsmith_f_op_f32(-global2.b))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(490f, _wgslsmith_f_op_f32(-var_0.a.x))))))));
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.a.x * _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b)))), _wgslsmith_f_op_f32(-global2.b)));
    global1 = array<vec4<u32>, 9>();
    global1 = array<vec4<u32>, 9>();
    let var_1 = false;
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, ~(~(~4294967295u))), 20u)], Struct_1(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<f32>(arg_0.x, global2.b, global2.a.x, global2.a.x), vec4<bool>(true, false, true, true), -278f)) - _wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1764f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-226f)))), -1353f));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b))))));
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1064f - -1242f)))), _wgslsmith_f_op_f32(-arg_1.x), global2.b), global2.a.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, 688f), vec2<f32>(arg_1.x, var_0.a.x)))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(sign(arg_1.zy)))))));
    global1 = array<vec4<u32>, 9>();
    global1 = array<vec4<u32>, 9>();
    let var_2 = u_input.a.xz;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-2147483647i, select(select(-1i, ~(-4815i) ^ (0i | u_input.c.x), true), ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.a.x), -u_input.a.zxy), select(true, false, true)));
    var var_1 = false;
    let var_2 = func_5(all(!vec2<bool>(true, any(global0[_wgslsmith_index_u32(37127u, 20u)]))), global2.a, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(round(global2.a.xz)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global2.b)))), _wgslsmith_f_op_f32(-497f + _wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-360f - global2.a.x), 592f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b, 2280f) * 542f)))));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.b, -888f))), 158f, global2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(757f, 1039f, false)), _wgslsmith_f_op_f32(var_2.a.x * global2.a.x)))), -617f);
    var_0 = ~17951i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, 97003u), ~firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 4294967295u))), u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(select(var_2.b, _wgslsmith_f_op_f32(step(global2.a.x, 842f)), all(vec4<bool>(false, false, true, false)))), global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1505f, 1447f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.zyy) * vec3<f32>(-348f, -579f, -1104f)))), var_2.a.wwx, true)));
}

