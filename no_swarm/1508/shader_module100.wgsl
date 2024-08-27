struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    let var_0 = Struct_1(u_input.c);
    let var_1 = vec2<u32>(4294967295u, 1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(894f * -1167f) - _wgslsmith_f_op_f32(-1582f + -143f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-616f, -319f)) * _wgslsmith_f_op_f32(ceil(-766f))))), -290f, _wgslsmith_f_op_f32(-1f), 693f)));
    let var_3 = var_0.a.x;
    let var_4 = var_0;
    return true;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = Struct_1(abs(firstTrailingBit(~vec4<u32>(arg_0, 1u, u_input.d, u_input.c.x))));
    var_0 = Struct_1(var_0.a);
    var var_1 = select(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), func_3(_wgslsmith_mult_vec4_i32(~vec4<i32>(62864i, 0i, u_input.e.x, -8921i), u_input.b)), true || select(all(vec2<bool>(false, false)), false, true), all(vec3<bool>(true, true, true))), select(vec4<bool>(!any(vec3<bool>(false, true, true)), arg_0 >= abs(1922u), max(u_input.e.x, u_input.b.x) <= abs(arg_2.x), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)))), select(vec4<bool>(true, select(false, false, true), true, true), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true)), vec4<bool>(true, true && func_3(u_input.b), func_3(~u_input.b), false)), !select(true, all(vec4<bool>(false, true, false, false)), true));
    let var_2 = firstTrailingBit(vec3<i32>(firstLeadingBit(~(i32(-1i) * -45796i)), 22303i << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_0.a.yww, arg_1.xwy), _wgslsmith_div_u32(arg_0, arg_1.x)) % 32u), -2010i));
    var var_3 = ~(arg_2.x | -2147483647i) < var_2.x;
    return 0u;
}

fn func_1() -> Struct_2 {
    let var_0 = all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false));
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(~u_input.c.x, 82791u, u_input.d, 1u), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(u_input.d, u_input.d, u_input.d, 4294967295u)), abs(u_input.c)), ~u_input.c), firstTrailingBit(u_input.c)), u_input.c >> (vec4<u32>(func_2(_wgslsmith_add_u32(13337u, u_input.d), u_input.c, select(u_input.b.zy, vec2<i32>(u_input.e.x, 11813i), var_0)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 10114u, 0u, 53808u), vec4<u32>(0u, u_input.c.x, u_input.d, 4294967295u)), u_input.c.x, select(u_input.d, _wgslsmith_clamp_u32(0u, 21798u, 4294967295u), any(vec3<bool>(true, var_0, false)))) % vec4<u32>(32u)));
    let var_2 = Struct_2(!select(select(select(vec3<bool>(false, var_0, false), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0)), select(vec3<bool>(var_0, true, false), vec3<bool>(true, var_0, false), true), true), select(!vec3<bool>(false, true, var_0), vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(true, var_0, false), vec3<bool>(false, true, var_0), vec3<bool>(var_0, var_0, var_0))), any(select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), vec2<bool>(true, true)))), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(18927u, var_1), var_1 ^ 10671u, ~4294967295u, ~var_1), ~reverseBits(vec4<u32>(37376u, 17481u, 1u, 66343u)))), _wgslsmith_add_vec3_u32(u_input.c.zzz, vec3<u32>(var_1, u_input.d, ~1u)), Struct_1(u_input.c));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 5600i;
    var_0 = ~u_input.b.x;
    var_0 = -1i;
    let var_1 = _wgslsmith_mod_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.e.x, -2147483647i), vec3<i32>(u_input.e.x, u_input.b.x, 2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.b.x)), -vec3<i32>(31907i, -1i, -46330i)) << (~u_input.c.yyw % vec3<u32>(32u))), ~(-(~vec3<i32>(1i, -15288i, u_input.a))));
    var var_2 = _wgslsmith_f_op_f32(ceil(-820f)) <= _wgslsmith_f_op_f32(sign(1320f));
    let var_3 = func_1();
    var var_4 = vec2<i32>(1i, ~_wgslsmith_mult_i32(var_1.x, var_1.x << (~var_3.c.x % 32u)));
    var var_5 = ~abs(var_1.yy);
    var var_6 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, ~u_input.c.x), 34101u, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1170f), -524f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1381f), 1120f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-232f)) + -2139f)))), var_4.x);
}

