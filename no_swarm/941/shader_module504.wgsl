struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    let var_0 = ~u_input.b.x;
    let var_1 = ~4294967295u;
    var var_2 = Struct_2(~_wgslsmith_mult_u32(0u, max(var_0, var_1)) ^ 6237u);
    var var_3 = 822f;
    let var_4 = vec2<i32>(firstLeadingBit(abs(reverseBits(68100i))), -26511i);
    return u_input.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>) -> i32 {
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(1u, func_3()), 1u, countOneBits(~(1u | arg_0.a) ^ abs(_wgslsmith_clamp_u32(0u, 4294967295u, arg_0.a))));
    var var_1 = Struct_2(4294967295u);
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))));
    var_3 = -1294f;
    return u_input.c;
}

fn func_1() -> bool {
    var var_0 = -vec4<i32>(min(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, u_input.c, -589i), vec3<i32>(u_input.d, u_input.c, -1i)), abs(u_input.d) | 2147483647i), u_input.c, func_2(Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 39071u, u_input.b.x, 17327u), u_input.b)), any(vec3<bool>(true, false, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-120f, -438f, -465f, -780f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1193f, -140f, 1465f, -145f)))), i32(-1i) * -9252i);
    var_0 = max(~reverseBits(vec4<i32>(u_input.d, ~79046i, 1i, 1i)), ~(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, var_0.x, u_input.d, var_0.x), abs(vec4<i32>(u_input.d, var_0.x, -33641i, 2147483647i))) ^ ~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -8517i, var_0.x), vec4<i32>(61586i, -33343i, u_input.c, u_input.c))));
    let var_1 = Struct_2(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.a), select(min(1u, u_input.b.x), ~_wgslsmith_div_u32(45803u, u_input.a.x), true && any(vec3<bool>(true, true, false))), u_input.a.x));
    var var_2 = var_1;
    var var_3 = Struct_2(var_2.a);
    return select(true, false, true);
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: vec3<u32>) -> u32 {
    var var_0 = Struct_2(arg_3.x);
    let var_1 = ~0u < arg_1.a;
    var var_2 = arg_3;
    var var_3 = arg_2;
    var var_4 = var_1;
    return u_input.a.x | (var_0.a >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_f32(1393f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(117f - -2665f), _wgslsmith_f_op_f32(f32(-1f) * -744f))), Struct_2(~u_input.a.x), func_1(), (u_input.b.xwy & ~vec3<u32>(0u, u_input.b.x, u_input.a.x)) ^ vec3<u32>(~u_input.b.x, ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x), u_input.b.wxw))));
    var var_1 = vec2<bool>(true, true);
    let var_2 = 483f;
    var_1 = vec2<bool>(false, var_1.x);
    let var_3 = !(!(!select(select(vec2<bool>(false, true), vec2<bool>(var_1.x, var_1.x), var_1.x), !vec2<bool>(true, var_1.x), !var_1.x)));
    var_1 = var_3;
    var_1 = vec2<bool>(!(!(!any(vec2<bool>(true, false)))), all(select(select(var_3, select(var_3, var_3, var_1.x), var_1.x), var_3, func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(52666u ^ u_input.a.x), u_input.b.yxz, (vec2<i32>(-1i) * -(vec2<i32>(u_input.c, 1i) | vec2<i32>(u_input.c, u_input.d))) ^ _wgslsmith_add_vec2_i32(select(-vec2<i32>(-1i, u_input.c), ~vec2<i32>(u_input.c, 2147483647i), var_3), firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -18047i), vec2<i32>(-1i, -1i)))), vec4<u32>(var_0.a, firstLeadingBit(u_input.b.x), select(_wgslsmith_mult_u32(~40669u, var_0.a ^ var_0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(64272u, 75912u, u_input.b.x, 34098u), ~vec4<u32>(1u, 37905u, u_input.a.x, 4881u)), !var_3.x), abs(u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1100f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))));
}

