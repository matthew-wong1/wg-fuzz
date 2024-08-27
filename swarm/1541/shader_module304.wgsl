struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(sign(1312f));
    var var_1 = ~(arg_0.a.x & arg_0.d.a.c);
    let var_2 = Struct_3(~firstTrailingBit(abs(arg_0.a) >> (select(arg_0.a, vec2<u32>(arg_0.d.b.c, arg_0.a.x), false) % vec2<u32>(32u))), arg_0.b, firstLeadingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.b.x, -16510i), vec4<i32>(2147483647i, arg_0.c.x, u_input.a, -293i), arg_0.d.a.a), ~_wgslsmith_sub_vec4_i32(arg_0.b.a, arg_0.c), vec4<i32>(arg_0.c.x, arg_1, 1i, 16743i) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b.c, 37804u, arg_0.d.b.c, arg_0.a.x), vec4<u32>(arg_0.d.b.c, 4294967295u, arg_0.b.c, 40075u)) % vec4<u32>(32u)))), arg_0.d);
    let var_3 = ~max(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.x, 4294967295u, arg_0.d.b.c, var_2.d.b.c), vec4<u32>(arg_0.b.c, 1u, arg_0.a.x, 1u)), arg_0.a.x, var_2.d.a.c), vec3<u32>(~_wgslsmith_add_u32(0u, var_2.a.x), var_2.a.x, 2309u));
    let var_4 = arg_0.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-928f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1383f - 1107f)))) + -457f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_mult_vec2_u32(vec2<u32>(3260u, 0u), vec2<u32>(6291u, 0u)), Struct_1(vec4<i32>(0i, -1i, -1i, u_input.b.x), true, 61895u), vec4<i32>(-33233i, u_input.b.x, 9965i, -1i) << (vec4<u32>(17022u, 1u, 25935u, 3979u) % vec4<u32>(32u)), Struct_2(Struct_1(vec4<i32>(-23112i, 0i, -2147483647i, u_input.c), true, 4294967295u), Struct_1(vec4<i32>(-1i, u_input.b.x, u_input.c, u_input.a), false, 45456u), -47690i)), 1i)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(688f * -211f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1506f, 1652f)))))));
    var var_1 = Struct_2(Struct_1(vec4<i32>(_wgslsmith_clamp_i32(-6942i, ~u_input.b.x, reverseBits(1i)), _wgslsmith_add_i32(-2147483647i, u_input.a), -8522i, (1i | u_input.c) ^ -u_input.b.x), _wgslsmith_f_op_f32(-1747f - -421f) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1000f)))), ~67068u), Struct_1(max(~(-vec4<i32>(u_input.b.x, u_input.c, u_input.d, u_input.a)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.b.x, u_input.c, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 32122u), vec3<u32>(35516u, 0u, 4294967295u)) != ~1u, ~(1u << (1u % 32u))), u_input.b.x);
    let var_2 = !vec4<bool>(!any(!vec3<bool>(false, var_1.b.b, true)), true, any(select(vec4<bool>(var_1.a.b, var_1.a.b, false, true), select(vec4<bool>(var_1.a.b, var_1.b.b, false, var_1.b.b), vec4<bool>(false, var_1.b.b, false, false), var_1.a.b), vec4<bool>(true, false, var_1.a.b, true))), var_1.a.b);
    let var_3 = -41450i;
    return Struct_3(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(6895u, var_1.a.c) | vec2<u32>(4294967295u, var_1.a.c)), vec2<u32>(0u, ~0u)) << (~(~vec2<u32>(var_1.b.c, var_1.b.c)) % vec2<u32>(32u)), var_1.a, vec4<i32>(_wgslsmith_mod_i32(~60467i, var_1.b.a.x << (1u % 32u)), 62052i, 1i, u_input.b.x) >> (vec4<u32>(_wgslsmith_sub_u32(var_1.a.c, _wgslsmith_add_u32(7426u, var_1.b.c)), min(var_1.a.c, ~3371u), var_1.b.c, var_1.a.c) % vec4<u32>(32u)), Struct_2(var_1.a, Struct_1(select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.a.x, -28517i, 1i, var_3), vec4<i32>(var_1.c, 21135i, -2147483647i, var_1.b.a.x)), vec4<i32>(1i, var_1.c, -2147483647i, u_input.c) << (vec4<u32>(var_1.b.c, var_1.a.c, 4294967295u, 10969u) % vec4<u32>(32u)), select(var_2, vec4<bool>(false, var_1.a.b, false, false), var_2)), !var_1.a.b & true, ~(var_1.a.c >> (var_1.a.c % 32u))), -select(u_input.d, u_input.b.x | -1i, var_2.x)));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = func_2();
    var var_2 = var_1.d;
    var_2 = var_1.d;
    let var_3 = func_2();
    return Struct_2(var_3.d.b, Struct_1(-_wgslsmith_div_vec4_i32(abs(var_2.b.a), var_0.b.a >> (vec4<u32>(177088u, 16831u, 42367u, 1u) % vec4<u32>(32u))), any(vec2<bool>(var_0.d.a.b || false, true)), var_1.a.x), ~(i32(-1i) * -7364i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: vec3<f32>) -> u32 {
    var var_0 = i32(-1i) * -21277i;
    var var_1 = ~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(~(-13791i), ~(-arg_0.b.a.x), 1i), u_input.b.x);
    var var_2 = arg_0.a;
    var var_3 = arg_3.x;
    var var_4 = ~arg_1.b.a.x;
    return abs(0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(func_4(func_1(_wgslsmith_add_u32(56633u, 1u), select(firstLeadingBit(vec4<i32>(-1i, u_input.c, u_input.a, 1i)), max(vec4<i32>(u_input.b.x, u_input.c, 25491i, 2147483647i), vec4<i32>(u_input.d, u_input.c, u_input.b.x, -26026i)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true))), func_2(), !select(select(false, true, true), false, select(true, false, false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1312f, -421f, -477f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(754f, 510f, 1000f) - vec3<f32>(-1000f, -1000f, 1188f)), true)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-661f, 312f, 1965f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-260f, -1875f, 446f), vec3<f32>(-1186f, 577f, -1217f), vec3<bool>(true, false, true))))))), max(_wgslsmith_mod_u32(6045u, func_2().a.x), firstLeadingBit(~6757u)), _wgslsmith_dot_vec4_u32(~min(vec4<u32>(28440u, 19948u, 0u, 737u), ~vec4<u32>(0u, 4294967295u, 44184u, 0u)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 6138u, 1u, 3496u), vec4<u32>(1u, 1u, 4294967295u, 4633u)))));
    var_0 = abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(98065u, ~var_0.x, var_0.x), max(countOneBits(vec3<u32>(4294967295u, var_0.x, var_0.x)), ~vec3<u32>(var_0.x, 0u, 77322u))));
    var_0 = abs(_wgslsmith_mod_vec3_u32(vec3<u32>(36327u, _wgslsmith_mult_u32(1u, var_0.x & 4294967295u), func_4(func_1(1u, vec4<i32>(u_input.d, -45701i, u_input.c, u_input.b.x)), func_2(), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-654f, 304f, -940f)))), ~vec3<u32>(func_2().b.c, 4294967295u, 1u)));
    let var_1 = vec4<u32>(~var_0.x, var_0.x, var_0.x, max(~var_0.x, 55793u)) << (vec4<u32>(var_0.x, var_0.x, ~var_0.x, ~(~(~var_0.x))) % vec4<u32>(32u));
    let var_2 = true;
    var var_3 = Struct_2(func_2().d.b, func_2().d.b, func_1(abs(reverseBits(_wgslsmith_add_u32(var_0.x, var_1.x))), -_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(47310i, 2147483647i, -30938i, u_input.d), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, -1i)), vec4<i32>(u_input.c, -12992i, -25590i, u_input.b.x))).c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_3.a.a);
}

