struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_2(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1389f), _wgslsmith_div_f32(-158f, 1041f), _wgslsmith_div_f32(-1435f, 655f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1918f, 577f, 788f), vec3<f32>(1284f, 1000f, -1007f), false))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))))), _wgslsmith_div_i32(abs(4641i), arg_0) | -min(arg_0 >> (u_input.d.x % 32u), -2147483647i), reverseBits(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(56754i, -115i)) & (countOneBits(arg_0) | -849i)), u_input.c);
    let var_1 = ~reverseBits(~_wgslsmith_clamp_u32(reverseBits(var_0.e), _wgslsmith_mod_u32(u_input.c, 55276u), u_input.c ^ 0u));
    var var_2 = !(_wgslsmith_mult_u32(~1u, ~(1u >> (u_input.b % 32u))) < abs(abs(var_0.e)));
    let var_3 = var_0;
    var_2 = !(var_0.b.x < _wgslsmith_f_op_f32(f32(-1f) * -174f));
    return Struct_1(u_input.a.x);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: Struct_2) -> bool {
    var var_0 = -select(vec3<i32>(-1i) * -(vec3<i32>(1i, arg_0.a, arg_0.a) >> (vec3<u32>(0u, arg_3.e, arg_1.x) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.d, 1468i, arg_3.d, -20026i) << (arg_1 % vec4<u32>(32u)), -vec4<i32>(-27768i, arg_0.a, 14143i, -71432i)), 34236i, -firstLeadingBit(1i)), !(!arg_3.a));
    var var_1 = ~arg_1;
    var_0 = select(min(-_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-33543i, arg_0.a, arg_3.c)), vec3<i32>(u_input.a.x, arg_3.d, arg_3.d) | vec3<i32>(arg_0.a, -25965i, 2147483647i)), select(~vec3<i32>(arg_0.a, var_0.x, -17755i), vec3<i32>(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, 1i, var_0.x), vec3<i32>(var_0.x, 0i, -1i)), ~(-52888i)), true)), abs(abs(vec3<i32>(var_0.x, u_input.a.x, -17848i))), !all(arg_2.xzw));
    return select(!(!select(false, true, arg_3.a) || true), false, arg_2.x);
}

fn func_1() -> bool {
    let var_0 = select(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-34198i, u_input.a.x, -65533i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, 79525i, u_input.a.x)) << (~vec4<u32>(9631u, 1u, u_input.c, 8306u) % vec4<u32>(32u))), -firstLeadingBit(vec4<i32>(u_input.a.x, 0i, -2147483647i, 14855i) << (vec4<u32>(1u, u_input.c, u_input.c, u_input.d.x) % vec4<u32>(32u))), false) >> (~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 58407u, 70056u, u_input.d.x), vec4<u32>(0u, 1u, u_input.b, u_input.d.x), vec4<u32>(u_input.b, u_input.d.x, u_input.b, u_input.b)) >> (vec4<u32>(~u_input.b, ~u_input.b, u_input.c & 3486u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = func_2(0i);
    let var_2 = reverseBits(u_input.d);
    var var_3 = any(vec4<bool>(false, true, func_3(Struct_1(var_1.a), ~vec4<u32>(u_input.d.x, u_input.c, var_2.x, u_input.d.x), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), Struct_2(true, vec3<f32>(774f, 948f, -1000f), var_1.a, 0i, 1u)) & true, -_wgslsmith_mult_i32(5508i, var_1.a) >= -1i));
    var_1 = func_2(0i);
    return !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-427f, _wgslsmith_f_op_f32(f32(-1f) * -319f))) - 342f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(396f, -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~min(_wgslsmith_div_u32(abs(u_input.d.x), 36051u >> (1u % 32u)), u_input.d.x & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 16326u), vec2<u32>(u_input.d.x, u_input.c))), u_input.b);
    var var_1 = (53170u << (0u % 32u)) < var_0.x;
    var_1 = true;
    let var_2 = 704f;
    var var_3 = Struct_2(func_1(), vec3<f32>(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_2))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2))), 575f), firstTrailingBit(1i), u_input.a.x, var_0.x);
    var var_4 = ((abs(var_3.e) | 55339u) & 34852u) & ~_wgslsmith_mod_u32(~var_3.e, u_input.b);
    let var_5 = vec2<i32>(_wgslsmith_div_i32(~_wgslsmith_sub_i32(~u_input.a.x, func_2(var_3.d).a), _wgslsmith_add_i32(2147483647i, 0i)), _wgslsmith_dot_vec2_i32(-select(vec2<i32>(u_input.a.x, -60729i), vec2<i32>(-23672i, -14662i), false), countOneBits((u_input.a << (vec2<u32>(var_0.x, 0u) % vec2<u32>(32u))) & (vec2<i32>(var_3.d, 1i) & u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -vec3<i32>(-var_5.x, countOneBits(var_5.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, var_3.c, -47012i), vec4<i32>(-2147483647i, u_input.a.x, var_5.x, -2421i))), _wgslsmith_clamp_vec3_u32(~min(vec3<u32>(1u, 43488u, 4294967295u) >> (vec3<u32>(u_input.b, var_0.x, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(0u, 11998u, var_3.e)), vec3<u32>(abs(21269u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(7948u, var_3.e), vec2<u32>(var_3.e, var_3.e)) % 32u), u_input.d.x, _wgslsmith_div_u32(69221u, _wgslsmith_dot_vec3_u32(vec3<u32>(16510u, var_0.x, 32172u), vec3<u32>(1149u, 47809u, var_3.e)))), firstLeadingBit(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(11584u, 2641u, var_0.x), vec3<u32>(var_0.x, var_3.e, 0u), vec3<bool>(var_3.a, var_3.a, var_3.a)), ~vec3<u32>(20053u, 29962u, var_3.e), ~vec3<u32>(1u, u_input.c, 4278u)))), ~4294967295u, var_5);
}

