struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<f32>(813f, 146f), vec3<u32>(1u, 52155u, 49761u)), Struct_1(vec2<f32>(1496f, -1293f), vec3<u32>(10825u, 4294967295u, 91651u)), Struct_1(vec2<f32>(-795f, 488f), vec3<u32>(0u, 0u, 70596u)), Struct_1(vec2<f32>(1251f, -546f), vec3<u32>(0u, 35498u, 0u)), Struct_1(vec2<f32>(-1722f, -568f), vec3<u32>(15872u, 4294967295u, 1u)), Struct_1(vec2<f32>(-1302f, -1397f), vec3<u32>(23026u, 19653u, 89904u)), Struct_1(vec2<f32>(-678f, 580f), vec3<u32>(1u, 8682u, 1u)), Struct_1(vec2<f32>(-780f, 819f), vec3<u32>(0u, 19875u, 0u)), Struct_1(vec2<f32>(1448f, -1000f), vec3<u32>(0u, 1u, 81208u)), Struct_1(vec2<f32>(-374f, 772f), vec3<u32>(0u, 1u, 1u)), Struct_1(vec2<f32>(530f, -1088f), vec3<u32>(0u, 15198u, 44589u)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> bool {
    global0 = 1i;
    global0 = _wgslsmith_clamp_i32(-9322i, select(arg_1.x, -2147483647i, u_input.e < u_input.e), 1i);
    global0 = u_input.c;
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-876f, -1108f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1557f, arg_0) * vec2<f32>(arg_0, arg_0)))))), firstTrailingBit(~reverseBits(firstLeadingBit(vec3<u32>(36535u, 20568u, 13665u)))));
    global1 = array<Struct_1, 11>();
    return !(!all(vec4<bool>(true, true, true, true)) != (~u_input.d.x > ~(arg_1.x | 1i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = !select(true, !any(vec2<bool>(true, true)), all(vec3<bool>(false, true, true)));
    var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(398f, arg_1)), firstLeadingBit(-firstTrailingBit(vec4<i32>(14265i, 6326i, u_input.c, 12716i))) >> (~arg_0 % vec4<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.a), vec3<u32>(48806u, 1u, reverseBits(u_input.e)));
    var var_2 = vec3<f32>(arg_2.a.x, var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-502f)), 1821f))));
    global0 = -8097i;
    return Struct_1(arg_3.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~abs(arg_0.x), ~1u), ~arg_3.b, ~_wgslsmith_div_vec3_u32(var_1.b, arg_0.wxz >> (arg_2.b % vec3<u32>(32u)))));
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = func_2(reverseBits(reverseBits(vec4<u32>(_wgslsmith_clamp_u32(u_input.a, 6360u, 58639u), 4294967295u, ~0u, u_input.e))), _wgslsmith_f_op_f32(-1f), global1[_wgslsmith_index_u32(~(~(~_wgslsmith_div_u32(u_input.a, 20598u))), 11u)], Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1157f, _wgslsmith_f_op_f32(round(407f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 1174f) - arg_0) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1972f, arg_0.x)))), vec3<u32>(~25872u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(u_input.e, u_input.a)), u_input.a)));
    global1 = array<Struct_1, 11>();
    global1 = array<Struct_1, 11>();
    global0 = countOneBits(76714i);
    let var_1 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -366f)), max(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, u_input.d.x, u_input.d.x, u_input.b), vec4<i32>(1i, 2147483647i, select(28570i, u_input.d.x, false), _wgslsmith_clamp_i32(u_input.b, u_input.c, u_input.b))), -select(-vec4<i32>(u_input.d.x, 0i, u_input.c, u_input.d.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.c, u_input.d.x), vec4<i32>(u_input.d.x, -2147483647i, u_input.b, u_input.b)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1903f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<f32>(-486f, _wgslsmith_f_op_f32(func_1(vec2<f32>(-1000f, 493f)))), ~_wgslsmith_sub_vec3_u32(abs(select(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(1u, u_input.a, u_input.e), true)), ~(~vec3<u32>(4294967295u, u_input.e, 1u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(412f, _wgslsmith_div_f32(743f, var_0.a.x), var_0.a.x) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.x, var_0.a.x, 1529f), vec3<f32>(var_0.a.x, var_0.a.x, -424f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, 1223f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(116f, 1651f, 475f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))))))))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -38225i, var_0.a.x);
}

