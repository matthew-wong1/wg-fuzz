struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<u32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_5(Struct_2(~(~vec2<i32>(u_input.b, u_input.b)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(469f, -653f, 496f, 413f) * vec4<f32>(2286f, 1365f, 750f, -1588f)), vec4<f32>(-933f, -1000f, 438f, -1000f)), ~vec3<u32>(73773u, u_input.e, 0u), 1u), -1i, -1i), select(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, all(vec2<bool>(true, true)), any(vec2<bool>(false, false))), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))), vec4<bool>(true, true, true, true), true), _wgslsmith_div_vec3_u32(abs(u_input.c), ~u_input.c), Struct_4(Struct_2(select(_wgslsmith_sub_vec2_i32(vec2<i32>(-30870i, u_input.b), vec2<i32>(u_input.b, u_input.b)), vec2<i32>(37257i, u_input.b) | vec2<i32>(u_input.b, u_input.b), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(271f, -592f, -1177f, 401f)), vec3<u32>(1u, u_input.d, u_input.a), ~u_input.d), u_input.b, i32(-1i) * -34581i)));
    var_0 = Struct_5(Struct_2(_wgslsmith_sub_vec2_i32(abs(~var_0.d.a.a), vec2<i32>(-24706i, -var_0.a.a.x)), var_0.a.b, -58021i, 23359i), !vec4<bool>(!(var_0.b.x || var_0.b.x), any(vec2<bool>(var_0.b.x, var_0.b.x)), !all(var_0.b.wy), all(!vec4<bool>(false, false, var_0.b.x, var_0.b.x))), countOneBits(u_input.c), var_0.d);
    global0 = (var_0.a.d >> (var_0.c.x % 32u)) ^ _wgslsmith_dot_vec2_i32(var_0.a.a & vec2<i32>(var_0.d.a.d & var_0.d.a.d, -38907i), -reverseBits(var_0.d.a.a));
    global0 = ~u_input.b;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-106f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1898f - -1438f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.d.a.b.a.x)))), all(vec3<bool>(all(var_0.b), all(var_0.b), 9364u >= var_0.c.x)))));
    return u_input.c.x;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(174f, 186f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1141f + 1713f), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1529f)) + _wgslsmith_f_op_f32(select(1066f, -1000f, arg_0.x))))), vec3<u32>(_wgslsmith_div_u32(47100u, ~_wgslsmith_add_u32(4294967295u, u_input.d)), 4294967295u, 46955u), func_3());
    global0 = u_input.b;
    global0 = ~(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(39211i, u_input.b, u_input.b, 17381i), countOneBits(vec4<i32>(1469i, u_input.b, u_input.b, -2147483647i)))) << (49628u % 32u));
    var var_1 = ~52711u;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(var_0.a)), ~u_input.c, abs(u_input.d));
    return Struct_1(var_0.a, ~var_0.b, 1u << (~(~u_input.e) % 32u));
}

fn func_1() -> Struct_1 {
    global0 = firstLeadingBit(u_input.b) ^ -8581i;
    global0 = u_input.b;
    var var_0 = -905f;
    let var_1 = Struct_2(-(~(~(~vec2<i32>(-1i, 1i)))), func_2(vec3<bool>(true, false, true)), 0i, -2147483647i);
    var var_2 = var_1.b.a.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.b.a, var_1.b.a)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_1.b.a)))))), var_1.b.b | ~(u_input.c ^ (vec3<u32>(1u, 22287u, 40059u) << (u_input.c % vec3<u32>(32u)))), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = min(vec2<i32>(1i, -(i32(-1i) * -u_input.b)), _wgslsmith_mult_vec2_i32(vec2<i32>(max(-68912i, 1i), -u_input.b) >> (u_input.c.yx % vec2<u32>(32u)), vec2<i32>(_wgslsmith_clamp_i32(-u_input.b, 0i, _wgslsmith_add_i32(15862i, 1i)), ~(-26617i))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(var_0.a)))))), ~var_0.b, (func_3() << (u_input.c.x % 32u)) & 4294967295u);
    let var_2 = vec3<f32>(-183f, -332f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.x))))), _wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)))));
    let var_3 = Struct_5(Struct_2(firstLeadingBit(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_1.x), vec2<i32>(-2147483647i, 59843i)))), func_2(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(false, true, true), false)), u_input.b, 0i), select(!vec4<bool>(select(false, true, true), true, true, true), vec4<bool>(true, true, true || all(vec4<bool>(false, false, true, false)), any(vec2<bool>(false, false))), true), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(42985u >> (var_0.b.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 57675u, var_0.b.x, var_0.b.x), vec4<u32>(u_input.a, u_input.c.x, 1127u, var_0.c)), u_input.a), _wgslsmith_clamp_vec3_u32(u_input.c, var_0.b, u_input.c) << (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 10104u, var_0.b.x), vec3<u32>(var_0.c, 4426u, u_input.c.x)) % vec3<u32>(32u))), ~min(var_0.b, vec3<u32>(var_0.b.x, u_input.c.x, var_0.b.x)) >> (var_0.b % vec3<u32>(32u))), Struct_4(Struct_2(firstLeadingBit(~var_1), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, 3063f, var_0.a.x, var_2.x))), ~vec3<u32>(var_0.b.x, 51535u, 0u), var_0.c), 2147483647i, countOneBits(~0i))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), var_2.x)), func_1().a.x, var_3.d.a.b.a.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1527f * var_2.x)), var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec3<u32>(countOneBits(1u), u_input.a, _wgslsmith_div_u32(_wgslsmith_sub_u32(1u, u_input.a), 4294967295u >> (var_0.b.x % 32u)) << (var_0.c % 32u)), func_1().b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(var_0.c, var_3.c.x & 1u, ~22642u, 1u), ~vec3<i32>(_wgslsmith_add_i32(var_3.a.c, var_3.d.a.c), ~u_input.b, ~1i) | -vec3<i32>(_wgslsmith_sub_i32(var_3.a.c, 44623i), 37911i, 48329i), vec4<u32>(~max(47260u << (u_input.c.x % 32u), 73339u >> (1u % 32u)), ~select(countOneBits(4294967295u), var_3.c.x, true), 61108u, min(var_3.c.x, ~4294967295u)));
}

