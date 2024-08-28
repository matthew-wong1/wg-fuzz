struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: bool) -> bool {
    return any(vec3<bool>(!(!arg_0 & arg_0), arg_0, select(true, arg_0, -u_input.b >= u_input.b)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~arg_0.x, 31u)];
    let var_1 = select(any(var_0.b.b.yww), true, true) | any(select(!(!var_0.b.b), vec4<bool>(true, false, true, false), select(select(var_0.b.b, vec4<bool>(arg_1, var_0.b.a, arg_1, true), false), vec4<bool>(var_0.b.a, var_0.b.a, arg_1, true), all(vec3<bool>(arg_1, true, arg_1)))));
    global0 = array<Struct_3, 31>();
    var var_2 = all(var_0.b.b);
    var_2 = arg_1;
    return ~0u << (~(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(57348u, 0u, arg_0.x, 1u)), vec4<u32>(var_0.d.a.x, 1u, arg_0.x, 75470u)) | _wgslsmith_dot_vec2_u32(~arg_0, select(arg_0, vec2<u32>(var_0.a.c.x, 100490u), vec2<bool>(true, var_1)))) % 32u);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> vec4<bool> {
    global0 = array<Struct_3, 31>();
    let var_0 = Struct_3(arg_0.a, Struct_1(!(!(-428i <= arg_0.a.d.x)), select(vec4<bool>(select(arg_0.b.c, false, arg_0.b.a), all(vec4<bool>(arg_0.b.b.x, true, arg_0.b.a, arg_0.b.b.x)), true, any(arg_0.b.b.wy)), vec4<bool>(u_input.b <= u_input.b, true, false, 0i >= u_input.b), arg_0.b.b), arg_0.b.a, arg_0.d.b, max(-vec4<i32>(2147483647i, -2147483647i, u_input.b, -38168i), abs(_wgslsmith_mult_vec4_i32(arg_0.b.e, arg_0.b.e)))), Struct_2(_wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(arg_0.e.a, vec2<u32>(u_input.a, arg_0.d.c.x)), arg_0.d.a), arg_0.d.b, arg_0.e.a, _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(arg_0.a.d, vec2<i32>(13852i, u_input.b)), vec2<i32>(19517i >> (arg_0.c.a.x % 32u), _wgslsmith_mult_i32(1i, 16761i)))), Struct_2(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, arg_1), vec2<u32>(64584u, arg_1))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_0.c.b, _wgslsmith_f_op_f32(arg_0.b.d - arg_0.d.b))))), select(_wgslsmith_mult_vec2_u32(firstTrailingBit(arg_0.d.a), ~arg_0.a.a), ~vec2<u32>(0u, 54260u), select(vec2<bool>(arg_0.b.a, arg_0.b.b.x), !vec2<bool>(false, arg_0.b.a), arg_0.b.b.x)), arg_0.b.e.xz), Struct_2(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(14559u, arg_0.a.a.x, 66564u, 4294967295u), vec4<u32>(1789u, 0u, 39067u, arg_1)), ~arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.b) + _wgslsmith_div_f32(arg_0.a.b, _wgslsmith_f_op_f32(ceil(arg_0.a.b)))), min(arg_0.d.a, _wgslsmith_sub_vec2_u32(~arg_0.d.c, reverseBits(vec2<u32>(arg_1, 0u)))), ~(-firstTrailingBit(vec2<i32>(40049i, arg_2)))));
    let var_1 = 1u;
    var var_2 = true;
    let var_3 = global0[_wgslsmith_index_u32(0u, 31u)];
    return select(!vec4<bool>(true & var_3.b.a, !all(arg_0.b.b.zyx), arg_0.b.a, true), var_0.b.b, var_0.b.b);
}

