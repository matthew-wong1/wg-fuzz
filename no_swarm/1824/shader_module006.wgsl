struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(Struct_1(vec4<i32>(-2025i, 0i, -1i, 1i)), vec3<i32>(-30509i, 2147483647i, -340i), vec4<i32>(1i, 1i, -1i, -1i)), Struct_4(Struct_1(vec4<i32>(2147483647i, -49098i, 2147483647i, 48536i)), vec3<i32>(i32(-2147483648), 1i, 39978i), vec4<i32>(2147483647i, i32(-2147483648), -65669i, -1i)), Struct_4(Struct_1(vec4<i32>(1i, -23929i, 49171i, -15313i)), vec3<i32>(-1i, 31050i, 2147483647i), vec4<i32>(1i, 1115i, 2147483647i, 14046i)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: i32) -> Struct_2 {
    var var_0 = true;
    let var_1 = Struct_2(vec3<bool>((countOneBits(u_input.c.x) >= _wgslsmith_clamp_i32(arg_2, arg_2, 0i)) & false, firstLeadingBit(0i) >= arg_2, true), Struct_1(countOneBits(_wgslsmith_sub_vec4_i32(u_input.c, select(u_input.c, u_input.c, false)))));
    return var_1;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_2 {
    global0 = array<Struct_4, 3>();
    global0 = array<Struct_4, 3>();
    var var_0 = ~(~firstLeadingBit(vec4<u32>(0u, u_input.a.x, u_input.a.x, 6219u)) >> (abs(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(15559u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(17268u, 36776u, 18415u, u_input.a.x), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(28928u, u_input.a.x, 25810u, u_input.a.x) | abs(vec4<u32>(u_input.a.x, 4294967295u, 17320u, u_input.a.x))));
    var var_1 = ~vec2<i32>(_wgslsmith_div_i32(17225i, u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, arg_0.b.a.x, -41653i), -arg_0.b.a.xwx)) << (~(~(~var_0.yx)) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(1f + -1370f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(264f)) - -349f), _wgslsmith_f_op_f32(-144f * _wgslsmith_f_op_f32(660f - 520f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-805f, -1333f, -2390f, 1000f), vec4<f32>(-1497f, 1841f, -486f, 2256f))))))), vec4<f32>(1000f, -2902f, 656f, -1000f)));
    return Struct_2(vec3<bool>(all(select(vec3<bool>(arg_2.x, arg_0.a.x, arg_1.a.x), vec3<bool>(arg_2.x, true, true), arg_0.a)), true | arg_1.a.x, true), Struct_1(~vec4<i32>(arg_1.b.a.x, select(var_1.x, var_1.x, false), ~(-12362i), arg_0.b.a.x)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = !(!select(vec3<bool>(all(vec2<bool>(false, true)), false || arg_1, arg_1 | false), select(!vec3<bool>(true, arg_1, arg_1), !vec3<bool>(false, true, arg_1), true), !vec3<bool>(arg_1, arg_1, false)));
    return func_3(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -616f))), 1i, ~(-(~(-2147483647i)))), Struct_2(!vec3<bool>(all(vec2<bool>(false, false)), all(var_0), !arg_1), arg_0), vec3<bool>(true, func_2(_wgslsmith_f_op_f32(-454f - _wgslsmith_div_f32(138f, -1000f)), func_2(-1822f, _wgslsmith_sub_i32(arg_0.a.x, -2147483647i), _wgslsmith_mult_i32(u_input.c.x, -1i)).b.a.x, u_input.b.x & -u_input.b.x).a.x, var_0.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec3<i32>) -> vec3<u32> {
    var var_0 = ~35237u;
    var var_1 = -_wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-12149i, arg_1.b.a.x, -2147483647i) >> (vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u)), vec3<i32>(arg_0.b.a.x, -1i, u_input.b.x)), 2147483647i, -6471i);
    let var_2 = Struct_3(arg_1, vec2<i32>(~_wgslsmith_div_i32(-1i, u_input.c.x ^ arg_1.b.a.x), _wgslsmith_div_i32(min(~18601i, arg_2.x), arg_0.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-850f, _wgslsmith_div_f32(-1692f, 713f)))))), Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2323f - 299f)), i32(-1i) * -2147483647i, _wgslsmith_mult_i32(func_2(796f, 0i, 2147483647i).b.a.x, -arg_3.x)).a, Struct_1(-firstLeadingBit(vec4<i32>(arg_3.x, arg_0.b.a.x, -9127i, 58692i)))), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1854f + -350f) - _wgslsmith_f_op_f32(trunc(1574f))), _wgslsmith_f_op_f32(-266f * _wgslsmith_f_op_f32(-303f - -1524f))), select(_wgslsmith_add_i32(select(arg_0.b.a.x, arg_2.x, true), func_1(arg_1.b, false).b.a.x), _wgslsmith_clamp_i32(1i, arg_0.b.a.x, ~1i), true), ~_wgslsmith_clamp_i32(36362i | arg_2.x, -46214i >> (0u % 32u), 0i)));
    var var_3 = _wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1640f - 1829f))))));
    var var_4 = func_3(Struct_2(select(select(arg_0.a, select(vec3<bool>(true, var_2.d.a.x, arg_0.a.x), vec3<bool>(true, arg_1.a.x, false), vec3<bool>(false, var_2.a.a.x, false)), !arg_1.a), vec3<bool>(all(var_2.d.a.yz), false, all(vec3<bool>(true, var_2.d.a.x, false))), any(arg_1.a.zx)), Struct_1(vec4<i32>(var_2.b.x, 1i, arg_2.x ^ arg_2.x, -arg_0.b.a.x))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.c)) * _wgslsmith_f_op_f32(-var_2.c))), arg_2.x, 1i), vec3<bool>(select(true, arg_1.a.x, all(vec2<bool>(true, true))), arg_0.a.x, ((var_2.e.a.x || var_2.e.a.x) || func_2(141f, 21542i, arg_1.b.a.x).a.x) & ((404f <= var_2.c) || (var_2.c <= 1299f))));
    return firstTrailingBit(vec3<u32>(55409u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~0u, _wgslsmith_add_u32(1u, ~reverseBits(71139u)), ~(_wgslsmith_mult_u32(~52538u, firstTrailingBit(78065u)) ^ u_input.a.x));
    let var_1 = 1u;
    global0 = array<Struct_4, 3>();
    var_0 = firstTrailingBit(~(~max(vec3<u32>(var_1, var_0.x, var_1), vec3<u32>(u_input.a.x, 5868u, 4294967295u) << (vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u)))));
    global0 = array<Struct_4, 3>();
    var_0 = func_4(Struct_2(vec3<bool>(true, !any(vec4<bool>(false, false, true, true)), false), Struct_1(u_input.c)), func_1(Struct_1(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, u_input.c.x, 2147483647i, u_input.c.x), ~u_input.c, ~u_input.c)), true), _wgslsmith_div_vec2_i32(vec2<i32>(1i, -1792i), u_input.b), ~u_input.c.yxx ^ func_2(_wgslsmith_f_op_f32(min(728f, -348f)), _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_add_i32(u_input.c.x, u_input.b.x)), ~_wgslsmith_dot_vec3_i32(u_input.c.yyw, vec3<i32>(u_input.b.x, u_input.b.x, 3042i))).b.a.xwx);
    var_0 = vec3<u32>(var_0.x, u_input.a.x, ~(~2157u));
    let x = u_input.a;
    s_output = StorageBuffer(select(~u_input.a, _wgslsmith_sub_vec2_u32(~vec2<u32>(17299u, u_input.a.x), _wgslsmith_mult_vec2_u32(u_input.a, ~u_input.a)), !(var_1 <= abs(80709u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 191f, -597f))))), u_input.a.x);
}

