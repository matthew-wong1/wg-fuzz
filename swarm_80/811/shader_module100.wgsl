struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(4294967295u, 1u, 0u, 40471u), vec4<u32>(39716u, 4294967295u, 17938u, 82628u), vec4<u32>(37955u, 85946u, 0u, 4294967295u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(57401u, 60218u, 23133u, 7622u), vec4<u32>(33805u, 55437u, 27334u, 1u), vec4<u32>(4294967295u, 7350u, 1u, 1u), vec4<u32>(22061u, 0u, 47006u, 4294967295u), vec4<u32>(0u, 1u, 0u, 16696u), vec4<u32>(25481u, 42447u, 1u, 1u), vec4<u32>(37826u, 765u, 13090u, 4294967295u), vec4<u32>(11524u, 1u, 73528u, 0u), vec4<u32>(4294967295u, 0u, 0u, 1u));

var<private> global1: vec2<f32>;

var<private> global2: array<i32, 20>;

var<private> global3: Struct_2;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: f32) -> f32 {
    global2 = array<i32, 20>();
    var var_0 = _wgslsmith_f_op_f32(trunc(global1.x));
    var var_1 = global4.a;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -370f);
    var var_3 = Struct_1(!all(vec4<bool>(true, arg_1, true, false)), vec2<bool>(global3.a, !(_wgslsmith_f_op_f32(select(global1.x, arg_2, arg_1)) <= 625f)));
    return -250f;
}

fn func_2() -> Struct_1 {
    global1 = vec2<f32>(-211f, global1.x);
    global3 = Struct_2(global1.x <= global1.x);
    global3 = Struct_2(true);
    global1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -1071f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.a, u_input.a), global4.a, 153f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -313f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(global1.x * 1276f)))))));
    var var_0 = Struct_1(select(all(vec4<bool>(true, global3.a, global3.a, global3.a)), !(-22415i <= _wgslsmith_div_i32(-2147483647i, global2[_wgslsmith_index_u32(0u, 20u)])), global3.a), !vec2<bool>(!any(vec3<bool>(global4.a, global3.a, true)), true));
    return Struct_1(var_0.b.x, select(var_0.b, var_0.b, select(var_0.b, select(!var_0.b, vec2<bool>(global3.a, global3.a), select(false, true, var_0.a)), select(vec2<bool>(global3.a, true), var_0.b, vec2<bool>(false, true)))));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(false);
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<bool>) -> bool {
    var var_0 = !(!vec4<bool>(true, false, true, arg_2.x));
    var var_1 = _wgslsmith_sub_i32(-1i, -global2[_wgslsmith_index_u32(0u, 20u)]);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-529f, global1.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1023f, global1.x) * vec2<f32>(-1740f, global1.x)) - vec2<f32>(538f, -2198f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1005f, -2046f))))), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, 2191f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -988f) - vec2<f32>(global1.x, -546f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(700f, global1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1036f, -518f))))), var_0.x));
    global4 = Struct_2(!(u_input.a >= ((i32(-1i) * -22952i) << (firstTrailingBit(u_input.b) % 32u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(852f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x)))), -1219f, 1f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -1756f, var_2.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1596f, 1000f, 635f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, global1.x, 409f, var_2.x))))));
    return any(select(!select(arg_2.wzw, vec3<bool>(global3.a, false, false), var_0.xxz), vec3<bool>(true, !var_0.x, arg_0.a), true)) || global3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global3.a, !select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(global3.a, false), func_4(func_1(u_input.c.x, u_input.c.zy), vec4<bool>(global3.a, global3.a, true, true), select(vec4<bool>(global4.a, false, true, false), vec4<bool>(global3.a, global4.a, true, true), vec4<bool>(global4.a, false, true, global3.a)))));
    var var_1 = ~firstLeadingBit(~abs(_wgslsmith_sub_i32(-12991i, u_input.a)));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-349f)))));
    var var_3 = Struct_2(select(true, global4.a, select(!select(global4.a, false, global3.a), global4.a, true)));
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(19444i, _wgslsmith_div_u32(u_input.c.x, 1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(~26420u, 7272u, 27851u, ~u_input.c.x), reverseBits(global0[_wgslsmith_index_u32(u_input.c.x, 13u)]) ^ vec4<u32>(~0u, ~u_input.b, 24942u, u_input.b | u_input.c.x)), u_input.c.x, abs(_wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 2147483647i, 0i, u_input.a), vec4<i32>(-1i, 1i, 15487i, u_input.a)), ~vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], global2[_wgslsmith_index_u32(39546u, 20u)], u_input.a, u_input.a) ^ vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 20u)], u_input.a, -1i, u_input.a))));
}

