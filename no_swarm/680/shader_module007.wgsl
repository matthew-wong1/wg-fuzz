struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-20778i, 1i, 2147483647i), vec3<i32>(12699i, 8585i, -41909i), vec3<i32>(2147483647i, -39517i, 8160i), vec3<i32>(2147483647i, 10072i, 0i), vec3<i32>(1i, 15679i, 2147483647i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = arg_0.e.b.yw;
    let var_1 = arg_0.b;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -1000f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.e.b.xz))))) + _wgslsmith_f_op_vec2_f32(floor(arg_0.e.b.zz)));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_4) -> Struct_1 {
    global0 = array<vec3<i32>, 5>();
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_2.e.b.zw - _wgslsmith_f_op_vec2_f32(func_3(Struct_4(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.d, arg_2.e.a.a, arg_2.a.x, arg_2.d), vec4<u32>(36982u, arg_2.e.a.a, 1892u, arg_2.e.a.a)), arg_2.a), _wgslsmith_mod_u32(abs(arg_2.b), _wgslsmith_dot_vec4_u32(arg_2.a, vec4<u32>(3601u, arg_2.e.a.a, 55687u, arg_2.e.a.a))), true, ~_wgslsmith_mod_u32(arg_2.e.a.a, 18036u), arg_2.e), arg_2.e.a)));
    let var_1 = all(arg_1);
    var var_2 = Struct_4(arg_2.a, ~abs(_wgslsmith_dot_vec3_u32(~arg_2.a.wwx, vec3<u32>(arg_2.d, 0u, arg_2.d))), !arg_1.x, ~arg_2.a.x, Struct_2(arg_2.e.a, arg_2.e.b));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_2.e.b.x))) - _wgslsmith_f_op_f32(-var_2.e.b.x))));
    return Struct_1(reverseBits(_wgslsmith_add_u32(arg_2.d, ~(arg_2.a.x & arg_2.d))), _wgslsmith_add_vec2_i32(vec2<i32>(var_2.e.a.b.x, 1i), var_2.e.a.b));
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_2(func_2(true, vec4<bool>(true, true, true, true), Struct_4(abs(vec4<u32>(83853u, 42655u, 50567u, 4294967295u)), 4294967295u, true, 1u, Struct_2(Struct_1(0u, vec2<i32>(u_input.a, -37867i)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1314f, 903f, 476f, 1000f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-397f)) - 1f) - _wgslsmith_f_op_f32(-1912f * -1110f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(130f * 466f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-112f, _wgslsmith_f_op_f32(f32(-1f) * -677f)))), 436f));
    var var_1 = Struct_1(~(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 16704u, 4294967295u, 0u)), vec4<u32>(var_0.a.a, var_0.a.a, 1u, var_0.a.a) >> (vec4<u32>(0u, var_0.a.a, var_0.a.a, var_0.a.a) % vec4<u32>(32u)))), vec2<i32>(var_0.a.b.x, ~(-1i)));
    var var_2 = Struct_3(var_0.b.wyy, 27774u, vec2<bool>(true, true), var_0.b.x, ~(vec2<i32>(0i, 0i) ^ var_1.b));
    var var_3 = Struct_2(func_2(all(!vec2<bool>(var_2.c.x, true)), select(vec4<bool>(!var_2.c.x, any(vec4<bool>(false, true, false, var_2.c.x)), var_2.c.x, all(vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x))), !select(vec4<bool>(var_2.c.x, false, var_2.c.x, var_2.c.x), vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x), true), vec4<bool>(var_2.c.x, true, false, true)), Struct_4(max(vec4<u32>(4294967295u, var_0.a.a, var_0.a.a, 2996u), vec4<u32>(var_1.a, 1u, 4294967295u, var_1.a)) ^ ~vec4<u32>(var_1.a, 4294967295u, var_1.a, 8439u), 1u, true && var_2.c.x, 70216u, Struct_2(Struct_1(var_2.b, var_2.e), var_0.b))), var_0.b);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-765f, -620f)))), -1611f, true)), _wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -141f), !var_2.c.x & true)), true)));
    return var_2.c;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_2) -> Struct_4 {
    let var_0 = Struct_1(1u, _wgslsmith_clamp_vec2_i32(min(max(vec2<i32>(arg_2.a.b.x, -2147483647i), vec2<i32>(arg_2.a.b.x, 6682i)), firstLeadingBit(arg_2.a.b ^ vec2<i32>(87543i, 0i))), vec2<i32>(u_input.a, firstTrailingBit(firstTrailingBit(-24977i))), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.a.b.x, -65257i), select(vec2<i32>(0i, u_input.a), arg_2.a.b, arg_0)), -vec2<i32>(-5888i, u_input.a))));
    global0 = array<vec3<i32>, 5>();
    return Struct_4(~vec4<u32>(arg_2.a.a ^ arg_2.a.a, 1u, var_0.a, var_0.a ^ var_0.a), arg_2.a.a, arg_0.x, 1u, Struct_2(Struct_1(arg_2.a.a, abs(~vec2<i32>(2147483647i, u_input.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.b + vec4<f32>(arg_1, 633f, 580f, 613f)) - arg_2.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_2.b, vec4<f32>(1000f, arg_1, -257f, arg_2.b.x), true)) + vec4<f32>(arg_2.b.x, 1686f, arg_2.b.x, 1918f)), vec4<bool>(0u >= var_0.a, all(vec3<bool>(arg_0.x, false, true)), true, true)))));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>) -> Struct_4 {
    var var_0 = func_4(!(!func_1()), -446f, Struct_2(func_4(select(func_1(), vec2<bool>(arg_0.c, true), true != arg_0.c), _wgslsmith_f_op_f32(f32(-1f) * -343f), arg_0.e).e.a, _wgslsmith_f_op_vec4_f32(exp2(arg_0.e.b)))).e.a;
    var var_1 = 15345u;
    var_1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(~25922u, arg_1.x), 1u), var_0.a);
    var var_2 = abs(vec3<u32>((~arg_0.a.x << (var_0.a % 32u)) & _wgslsmith_add_u32(min(arg_1.x, arg_0.e.a.a), ~0u), ~0u, 10692u));
    var var_3 = _wgslsmith_mult_i32(arg_0.e.a.b.x, arg_0.e.a.b.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(), -803f, Struct_2(Struct_1(1u, vec2<i32>(1i, -1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1639f, 1000f, -1485f, -363f) * vec4<f32>(225f, -1357f, -1000f, 137f))))), firstTrailingBit(min(vec3<u32>(_wgslsmith_mult_u32(1u, 52217u), _wgslsmith_clamp_u32(1u, 0u, 1u), 503u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), reverseBits(vec3<u32>(4324u, 15272u, 0u))))));
    let var_1 = countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-20215i, u_input.a), ~1i), reverseBits(countOneBits(u_input.a)), min(var_0.e.a.b.x >> (var_0.a.x % 32u), func_2(var_0.c, vec4<bool>(var_0.c, var_0.c, var_0.c, false), Struct_4(var_0.a, 78063u, var_0.c, var_0.a.x, var_0.e)).b.x), -1i), vec4<i32>(-28737i, ~(-2147483647i), -_wgslsmith_add_i32(u_input.a, u_input.a), u_input.a)));
    var var_2 = var_0.c;
    var_0 = Struct_4(var_0.a, ~func_2(min(29540u, var_0.d) <= 6245u, !(!vec4<bool>(var_0.c, var_0.c, var_0.c, true)), func_5(Struct_4(var_0.a, var_0.e.a.a, true, 1u, var_0.e), vec3<u32>(var_0.b, var_0.b, var_0.e.a.a))).a, var_0.c, _wgslsmith_add_u32(~select(countOneBits(5870u), 1u, true), ~2832u), var_0.e);
    var var_3 = firstLeadingBit(min(_wgslsmith_clamp_i32(u_input.a, -u_input.a, -var_0.e.a.b.x), _wgslsmith_add_i32(var_0.e.a.b.x, -27879i)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-vec4<i32>(-13082i, var_0.e.a.b.x, -1i, -1i) << (select(_wgslsmith_add_vec4_u32(var_0.a, var_0.a), var_0.a, vec4<bool>(false, false, false, var_0.c)) % vec4<u32>(32u))));
}

