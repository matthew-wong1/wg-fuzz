struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> f32 {
    var var_0 = Struct_2(!(!(u_input.b == firstLeadingBit(u_input.a.x))), Struct_1(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)) && false, 13737u));
    let var_1 = Struct_2(var_0.a, Struct_1(var_0.a, var_0.b.b));
    var var_2 = Struct_2(!(_wgslsmith_f_op_f32(sign(1f)) >= _wgslsmith_f_op_f32(-114f * _wgslsmith_f_op_f32(2114f - -547f))), var_0.b);
    var_0 = Struct_2(false, Struct_1(!select(true, false, true) & true, ((var_0.b.b | 4294967295u) | _wgslsmith_clamp_u32(u_input.a.x, var_0.b.b, 8961u)) | max(0u, 67690u)));
    var_2 = var_1;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(698f + 1709f), -519f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1605f), _wgslsmith_f_op_f32(round(-966f)))))))));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> i32 {
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-287f)), _wgslsmith_f_op_f32(max(800f, -975f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))) < _wgslsmith_f_op_f32(func_3(i32(-1i) * -2147483647i, vec2<i32>(-u_input.d.x, _wgslsmith_add_i32(u_input.c.x, 1i)))), Struct_1(u_input.d.x != 1i, arg_1.x >> ((4294967295u ^ _wgslsmith_mod_u32(50606u, arg_1.x)) % 32u)));
    let var_1 = _wgslsmith_div_f32(-131f, 836f);
    var var_2 = -_wgslsmith_add_vec3_i32(~(vec3<i32>(arg_0, 209i, arg_0) << (u_input.a % vec3<u32>(32u))), select(u_input.c << (arg_1.zyx % vec3<u32>(32u)), -vec3<i32>(arg_0, 1i, -4522i), select(vec3<bool>(var_0.b.a, false, var_0.b.a), vec3<bool>(false, var_0.b.a, true), vec3<bool>(var_0.a, false, false)))) | u_input.c;
    var var_3 = ~0u;
    var var_4 = true;
    return 0i;
}

fn func_1() -> Struct_1 {
    var var_0 = -(min(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -23660i), vec3<i32>(u_input.d.x, u_input.d.x, u_input.c.x)), u_input.d.x & select(u_input.d.x, 1i, false)) & _wgslsmith_dot_vec4_i32(vec4<i32>(~(-14884i), 0i, u_input.c.x, ~u_input.c.x), countOneBits(countOneBits(vec4<i32>(u_input.d.x, -2147483647i, 2147483647i, u_input.c.x)))));
    var_0 = 41271i;
    var_0 = abs(u_input.d.x);
    let var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 1i, 0i, min(47227i, -37554i)) ^ ~(-vec4<i32>(u_input.d.x, u_input.d.x, u_input.c.x, u_input.c.x)), vec4<i32>(_wgslsmith_mod_i32(~abs(1i), func_2(i32(-1i) * -1i, firstTrailingBit(vec4<u32>(36081u, u_input.b, 1u, 0u)))), -_wgslsmith_mod_i32(u_input.d.x, 1i) ^ -30665i, ~(-40878i), ~u_input.c.x));
    return Struct_1(true, abs(9245u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var_0 = 0u;
    let var_1 = Struct_2(true, func_1());
    var var_2 = var_1;
    var var_3 = 0u;
    let var_4 = ~abs(1u);
    var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(849f, -400f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1176f, -518f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-150f, -685f) + vec2<f32>(744f, -2006f)))), vec2<f32>(-1284f, _wgslsmith_f_op_f32(trunc(-1644f))))), vec3<i32>(1i, 10808i, u_input.c.x), _wgslsmith_div_vec4_u32(select(select(vec4<u32>(var_2.b.b, var_4, 0u, 10049u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b.b, var_2.b.b, 52331u, var_2.b.b), vec4<u32>(0u, u_input.b, 18117u, 1u)), var_1.a), ~_wgslsmith_add_vec4_u32(vec4<u32>(5515u, 4294967295u, u_input.a.x, 1u), vec4<u32>(1651u, var_1.b.b, 1u, 4294967295u)), select(vec4<bool>(false, var_2.a, true, var_1.b.a), vec4<bool>(var_2.b.a, var_2.b.a, false, var_2.b.a), !vec4<bool>(true, var_1.b.a, var_1.b.a, true))), select(vec4<u32>(~u_input.b, u_input.a.x, 4294967295u, ~6662u), ~vec4<u32>(21096u, 4294967295u, var_1.b.b, 24829u) ^ (vec4<u32>(24437u, 0u, 47199u, 1u) >> (vec4<u32>(4294967295u, var_4, u_input.a.x, 3155u) % vec4<u32>(32u))), !select(vec4<bool>(true, var_2.b.a, var_1.b.a, true), vec4<bool>(false, false, true, true), var_1.a))), _wgslsmith_div_vec2_i32(vec2<i32>(~_wgslsmith_add_i32(37880i, u_input.c.x), -17265i), ~countOneBits(vec2<i32>(-14910i, -23545i))), _wgslsmith_f_op_f32(round(-389f)));
}

