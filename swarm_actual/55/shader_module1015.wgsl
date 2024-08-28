struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec3<f32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_3,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<f32> {
    let var_0 = 29190u;
    let var_1 = arg_0;
    var var_2 = reverseBits(var_1.c.xzz);
    let var_3 = Struct_3(0u);
    var var_4 = -1i;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -631f, _wgslsmith_f_op_f32(sign(-1344f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), vec3<f32>(-584f, arg_1.x, arg_1.x)))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-arg_1.x), 173f)))));
}

fn func_2() -> Struct_2 {
    var var_0 = (vec3<i32>(-1i) * -u_input.d.xwz) ^ u_input.d.zwy;
    var var_1 = ~52509u;
    var_0 = vec3<i32>(max(-12047i, 56274i), -1i, 5475i) ^ vec3<i32>(_wgslsmith_dot_vec2_i32(abs(~var_0.yy), -var_0.xz), -2147483647i, u_input.c.x);
    var var_2 = Struct_4(u_input.d.ywy, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(1u, u_input.a.x, vec4<i32>(1051i, u_input.d.x, 18429i, -2147483647i), true), vec2<f32>(-1471f, -699f))), vec3<f32>(620f, -1130f, 1345f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1644f, -313f, -2015f)))), Struct_3(u_input.a.x), u_input.c | (var_0.xz >> (u_input.a % vec2<u32>(32u))));
    var var_3 = _wgslsmith_mult_i32(i32(-1i) * -firstLeadingBit(u_input.c.x), u_input.c.x) | -1i;
    return Struct_2(vec2<bool>(all(vec3<bool>(true, true, select(false, true, true))), false), true, _wgslsmith_f_op_vec3_f32(ceil(var_2.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(869f, var_2.b.x, 1655f))))), Struct_1(77238u, 97181u << (countOneBits(var_2.c.a) % 32u), max(select(vec4<i32>(2147483647i, var_2.a.x, var_0.x, 1i), vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, u_input.c.x), vec4<bool>(true, true, false, false)) | vec4<i32>(1374i, u_input.b, var_0.x, 1i), vec4<i32>(~u_input.d.x, ~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.d.x), vec3<i32>(var_0.x, var_2.d.x, -2147483647i)), select(var_0.x, var_2.a.x, true))), true));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2();
    let var_1 = var_0.c.yx;
    var var_2 = vec4<u32>(24353u, 1u, reverseBits(u_input.a.x | var_0.e.a), ~10539u & ~(_wgslsmith_mult_u32(56212u, var_0.e.a) ^ _wgslsmith_div_u32(51507u, 85763u)));
    var var_3 = Struct_2(!var_0.a, 4294967295u == (~abs(var_2.x) | 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c - var_0.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(u_input.a.x, var_2.x, vec4<i32>(2147483647i, 1i, 1i, -19801i), false), vec2<f32>(-451f, -1331f))))), func_2().e);
    var var_4 = func_2();
    return Struct_4(vec3<i32>(max(_wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.d.ww, var_3.e.c.yw)), u_input.c.x), ~_wgslsmith_div_i32(_wgslsmith_add_i32(-54239i, var_3.e.c.x), 52436i), var_0.e.c.x), var_4.d, Struct_3(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.x, 0u), u_input.a))), _wgslsmith_add_vec2_i32(vec2<i32>(~_wgslsmith_add_i32(-36866i, var_4.e.c.x), 6294i), var_3.e.c.yz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1408f)))));
    let var_2 = Struct_1(abs(~(~var_0.c.a)), u_input.a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u ^ u_input.a.x, ~66528u), ~u_input.a) % 32u), vec4<i32>(-1i, var_0.a.x, 22567i, var_0.a.x), true);
    var var_3 = 497u;
    let var_4 = var_1.x;
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_5.e.a, max(_wgslsmith_dot_vec2_u32(u_input.a, select(vec2<u32>(4294967295u, var_0.c.a) >> (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)), vec2<u32>(1u, 1u), true)), 0u), firstLeadingBit(vec3<i32>(abs(u_input.b), -u_input.b, var_0.d.x)), 746u, reverseBits(firstTrailingBit(firstTrailingBit(vec4<i32>(15933i, 27996i, 1i, 0i)))));
}

