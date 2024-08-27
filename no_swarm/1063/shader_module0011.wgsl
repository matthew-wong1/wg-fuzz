struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<u32, 26>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1189f, var_0.a.b.x, arg_0.c.x, -1270f) + vec4<f32>(arg_3.a.b.x, arg_2.a.b.x, arg_2.a.d.x, arg_0.c.x))))))));
    global1 = array<u32, 26>();
    var var_2 = Struct_3(arg_2, -16207i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1361f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.c.x))))), Struct_1(!((u_input.b == 16888i) == true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-696f, arg_0.a.a.d.x, 522f), vec3<f32>(arg_0.a.a.b.x, 931f, arg_2.a.b.x)) * _wgslsmith_f_op_vec3_f32(select(arg_3.a.b, vec3<f32>(1075f, 261f, -390f), vec3<bool>(false, false, true)))) * global0.a.a.d), min(vec3<u32>(_wgslsmith_add_u32(1u, var_0.c.x), ~17831u, 18649u), _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 31631u, 56752u), min(global0.a.c, arg_0.a.a.c))), var_1.yyz, global0.a.a.c));
    var var_3 = select(vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(34962i, 8352i) >> (arg_3.a.e.zy % vec2<u32>(32u)), vec2<i32>(-33239i, -1i) ^ vec2<i32>(24744i, u_input.d)) > 1i, !arg_2.a.a, var_0.a.a), vec3<bool>(all(vec3<bool>(var_2.d.a, any(vec4<bool>(false, arg_3.a.a, arg_2.a.a, var_2.d.a)), false)), all(!select(vec2<bool>(false, var_0.a.a), vec2<bool>(var_0.a.a, var_2.d.a), vec2<bool>(true, true))), true), var_0.a.a);
    return abs(global0.a.b);
}

