struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_1) -> f32 {
    return -175f;
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(countOneBits(~u_input.a.x), 0i), -2147483647i) & u_input.a.yx;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-559f - 380f)) - -611f) * 1f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1360f + 1000f), 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-542f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, false, arg_0.x), true))), _wgslsmith_f_op_f32(-2636f - -845f))))));
    return Struct_2(abs(-13987i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 102f, -1107f) - vec3<f32>(-826f, var_1.x, var_1.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, -775f), vec3<f32>(var_1.x, var_1.x, 1000f)), _wgslsmith_f_op_vec3_f32(var_1.zzx + vec3<f32>(1000f, var_1.x, 1199f))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32) -> f32 {
    var var_0 = vec2<bool>(true, true);
    var var_1 = Struct_4(Struct_3(arg_0, arg_0, Struct_1(!select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(var_0.x, var_0.x, false)), select(vec3<bool>(true, true, true), !vec3<bool>(true, false, var_0.x), true), var_0.x)), Struct_1(select(vec3<bool>(false, !var_0.x, true & var_0.x), !select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), false), select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, false), var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, false), true), select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x), true))), vec3<bool>(var_0.x, var_0.x, !any(vec3<bool>(false, var_0.x, var_0.x))), any(vec3<bool>(var_0.x, var_0.x && true, var_0.x))), vec3<bool>(~arg_2 <= 57641u, !select(var_0.x, var_0.x, var_0.x) && true, var_0.x), firstTrailingBit(u_input.c), arg_0);
    return -442f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<bool>(all(vec3<bool>(true, true, true)), true));
    let var_1 = Struct_3(Struct_2(2147483647i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), _wgslsmith_div_f32(var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(func_3(Struct_2(-1329i, var_0.b), vec2<i32>(u_input.a.x, var_0.a), 57407u))), var_0.b, true))), Struct_2(-1i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(393f, -2014f, -748f), var_0.b, vec3<bool>(true, true, false))), var_0.b)))), Struct_1(vec3<bool>(true, any(vec4<bool>(false, true, false, false)) != true, u_input.e < _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, 4294967295u), u_input.b)), vec3<bool>(true, true, false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_0.b.x, 1719f)))) != _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(855f - 487f))));
    var_0 = Struct_2(func_1(!(!(!var_1.c.a.xz))).a, vec3<f32>(-205f, var_1.a.b.x, 329f));
    var_0 = func_1(select(vec2<bool>(var_1.c.b.x && true, var_1.c.a.x || all(var_1.c.a.zx)), !var_1.c.b.yz, any(var_1.c.a)));
    var_0 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(-9431i, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b.x + -1240f)), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(f32(-1f) * -848f)), 1699f, var_0.b.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.b.x - 523f), func_1(vec2<bool>(false, true)).b.x, func_1(var_1.c.b.zy).b.x, var_1.b.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.x, var_1.a.b.x, var_0.b.x, var_1.b.b.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.b.x, var_0.b.x, var_0.b.x, 740f))))))), firstTrailingBit(_wgslsmith_dot_vec2_i32(abs(max(vec2<i32>(var_1.a.a, var_1.b.a), vec2<i32>(1i, var_1.b.a))), vec2<i32>(26620i, _wgslsmith_add_i32(-39350i, u_input.c)))), u_input.d);
}

