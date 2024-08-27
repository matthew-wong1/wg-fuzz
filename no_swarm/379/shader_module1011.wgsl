struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(-52360i, -42553i, 102266i), vec3<i32>(-1533i, 21820i, 53300i), vec3<i32>(37327i, 46796i, 10326i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec3<i32>(37413i, -1i, -43068i), vec3<i32>(0i, -32467i, 1i), vec3<i32>(-26086i, 30779i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, 41063i), vec3<i32>(2147483647i, 4027i, -1i), vec3<i32>(8440i, 0i, -1i), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<i32>(33521i, 25440i, 2147483647i), vec3<i32>(-6042i, -3000i, 0i), vec3<i32>(-1i, -28737i, -8065i), vec3<i32>(51283i, -28675i, -1i), vec3<i32>(-30860i, 1i, -32225i), vec3<i32>(i32(-2147483648), 1i, 1378i));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_4(countOneBits(arg_1.zyx ^ arg_1.xwx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.e, _wgslsmith_f_op_f32(-arg_0.x))));
    global0 = array<vec3<i32>, 17>();
    var var_1 = !vec4<bool>(arg_2.a.a.x, false, true, arg_2.b.b);
    var var_2 = arg_2;
    global0 = array<vec3<i32>, 17>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a.e)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<f32> {
    let var_0 = Struct_2(select(select(vec2<bool>(true, any(vec4<bool>(true, false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), true), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, abs(arg_0.x) ^ (arg_0.x & arg_0.x), min(75000i, min(arg_0.x, arg_0.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(-65150i, -21752i >> (u_input.a.x % 32u), max(10877i, arg_0.x)), -_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, -2147483647i), vec3<i32>(arg_0.x, arg_0.x, -43893i)))), Struct_1(_wgslsmith_sub_i32(-8330i, 5033i), !select(true, all(vec2<bool>(false, true)), false), vec3<bool>(true, true, true)), _wgslsmith_clamp_u32(u_input.a.x | (abs(u_input.a.x) >> (u_input.a.x % 32u)), (max(u_input.a.x, u_input.a.x) ^ 15781u) << (~0u % 32u), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(321f)), _wgslsmith_f_op_f32(sign(596f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec2<f32>(-994f, -497f), u_input.a, Struct_3(Struct_2(vec2<bool>(false, false), global0[_wgslsmith_index_u32(42056u, 17u)], Struct_1(91i, true, vec3<bool>(false, false, false)), 0u, 1000f), Struct_1(2147483647i, false, vec3<bool>(true, true, true))))))))));
    global0 = array<vec3<i32>, 17>();
    global0 = array<vec3<i32>, 17>();
    let var_1 = _wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(select(77642u, 1u, false), 1u), _wgslsmith_dot_vec3_u32(u_input.a.wzx, vec3<u32>(var_0.d, 4291u, u_input.a.x) >> (vec3<u32>(0u, var_0.d, 1u) % vec3<u32>(32u)))), u_input.a.wz << (vec2<u32>(1u << (0u % 32u), 1u | var_0.d) % vec2<u32>(32u))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.e)) + 1000f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1188f, var_0.e), _wgslsmith_f_op_f32(-var_0.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(vec2<f32>(-377f, var_0.e), reverseBits(vec4<u32>(0u, 0u, var_1, var_1)), Struct_3(var_0, Struct_1(-2871i, var_0.c.c.x, var_0.c.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.e))))) - _wgslsmith_f_op_f32(-var_0.e)), var_0.e);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1586f) + 1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e, -971f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))), !all(vec4<bool>(true, true, var_0.a.x, var_0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -623f), var_0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_2.x)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x + -1876f), _wgslsmith_f_op_f32(-var_2.x), var_0.a.x | true)))));
}

fn func_1() -> i32 {
    global0 = array<vec3<i32>, 17>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(867f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(864f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(315f, -300f), vec4<u32>(80039u, u_input.a.x, 4294967295u, u_input.a.x), Struct_3(Struct_2(vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.a.x, 17u)], Struct_1(-1i, true, vec3<bool>(true, true, true)), 9323u, 385f), Struct_1(0i, false, vec3<bool>(true, false, true))))), -188f), _wgslsmith_f_op_f32(-1013f - -993f)) * _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), global0[_wgslsmith_index_u32(~u_input.a.x, 17u)], vec3<i32>(1i, 0i, -1i))))));
    var var_1 = Struct_1(1i >> (u_input.a.x % 32u), false, select(vec3<bool>(true, any(vec3<bool>(true, true, true)), true), vec3<bool>(false, false, all(vec3<bool>(true, true, true))), !all(vec4<bool>(true, true, false, false)) && false));
    let var_2 = ~(~u_input.a.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(-155f)), -147f, _wgslsmith_f_op_f32(floor(var_0.x)), var_0.x)));
    return (i32(-1i) * -1i) & var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 17>();
    var var_0 = vec4<bool>(true && any(vec2<bool>(true, true)), true, all(vec4<bool>(true, true, true, true)), max(_wgslsmith_clamp_i32(1i, func_1(), abs(2147483647i)), 1i) != -68134i);
    global0 = array<vec3<i32>, 17>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(601f, _wgslsmith_f_op_f32(927f + 294f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -152f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -702f))))) + _wgslsmith_f_op_f32(step(-1329f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-606f, 491f))), u_input.a, Struct_3(Struct_2(var_0.xx, vec3<i32>(1i, 2147483647i, -58427i), Struct_1(20775i, var_0.x, var_0.wxw), 10363u, 371f), Struct_1(10604i, true, var_0.zwz)))))));
    global0 = array<vec3<i32>, 17>();
    global0 = array<vec3<i32>, 17>();
    var var_2 = -_wgslsmith_mult_vec2_i32(vec2<i32>(~(-2147483647i), -(0i >> (1u % 32u))), vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -38737i), vec2<i32>(-1i, -17722i)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_i32(var_2.x, ~(-2147483647i)) | min(~23601i, var_2.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1)))), var_1, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(358f, 811f), vec2<f32>(var_1, 1066f))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1288u, 0u, u_input.a.x, u_input.a.x), u_input.a, vec4<u32>(4294967295u, 1u, u_input.a.x, 1u)), Struct_3(Struct_2(var_0.xx, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], Struct_1(var_2.x, var_0.x, var_0.xxw), u_input.a.x, var_1), Struct_1(var_2.x, true, vec3<bool>(var_0.x, var_0.x, var_0.x))))), -179f), select(max(countOneBits(reverseBits(vec4<i32>(37858i, var_2.x, 46641i, -34221i))), vec4<i32>(0i, func_1(), var_2.x, firstTrailingBit(var_2.x))), firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_2.x, -10498i, var_2.x), vec4<i32>(var_2.x, var_2.x, 42081i, 2147483647i)), vec4<i32>(var_2.x, var_2.x, 213i, 2147483647i) & vec4<i32>(var_2.x, 65276i, var_2.x, var_2.x))), select(vec4<bool>(true | var_0.x, true, var_0.x, var_0.x), vec4<bool>(!var_0.x, true, var_0.x, var_0.x), true)));
}

