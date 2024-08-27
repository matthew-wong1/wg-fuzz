struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_3, arg_3: vec3<bool>) -> vec4<u32> {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(1u, ~_wgslsmith_mod_u32(4294967295u, 3984u))), 18274u, firstTrailingBit(1u), ~96062u);
    var_0 = ~vec4<u32>(4294967295u, 16782u, 18347u << (1u % 32u), ~(~abs(24737u)));
    let var_1 = ~max(66554u, firstTrailingBit(abs(~71488u)));
    var var_2 = _wgslsmith_add_u32(var_0.x, 0u);
    var_2 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(19141u, var_1, var_0.x), 0u, firstTrailingBit(var_1)), _wgslsmith_clamp_u32(var_1, ~31228u << ((var_1 | var_0.x) % 32u), abs(abs(var_1))) << (min(28827u, ~var_1) % 32u));
    return firstTrailingBit(firstTrailingBit(vec4<u32>(abs(var_1) & 1u, var_0.x >> (1u % 32u), var_1, abs(countOneBits(89826u)))));
}

fn func_2(arg_0: i32) -> vec4<u32> {
    let var_0 = true;
    let var_1 = _wgslsmith_clamp_i32(-2147483647i, -arg_0, _wgslsmith_mod_i32(~u_input.b.x, ~(_wgslsmith_add_i32(arg_0, 1i) | -arg_0)));
    return func_3((_wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.a.x, 1i), vec3<i32>(2147483647i, arg_0, arg_0)) << (~vec3<u32>(8052u, 0u, 4294967295u) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_i32(u_input.b, select(u_input.b, u_input.b, var_0)), var_0, Struct_3(select(vec4<bool>(var_0, var_0, var_0, true), !vec4<bool>(var_0, false, var_0, var_0), var_0)), !vec3<bool>(var_0, true, true)) ^ abs(vec4<u32>(~(~35624u), _wgslsmith_add_u32(1u, func_3(vec3<i32>(-2147483647i, u_input.a.x, var_1), var_0, Struct_3(vec4<bool>(true, false, var_0, true)), vec3<bool>(var_0, true, false)).x), 1u, 5339u));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_1) -> u32 {
    var var_0 = arg_2;
    let var_1 = func_2(-(~_wgslsmith_clamp_i32(max(-84010i, -2147483647i), ~u_input.a.x, _wgslsmith_mod_i32(u_input.b.x, u_input.a.x))));
    var_0 = Struct_3(select(arg_1.a, select(select(vec4<bool>(arg_0, arg_0, arg_1.a.x, false), vec4<bool>(arg_2.a.x, true, arg_0, arg_1.a.x), select(arg_1.a, var_0.a, vec4<bool>(arg_2.a.x, true, arg_0, arg_1.a.x))), var_0.a, !select(vec4<bool>(false, true, arg_0, false), var_0.a, vec4<bool>(false, true, false, false))), false));
    var var_2 = Struct_3(!select(!select(vec4<bool>(false, var_0.a.x, true, var_0.a.x), vec4<bool>(arg_0, var_0.a.x, false, var_0.a.x), arg_1.a.x), !select(vec4<bool>(true, false, false, false), vec4<bool>(arg_1.a.x, false, false, arg_0), arg_1.a), select(arg_1.a, vec4<bool>(false, arg_2.a.x, false, arg_2.a.x), arg_1.a.x)));
    var var_3 = -4270i;
    return ~_wgslsmith_clamp_u32(~countOneBits(_wgslsmith_sub_u32(95563u, arg_3.a)), ~0u, arg_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.xz << (~(~vec2<u32>(max(71282u, 1u), func_1(false, Struct_3(vec4<bool>(true, false, true, false)), Struct_3(vec4<bool>(false, false, true, true)), Struct_1(0u)))) % vec2<u32>(32u));
    let var_1 = Struct_2(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x & -13576i, _wgslsmith_add_i32(8833i, 1i)), u_input.b.yz, u_input.a)), ~func_2(u_input.a.x).x, select(!vec4<bool>(true, all(vec3<bool>(false, false, true)), any(vec3<bool>(false, false, true)), true), select(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), false), vec4<bool>(75982i > u_input.a.x, true, true, true), true), vec4<bool>(true, true, true, true)));
    let var_2 = -2147483647i;
    var_0 = max(_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, var_1.a.x), vec2<i32>(reverseBits(var_2), (4153i | u_input.a.x) & var_1.a.x)), firstTrailingBit(u_input.b.yz));
    var var_3 = ~vec3<i32>(u_input.b.x & firstTrailingBit(-var_2), _wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -9430i, u_input.a.x, -1i), vec4<i32>(435i, var_2, 2147483647i, var_1.a.x)), ~1i), var_1.a.x);
    var_3 = ~vec3<i32>(45392i, -_wgslsmith_dot_vec4_i32(max(vec4<i32>(2147483647i, 8634i, 16398i, 0i), vec4<i32>(-29062i, -9862i, var_2, var_2)), vec4<i32>(12139i, 0i, -21168i, 1i)), 2147483647i & u_input.b.x);
    let var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(select(select(_wgslsmith_add_vec3_i32(u_input.b, u_input.b), u_input.b, !var_4.yyx), vec3<i32>(~_wgslsmith_mod_i32(-20572i, 57604i), 1i, u_input.a.x << (var_1.b % 32u)), select(var_1.c.xyw, !vec3<bool>(var_1.c.x, true, var_4.x), all(select(vec4<bool>(false, true, var_1.c.x, true), vec4<bool>(var_4.x, var_4.x, var_1.c.x, true), var_4.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(899f - 1569f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2542f + 1633f) + _wgslsmith_f_op_f32(max(1000f, -783f)))) + vec2<f32>(291f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1000f) + _wgslsmith_f_op_f32(642f * -1591f)))), reverseBits(reverseBits(u_input.b)), ~func_2(-23826i).xw, var_0.x);
}

