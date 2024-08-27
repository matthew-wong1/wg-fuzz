struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(0u, 13917u, 34240u), vec3<u32>(19440u, 63645u, 59981u), vec3<u32>(38894u, 4294967295u, 64578u), vec3<u32>(4294967295u, 4294967295u, 61170u), vec3<u32>(4294967295u, 4375u, 6067u), vec3<u32>(72981u, 44747u, 1u), vec3<u32>(34020u, 0u, 0u), vec3<u32>(4294967295u, 86696u, 14407u), vec3<u32>(42335u, 1u, 47651u), vec3<u32>(65191u, 8426u, 38612u), vec3<u32>(28641u, 1u, 0u), vec3<u32>(4294967295u, 1u, 53659u), vec3<u32>(76842u, 15860u, 1u), vec3<u32>(4294967295u, 37453u, 4523u), vec3<u32>(1u, 1u, 1u), vec3<u32>(41943u, 18156u, 53121u), vec3<u32>(4294967295u, 74933u, 4294967295u), vec3<u32>(4294967295u, 34973u, 1u), vec3<u32>(0u, 63086u, 1u), vec3<u32>(9569u, 23382u, 1u), vec3<u32>(0u, 59924u, 0u), vec3<u32>(1u, 1u, 41940u), vec3<u32>(5663u, 4294967295u, 82532u), vec3<u32>(1u, 37706u, 16669u), vec3<u32>(39612u, 0u, 0u), vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 26769u, 34195u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 26857u, 4294967295u), vec3<u32>(8493u, 0u, 18174u), vec3<u32>(110232u, 5675u, 4294967295u), vec3<u32>(4294967295u, 6699u, 4294967295u));

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(1484f, 431f, -945f), vec3<f32>(-776f, -544f, -1418f), vec3<f32>(573f, 574f, 686f), vec3<f32>(165f, -512f, 776f), vec3<f32>(399f, -756f, -518f), vec3<f32>(-830f, -910f, -1238f), vec3<f32>(-585f, -406f, 926f), vec3<f32>(483f, -1529f, 1205f), vec3<f32>(1230f, -610f, 418f), vec3<f32>(-688f, -1000f, 1000f), vec3<f32>(635f, 722f, 806f), vec3<f32>(-1909f, -329f, 2165f), vec3<f32>(1000f, 1461f, 1000f), vec3<f32>(866f, -296f, -103f), vec3<f32>(1562f, -265f, -1000f), vec3<f32>(315f, 155f, -324f), vec3<f32>(1536f, -1000f, -278f), vec3<f32>(-412f, -415f, -1286f), vec3<f32>(-1339f, -1033f, -710f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-123f, global1.c))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<u32> {
    return _wgslsmith_div_vec2_u32(u_input.a.zy, ~(~(vec2<u32>(global1.d, global1.e.x) | u_input.a.zx)) >> (~(~vec2<u32>(1u, global1.d)) % vec2<u32>(32u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<i32> {
    global0 = array<vec3<u32>, 32>();
    var var_0 = _wgslsmith_add_u32(((reverseBits(1316u) | arg_0.x) << (~u_input.a.x % 32u)) | 4294967295u, _wgslsmith_mod_u32(13178u, ~((arg_1.e.x & arg_0.x) & 16195u)));
    let var_1 = vec3<bool>(true, arg_1.a, any(!(!vec3<bool>(arg_1.a, global1.a, false))));
    let var_2 = all(!select(select(vec4<bool>(var_1.x, var_1.x, global1.a, global1.a), !vec4<bool>(global1.a, arg_1.a, global1.a, false), select(vec4<bool>(var_1.x, true, true, false), vec4<bool>(var_1.x, global1.a, var_1.x, false), true)), vec4<bool>(false, var_1.x || false, -8894i <= u_input.b, global1.a), vec4<bool>(u_input.b < -2147483647i, arg_1.c > -891f, u_input.a.x != arg_1.e.x, true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-327f, global1.c), vec2<f32>(global1.c, 212f), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(491f, -238f) - vec2<f32>(-978f, -1000f)) - _wgslsmith_div_vec2_f32(vec2<f32>(284f, global1.c), vec2<f32>(arg_1.c, 245f)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.c, 311f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2182f, global1.c) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, arg_1.c))))))));
    return min(vec2<i32>(1i, ~(-_wgslsmith_sub_i32(u_input.b, u_input.b))), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(62158i, 539i)), firstLeadingBit(vec2<i32>(10624i, -1i))), ~min(countOneBits(vec2<i32>(u_input.b, -20826i)), vec2<i32>(u_input.b, u_input.b))));
}

