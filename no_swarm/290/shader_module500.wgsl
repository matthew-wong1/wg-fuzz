struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec3<bool>(false, false, true), 4294967295u));

var<private> global1: i32;

var<private> global2: array<Struct_2, 2>;

var<private> global3: Struct_2;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> i32 {
    let var_0 = vec2<i32>(~(-10391i), min(select(u_input.c.x, min(~u_input.c.x, u_input.c.x), any(vec4<bool>(true, false, false, false)) && true), u_input.c.x));
    let var_1 = global0[_wgslsmith_index_u32(u_input.d.x, 1u)];
    var var_2 = global0[_wgslsmith_index_u32(10183u | u_input.b.x, 1u)];
    return 2147483647i;
}

fn func_3() -> u32 {
    let var_0 = global3.a;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1622f + _wgslsmith_f_op_f32(1616f * -159f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-901f, -183f)))), -2572f)) - _wgslsmith_f_op_f32(floor(-1489f)));
    global1 = u_input.c.x;
    let var_2 = ~u_input.c;
    global2 = array<Struct_2, 2>();
    return global3.a.a;
}

fn func_1() -> vec4<f32> {
    global0 = array<Struct_3, 1>();
    let var_0 = vec4<i32>(u_input.c.x, max(1i, ~func_2()), select(u_input.c.x, u_input.c.x, true) & ~max(2147483647i << (global3.a.a % 32u), -1i & u_input.c.x), _wgslsmith_sub_i32(-1000i, firstLeadingBit(u_input.c.x) >> (~u_input.a % 32u)) & firstTrailingBit(u_input.c.x >> ((global4.a & global3.b.a) % 32u)));
    global0 = array<Struct_3, 1>();
    var var_1 = global2[_wgslsmith_index_u32(13136u, 2u)];
    var var_2 = all(vec4<bool>(1u > _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_clamp_u32(1u, 9051u, u_input.d.x), u_input.a), true, all(vec2<bool>(true, true)), !(53655u < func_3())));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-486f, 352f, 1005f, 871f) + vec4<f32>(550f, -1446f, -873f, 1564f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1143f, 1259f, -2214f, -196f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = -(i32(-1i) * -(~(~15784i)));
    let var_1 = u_input.d;
    global2 = array<Struct_2, 2>();
    var var_2 = select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(all(vec4<bool>(false, false, false, false)), global4.a >= 1u, true), true), vec3<bool>(all(vec3<bool>(true, true, true)), true, select(true, select(true, false, false), false)), true), vec3<bool>(true == (reverseBits(u_input.c.x) < u_input.c.x), true == !any(vec2<bool>(false, false)), any(vec3<bool>(false, false, true)) == (global3.b.a < (66992u & var_1.x))), false);
    let var_3 = !select(vec4<bool>(true, true, false, !all(vec4<bool>(false, false, var_2.x, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, var_2.x, var_2.x, true), !vec4<bool>(false, var_2.x, var_2.x, var_2.x)), _wgslsmith_sub_u32(global4.a, 68150u) == ~global3.b.a), true);
    return Struct_2(Struct_1(min(firstLeadingBit(~4294967295u), u_input.a)), Struct_1(0u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(629f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(606f)) * 1058f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-502f + 1613f) + _wgslsmith_f_op_f32(f32(-1f) * -703f)), -711f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - vec4<f32>(-1044f, _wgslsmith_f_op_f32(-471f - 1702f), _wgslsmith_f_op_f32(step(-470f, 1000f)), -1740f))), global3.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(154f, 946f)))))))));
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(88169i, u_input.c.x, u_input.c.x, 37159i)), _wgslsmith_sub_i32(u_input.c.x, -2147483647i)), -1i, 12823i >> (global4.a % 32u), ~(-9272i)) ^ ~vec4<i32>(0i, select(u_input.c.x, u_input.c.x, false), -27742i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -1i), vec3<i32>(u_input.c.x, u_input.c.x, -42273i))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.c.x, -2147483647i, _wgslsmith_div_i32(20063i, -13081i)), vec4<i32>(-6417i, u_input.c.x, _wgslsmith_div_i32(u_input.c.x, u_input.c.x), min(14842i, u_input.c.x)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(643f)), 1165f)), _wgslsmith_f_op_f32(sign(-991f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-743f, 104f)) - _wgslsmith_f_op_f32(1300f * 640f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(156f)) * _wgslsmith_f_op_f32(min(-2404f, 765f))))));
    global2 = array<Struct_2, 2>();
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - -164f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2))), -2465f, _wgslsmith_f_op_f32(f32(-1f) * -569f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(ceil(-1331f)), var_2)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1()).x), -1720f, 2048f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_3.zyx)) * vec3<f32>(-101f, -107f, var_1)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_1()).zzz * _wgslsmith_f_op_vec3_f32(-var_3.zww)))), firstLeadingBit(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, global3.a.a, global3.a.a), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, global3.a.a, 28984u), u_input.b), abs(70656u))));
}