fn func_2() -> Struct_2 {
    var var_0 = global0.a.a;
    let var_1 = Struct_4(Struct_2(global0.a.a, countOneBits(func_3(Struct_4(Struct_2(Struct_1(true, global0.a.a.b, vec3<u32>(34168u, u_input.a, 4294967295u), var_0.b, var_0.c), vec4<i32>(u_input.d, -55516i, -2147483647i, -1i), vec3<u32>(var_0.e.x, global1[_wgslsmith_index_u32(7378u, 26u)], global0.a.a.c.x)), vec2<i32>(24717i, u_input.b), global0.a.a.b.zy), all(vec3<bool>(var_0.a, var_0.a, true)), global0.a, Struct_2(global0.a.a, vec4<i32>(global0.b.x, -2147483647i, 2147483647i, -1358i), global0.a.c))), firstLeadingBit(_wgslsmith_mult_vec3_u32(global0.a.a.e, vec3<u32>(u_input.a, var_0.e.x, var_0.e.x))) >> (vec3<u32>(1u, min(u_input.a, u_input.a), 22115u) % vec3<u32>(32u))), -vec2<i32>(_wgslsmith_mod_i32(u_input.d, firstLeadingBit(2653i)), select(~u_input.d, 48117i, false)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(max(-1547f, global0.a.a.d.x))));
    var var_2 = Struct_3(var_1.a, 1i << (countOneBits(_wgslsmith_div_u32(u_input.a >> (var_0.e.x % 32u), abs(global1[_wgslsmith_index_u32(78501u, 26u)]))) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1472f + -319f) + -370f)) * global0.c.x), Struct_1(global1[_wgslsmith_index_u32(97436u, 26u)] > 4294967295u, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(f32(-1f) * -2055f)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(var_1.a.a.b))))), ~(~(vec3<u32>(global1[_wgslsmith_index_u32(0u, 26u)], var_1.a.a.e.x, var_1.a.a.e.x) << (vec3<u32>(global1[_wgslsmith_index_u32(85080u, 26u)], 1u, 107957u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.a.a.d, var_0.d)) * vec3<f32>(var_1.c.x, var_1.a.a.b.x, var_0.d.x))), global0.a.c));
    var_0 = global0.a.a;
    let var_3 = -_wgslsmith_add_vec4_i32(max(reverseBits(vec4<i32>(-62360i, 0i, u_input.c, -1i)), vec4<i32>(-40257i, u_input.b, u_input.d, 4204i)), _wgslsmith_mod_vec4_i32(global0.a.b, var_2.a.b) >> ((vec4<u32>(25219u, 11761u, 61375u, 1u) << (vec4<u32>(0u, u_input.a, var_0.c.x, 35255u) % vec4<u32>(32u))) % vec4<u32>(32u))) & var_2.a.b;
    return Struct_2(var_1.a.a, vec4<i32>(65552i, _wgslsmith_mult_i32(u_input.c, global0.a.b.x), min(func_3(Struct_4(var_2.a, global0.b, vec2<f32>(var_2.c, var_0.b.x)), any(vec3<bool>(var_0.a, true, var_1.a.a.a)), global0.a, Struct_2(global0.a.a, var_2.a.b, vec3<u32>(93356u, 4294967295u, 4606u))).x, global0.b.x), -54642i), var_2.d.e);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: i32, arg_3: vec4<i32>) -> vec3<i32> {
    let var_0 = -28896i;
    let var_1 = max(var_0, var_0);
    let var_2 = arg_2;
    global0 = Struct_4(global0.a, arg_3.zx, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.b.zz) + arg_0.d.b.yx), arg_0.a.a.b.yz))));
    var var_3 = vec3<i32>(var_2, arg_2, countOneBits(~(u_input.b | ~u_input.d)));
    return vec3<i32>(-1i, u_input.c, min(~reverseBits(u_input.c << (global0.a.c.x % 32u)), 0i));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_3.a.d.x);
    var var_1 = func_4(Struct_3(func_2(), _wgslsmith_mod_i32(u_input.d, min(1i, global0.a.b.x)), var_0, Struct_1(all(vec3<bool>(true, true, global0.a.a.a)) & true, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0, 127f, 677f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(906f, 102f, arg_1.x)))), ~(global0.a.a.e >> (vec3<u32>(76708u, 1u, 38586u) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-464f, arg_1.x, -1475f)), func_2().a.e)), arg_3.c.xx, _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(select(vec2<i32>(global0.a.b.x, global0.b.x), arg_3.b.wz, vec2<bool>(true, global0.a.a.a)), global0.b), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, u_input.d, -1i, 42689i), arg_3.b), vec4<i32>(-u_input.d, _wgslsmith_add_i32(arg_3.b.x, -50702i), 2147483647i, 1i))), _wgslsmith_div_vec4_i32(arg_3.b, vec4<i32>(reverseBits(4605i), global0.a.b.x, _wgslsmith_sub_i32(1i, 29630i), firstLeadingBit(9325i))) << (vec4<u32>(arg_3.a.e.x, 4294967295u, _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(arg_2, 100539u)), abs(4294967295u)) % vec4<u32>(32u)));
    var var_2 = arg_3.a.e.x;
    global0 = Struct_4(arg_3, arg_3.b.yx, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a.b.x, arg_3.a.b.x) + vec2<f32>(820f, var_0))))))));
    global1 = array<u32, 26>();
    return func_2().a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_5) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-678f, -577f, 132f, arg_1.d.x) + vec4<f32>(-423f, arg_1.d.x, arg_2.c.x, -1414f)))) + vec4<f32>(_wgslsmith_f_op_f32(floor(-185f)), _wgslsmith_div_f32(1509f, arg_2.c.x), _wgslsmith_f_op_f32(floor(1895f)), 919f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(101f, 1568f, 604f, global0.a.a.d.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2869f, -529f, 879f, arg_1.d.x) - vec4<f32>(arg_0.b.x, -815f, -797f, -1078f)), select(vec4<bool>(true, true, false, arg_2.b), vec4<bool>(true, global0.a.a.a, false, arg_1.a), vec4<bool>(arg_1.a, global0.a.a.a, false, arg_2.b)))) + vec4<f32>(-588f, -1216f, -847f, _wgslsmith_f_op_f32(-arg_0.b.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, global0.a.a.b.x, 1445f, arg_2.c.x) + vec4<f32>(-522f, -473f, arg_1.b.x, 1000f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1475f, global0.c.x, arg_1.d.x, -999f) + vec4<f32>(315f, global0.c.x, 402f, arg_0.b.x))))))));
    var var_1 = !(!select(vec3<bool>(arg_1.a, arg_0.a || arg_0.a, !global0.a.a.a), vec3<bool>(true, global0.a.b.x < global0.b.x, any(vec2<bool>(true, true))), select(true, arg_0.a, false) == true));
    var_1 = vec3<bool>(true, all(select(!select(var_1.zx, var_1.zz, var_1.x), select(var_1.zx, var_1.yx, !vec2<bool>(arg_2.b, false)), false)), _wgslsmith_div_u32(~(global0.a.a.c.x >> (global0.a.a.e.x % 32u)), 23749u) <= firstTrailingBit(1u));
    var var_2 = global0.a.a;
    global0 = Struct_4(Struct_2(Struct_1(any(select(vec3<bool>(arg_1.a, false, true), vec3<bool>(arg_2.b, false, true), var_1.x)), vec3<f32>(_wgslsmith_f_op_f32(-129f - 238f), _wgslsmith_div_f32(var_2.d.x, arg_1.b.x), global0.a.a.b.x), arg_1.e, arg_1.d, ~max(vec3<u32>(82425u, 1u, 1u), var_2.e)), vec4<i32>(min(u_input.c, u_input.c) | _wgslsmith_mult_i32(1i, -10704i), func_2().b.x, _wgslsmith_mult_i32(u_input.d, ~(-1i)), i32(-1i) * -40444i), _wgslsmith_div_vec3_u32(var_2.e, arg_0.e) << (func_2().c % vec3<u32>(32u))), global0.b, func_2().a.b.zz);
    return vec3<u32>(func_1(~global1[_wgslsmith_index_u32(~arg_1.e.x, 26u)], _wgslsmith_f_op_vec2_f32(-global0.c), u_input.a, global0.a).c.x, ~select(~arg_2.a, global0.a.c.x, false), select(func_2().c.x, _wgslsmith_mult_u32(~5105u, ~var_2.c.x), arg_2.b)) ^ vec3<u32>(arg_0.c.x, ~(~75111u), 32902u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 26>();
    let var_0 = Struct_1(!(65978u <= countOneBits(u_input.a | u_input.a)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.c.x)), 355f, global0.c.x))), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(global0.a.c, func_5(func_1(u_input.a, vec2<f32>(global0.a.a.d.x, global0.a.a.b.x), u_input.a, global0.a), Struct_1(false, vec3<f32>(266f, 185f, global0.a.a.b.x), global0.a.a.c, vec3<f32>(global0.c.x, -875f, global0.a.a.b.x), global0.a.c), Struct_5(4294967295u, global0.a.a.a, vec3<f32>(607f, -1000f, 1484f)))), func_1(_wgslsmith_mult_u32(~4294967295u, global1[_wgslsmith_index_u32(1u, 26u)] >> (global0.a.a.e.x % 32u)), func_1(global0.a.a.c.x & 75798u, global0.a.a.b.xy, u_input.a, Struct_2(global0.a.a, vec4<i32>(u_input.b, -75770i, u_input.b, -28170i), vec3<u32>(27272u, u_input.a, 28279u))).d.zz, u_input.a, func_2()).e), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.a.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.a.a.b, vec3<f32>(global0.c.x, -673f, global0.a.a.d.x)) + vec3<f32>(-1113f, 1290f, global0.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(906f, 266f, 386f), global0.a.a.b))) + global0.a.a.b))), global0.a.a.e & ~max(vec3<u32>(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(global0.a.a.c.x, 26u)], 5155u), vec3<u32>(u_input.a, global0.a.c.x, 1u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))), -614f) * func_1(4294967295u, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_0.d.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, var_0.b.x))))), var_0.c.x, func_2()).b.yy);
    var var_2 = 894f;
    var var_3 = vec3<bool>(!(0u <= func_5(func_1(global1[_wgslsmith_index_u32(u_input.a, 26u)], global0.a.a.b.xy, global0.a.c.x, Struct_2(Struct_1(global0.a.a.a, global0.a.a.d, global0.a.c, vec3<f32>(390f, global0.a.a.d.x, var_0.d.x), vec3<u32>(4294967295u, 0u, 74807u)), vec4<i32>(global0.a.b.x, -1i, u_input.b, global0.a.b.x), var_0.c)), var_0, Struct_5(u_input.a, true, vec3<f32>(1155f, 2263f, 1021f))).x), true, all(vec2<bool>(global0.a.a.a, true)));
    let var_4 = Struct_5(_wgslsmith_mod_u32(global0.a.a.e.x, _wgslsmith_mod_u32(select(~17822u, select(1u, var_0.e.x, global0.a.a.a), true), 0u >> (0u % 32u))), select(global0.a.c.x <= max(146015u, firstTrailingBit(global0.a.c.x)), true, global0.a.a.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(457f, global0.a.a.b.x, -573f), var_0.b), _wgslsmith_f_op_vec3_f32(exp2(var_0.b))) + _wgslsmith_f_op_vec3_f32(-global0.a.a.d)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.a.d) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(global0.a.a.d, vec3<f32>(-1186f, var_1.x, var_0.d.x))), vec3<f32>(var_1.x, global0.c.x, var_1.x), vec3<bool>(true, var_3.x, var_0.a))))));
    let var_5 = ~_wgslsmith_mult_i32(global0.a.b.x & -global0.a.b.x, u_input.c ^ u_input.b);
    let var_6 = Struct_3(global0.a, global0.a.b.x, _wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(max(571f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1185f * global0.c.x)))))), var_0);
    let var_7 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a.a.d, -473f);
}

