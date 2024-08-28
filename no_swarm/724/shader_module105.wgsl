struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: u32;

var<private> global2: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> bool {
    return firstLeadingBit(~(0i)) < ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), u_input.c.x | u_input.c.x, -u_input.c.x), u_input.c.x);
}

fn func_3(arg_0: f32) -> vec2<i32> {
    global2 = u_input.a.x;
    global2 = ~(~(~u_input.b.x));
    let var_0 = vec4<i32>(-1i) * -vec4<i32>(firstTrailingBit(firstLeadingBit(u_input.c.x)), abs(2147483647i), firstTrailingBit(1i), min(u_input.c.x, -22515i));
    let var_1 = ~u_input.a.x;
    var var_2 = ~(i32(-1i) * -54004i);
    return ~var_0.zw;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: u32, arg_3: vec3<u32>) -> u32 {
    var var_0 = Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), true)), vec2<bool>(true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)))), !vec2<bool>(all(vec4<bool>(false, false, false, false)), 0u != arg_3.x)), (u_input.a.x << (~(~64989u) % 32u)) | select(~(~28962u), 0u, true), vec4<i32>(abs(u_input.c.x), -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(arg_0, u_input.c.zz), ~arg_0), ~u_input.c.x, min(_wgslsmith_clamp_i32(~u_input.c.x, arg_0.x, arg_0.x), _wgslsmith_clamp_i32(firstLeadingBit(48493i), arg_0.x, arg_0.x))), ~(~vec3<u32>(_wgslsmith_add_u32(arg_2, 61809u), min(arg_2, arg_3.x), u_input.a.x)), !all(vec3<bool>(false, true, true)) | !select(24553u == u_input.a.x, true, true));
    var var_1 = select(vec3<bool>(true, all(select(!vec3<bool>(var_0.e, var_0.a.x, var_0.e), !vec3<bool>(false, false, var_0.a.x), vec3<bool>(var_0.e, var_0.a.x, var_0.e))), true), vec3<bool>(func_2(), var_0.a.x, any(select(!vec4<bool>(true, var_0.a.x, true, true), vec4<bool>(true, var_0.a.x, var_0.e, false), vec4<bool>(true, true, var_0.a.x, var_0.e)))), vec3<bool>(!any(!vec3<bool>(var_0.e, var_0.e, var_0.a.x)), true, var_0.e));
    var var_2 = var_0.c.x << (min(firstTrailingBit(4294967295u), 50149u) % 32u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-479f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1095f)))) * 989f);
    let var_4 = Struct_3(max(abs(~var_0.c), ~_wgslsmith_mult_vec4_i32(u_input.c, var_0.c)), Struct_2(max(~_wgslsmith_add_u32(4837u, 0u), 19993u), Struct_1(vec2<bool>(var_1.x, true), ~arg_2, _wgslsmith_add_vec4_i32(var_0.c, vec4<i32>(arg_0.x, arg_0.x, 3707i, u_input.c.x)), arg_3, var_1.x), Struct_1(!(!vec2<bool>(false, var_1.x)), ~1u, vec4<i32>(24133i, 1i, ~17934i, -u_input.c.x), vec3<u32>(_wgslsmith_mult_u32(19628u, arg_1), abs(1u), 0u), true & !var_1.x), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(683f, _wgslsmith_f_op_f32(1267f - 604f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(488f))))), _wgslsmith_f_op_f32(step(515f, _wgslsmith_f_op_f32(max(1753f, _wgslsmith_f_op_f32(-862f + _wgslsmith_f_op_f32(1273f - -524f)))))));
    return u_input.a.x;
}

fn func_1() -> Struct_1 {
    var var_0 = ~29032u;
    var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2210f) - _wgslsmith_f_op_f32(floor(-324f)));
    var var_2 = Struct_1(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, func_2()), true), ~10103u, _wgslsmith_sub_vec4_i32(u_input.c, (u_input.c & ~vec4<i32>(u_input.c.x, -1i, 2147483647i, 11872i)) | u_input.c), abs(max(~vec3<u32>(16074u, u_input.b.x, 8042u), vec3<u32>(~u_input.b.x, firstTrailingBit(0u), _wgslsmith_mod_u32(u_input.b.x, 1u)))), false & (((i32(-1i) * -59624i) > ~u_input.c.x) | false));
    let var_3 = u_input.c.x;
    return Struct_1(vec2<bool>(true, var_2.e), func_4(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -215f))), _wgslsmith_dot_vec3_u32(vec3<u32>(max(u_input.b.x, var_2.d.x), abs(86261u), 19087u), ~_wgslsmith_mult_vec3_u32(var_2.d, var_2.d)), _wgslsmith_mod_u32(countOneBits(var_2.b), 0u), countOneBits(vec3<u32>(~var_2.d.x, ~u_input.a.x, _wgslsmith_sub_u32(4294967295u, var_2.d.x)))), -_wgslsmith_add_vec4_i32(u_input.c, u_input.c), vec3<u32>(_wgslsmith_add_u32(abs(_wgslsmith_mod_u32(var_2.b, var_2.d.x)), ~_wgslsmith_add_u32(0u, 0u)), 11705u, ~_wgslsmith_sub_u32(~77023u, u_input.a.x)), !any(vec3<bool>(var_2.e, all(vec4<bool>(var_2.a.x, false, false, false)), !var_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(_wgslsmith_dot_vec2_i32(u_input.c.ww, vec2<i32>(u_input.c.x, u_input.c.x))), 1i, u_input.c.x), u_input.c.xxy), ~_wgslsmith_dot_vec2_i32(~select(u_input.c.zx, u_input.c.yy, false), vec2<i32>(u_input.c.x, u_input.c.x)));
    global0 = array<Struct_2, 27>();
    global0 = array<Struct_2, 27>();
    let var_1 = Struct_3(~min(vec4<i32>(0i, -4434i, var_0, 1i), min(u_input.c, vec4<i32>(3043i, u_input.c.x, u_input.c.x, var_0))), Struct_2(43380u, func_1(), Struct_1(vec2<bool>(true, true), 14214u << (u_input.a.x % 32u), -u_input.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x) & u_input.a, ~u_input.a, ~u_input.a), abs(var_0) == ~0i), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(17027u, u_input.a.x, 1u), u_input.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1183f, _wgslsmith_f_op_f32(-723f * 1000f))))), _wgslsmith_f_op_f32(f32(-1f) * -534f)));
    global2 = ~21308u & ~(~_wgslsmith_clamp_u32(4294967295u >> (var_1.b.a % 32u), u_input.a.x, ~var_1.b.c.d.x));
    global2 = ~(~firstTrailingBit(1u));
    let var_2 = abs(-1i);
    let var_3 = var_1.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(118406u, _wgslsmith_mult_u32((_wgslsmith_dot_vec3_u32(var_3.d, var_1.b.c.d) ^ ~var_1.b.c.b) << (u_input.b.x % 32u), _wgslsmith_mod_u32(0u, 4294967295u) >> (firstLeadingBit(_wgslsmith_mult_u32(var_3.d.x, 28941u)) % 32u)), var_3.d.yz, max(countOneBits(_wgslsmith_dot_vec3_u32(var_3.d, u_input.a >> (var_1.b.d % vec3<u32>(32u)))), var_3.d.x));
}

