struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = -1364f;
    var var_1 = ~vec3<u32>(_wgslsmith_add_u32(arg_0.a, arg_0.a), ~(0u & _wgslsmith_dot_vec4_u32(arg_0.e.a, vec4<u32>(1u, 15065u, 37328u, 120236u))), 14591u);
    let var_2 = _wgslsmith_div_vec4_i32(-(~vec4<i32>(18425i, 2147483647i, u_input.a, 1i)) & firstTrailingBit(select(vec4<i32>(33926i, 13748i, 1i, u_input.b) << (vec4<u32>(arg_0.e.a.x, u_input.c, var_1.x, var_1.x) % vec4<u32>(32u)), ~vec4<i32>(u_input.a, -2147483647i, u_input.e, u_input.e), true)), _wgslsmith_sub_vec4_i32(select(firstLeadingBit(vec4<i32>(2147483647i, -1i, 0i, -31020i)), -abs(vec4<i32>(-74228i, -9181i, u_input.a, -2147483647i)), select(vec4<bool>(arg_0.c.a.x, false, false, arg_0.c.a.x), !vec4<bool>(arg_0.c.a.x, false, arg_0.c.a.x, arg_0.c.a.x), vec4<bool>(false, arg_0.c.a.x, arg_0.c.a.x, false))), vec4<i32>(-1i) * -(~vec4<i32>(u_input.b, u_input.b, 13240i, u_input.e))));
    let var_3 = Struct_3(~select(var_1.x | var_1.x, 33994u, true), Struct_2(arg_0.b.a, abs(~1u) >> (var_1.x % 32u)), arg_0.c, select(_wgslsmith_clamp_vec2_u32(arg_0.e.a.xz, var_1.xy, ~(~arg_0.b.a.yw)), vec2<u32>(abs(_wgslsmith_add_u32(var_1.x, u_input.c)), _wgslsmith_add_u32(0u, var_1.x)), !((arg_0.c.a.x & arg_0.c.a.x) & arg_0.c.a.x)), Struct_2(_wgslsmith_add_vec4_u32(abs(~arg_0.b.a), arg_0.b.a), reverseBits(12791u)));
    let var_4 = _wgslsmith_f_op_f32(round(745f));
    return vec4<bool>(select(true, all(var_3.c.a), arg_0.c.a.x & !var_3.c.a.x), var_3.c.a.x, !(u_input.c >= ~1u), all(select(arg_0.c.a.yz, arg_0.c.a.zx, true)));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_2(firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(1u, 0u, ~arg_1.x), abs(_wgslsmith_clamp_u32(56129u, 1u, u_input.c)), 27803u, u_input.d)), ~arg_1.x);
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = Struct_1(select(!select(func_3(Struct_3(0u, Struct_2(vec4<u32>(var_1.b, 1u, var_0.b, arg_1.x), 104098u), Struct_1(vec4<bool>(false, true, true, false)), var_1.a.wx, Struct_2(vec4<u32>(u_input.d, 84742u, var_0.b, 37170u), 49061u))), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false)), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false)), true));
    var_1 = Struct_2(~vec4<u32>(~4294967295u, _wgslsmith_add_u32(arg_1.x, ~41295u), ~_wgslsmith_add_u32(59223u, 33628u), firstTrailingBit(abs(var_1.a.x))), 33656u);
    return !var_2.a;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(select(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1563f)), ~_wgslsmith_add_vec3_u32(vec3<u32>(42909u, 0u, 0u), vec3<u32>(u_input.c, 4294967295u, 4294967295u))), vec4<bool>(true, false, any(vec2<bool>(true, true)) | all(vec4<bool>(false, true, true, true)), !(223u == u_input.d)), func_3(Struct_3(u_input.d, Struct_2(vec4<u32>(u_input.d, 22356u, 28576u, 105721u), 99288u), Struct_1(vec4<bool>(true, true, true, true)), vec2<u32>(u_input.d, u_input.d), Struct_2(vec4<u32>(76597u, u_input.c, 0u, 92818u), 1u))).x));
    var var_1 = !var_0.a.zyz;
    var var_2 = abs(5206u & (u_input.d >> (u_input.c % 32u)));
    let var_3 = 1i;
    var var_4 = var_0.a;
    return Struct_2(max(abs(max(vec4<u32>(0u, 15934u, 21765u, 133304u), vec4<u32>(41594u, u_input.d, u_input.d, 9809u)) ^ reverseBits(vec4<u32>(u_input.d, u_input.d, 0u, 47187u))), ~(~(~vec4<u32>(u_input.d, 4294967295u, u_input.d, 25601u)))), reverseBits(_wgslsmith_clamp_u32(u_input.c, _wgslsmith_sub_u32(4294967295u, u_input.c), max(4294967295u, u_input.c) | 37247u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = u_input.a;
    var_1 = 1i & ~u_input.e;
    var var_2 = Struct_3(reverseBits(1u), func_1(), Struct_1(!vec4<bool>(false, all(vec3<bool>(false, false, false)), true, false)), vec2<u32>(var_0.b, var_0.a.x), Struct_2(func_1().a, ~(_wgslsmith_dot_vec4_u32(var_0.a, var_0.a) | ~58290u)));
    var_0 = Struct_2(_wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, 0u, 0u, var_2.d.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(38562u, 4294967295u, var_2.a, u_input.d), abs(var_0.a))) & select(~var_0.a | (var_2.b.a >> (var_0.a % vec4<u32>(32u))), var_2.b.a, var_2.c.a.x), ~7011u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1038f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(592f * 1000f) - -2287f)))), abs(~(~(~0u))));
}

