struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> bool {
    return (u_input.a << (8669u % 32u)) == arg_2;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec3<u32>(28354u, ~4294967295u, u_input.b.x);
    var_0 = u_input.b.xwz;
    var var_1 = select(select(select(vec2<bool>(true, false), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), -833f != arg_0.b.x), any(vec3<bool>(false, false, false))), vec2<bool>(func_3(_wgslsmith_f_op_vec2_f32(-arg_0.a.yy), Struct_1(false, u_input.b, vec3<bool>(false, false, true), true, false), abs(u_input.a), Struct_3(arg_0)), true), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec4<bool>(true, false, false, true)))), select(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(!(457f > arg_0.a.x), false), vec2<bool>(~46230u > u_input.b.x, !all(vec2<bool>(true, true)))), !(!any(vec3<bool>(true, false, false)) || true));
    var var_2 = min(_wgslsmith_add_i32(-93268i, u_input.a), select(~(-1154i), min(-u_input.a, 2147483647i), 194f <= _wgslsmith_f_op_f32(-arg_0.a.x)));
    let var_3 = !(!var_1.x);
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b - arg_0.b)), func_2(arg_1).b);
    var_0 = arg_0;
    let var_1 = u_input.b.wzx;
    var_0 = func_2(Struct_2(arg_2, vec3<f32>(-275f, arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1769f)))));
    return Struct_1(true, vec4<u32>(var_1.x, max(~(~var_1.x), reverseBits(reverseBits(var_1.x))), firstTrailingBit(u_input.c.x >> (26639u % 32u)), max(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_1.x, var_1.x, var_1.x)), select(u_input.b.xzy, vec3<u32>(var_1.x, 40301u, var_1.x), vec3<bool>(true, true, true))), _wgslsmith_div_u32(70055u, ~0u))), !vec3<bool>(!(var_1.x >= var_1.x), true, (15687i <= u_input.a) || true), true, true);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1000f, -1673f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1724f)) * arg_1.a.b.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.x, 639f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -848f)))));
    let var_2 = u_input.a;
    var var_3 = Struct_3(func_2(Struct_2(arg_1.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a.a - arg_1.a.a)))));
    var var_4 = Struct_3(Struct_2(arg_1.a.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_3.a.b)))));
    return func_2(var_4.a);
}

fn func_1() -> Struct_2 {
    return func_5(func_4(func_2(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(188f, -1498f, 161f)), vec3<f32>(-185f, -2266f, -848f))), func_2(Struct_2(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(199f, 1000f, -1415f))))), vec3<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(702f + 346f)), -158f)), Struct_3(func_2(func_2(func_2(Struct_2(vec3<f32>(-618f, -1052f, 400f), vec3<f32>(161f, -713f, 278f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(581f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -470f), 110f)));
    let var_1 = func_1();
    let var_2 = vec2<bool>(!(!(1279f > var_0)) == select(any(vec3<bool>(false, true, false)), true, true), !any(vec3<bool>(func_4(var_1, Struct_2(var_1.a, var_1.a), var_1.a).d, u_input.c.x == 12809u, all(vec4<bool>(true, false, false, false)))));
    let var_3 = vec2<u32>(~countOneBits(~(~u_input.b.x)), 1u);
    var var_4 = 192f;
    let var_5 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-var_1.b), _wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -261f, 151f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-25982i, ~abs(u_input.b), abs(min(u_input.b.x, ~(0u ^ u_input.c.x))), 1u);
}

