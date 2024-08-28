struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1) -> bool {
    let var_0 = !vec3<bool>(true, true, all(vec4<bool>(true, true, true, true)) & false);
    let var_1 = select(!var_0.zy, !(!select(!var_0.yx, vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, var_0.x))), (select(15657u, u_input.d.x & 1u, true) >= arg_2.a.x) || true);
    var var_2 = arg_0.c;
    let var_3 = arg_0.b.a.d.x;
    var_2 = Struct_2(Struct_1(select(vec4<u32>(10457u, arg_2.a.x, arg_2.b, arg_2.a.x) & max(var_2.a.a, vec4<u32>(arg_0.c.a.a.x, 19154u, arg_2.a.x, arg_0.a.a.a.a.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, 17792u, u_input.b), arg_2.a | vec4<u32>(0u, 0u, 6217u, 68512u)), !all(vec4<bool>(false, var_1.x, true, false))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.a.a.b, u_input.d.x), vec2<u32>(1u, 4294967295u)), ~u_input.d.x), abs(~4294967295u)), -(~vec2<i32>(var_2.b.x, -1i)), vec2<f32>(1116f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b.c.d.x * var_3), _wgslsmith_f_op_f32(arg_2.d.x - arg_2.d.x), true)))), min(reverseBits(vec4<i32>(arg_1 << (8069u % 32u), 1i | arg_1, _wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.yy), 11356i)), arg_0.a.a.b), arg_0.b.c);
    return true;
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = u_input.c;
    var var_1 = vec2<bool>(u_input.b > ~arg_0.a.x, !(!func_3(Struct_4(Struct_3(Struct_2(arg_0, vec4<i32>(var_0, -6662i, 1i, u_input.e), arg_0)), Struct_2(Struct_1(vec4<u32>(arg_0.a.x, 23535u, arg_0.b, 0u), arg_0.b, vec2<i32>(arg_0.c.x, -1i), vec2<f32>(arg_0.d.x, -378f)), vec4<i32>(2147483647i, var_0, -32592i, u_input.a.x), Struct_1(vec4<u32>(4294967295u, u_input.d.x, 4294967295u, u_input.b), 60168u, vec2<i32>(var_0, -22667i), vec2<f32>(arg_0.d.x, arg_0.d.x))), Struct_2(arg_0, vec4<i32>(arg_0.c.x, -68714i, 73129i, var_0), arg_0), 13552i), 28127i, arg_0)));
    var var_2 = select(~(~4294967295u), 4294967295u, false);
    var var_3 = Struct_4(Struct_3(Struct_2(arg_0, vec4<i32>(2147483647i, ~37516i, ~var_0, -16970i << (u_input.d.x % 32u)), arg_0)), Struct_2(arg_0, vec4<i32>(abs(u_input.c) | var_0, -29964i, arg_0.c.x, -_wgslsmith_add_i32(var_0, arg_0.c.x)), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, 1u, 4294967295u) << (vec4<u32>(u_input.d.x, arg_0.b, arg_0.b, 20335u) % vec4<u32>(32u)), arg_0.a), ~u_input.d.x | ~u_input.d.x, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.c.x, var_0), u_input.a.zy) >> (~arg_0.a.xy % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1098f)))), Struct_2(arg_0, (_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -1i, var_0, 1985i), vec4<i32>(u_input.e, var_0, -38119i, arg_0.c.x)) | vec4<i32>(-2147483647i, 37394i, 29312i, var_0)) ^ max(vec4<i32>(-36092i, -49399i, u_input.a.x, arg_0.c.x) << (vec4<u32>(82014u, arg_0.b, 5059u, 73539u) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, u_input.c, var_0, 9698i) << (arg_0.a % vec4<u32>(32u))), Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, arg_0.a.x, 4809u), arg_0.a)), countOneBits(_wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(u_input.d.x, arg_0.a.x, u_input.d.x, 54345u))), vec2<i32>(-29406i, _wgslsmith_mult_i32(17356i, -31346i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1314f, -780f)))), -13432i);
    let var_4 = vec3<i32>(_wgslsmith_mult_i32(u_input.c, -75921i), ~var_3.a.a.a.c.x >> (arg_0.b % 32u), var_0);
    return vec4<bool>(select(!any(!vec4<bool>(var_1.x, true, false, var_1.x)), func_3(Struct_4(Struct_3(var_3.a.a), Struct_2(var_3.b.c, vec4<i32>(var_0, -1i, 1i, 0i), var_3.c.c), Struct_2(var_3.b.c, var_3.b.b, arg_0), u_input.a.x), (-70073i << (var_3.a.a.a.a.x % 32u)) << (min(48680u, 4294967295u) % 32u), arg_0), any(select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, var_1.x), all(vec3<bool>(var_1.x, false, var_1.x))))), countOneBits(var_3.d) <= _wgslsmith_dot_vec2_i32(var_3.a.a.a.c, ~var_4.yz | (vec2<i32>(12740i, arg_0.c.x) >> (vec2<u32>(var_3.a.a.c.a.x, u_input.b) % vec2<u32>(32u)))), var_1.x, !func_3(Struct_4(Struct_3(Struct_2(arg_0, vec4<i32>(arg_0.c.x, var_4.x, var_3.a.a.c.c.x, -2147483647i), arg_0)), var_3.a.a, var_3.a.a, var_4.x), max(-14158i & var_3.d, 17202i), Struct_1(vec4<u32>(39784u, 74888u, u_input.d.x, var_3.a.a.a.a.x), _wgslsmith_dot_vec3_u32(var_3.c.c.a.xzx, vec3<u32>(57139u, 1u, u_input.d.x)), u_input.a.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-859f, arg_0.d.x)))));
}

