struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26>;

var<private> global1: vec4<u32>;

var<private> global2: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(168f, 1000f, -2073f, -816f), vec4<f32>(1000f, 925f, 1110f, -883f), vec4<f32>(-227f, -1430f, 861f, -3240f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_2) -> bool {
    var var_0 = arg_1 < (~(-u_input.a.x) | abs(-24980i));
    let var_1 = ~global1.x;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-724f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_2.x - arg_2.x)) - 412f)), -1399f, _wgslsmith_f_op_f32(arg_0.c - -134f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c, 680f, arg_0.a.b.x)) * _wgslsmith_f_op_f32(-arg_2.x)))));
    var_2 = _wgslsmith_f_op_vec4_f32(trunc(global2[_wgslsmith_index_u32(~(~var_1), 3u)]));
    var var_3 = arg_0.a.b.zzw;
    return false;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_mult_u32(firstLeadingBit(global1.x), abs(~81024u));
    let var_1 = vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(countOneBits(firstLeadingBit(arg_0.wzw)), -(vec3<i32>(2147483647i, arg_1.c.a, -1i) << (vec3<u32>(4294967295u, 4294967295u, global1.x) % vec3<u32>(32u))));
    global1 = ~max(countOneBits(vec4<u32>(global1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.x), vec2<u32>(1u, 35338u)), global1.x >> (global1.x % 32u), firstLeadingBit(global1.x))), firstTrailingBit(~(vec4<u32>(4294967295u, 0u, global1.x, 13632u) << (vec4<u32>(34193u, global1.x, global1.x, 4294967295u) % vec4<u32>(32u)))));
    let var_2 = select(vec4<bool>(true, !select(arg_1.b.b.x, all(arg_1.b.b.yzx), arg_2.b.x), !any(arg_2.b), arg_1.b.b.x), vec4<bool>(false | arg_2.b.x, false, all(vec4<bool>(!arg_1.a.a.b.x, arg_2.b.x, arg_1.a.b, arg_1.a.a.b.x)), false), !any(!select(vec4<bool>(arg_2.b.x, false, false, false), vec4<bool>(false, true, true, false), false)));
    var var_3 = arg_1;
    return ~19426i;
}

fn func_2() -> Struct_2 {
    let var_0 = min(6923u, firstTrailingBit(reverseBits(16536u)));
    global0 = array<vec2<i32>, 26>();
    var var_1 = Struct_1(u_input.a.x, vec4<bool>(any(vec4<bool>(true, true, true, true)), !any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true & any(vec3<bool>(true, true, true)), false));
    let var_2 = u_input.a.x << (global1.x % 32u);
    var var_3 = vec4<i32>(u_input.a.x, min(func_3(u_input.a, Struct_3(Struct_2(Struct_1(1i, var_1.b), var_1.b.x, -214f), Struct_1(var_2, vec4<bool>(false, var_1.b.x, false, var_1.b.x)), Struct_1(1i, vec4<bool>(true, false, var_1.b.x, var_1.b.x)), u_input.a.x, global2[_wgslsmith_index_u32(var_0, 3u)]), Struct_1(~var_1.a, var_1.b)), -2147483647i), min(_wgslsmith_div_i32(25041i, ~1i), var_2), 27237i);
    return Struct_2(Struct_1(-u_input.a.x, vec4<bool>(var_1.b.x, true, var_1.b.x, ~1u >= _wgslsmith_div_u32(global1.x, var_0))), min(func_3(u_input.a, Struct_3(Struct_2(Struct_1(-30153i, vec4<bool>(var_1.b.x, var_1.b.x, false, var_1.b.x)), var_1.b.x, 442f), Struct_1(var_3.x, var_1.b), Struct_1(-24834i, var_1.b), 23397i, vec4<f32>(418f, 839f, -331f, -1185f)), Struct_1(var_2, vec4<bool>(var_1.b.x, true, var_1.b.x, var_1.b.x))), ~0i) < -3644i, -1112f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -213f;
    let var_1 = Struct_1(abs(~(-43955i)), vec4<bool>(true, any(vec4<bool>(true, true, func_1(Struct_2(Struct_1(2147483647i, vec4<bool>(false, true, true, true)), false, -263f), 20128i, vec2<f32>(-1310f, -982f), Struct_2(Struct_1(u_input.a.x, vec4<bool>(true, false, false, false)), true, 478f)), true)), !func_1(func_2(), _wgslsmith_sub_i32(1i, u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(832f, -1081f)), Struct_2(Struct_1(u_input.a.x, vec4<bool>(true, true, true, false)), true, 465f)), select(true, true || all(vec3<bool>(true, false, false)), !(global1.x <= global1.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(global1.x, 3u)] + _wgslsmith_div_vec4_f32(vec4<f32>(732f, -723f, 344f, -1086f), global2[_wgslsmith_index_u32(~global1.x, 3u)]))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global2[_wgslsmith_index_u32(59103u, 3u)]))));
    let var_3 = 22749u;
    var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-248f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-266f * var_2.x) * 347f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-470f + var_2.x))))), _wgslsmith_f_op_f32(f32(-1f) * -198f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1138f - var_2.x), var_2.x)))), u_input.a.x);
}

