struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec2<bool>(true, true), false, 4294967295u, 6037i));

var<private> global1: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> vec2<f32> {
    let var_0 = reverseBits(~arg_0.a.c);
    let var_1 = reverseBits(_wgslsmith_dot_vec3_i32(-(vec3<i32>(-2147483647i, -2147483647i, 1i) & vec3<i32>(2147483647i, 2147483647i, global0.a.d)) >> (firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.c, arg_0.a.c, var_0), vec3<u32>(arg_0.a.c, 0u, 0u))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(select(-vec3<i32>(global0.a.d, -2147483647i, 28266i), vec3<i32>(-2147483647i, global1.x, 29384i), select(vec3<bool>(arg_1.a.x, true, arg_1.b), vec3<bool>(global0.a.a.x, arg_1.a.x, true), arg_1.b)), ~(-vec3<i32>(arg_0.a.d, -1i, 0i)))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-521f + -678f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f) * _wgslsmith_f_op_f32(f32(-1f) * -1134f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))))));
    var var_3 = abs(~select(~vec3<i32>(global0.a.d, arg_1.d, 1i), vec3<i32>(var_1, arg_1.d, arg_1.d), !vec3<bool>(arg_0.a.a.x, arg_1.b, true)) | firstTrailingBit(select(select(vec3<i32>(2147483647i, 2147483647i, 25330i), vec3<i32>(arg_0.a.d, -11763i, global0.a.d), vec3<bool>(true, false, true)), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.a.d, var_1, -2879i), vec3<i32>(arg_0.a.d, -2147483647i, global0.a.d)), any(vec4<bool>(false, true, true, true)))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(557f * _wgslsmith_div_f32(482f, _wgslsmith_f_op_f32(ceil(1472f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(415f, 509f)), _wgslsmith_f_op_f32(-1f)))));
    return vec2<f32>(-722f, -1416f);
}

fn func_2() -> f32 {
    let var_0 = Struct_2(global0.a.b, u_input.a, global0.a.d, true);
    let var_1 = vec4<u32>(firstLeadingBit(global0.a.c), firstLeadingBit(var_0.b), u_input.a, 38003u);
    let var_2 = global0.a;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(global0.a), Struct_1(global0.a.a, false, 108976u, -1i), _wgslsmith_add_u32(var_2.c, 0u))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-593f, -432f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-725f, 2564f) * vec2<f32>(-1000f, 1000f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-415f, 936f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -188f), 482f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-823f, -114f), vec2<f32>(1012f, -637f))))));
    let var_4 = Struct_3(Struct_1(select(var_2.a, select(global0.a.a, global0.a.a, var_3.x == 189f), var_2.a), !global0.a.a.x, ~max(var_1.x, 210u) >> ((_wgslsmith_dot_vec4_u32(var_1, vec4<u32>(76086u, 29578u, 48979u, var_1.x)) >> (u_input.a % 32u)) % 32u), abs(u_input.b.x) >> (u_input.a % 32u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1102f * _wgslsmith_f_op_f32(-1076f * var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1057f - var_3.x) + _wgslsmith_f_op_f32(select(-435f, var_3.x, false)))))), -1334f);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(func_2());
    var var_1 = arg_0;
    var_1 = global0.a;
    var var_2 = arg_2.xz;
    let var_3 = Struct_3(arg_0);
    return Struct_3(Struct_1(var_1.a, !var_1.a.x, var_1.c, _wgslsmith_sub_i32(-4442i, -(-2147483647i >> (var_1.c % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(1i, -2147483647i, countOneBits(~u_input.b.x));
    global1 = ~vec2<i32>(-37981i, 28298i);
    global0 = func_1(global0.a, all(!(!(!global0.a.a))), vec4<u32>(u_input.a, _wgslsmith_sub_u32(147529u, u_input.a) ^ _wgslsmith_add_u32(22428u, 0u), ~88056u, _wgslsmith_mod_u32(~global0.a.c, firstTrailingBit(4294967295u))) & (vec4<u32>(u_input.a >> (u_input.a % 32u), ~u_input.a, 26369u ^ u_input.a, 42649u) ^ (min(vec4<u32>(global0.a.c, 0u, global0.a.c, global0.a.c), vec4<u32>(799u, 60908u, 0u, u_input.a)) & vec4<u32>(global0.a.c, u_input.a, 23878u, global0.a.c))));
    var var_1 = true;
    var var_2 = func_1(func_1(func_1(global0.a, true, firstTrailingBit(vec4<u32>(4294967295u, 8190u, u_input.a, 54426u))).a, global0.a.b, _wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.a, global0.a.c, 1u, u_input.a) & vec4<u32>(global0.a.c, u_input.a, global0.a.c, global0.a.c)), reverseBits(vec4<u32>(26832u, global0.a.c, global0.a.c, u_input.a) << (vec4<u32>(4294967295u, u_input.a, u_input.a, 0u) % vec4<u32>(32u))))).a, false, _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(98448u, u_input.a, u_input.a, 3004u), countOneBits(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))), vec4<u32>(21935u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.c, global0.a.c, global0.a.c, 1u), vec4<u32>(25596u, u_input.a, global0.a.c, u_input.a)), vec4<u32>(global0.a.c, u_input.a, 110354u, 4294967295u)), u_input.a, 54513u))).a;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_mult_vec4_i32(firstTrailingBit(~select(vec4<i32>(global0.a.d, var_2.d, global0.a.d, global1.x), vec4<i32>(global0.a.d, -2147483647i, 0i, global0.a.d), vec4<bool>(var_2.b, false, var_2.b, global0.a.b))), firstLeadingBit(firstLeadingBit(vec4<i32>(46861i, u_input.b.x, -72508i, global0.a.d) & vec4<i32>(-2147483647i, -50461i, 27470i, u_input.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), -((countOneBits(vec4<i32>(global1.x, global0.a.d, 36362i, var_2.d)) >> (vec4<u32>(var_2.c, global0.a.c, u_input.a, var_2.c) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(vec4<i32>(var_0, var_0, u_input.b.x, 17189i), vec4<i32>(u_input.b.x, 5176i, var_2.d, global1.x))));
}

