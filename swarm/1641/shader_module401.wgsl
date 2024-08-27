struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(5091u, 1u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), -1411f));
    let var_1 = arg_1;
    return Struct_1(var_1.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_1.b)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(326f, arg_2.x, var_1.d.x, -448f)))) - vec4<f32>(_wgslsmith_f_op_f32(select(-1427f, -1030f, false)), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(round(var_1.b.x)), _wgslsmith_f_op_f32(arg_1.b.x * arg_2.x)))), -877f, arg_1.d, i32(-1i) * -2147483647i);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    let var_0 = (abs(vec3<i32>(u_input.a.x, select(-15568i, -1i, arg_2), ~u_input.a.x)) | firstLeadingBit(vec3<i32>(~u_input.c, abs(u_input.a.x), ~u_input.c))) | -vec3<i32>(~u_input.c ^ 9356i, u_input.c, arg_0.e);
    let var_1 = -vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, u_input.c, var_0.x, arg_0.a), vec4<i32>(32266i, -1i, arg_0.a, 3685i), arg_2), ~vec4<i32>(-59727i, 11250i, var_0.x, -3844i)), -20537i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, arg_0.e), var_0)) | -_wgslsmith_div_vec4_i32(~abs(vec4<i32>(2196i, -33414i, -25132i, var_0.x)), reverseBits(vec4<i32>(var_0.x, arg_0.a, arg_0.a, var_0.x)) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 79038u) % vec4<u32>(32u)));
    global0 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 1>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1116f)) * _wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x)) - 1103f) * _wgslsmith_f_op_f32(-arg_0.b.x))));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<u32>, 1>();
    let var_0 = func_2(~countOneBits(u_input.b.x), Struct_1(i32(-1i) * -u_input.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -444f), 1523f, _wgslsmith_f_op_f32(1000f + 1710f), _wgslsmith_div_f32(-1277f, -1000f))), 1000f, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2469f, 504f, -667f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1399f, 403f, -1074f) + vec3<f32>(304f, -1000f, -893f))))), u_input.c & u_input.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(711f, -1955f, 618f), vec3<f32>(103f, 941f, 711f))), vec3<f32>(_wgslsmith_div_f32(-2017f, 196f), _wgslsmith_f_op_f32(f32(-1f) * -212f), _wgslsmith_f_op_f32(floor(1000f))), u_input.a.x == u_input.c))));
    let var_1 = func_2(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, ~4294967295u)), Struct_1(~(~func_2(1u, var_0, vec3<f32>(-1090f, 1821f, var_0.d.x)).e), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 920f, var_0.d.x, var_0.d.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, 299f, var_0.c)))), _wgslsmith_f_op_f32(-1202f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-120f - var_0.d.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.d, vec3<f32>(var_0.b.x, var_0.d.x, var_0.d.x), vec3<bool>(false, false, false)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(var_0.d.x, var_0.b.x, true)), var_0.d.x)), -4999i), var_0.b.xyx);
    global0 = array<vec2<u32>, 1>();
    let var_2 = vec2<u32>(u_input.b.x, 4294967295u) | _wgslsmith_mult_vec2_u32(~(vec2<u32>(1u, u_input.b.x) | firstTrailingBit(global0[_wgslsmith_index_u32(22481u, 1u)])), countOneBits(global0[_wgslsmith_index_u32(~38898u, 1u)]));
    return func_2(4167u, var_1, vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(func_3(Struct_1(var_1.a ^ 2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(-804f, 1000f, -570f, var_1.c) - var_1.b), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_vec3_f32(var_1.b.xwy - var_0.d), var_1.a), vec4<u32>(~var_2.x, ~var_2.x, var_2.x, u_input.b.x), any(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(func_3(func_2(45961u, var_1, vec3<f32>(var_1.b.x, var_1.c, 217f)), max(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, u_input.b.x, 99008u, var_2.x), vec4<u32>(var_2.x, 50173u, 4294967295u, 1u)), vec4<u32>(u_input.b.x, 64862u, var_2.x, u_input.b.x)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 1>();
    var var_0 = func_1();
    var var_1 = func_1();
    let var_2 = func_2(u_input.b.x, func_1(), var_1.d);
    var var_3 = 1u > _wgslsmith_mult_u32(abs(~(~38153u)), 4294967295u >> (u_input.b.x % 32u));
    let var_4 = select(vec3<i32>(~var_1.e, -43114i, var_1.a), -(~(-firstTrailingBit(vec3<i32>(var_2.e, -2147483647i, var_1.e)))), any(select(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), var_0.d.x < var_0.b.x))));
    var var_5 = var_2.a;
    var var_6 = func_1();
    var_3 = !all(vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-(~(-1i)), -1i, select(reverseBits(var_4.x), var_2.a, true), _wgslsmith_sub_i32(abs(-26097i), var_2.e << (u_input.b.x % 32u))));
}