fn func_4(arg_0: bool) -> Struct_4 {
    let var_0 = Struct_4(Struct_3(Struct_2(Struct_1(vec4<u32>(0u, u_input.b, 33074u, u_input.b), reverseBits(0u), u_input.a.yz, vec2<f32>(1212f, -1060f)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.c, u_input.c, u_input.e), vec4<i32>(-1i, u_input.e, 0i, -16509i)), -vec4<i32>(2147483647i, u_input.a.x, 26767i, u_input.e), select(vec4<i32>(u_input.a.x, 43426i, u_input.e, -66257i), vec4<i32>(u_input.c, -2147483647i, -1i, u_input.e), vec4<bool>(true, true, false, arg_0))), Struct_1(~vec4<u32>(u_input.d.x, 1u, 48438u, 20736u), firstLeadingBit(u_input.d.x), ~vec2<i32>(2147483647i, -24258i), _wgslsmith_f_op_vec2_f32(vec2<f32>(237f, -1492f) * vec2<f32>(-1059f, 371f))))), Struct_2(Struct_1(~vec4<u32>(u_input.b, u_input.d.x, 0u, u_input.b) | _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 52103u, 1u, u_input.b), vec4<u32>(14570u, u_input.b, u_input.b, u_input.d.x)), u_input.d.x, reverseBits(~u_input.a.zy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1177f, 2133f), vec2<f32>(1000f, -1224f))))), _wgslsmith_mod_vec4_i32(~vec4<i32>(31415i, -1i, 37394i, u_input.e), -vec4<i32>(u_input.a.x, u_input.e, -2147483647i, u_input.a.x)) & ~firstLeadingBit(vec4<i32>(0i, -26981i, -5483i, u_input.e)), Struct_1(~(~vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)), u_input.d.x, -_wgslsmith_mult_vec2_i32(u_input.a.zy, vec2<i32>(u_input.e, u_input.c)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1112f, 237f) - vec2<f32>(-604f, 405f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-654f, -935f) + vec2<f32>(1480f, 2446f)))))), Struct_2(Struct_1(max(~vec4<u32>(1u, 1u, u_input.b, 51798u), vec4<u32>(u_input.b, u_input.d.x, 35146u, 55590u)), reverseBits(select(5737u, 51289u, false)), u_input.a.xy, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(567f, -1178f), vec2<f32>(-240f, -189f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-970f, 377f))))), select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, -2147483647i, 21409i, 0i), vec4<i32>(u_input.a.x, u_input.c, u_input.c, u_input.c)), vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c) & vec4<i32>(u_input.a.x, -8625i, -2147483647i, 7394i), !vec4<bool>(arg_0, arg_0, false, false)) >> (min(vec4<u32>(44110u, 4294967295u, 46850u, u_input.b) ^ vec4<u32>(87346u, u_input.b, u_input.d.x, 1u), vec4<u32>(u_input.b, u_input.d.x, u_input.b, u_input.d.x)) % vec4<u32>(32u)), Struct_1(~abs(vec4<u32>(u_input.d.x, u_input.d.x, 61912u, u_input.d.x)), u_input.b, vec2<i32>(abs(-10501i), 0i), vec2<f32>(-773f, _wgslsmith_f_op_f32(select(-356f, 871f, arg_0))))), -2147483647i);
    var var_1 = var_0.b.c.d.x;
    let var_2 = vec3<bool>(arg_0 || (_wgslsmith_mod_u32(var_0.a.a.a.a.x, 1u) < u_input.d.x), true, arg_0);
    let var_3 = vec2<bool>(true, true);
    return Struct_4(var_0.a, var_0.a.a, var_0.b, _wgslsmith_div_i32(u_input.e, _wgslsmith_dot_vec2_i32(~u_input.a.yx, vec2<i32>(~var_0.c.a.c.x, min(u_input.a.x, u_input.a.x)))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(any(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), func_2(Struct_1(vec4<u32>(19101u, 13730u, u_input.d.x, 57021u), u_input.b, vec2<i32>(1i, -19008i), vec2<f32>(-738f, 989f))), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), !func_2(Struct_1(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.b), u_input.b, u_input.a.yy, vec2<f32>(1038f, -654f))))));
    let var_1 = func_3(func_4(true), 11703i, Struct_1(vec4<u32>(u_input.b, _wgslsmith_clamp_u32(abs(var_0.b.a.b), 13950u, 1u), 67198u, ~var_0.b.a.b), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b, var_0.a.a.c.a.x, u_input.b), ~0u), ~(-(~u_input.a.zy)), _wgslsmith_f_op_vec2_f32(-var_0.b.a.d)));
    let var_2 = Struct_3(Struct_2(Struct_1(var_0.b.c.a, ~(~4294967295u), vec2<i32>(var_0.d, -1i), vec2<f32>(_wgslsmith_div_f32(-1432f, var_0.b.a.d.x), _wgslsmith_div_f32(782f, var_0.b.c.d.x))), var_0.c.b, Struct_1(vec4<u32>(0u, u_input.d.x, u_input.d.x, var_0.a.a.c.b) >> ((var_0.b.a.a >> (vec4<u32>(36927u, var_0.c.a.a.x, 7526u, var_0.b.a.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_sub_u32(64564u, 1u)), vec2<i32>(var_0.d, _wgslsmith_mult_i32(2147483647i, 1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.a.d.x, 798f)))));
    let var_3 = ~(reverseBits(~(~var_2.a.c.a)) & ~var_0.a.a.c.a);
    let var_4 = var_2.a.b;
    return func_4(true).b;
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, ~(-2147483647i), abs(abs(0i))), abs(func_4(false).c.b.zxz), ~vec3<i32>(1i, select(-2147483647i, max(1i, 5686i), true), arg_0.c.c.x));
    var var_1 = -1003f;
    var var_2 = func_4(all(!vec2<bool>(u_input.b > arg_0.a.b, true))).a;
    var var_3 = arg_0.c.c.x;
    var var_4 = countOneBits(1u);
    return func_4((any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)) & true) && false).b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(_wgslsmith_add_u32(u_input.b, 53935u) >> (u_input.d.x % 32u)) | 0u);
    let var_1 = Struct_2(func_5(func_1()), abs(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-7438i, u_input.e, -2147483647i, -1i)), ~vec4<i32>(31716i, 1i, -13289i, u_input.e)) | _wgslsmith_sub_vec4_i32(select(vec4<i32>(2147483647i, 1i, u_input.e, u_input.c), vec4<i32>(u_input.e, u_input.a.x, u_input.e, u_input.c), vec4<bool>(false, true, true, false)), -vec4<i32>(u_input.a.x, u_input.a.x, 24248i, u_input.e))), Struct_1(vec4<u32>(u_input.d.x, _wgslsmith_mult_u32(~u_input.b, 17105u), ~1u, u_input.b), _wgslsmith_mod_u32(func_1().a.b, firstTrailingBit(min(u_input.d.x, u_input.d.x))), u_input.a.yy, _wgslsmith_f_op_vec2_f32(vec2<f32>(1450f, 1592f) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-411f, -741f)))))));
    let var_2 = vec2<bool>(all(vec4<bool>(true, true, true, true)), true);
    var_0 = var_1.c.a.x;
    var_0 = 0u;
    var var_3 = var_1;
    var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u);
}