fn func_1(arg_0: vec2<f32>) -> vec2<f32> {
    let var_0 = vec4<u32>(countOneBits(countOneBits(u_input.a)), 47548u, ~7225u, _wgslsmith_clamp_u32(~(~75522u), u_input.a, abs(u_input.a)));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, 451f, arg_0.x), vec3<f32>(arg_0.x, -170f, arg_0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-661f, arg_0.x, arg_0.x)), func_2(true)))))));
    let var_2 = _wgslsmith_mult_i32(-2147483647i, u_input.b);
    global0 = array<Struct_3, 31>();
    var var_3 = Struct_1(false, func_4(Struct_3(Struct_2(_wgslsmith_div_vec2_u32(var_0.xz, vec2<u32>(1u, 16148u)), arg_0.x, ~vec2<u32>(var_0.x, u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(-22400i, -1i))), Struct_1(any(vec3<bool>(true, false, true)), vec4<bool>(true, true, true, true), true, arg_0.x, -vec4<i32>(-2147483647i, -1i, -11385i, var_2)), Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 46782u), vec2<u32>(u_input.a, var_0.x)), _wgslsmith_f_op_f32(arg_0.x * 509f), vec2<u32>(4294967295u, u_input.a), vec2<i32>(64808i, u_input.b) ^ vec2<i32>(u_input.b, -42638i)), Struct_2(~vec2<u32>(2265u, 0u), _wgslsmith_f_op_f32(ceil(-631f)), select(vec2<u32>(0u, u_input.a), vec2<u32>(22396u, var_0.x), vec2<bool>(true, false)), vec2<i32>(-15395i, var_2)), Struct_2(~var_0.yw, var_1.x, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 5769u), vec2<u32>(var_0.x, var_0.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2, var_2), vec2<i32>(-36145i, u_input.b)))), ~_wgslsmith_mod_u32(1u, func_3(var_0.yx, true)), ~(2147483647i & abs(u_input.b))), func_4(Struct_3(Struct_2(vec2<u32>(4294967295u, 14699u), arg_0.x, var_0.xx, vec2<i32>(var_2, u_input.b)), Struct_1(true, vec4<bool>(true, true, true, true), true, _wgslsmith_f_op_f32(sign(arg_0.x)), vec4<i32>(13224i, u_input.b, u_input.b, 1i)), Struct_2(reverseBits(vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(312f + 1589f), vec2<u32>(54120u, u_input.a), abs(vec2<i32>(0i, var_2))), Struct_2(vec2<u32>(var_0.x, 30405u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), arg_0.x, firstLeadingBit(vec2<u32>(4294967295u, 6668u)), vec2<i32>(1i, 1i)), Struct_2(_wgslsmith_mod_vec2_u32(var_0.xw, var_0.yw), -615f, vec2<u32>(var_0.x, u_input.a), vec2<i32>(69595i, var_2))), _wgslsmith_div_u32(1u, func_3(~var_0.yw, -1i != u_input.b)), u_input.b).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(exp2(var_1.x)))), abs(abs(select(vec4<i32>(0i, var_2, -1i, -13035i), -vec4<i32>(var_2, 0i, 1i, 0i), vec4<bool>(false, true, false, false)))));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(abs(-300f)), _wgslsmith_f_op_f32(-1833f + _wgslsmith_div_f32(var_3.d, var_3.d))), var_1.yz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-857f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -758f))), -1197f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-755f)) * -196f));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 31u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec2_f32(min(var_0.wy, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.b.d, var_0.x)))))));
    global0 = array<Struct_3, 31>();
    let var_3 = _wgslsmith_add_vec3_i32(~(-(_wgslsmith_sub_vec3_i32(var_1.b.e.wzz, var_1.b.e.wwx) << (_wgslsmith_sub_vec3_u32(vec3<u32>(37362u, 4294967295u, u_input.a), vec3<u32>(8614u, 1u, u_input.a)) % vec3<u32>(32u)))), firstLeadingBit(var_1.b.e.zww));
    var var_4 = Struct_1(any(vec2<bool>(true, ~4294967295u > firstTrailingBit(19502u))), !var_1.b.b, !var_1.b.b.x || !var_1.b.c, 117f, var_1.b.e);
    var var_5 = ~(~(~vec2<u32>(var_1.d.c.x, 22345u)) << (min(vec2<u32>(_wgslsmith_div_u32(u_input.a, var_1.a.c.x), 26268u), vec2<u32>(4294967295u, ~35512u)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_2 * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-275f, var_4.d))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(590f, var_0.x, 313f, var_4.d))), _wgslsmith_f_op_vec4_f32(abs(var_0)), !var_4.b)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec2_f32(func_1(var_0.ww)).x, -198f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1484f))), var_1.b.b)), ~_wgslsmith_mod_u32(var_5.x, countOneBits(u_input.a)));
}

