struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: bool) -> bool {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -662f, global1.x, arg_0), vec4<f32>(631f, 1359f, global1.x, arg_0)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, -1000f, -1363f, global1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1456f, arg_0, global1.x, -471f) - vec4<f32>(124f, 1443f, global1.x, global1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-540f, -2344f, 2028f, 1242f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(278f, -1000f, 1993f, arg_0))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, global1.x, 850f, arg_0), vec4<f32>(arg_0, global1.x, -304f, -1403f), vec4<bool>(arg_2, arg_2, false, arg_2))))))));
    var var_0 = arg_1;
    var var_1 = Struct_1(!select(vec3<bool>(true, true, arg_1 == u_input.c), vec3<bool>(!arg_2, arg_2, arg_2), vec3<bool>(true, 1u == arg_1, false)));
    var var_2 = Struct_1(vec3<bool>(arg_2, arg_2, all(!vec3<bool>(arg_2, var_1.a.x, arg_2))));
    var_1 = Struct_1(select(select(!(!var_2.a), !(!var_1.a), true), vec3<bool>(true, true, ~u_input.c < ~arg_1), var_2.a));
    return arg_2;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: bool, arg_3: vec2<i32>) -> i32 {
    var var_0 = Struct_1(vec3<bool>(arg_2, func_3(_wgslsmith_f_op_f32(-arg_1), (u_input.b.x << (31275u % 32u)) & 1u, all(vec4<bool>(true, arg_2, false, false))), arg_2));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -997f, arg_1, arg_1) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, global1.x, 2237f, global1.x), vec4<f32>(arg_1, -282f, 1748f, -274f), vec4<bool>(arg_2, false, true, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(742f, arg_1, global1.x, -825f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -951f, arg_1, -996f))))));
    var var_1 = Struct_1(vec3<bool>(!(u_input.c >= select(1u, u_input.c, arg_2)), all(select(select(vec3<bool>(var_0.a.x, arg_2, var_0.a.x), var_0.a, var_0.a), !var_0.a, all(var_0.a.yy))), true));
    var var_2 = Struct_1(var_1.a);
    let var_3 = -168f;
    return arg_3.x;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = vec3<bool>(-2147483647i > reverseBits(func_2(vec4<i32>(39953i, 11798i, arg_0.x, -1i), 1177f, true, vec2<i32>(20470i, arg_0.x) << (vec2<u32>(u_input.c, 30870u) % vec2<u32>(32u)))), true, any(vec4<bool>(func_3(_wgslsmith_f_op_f32(max(-156f, -214f)), u_input.c, select(true, true, false)), true, all(vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(trunc(568f)) > _wgslsmith_f_op_f32(abs(global1.x)))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 321f) * global1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -482f))), _wgslsmith_f_op_f32(-global1.x), 1291f, global1.x);
    var var_1 = select(select(vec4<bool>(true, true, !var_0.x != !var_0.x, true), vec4<bool>(any(!vec2<bool>(var_0.x, true)), true, !var_0.x, func_3(-730f, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 1u), vec3<u32>(14662u, 44912u, u_input.b.x)), true)), any(var_0)), !(!vec4<bool>(var_0.x, true, -1620f == global1.x, true)), vec4<bool>(!(14857u <= u_input.b.x), var_0.x, var_0.x, _wgslsmith_f_op_f32(round(global1.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_2 = Struct_1(select(vec3<bool>(~arg_0.x <= ~u_input.a.x, abs(0i) != ~u_input.a.x, var_0.x), var_0, (var_0.x & (arg_0.x != u_input.a.x)) != (!var_0.x & (var_0.x && var_0.x))));
    var var_3 = var_2;
    return Struct_1(select(!vec3<bool>(true, 835f == global1.x, u_input.c != 1u), !var_3.a, var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(abs(vec4<i32>(u_input.a.x, ~(-u_input.a.x), 35040i, u_input.a.x)));
    let var_1 = Struct_1(var_0.a);
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, global1.x, -1000f, global1.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(981f, -733f, -1000f, global1.x))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x) + vec4<f32>(-343f, 212f, -313f, 308f))))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(1942f, 1278f, var_1.a.x)), _wgslsmith_f_op_f32(global1.x - global1.x), 895f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 770f, global1.x))))))));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1495f), -1146f));
    var var_2 = (vec4<u32>(1u, 0u, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), u_input.b.xx)), ~u_input.c) ^ ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, u_input.b), ~vec4<u32>(54319u, u_input.c, u_input.b.x, u_input.b.x))) ^ u_input.b;
    var var_3 = ~(~(~(vec4<i32>(5585i, u_input.a.x, 2147483647i, u_input.a.x) << (vec4<u32>(u_input.b.x, 11261u, var_2.x, 28532u) % vec4<u32>(32u)))));
    let var_4 = Struct_1(!vec3<bool>(true, !(!var_1.a.x), var_0.a.x));
    var var_5 = vec4<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-1f)), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1511f + -914f))) * -998f), -559f);
    let var_6 = func_1(firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(0i, 47716i, -14085i, var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_5.x, -2338f))) * _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(var_5.x - -257f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_5.x * -208f), var_5.x))), u_input.b.zw, reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(var_3.yyy, var_3.zxw), var_3.x, max(_wgslsmith_dot_vec2_i32(var_3.zw, u_input.a), ~u_input.a.x), u_input.a.x | -9730i)));
}

