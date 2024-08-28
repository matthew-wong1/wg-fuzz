struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: Struct_3,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<Struct_3, 30>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<f32>) -> vec4<bool> {
    global1 = array<Struct_3, 30>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-509f, _wgslsmith_f_op_f32(floor(arg_2.x)))));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1489f))));
    global0 = !vec2<bool>(arg_1.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1621f)), all(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, global0.x), vec3<bool>(arg_0.a, true, global0.x), arg_0.a), select(vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, true, true), true))));
    var_0 = arg_0.b;
    return !vec4<bool>(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x))) != arg_1.x, !arg_0.a & any(!vec2<bool>(false, global0.x)), all(vec3<bool>(false, true, true)));
}

fn func_2() -> f32 {
    let var_0 = func_3(Struct_1(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-761f * -238f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1222f, _wgslsmith_f_op_f32(step(328f, -2303f)), _wgslsmith_f_op_f32(f32(-1f) * -827f)))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(1968f - 835f), _wgslsmith_f_op_f32(-198f * 1393f), -753f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(310f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(455f - -1000f) * _wgslsmith_f_op_f32(min(-1363f, -415f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1995f, -142f, true))), -1877f));
    var var_1 = ~(-select(vec3<i32>(u_input.c, u_input.c, 2147483647i) & vec3<i32>(-10758i, u_input.c, -1i), vec3<i32>(1i, u_input.c, u_input.c), var_0.wyx)) & (vec3<i32>(-u_input.c & 27398i, u_input.c, u_input.c) & select(_wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647i, 2147483647i, u_input.c), select(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, 24492i, -1i), global0.x)), vec3<i32>(u_input.c, u_input.c, select(-1i, u_input.c, true)), func_3(Struct_1(false, -325f), vec3<f32>(732f, 809f, -1000f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -461f, -569f, 131f)))).zwz));
    var var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-984f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1107f))))));
    var var_4 = func_3(Struct_1(~u_input.b <= 56879u, _wgslsmith_div_f32(-491f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -517f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2061f, 993f, 112f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1116f, 926f, 618f))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(592f + 1415f) - _wgslsmith_f_op_f32(f32(-1f) * -151f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(906f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(228f)), -2185f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(616f + -808f))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-127f)))), _wgslsmith_f_op_f32(ceil(-678f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1636f - 361f) + _wgslsmith_f_op_f32(1000f + -636f)), _wgslsmith_f_op_f32(ceil(1000f))), var_0))).x;
    return -1999f;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-517f - _wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-833f * 318f)))), _wgslsmith_f_op_f32(max(484f, -265f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(328f, -291f)) - 623f) * _wgslsmith_f_op_f32(sign(-1290f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f + 971f))));
    global0 = select(!(!(!select(vec2<bool>(false, true), vec2<bool>(arg_0, false), arg_0))), select(!vec2<bool>(true, var_0.x >= var_0.x), !vec2<bool>(var_0.x == var_0.x, any(vec2<bool>(global0.x, arg_0))), global0.x), any(select(!(!vec2<bool>(global0.x, false)), vec2<bool>(arg_0, true), true)));
    var var_1 = _wgslsmith_f_op_f32(trunc(-948f));
    let var_2 = Struct_5(var_0.ww, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.zz, var_0.xw)))))), Struct_3(~arg_2.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -291f, var_0.x, var_0.x), var_0))) - var_0), -vec2<i32>(~(-52152i), u_input.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-255f)), var_0.x)), max(reverseBits((vec2<i32>(-583i, -24918i) & vec2<i32>(u_input.c, arg_2.b)) & arg_1.xx), vec2<i32>(~15323i, abs(0i))), func_3(Struct_1(global0.x, 1053f), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * -598f), -862f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 * _wgslsmith_f_op_vec4_f32(select(var_0, var_0, true))) - vec4<f32>(_wgslsmith_f_op_f32(step(var_0.x, -118f)), _wgslsmith_f_op_f32(max(var_0.x, -704f)), -228f, _wgslsmith_f_op_f32(max(-468f, var_0.x))))).yz);
    let var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_0.xx + vec2<f32>(var_0.x, -437f)), _wgslsmith_f_op_vec2_f32(step(var_2.a, var_2.b)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(385f, var_0.x) * vec2<f32>(var_0.x, var_0.x)), _wgslsmith_f_op_vec2_f32(-var_2.b)))), _wgslsmith_f_op_vec2_f32(var_2.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, 227f)))))), var_2.a, Struct_3(arg_2.a.x, _wgslsmith_f_op_vec4_f32(floor(var_0)), var_2.c.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.c.b.x, var_0.x), _wgslsmith_f_op_f32(min(276f, var_2.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.b.x))))), -arg_1.zx, vec2<bool>(false, var_2.e.x));
    return Struct_3(52385u, var_3.c.b, vec2<i32>(-var_3.d.x, u_input.c) << (~arg_2.a % vec2<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec3<bool>(false, all(!vec3<bool>(global0.x, global0.x, false)), any(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(true, true)))), vec3<bool>(false, true, true), true), !select(!(!vec3<bool>(global0.x, false, global0.x)), vec3<bool>(false, select(global0.x, global0.x, true), all(vec4<bool>(false, global0.x, global0.x, false))), vec3<bool>(false, true, all(vec4<bool>(global0.x, global0.x, true, true)))), vec3<bool>(false, !global0.x, true));
    var_0 = vec3<bool>(var_0.x, true, true);
    let var_1 = vec3<i32>(_wgslsmith_div_i32(abs(~u_input.c), -2147483647i), 0i, 1i);
    let var_2 = ~(~u_input.a) << (10876u % 32u);
    var var_3 = func_1(true, var_1, Struct_2((~vec2<u32>(9924u, var_2) << (countOneBits(vec2<u32>(u_input.b, 58280u)) % vec2<u32>(32u))) ^ vec2<u32>(~var_2, min(0u, var_2)), -41668i));
    var_3 = global1[_wgslsmith_index_u32(~abs(6626u), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, reverseBits(var_1.x));
}

