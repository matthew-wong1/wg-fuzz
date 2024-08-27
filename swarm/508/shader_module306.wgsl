struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1023f, -3397f)))))));
    var var_1 = Struct_4(Struct_3(all(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), Struct_1(select(vec2<u32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.c.x), vec2<u32>(55532u, u_input.b)), true), u_input.c.xxy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-126f, var_0)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))));
    let var_2 = !vec4<bool>(_wgslsmith_mod_i32(u_input.d.x ^ -72792i, u_input.d.x) >= u_input.d.x, true, false & all(!vec2<bool>(var_1.a.a, var_1.a.a)), true);
    var var_3 = Struct_2(var_1.a.b.a);
    var var_4 = Struct_2(vec2<u32>(59959u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~var_1.a.b.b, min(var_1.a.b.b, vec3<u32>(4294967295u, var_3.a.x, 0u))), var_1.a.b.b.x)));
    return 277f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>) -> Struct_4 {
    var var_0 = ~vec3<i32>(u_input.d.x, ~_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.d.x, u_input.d.x), 1i), _wgslsmith_clamp_i32(u_input.d.x, 46564i, -17711i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1608f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(230f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(trunc(498f)), arg_1.x)))));
    var_0 = vec3<i32>(~(~var_0.x), u_input.d.x, _wgslsmith_clamp_i32(~u_input.d.x, ~(-(var_0.x | var_0.x)), firstTrailingBit(0i) & -1i));
    let var_2 = Struct_1(arg_0, abs(u_input.c.xxx));
    let var_3 = !(!select(select(select(vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(arg_1.x, false, false)), vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), !select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(false, true, arg_1.x)), select(!vec3<bool>(false, arg_1.x, arg_1.x), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(false, arg_1.x, true), arg_1.x), true)));
    return Struct_4(Struct_3(!any(vec3<bool>(true, var_3.x, true)) != false, var_2, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-1052f - -373f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-875f, var_1))))));
}

fn func_1() -> Struct_4 {
    let var_0 = !vec2<bool>(true, (countOneBits(1u) <= ~u_input.a) | true);
    return func_2(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.a) << (firstLeadingBit(u_input.c.zw) % vec2<u32>(32u)), min(~vec2<u32>(0u, 4294967295u), ~vec2<u32>(40005u, u_input.b))), ~(u_input.a ^ _wgslsmith_sub_u32(4294967295u, 24648u))), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = true;
    let var_2 = ~vec3<i32>(~0i, 2147483647i, u_input.d.x);
    var_1 = var_0.a.a;
    let var_3 = var_0.a.b.a.x ^ 0u;
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec4<u32>(u_input.c.x, var_4.a.b.b.x, 1u >> (var_4.a.b.a.x % 32u), u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(598f, _wgslsmith_f_op_f32(select(var_4.a.c.x, 1073f, var_0.a.a)), var_0.a.a))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1658f, 168f)) - var_4.a.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.a.c.x, var_0.a.c.x)), _wgslsmith_f_op_f32(419f - -560f)))), _wgslsmith_add_vec4_i32(~abs(reverseBits(vec4<i32>(var_2.x, u_input.d.x, 0i, 33197i))), -(vec4<i32>(u_input.d.x, var_2.x, -2147483647i, u_input.d.x) ^ vec4<i32>(-10025i, var_2.x, var_2.x, u_input.d.x)) & _wgslsmith_div_vec4_i32(~vec4<i32>(13687i, -1i, -51i, -1i), vec4<i32>(-1i, u_input.d.x, -1i, -24646i) | vec4<i32>(var_2.x, u_input.d.x, var_2.x, var_2.x))), _wgslsmith_f_op_f32(-var_4.a.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_3, select(u_input.b << (35657u % 32u), var_0.a.b.a.x, false), func_2(~vec2<u32>(1u, var_0.a.b.a.x), !vec2<bool>(var_0.a.a, var_0.a.a)).a.b.b.x, 1u), u_input.c));
}

