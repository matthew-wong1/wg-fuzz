struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: u32) -> f32 {
    var var_0 = select(arg_2.b.yz, vec2<bool>(_wgslsmith_mod_u32(u_input.b | 47890u, abs(u_input.c)) >= _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(arg_0, arg_0), ~u_input.d.x, 0u), true), select(arg_2.d.d.wx, vec2<bool>(any(select(vec3<bool>(arg_2.b.x, arg_2.b.x, true), arg_1.d.d.xyw, arg_1.d.d.yyw)), true), arg_1.b.zx));
    let var_1 = arg_1.a.a;
    var_0 = vec2<bool>(false, true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-153f))) * -176f);
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(abs(vec3<u32>(u_input.b, min(83765u, u_input.d.x), u_input.b)), Struct_4(Struct_1(vec4<f32>(1153f, 743f, 989f, -1000f), -u_input.a.x), vec3<bool>(any(vec2<bool>(false, false)), select(true, false, true), false), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1024f, -370f, -388f, 237f)), u_input.a.x), Struct_3(Struct_1(vec4<f32>(123f, 812f, -607f, -1426f), 16536i), Struct_1(vec4<f32>(1733f, -2044f, 645f, 200f), u_input.e.x), true, vec4<bool>(true, true, true, true))), Struct_4(Struct_1(vec4<f32>(501f, 1284f, -410f, 278f), 0i), vec3<bool>(true, false, true), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1583f, 1000f, -688f, -502f)), 1i), Struct_3(Struct_1(vec4<f32>(1433f, -629f, 1082f, -1786f), u_input.e.x), Struct_1(vec4<f32>(-293f, -1153f, 287f, 323f), u_input.a.x), true, select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), true))), ~u_input.b)));
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1308f, 1f, _wgslsmith_f_op_f32(842f - 1000f)) + vec3<f32>(_wgslsmith_f_op_f32(select(-220f, 624f, false)), -1275f, _wgslsmith_f_op_f32(f32(-1f) * -2315f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + -539f))), -137f, _wgslsmith_f_op_f32(f32(-1f) * -404f))));
    let var_1 = _wgslsmith_div_i32(~(-u_input.e.x << (43962u % 32u)) | ~(~_wgslsmith_mult_i32(u_input.e.x, -28130i)), _wgslsmith_div_i32(-1i, min(18772i ^ u_input.a.x, u_input.e.x)));
    var var_2 = _wgslsmith_f_op_f32(func_2());
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-725f)))), -388f)) - _wgslsmith_f_op_f32(f32(-1f) * -1414f));
    var var_3 = ~36638u;
    return Struct_4(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1099f, 544f, 1060f, var_0.x), vec4<f32>(1231f, 988f, -542f, 802f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1635f, -415f, 983f, 1777f)))), -_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_1, var_1, var_1, 18213i))), vec3<bool>(false, all(vec2<bool>(true, true)), all(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(var_0.x + 534f), _wgslsmith_f_op_f32(-var_0.x), 1417f))), -reverseBits(var_1)), Struct_3(Struct_1(vec4<f32>(var_0.x, 1000f, _wgslsmith_f_op_f32(round(-1331f)), _wgslsmith_f_op_f32(-var_0.x)), 459i), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -106f) + vec4<f32>(161f, var_0.x, var_0.x, 570f)), u_input.e.x), -1i > _wgslsmith_dot_vec2_i32(u_input.a.zw, vec2<i32>(u_input.e.x, var_1)), vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_1().d;
    let var_2 = var_0;
    var_1 = func_1().d;
    var_1 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-745f * _wgslsmith_f_op_f32(abs(var_1.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.d.b.a.x, var_1.a.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -848f)), var_1.d.x)))), _wgslsmith_add_vec4_u32(~abs(vec4<u32>(u_input.c, 30018u, 4294967295u, 46110u)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.c, u_input.b, u_input.d.x, 4294967295u), vec4<u32>(30636u, u_input.d.x, u_input.c, 1u)) << (vec4<u32>(4294967295u, 0u, u_input.c, u_input.b) % vec4<u32>(32u)))), countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 24180u, u_input.b) & vec3<u32>(u_input.d.x, 1u, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 1u, 81134u), vec3<u32>(75074u, 1u, u_input.c)))));
}

