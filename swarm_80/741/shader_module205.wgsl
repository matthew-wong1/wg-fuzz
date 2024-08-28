struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 29> = array<i32, 29>(-9871i, -1i, 0i, 1i, 13203i, 58836i, 18555i, -26779i, -1i, -24509i, 1i, -1i, -13931i, 2147483647i, 67530i, 1i, -32906i, 14114i, 29818i, 1i, 18044i, 8490i, 1i, i32(-2147483648), 37930i, 39779i, -48625i, 36717i, 32668i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    global1 = array<i32, 29>();
    let var_0 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))));
    global0 = u_input.c;
    var var_1 = 301f;
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1491f, -155f, -1207f) + vec3<f32>(1000f, -1463f, -1920f)) - vec3<f32>(-724f, 334f, -1143f)) * vec3<f32>(_wgslsmith_div_f32(-546f, 1873f), _wgslsmith_f_op_f32(min(1549f, -1129f)), _wgslsmith_f_op_f32(695f - 1536f))))));
    return select(vec2<bool>(!any(vec2<bool>(var_0.x, false)), false), !var_0.xy, !select(!(!vec2<bool>(true, var_0.x)), !(!var_0.zx), vec2<bool>(!var_0.x, true)));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<f32>) -> vec2<bool> {
    var var_0 = Struct_1(u_input.a.xzw);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 232f) * -785f), arg_0));
    var_0 = Struct_1(var_0.a >> (var_0.a % vec3<u32>(32u)));
    let var_2 = Struct_3(!any(select(select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(false, true), true), select(vec2<bool>(arg_1.x, false), arg_1, arg_1.x), true)));
    let var_3 = ~(~global1[_wgslsmith_index_u32(46743u, 29u)]);
    return !arg_1;
}

fn func_2() -> Struct_3 {
    global1 = array<i32, 29>();
    let var_0 = select(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1020f * -1418f) - _wgslsmith_f_op_f32(round(-957f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1033f + -1206f))), select(func_3(), func_3(), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1000f), vec2<f32>(_wgslsmith_f_op_f32(1514f - -1868f), 791f)))), vec2<bool>(true, true), !vec2<bool>(u_input.a.x < u_input.a.x, true));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 2903f, -1000f), vec3<f32>(-405f, -292f, 524f), vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-622f, -149f, 558f), vec3<f32>(1398f, -512f, -196f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-600f, -1492f, -870f), vec3<f32>(350f, -651f, -161f), vec3<bool>(var_0.x, false, var_0.x)))))));
    global0 = u_input.d;
    var var_2 = u_input.a.x;
    return Struct_3(true);
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(-426f * 1284f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239f + 294f))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(723i, ~_wgslsmith_dot_vec2_i32(u_input.e.zz, vec2<i32>(u_input.c, u_input.b.x)), ~_wgslsmith_div_i32(u_input.d, global1[_wgslsmith_index_u32(0u, 29u)]), global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(-12492i, 2147483647i, -28312i, global1[_wgslsmith_index_u32(u_input.a.x, 29u)]))));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(false, func_2(), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 1u, 2389u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))))))));
    let var_2 = false;
    global1 = array<i32, 29>();
    var var_3 = Struct_2(func_3(), vec3<f32>(1000f, _wgslsmith_f_op_f32(trunc(var_1.x)), -724f), Struct_1(~firstTrailingBit(u_input.a.zyy)), !var_2, Struct_1(~u_input.a.wyx));
    return Struct_2(!var_3.a, vec3<f32>(_wgslsmith_f_op_f32(var_3.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -618f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, -1237f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, var_1.x) + arg_0.x))), var_3.b.x), Struct_1(firstLeadingBit(vec3<u32>(select(1u, 4294967295u, false), _wgslsmith_add_u32(5243u, 22846u), var_3.e.a.x | 0u))), true, Struct_1(_wgslsmith_mod_vec3_u32(u_input.a.zzx, _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), vec3<u32>(1u, u_input.a.x, 7292u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a;
    var var_1 = func_1(vec3<f32>(1f, 1f, 1f));
    let var_2 = ~19591u;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x * var_1.b.x), var_1.b.x, 441f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(false, Struct_3(var_1.a.x), var_1.c)).x)));
    global1 = array<i32, 29>();
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, var_3.x))).b.x)), var_3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + var_3.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_3.x))))), _wgslsmith_f_op_f32(floor(var_3.x)), true)), -755f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1362f - _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(step(-1109f, -1424f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1976f, -1478f))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, var_1.c.a.x, 85374u, ~4294967295u), _wgslsmith_div_vec4_u32(u_input.a << (var_0 % vec4<u32>(32u)), ~var_0)));
}

