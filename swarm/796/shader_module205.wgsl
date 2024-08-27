struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_5 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(24413i, 0i, -96826i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -628f);
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-575f, _wgslsmith_f_op_f32(exp2(arg_0.a.c.x)), _wgslsmith_div_f32(arg_0.a.c.x, arg_0.a.c.x), arg_0.a.c.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a.c * vec4<f32>(-1019f, arg_0.a.c.x, 304f, arg_0.a.c.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_0.a.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c.x, arg_0.a.c.x, -1600f, arg_0.a.c.x) - arg_0.a.c)) * vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.c.x * arg_0.a.c.x), 1000f, _wgslsmith_f_op_f32(arg_0.a.c.x + 304f), -1295f)), false))));
    var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(734f + -490f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -192f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1655f - _wgslsmith_f_op_f32(arg_0.a.c.x * 904f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_1.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -942f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c.x, -280f, var_1.x, 133f)))) * vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x * arg_0.a.c.x), _wgslsmith_f_op_f32(select(arg_0.a.c.x, 600f, false)), _wgslsmith_f_op_f32(1000f - var_1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a.c + arg_0.a.c)))));
    var var_2 = Struct_4(Struct_2(Struct_1(vec4<i32>(12456i, u_input.a.x << (4294967295u % 32u), 0i, _wgslsmith_sub_i32(-21273i, -2147483647i)), vec2<bool>(true, true), arg_0.a.c, select(arg_0.a.d, true, true))), vec3<i32>(~countOneBits(2147483647i), abs(~(-22144i)), _wgslsmith_dot_vec2_i32(~(-u_input.a), firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, arg_0.a.a.x), vec2<i32>(arg_0.a.a.x, global0.x))))));
    var var_3 = select(vec2<bool>(u_input.c == 4294967295u, var_2.a.a.d), var_2.a.a.b, select(!select(arg_0.a.b, arg_0.a.b, vec2<bool>(arg_0.a.b.x, false)), !var_2.a.a.b, true));
    return u_input.a.x;
}

fn func_2(arg_0: bool, arg_1: Struct_5) -> Struct_4 {
    let var_0 = Struct_4(Struct_2(Struct_1(vec4<i32>(_wgslsmith_mult_i32(29864i, u_input.b), u_input.a.x, -26294i, global0.x), vec2<bool>(arg_0, !arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-598f, 405f, arg_1.a, arg_1.a)), !arg_0)), ~_wgslsmith_add_vec3_i32(~(-vec3<i32>(global0.x, -57411i, 2147483647i)), -vec3<i32>(global0.x, u_input.b, u_input.a.x)));
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_mod_u32(arg_1.b & ~(~abs(u_input.c)), firstLeadingBit(abs(u_input.c) << (1u % 32u)));
    global0 = vec3<i32>(func_3(Struct_2(Struct_1(-vec4<i32>(var_1.a.a.x, var_0.b.x, var_1.a.a.x, -1i), select(vec2<bool>(var_1.a.d, true), vec2<bool>(var_0.a.a.d, false), vec2<bool>(var_0.a.a.d, arg_0)), _wgslsmith_f_op_vec4_f32(var_0.a.a.c + vec4<f32>(-1633f, var_0.a.a.c.x, -404f, var_1.a.c.x)), arg_0))), -global0.x, 1i & select(firstLeadingBit(_wgslsmith_sub_i32(22698i, global0.x)), reverseBits(var_1.a.a.x), all(select(vec4<bool>(var_0.a.a.d, false, var_1.a.d, var_1.a.b.x), vec4<bool>(arg_0, false, false, false), vec4<bool>(var_1.a.d, true, arg_0, true)))));
    global0 = var_0.a.a.a.yyy;
    return var_0;
}

fn func_1() -> vec2<bool> {
    var var_0 = func_2(true, Struct_5(2501f, 0u));
    global0 = firstTrailingBit(var_0.b);
    let var_1 = vec2<i32>(1i, u_input.b);
    let var_2 = vec3<f32>(var_0.a.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-797f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.c.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.c.x)))), 1929f);
    var var_3 = firstTrailingBit(global0.x);
    return !var_0.a.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, false)), true), false || any(vec3<bool>(true, false, false))), func_1(), !func_2(true, Struct_5(1167f, 29135u)).a.a.b.x), select(vec2<bool>(func_1().x, any(func_1())), vec2<bool>((u_input.c >= 8689u) | true, func_2(false, Struct_5(537f, u_input.c)).a.a.d || true), vec2<bool>(true, true)), !all(vec2<bool>(true, true)));
    let var_1 = -(vec4<i32>(-1i) * -vec4<i32>(~11651i, ~global0.x, -4207i, u_input.a.x));
    let var_2 = ~vec2<i32>(-(var_1.x | (i32(-1i) * -2147483647i)), func_3(func_2(u_input.c < u_input.c, Struct_5(1000f, u_input.c)).a));
    let var_3 = Struct_1(var_1, !vec2<bool>(var_0.x, true), vec4<f32>(208f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2168f - -917f))), _wgslsmith_f_op_f32(-802f + _wgslsmith_f_op_f32(abs(1509f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f))), var_0.x);
    let var_4 = Struct_1(select(-var_3.a, var_3.a & (var_1 & vec4<i32>(2147483647i, -21673i, var_3.a.x, -1i)), vec4<bool>(false && var_0.x, true, false, var_3.c.x == -1172f)) >> (_wgslsmith_sub_vec4_u32(reverseBits(select(vec4<u32>(u_input.c, 1u, 1u, 0u), vec4<u32>(0u, u_input.c, 36468u, u_input.c), vec4<bool>(true, var_0.x, false, var_3.b.x))), vec4<u32>(1u, _wgslsmith_add_u32(11088u, 1u), ~u_input.c, ~17986u)) % vec4<u32>(32u)), var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_3.c, var_3.c))), ~_wgslsmith_mod_u32(u_input.c, abs(u_input.c)) > ~u_input.c);
    global0 = vec3<i32>(var_3.a.x, ~(var_3.a.x & -2147483647i), -var_2.x) << (vec3<u32>(reverseBits(~_wgslsmith_sub_u32(72111u, 1u)), (u_input.c & 4294967295u) >> (1u % 32u), ~select(abs(u_input.c), 1u, var_3.d)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_sub_vec2_i32(select(vec2<i32>(global0.x, -46105i), vec2<i32>(var_4.a.x, 13534i) & vec2<i32>(global0.x, var_3.a.x), var_4.b.x || true), -(~vec2<i32>(var_4.a.x, 26386i))) >> (vec2<u32>(firstTrailingBit(3968u), _wgslsmith_mult_u32(select(1u, 4294967295u, var_0.x), 0u)) % vec2<u32>(32u)), vec3<i32>(var_2.x, u_input.a.x, 22948i), ~var_3.a, _wgslsmith_mult_u32(abs(_wgslsmith_sub_u32(64269u, 6641u)), u_input.c));
}

