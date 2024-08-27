struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
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

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<i32>(-1i, 0i, 12553i), true, vec4<f32>(-181f, 144f, 835f, 466f)), Struct_1(vec3<i32>(-9664i, 37263i, 2147483647i), true, vec4<f32>(-1920f, -1313f, 314f, 547f)), Struct_1(vec3<i32>(26684i, i32(-2147483648), 0i), false, vec4<f32>(-1373f, -230f, -289f, -293f)), Struct_1(vec3<i32>(1i, 16457i, -56067i), false, vec4<f32>(2254f, -413f, -1000f, 333f)), Struct_1(vec3<i32>(28639i, 12091i, i32(-2147483648)), true, vec4<f32>(-853f, -380f, -187f, -1160f)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 2147483647i), false, vec4<f32>(657f, 1441f, -1339f, 1006f)), Struct_1(vec3<i32>(i32(-2147483648), -1i, -1i), false, vec4<f32>(-735f, 337f, -142f, -1000f)), Struct_1(vec3<i32>(0i, 1i, i32(-2147483648)), false, vec4<f32>(1000f, 1565f, 322f, 729f)), Struct_1(vec3<i32>(-37549i, -36191i, -5018i), true, vec4<f32>(-1944f, -192f, 294f, 1061f)), Struct_1(vec3<i32>(34242i, 14058i, -22309i), true, vec4<f32>(319f, 2996f, 600f, 320f)), Struct_1(vec3<i32>(1i, 2147483647i, -1i), false, vec4<f32>(-392f, 1000f, -1356f, -1324f)), Struct_1(vec3<i32>(-1i, 2147483647i, -12182i), false, vec4<f32>(-487f, 1027f, 1000f, -373f)), Struct_1(vec3<i32>(-32917i, 2147483647i, 10293i), true, vec4<f32>(138f, 932f, -461f, -738f)), Struct_1(vec3<i32>(i32(-2147483648), -1i, -1i), true, vec4<f32>(157f, -738f, 270f, 592f)));

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(i32(-2147483648)), Struct_2(45867i), Struct_2(57205i), Struct_2(-1i), Struct_2(35735i), Struct_2(1i), Struct_2(i32(-2147483648)), Struct_2(-22048i), Struct_2(2147483647i), Struct_2(2147483647i), Struct_2(31016i), Struct_2(66343i), Struct_2(1i), Struct_2(-35650i), Struct_2(2147483647i), Struct_2(19689i), Struct_2(-4194i), Struct_2(-42841i), Struct_2(-21503i), Struct_2(i32(-2147483648)), Struct_2(-13098i), Struct_2(2147483647i), Struct_2(2147483647i), Struct_2(1i), Struct_2(0i), Struct_2(8400i), Struct_2(2147483647i));

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(-14053i), Struct_2(64132i), Struct_2(-17448i), Struct_2(1i), Struct_2(2147483647i), Struct_2(i32(-2147483648)), Struct_2(0i), Struct_2(-26226i), Struct_2(2147483647i), Struct_2(-31575i), Struct_2(i32(-2147483648)), Struct_2(-581i), Struct_2(-1i), Struct_2(23425i), Struct_2(53846i), Struct_2(0i), Struct_2(0i), Struct_2(2147483647i), Struct_2(-12198i), Struct_2(-28280i), Struct_2(17109i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.e, 21u)];
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))), -512f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(867f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 389f))))));
    global3 = array<Struct_2, 21>();
    global0 = array<Struct_1, 27>();
    global1 = array<Struct_1, 14>();
    return _wgslsmith_f_op_f32(floor(var_1));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool) -> vec2<f32> {
    return arg_0;
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_1, 27>();
    global1 = array<Struct_1, 14>();
    var var_0 = ~(~firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 0u), abs(vec2<u32>(4294967295u, u_input.a)))));
    global2 = array<Struct_2, 27>();
    global1 = array<Struct_1, 14>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-474f, 2162f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(339f, 577f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2226f, 535f))))) - _wgslsmith_f_op_vec2_f32(func_4(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec3<f32>(-691f, 441f, -642f))), _wgslsmith_f_op_f32(round(-346f))), !all(vec4<bool>(false, true, true, false))))));
}

fn func_1(arg_0: f32, arg_1: bool) -> StorageBuffer {
    let var_0 = 1i;
    var var_1 = var_0;
    let var_2 = _wgslsmith_mult_u32(reverseBits(firstLeadingBit(abs(86853u))), 0u);
    let var_3 = func_2();
    global0 = array<Struct_1, 27>();
    return StorageBuffer(var_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let x = u_input.a;
    s_output = func_1(-1444f, true);
}