fn func_2() -> Struct_1 {
    let var_0 = 4294967295u;
    let var_1 = ~(~(~(~countOneBits(u_input.a.wyx))));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1434f + -1018f), _wgslsmith_f_op_f32(select(global1.c, 853f, true)))), global1.c)));
    let var_3 = max(select(~(~(-vec2<i32>(u_input.b, u_input.b))), func_4(var_1, Struct_1(false, global1.b | vec2<u32>(u_input.a.x, 1u), _wgslsmith_f_op_f32(global1.c * var_2.x), ~19027u, func_3(vec4<bool>(global1.a, false, true, global1.a), Struct_1(true, vec2<u32>(global1.b.x, var_1.x), global1.c, var_1.x, vec2<u32>(u_input.a.x, u_input.a.x))))), global1.a), vec2<i32>(_wgslsmith_mult_i32(-1i, -countOneBits(22464i)), -(~(~u_input.b))));
    global1 = Struct_1(true | select(false, global1.a, true), select(~(global1.b << (u_input.a.yy % vec2<u32>(32u))), u_input.a.ww, (global1.a | true) != all(vec4<bool>(global1.a, true, true, global1.a))), _wgslsmith_f_op_f32(exp2(global1.c)), abs(_wgslsmith_mult_u32(1u, abs(var_0))), ~vec2<u32>(1u, var_1.x));
    return Struct_1(all(select(vec4<bool>(global1.a, true, !global1.a, !global1.a), vec4<bool>(true, global1.c >= -446f, global1.a, global1.a), vec4<bool>(true, true, true, true))), vec2<u32>(_wgslsmith_add_u32(min(u_input.a.x & u_input.a.x, ~4294967295u), var_1.x), ~u_input.a.x), var_2.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 1u, abs(1u)), _wgslsmith_sub_vec4_u32(~firstTrailingBit(vec4<u32>(25433u, 12615u, 0u, 45569u)), _wgslsmith_div_vec4_u32(firstTrailingBit(u_input.a), ~vec4<u32>(84384u, 0u, 27588u, global1.e.x)))), u_input.a.wy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(all(vec2<bool>(1i < ~u_input.b, global1.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(~0u, u_input.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a.x, 0u), abs(~u_input.a.xw))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-408f)))) - -1553f)), ~1u, firstTrailingBit(~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(global1.e, global1.e, vec2<u32>(global1.e.x, 10098u)), vec2<u32>(u_input.a.x, 73413u), _wgslsmith_mod_vec2_u32(vec2<u32>(global1.b.x, u_input.a.x), global1.e))));
    let var_0 = func_2();
    global1 = Struct_1(false, vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(64587u), 1u) << (~_wgslsmith_mult_u32(global1.b.x, 0u) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.a.zxy, min(u_input.a.zzy, vec3<u32>(4294967295u, 74351u, 37652u)), u_input.a.wxy), reverseBits(abs(vec3<u32>(var_0.e.x, 53803u, global1.d))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1194f, 1280f)), _wgslsmith_f_op_f32(min(var_0.c, -2933f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - var_0.c))), global1.c), func_2().d << (var_0.d % 32u), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.b.x, u_input.a.x), _wgslsmith_dot_vec2_u32(~u_input.a.wy, ~vec2<u32>(10261u, 0u))), max(func_3(vec4<bool>(false, true, true, var_0.a), var_0).x, 22866u) >> (1u % 32u)));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(802f, var_0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.c)), -828f)))))));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(-1186f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1159f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 494f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-473f, 1863f) - vec2<f32>(global1.c, var_1)))))));
    var var_3 = ~min(~countOneBits(u_input.a.yxy), abs(global0[_wgslsmith_index_u32(~(~global1.d), 32u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, 1593f), vec2<f32>(1057f, -1697f), true)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(151f, var_0.c)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, global1.c) - vec2<f32>(var_2.x, global1.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 750f) + vec2<f32>(395f, -217f)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, -441f), vec2<f32>(var_1, -1037f), var_0.a)) + vec2<f32>(var_0.c, global1.c))), all(select(!vec2<bool>(var_0.a, false), !vec2<bool>(global1.a, true), !vec2<bool>(true, var_0.a))))), var_0.b.x & 1u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))) - _wgslsmith_f_op_f32(trunc(global1.c))), _wgslsmith_f_op_f32(abs(var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(var_2.x + -114f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.x, var_1)) * var_0.c)));
}

