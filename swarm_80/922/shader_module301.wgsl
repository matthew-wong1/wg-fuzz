struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 1u, 4294967295u);

var<private> global2: vec3<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_3(firstLeadingBit(0i | arg_0.a), arg_0.b);
    var_0 = Struct_3(~(~17702i), vec2<bool>(global0.c, -1225f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1393f)))));
    let var_1 = countOneBits(1i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b, _wgslsmith_f_op_f32(max(-1657f, arg_1.b)))) + 1406f);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, global0.b, 1306f) * vec3<f32>(-1691f, -770f, 756f))))))));
    return !vec2<bool>(arg_0.b.x, !((global1.x | arg_1.e) <= _wgslsmith_add_u32(47240u, global0.a)));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(~countOneBits(1u), global2.x, global0.c, _wgslsmith_mod_vec2_i32(abs(u_input.a.xx), -u_input.a.zx | -global0.d), (global1.x | 0u) >> (1u % 32u)), reverseBits((abs(53668u) << (1u % 32u)) << (global1.x % 32u)), Struct_1(0u, _wgslsmith_f_op_f32(-arg_0), global0.c, _wgslsmith_add_vec2_i32(u_input.a.xx, vec2<i32>(_wgslsmith_add_i32(-25536i, 0i), -1i)), 4294967295u), ~u_input.a.x);
    let var_1 = Struct_3(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.d, var_0.c.d.x, u_input.a.x, global0.d.x), -vec4<i32>(global0.d.x, -1i, global0.d.x, 0i)), global0.d.x), !select(select(func_3(Struct_3(-53426i, vec2<bool>(global0.c, var_0.a.c)), var_0.a), vec2<bool>(global0.c, true), all(vec2<bool>(false, global0.c))), select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(Struct_3(global0.d.x, vec2<bool>(true, global0.c)), var_0.a)), false));
    var_0 = Struct_2(Struct_1(48137u, -376f, true, vec2<i32>(-max(1i, -38391i), global0.d.x), 131733u), ~global1.x, Struct_1(min(var_0.a.a, var_0.c.e), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.b, _wgslsmith_f_op_f32(-598f * 1132f)) * _wgslsmith_f_op_f32(-var_0.c.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1229f) * global0.b), vec2<i32>(7471i, var_1.a), min(41313u, global1.x)), u_input.a.x);
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1003f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.b) * _wgslsmith_f_op_f32(arg_0 - global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1260f))))));
    let var_2 = var_0.c;
    return Struct_2(Struct_1(_wgslsmith_add_u32(var_2.e, global1.x), _wgslsmith_f_op_f32(-var_2.b), all(vec3<bool>(48446u == global1.x, all(vec4<bool>(var_0.a.c, var_0.c.c, false, true)), false)), u_input.a.xy, _wgslsmith_div_u32(~(1066u ^ var_2.a), var_0.c.e)), ~max(~(~global0.a), 1u), var_0.c, 1i);
}

fn func_4(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = u_input.c.xz;
    var var_1 = firstLeadingBit(-vec3<i32>(1i, min(-53365i, firstTrailingBit(global0.d.x)), global0.d.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1160f, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global2.zx))), _wgslsmith_f_op_f32(-func_2(_wgslsmith_div_f32(-1000f, 408f)).c.b) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1151f))));
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-610f, 1f, _wgslsmith_f_op_f32(1052f - _wgslsmith_f_op_f32(-arg_0.c.b)), global0.b)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b, _wgslsmith_f_op_f32(-503f * global0.b), 193f, -1718f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1355f), _wgslsmith_f_op_f32(floor(1595f)), -228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + -1000f))))));
    var var_4 = abs(select(arg_0.a.d, global0.d, !(!(!global0.c))));
    return vec4<i32>(arg_0.a.d.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_0.a.d | u_input.a.zx, firstTrailingBit(global0.d)), -(-2147483647i >> (0u % 32u))), var_4.x), -((var_1.x ^ -37439i) >> (11236u % 32u)) & 15733i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(41589i, -39441i, 1i, 34390i) << (u_input.b % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-19801i, arg_0.a.d.x, u_input.a.x, arg_0.a.d.x), vec4<i32>(global0.d.x, -28253i, 45596i, var_4.x))), vec4<i32>(~2147483647i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_4.x, -2147483647i, var_1.x)), 2147483647i, abs(-1i))), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(-22136i, u_input.a.x, u_input.a.x, -850i), vec4<i32>(u_input.a.x, var_4.x, 9841i, var_1.x)) & -vec4<i32>(u_input.a.x, global0.d.x, u_input.a.x, global0.d.x))));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = Struct_3(u_input.a.x, !vec2<bool>(true, global0.c));
    var var_1 = ~_wgslsmith_dot_vec4_i32(func_4(func_2(_wgslsmith_f_op_f32(-global2.x))), vec4<i32>(1i, _wgslsmith_div_i32(-1i, -1303i), -1i, arg_0));
    let var_2 = Struct_3(-563i, func_3(Struct_3(~func_4(Struct_2(Struct_1(u_input.e.x, -166f, var_0.b.x, vec2<i32>(-1i, global0.d.x), 4294967295u), global0.a, Struct_1(u_input.c.x, global2.x, global0.c, global0.d, 0u), arg_0)).x, var_0.b), Struct_1(global1.x, _wgslsmith_f_op_f32(-global2.x), !func_3(Struct_3(u_input.a.x, var_0.b), Struct_1(35034u, global0.b, false, vec2<i32>(global0.d.x, 0i), 63063u)).x, u_input.a.yx, 1u)));
    var var_3 = Struct_2(Struct_1(global1.x & ~(global0.e >> (global0.e % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(global0.b * -1269f)) * 605f), ~(~var_2.a) == -10895i, firstLeadingBit(vec2<i32>(u_input.a.x, -2147483647i)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.e.x, u_input.c.x, 1u, 67604u), ~vec4<u32>(4294967295u, 4294967295u, global0.a, 1u))), ~_wgslsmith_mod_u32(47932u, 55316u), Struct_1(~(~_wgslsmith_clamp_u32(u_input.d.x, global0.a, global0.a)), global2.x, any(!select(vec4<bool>(false, false, true, global0.c), vec4<bool>(false, false, true, false), true)), vec2<i32>(-2147483647i, _wgslsmith_div_i32(_wgslsmith_sub_i32(10861i, arg_0), abs(var_0.a))), global0.a), ~_wgslsmith_dot_vec4_i32(countOneBits(min(vec4<i32>(var_0.a, 13671i, -1i, u_input.a.x), vec4<i32>(1i, -35535i, 6373i, u_input.a.x))), abs(~vec4<i32>(var_2.a, var_2.a, u_input.a.x, u_input.a.x))));
    let var_4 = var_2;
    return global0.d.x;
}

fn func_5(arg_0: vec2<i32>, arg_1: bool) -> i32 {
    let var_0 = arg_1;
    let var_1 = func_2(_wgslsmith_f_op_f32(global2.x * -172f)).a;
    var var_2 = firstLeadingBit(select(u_input.a, vec3<i32>(-22009i, -global0.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, var_1.d.x, 0i), vec4<i32>(arg_0.x, arg_0.x, -28076i, -26882i))), vec3<bool>(all(func_3(Struct_3(arg_0.x, vec2<bool>(var_0, var_1.c)), var_1)), true, true)));
    var var_3 = func_2(-817f).c.c;
    var_3 = select(true, (_wgslsmith_dot_vec2_i32(reverseBits(var_2.yz), vec2<i32>(0i, -2147483647i)) < 2147483647i) & (~reverseBits(u_input.e.x) <= (0u & ~var_1.a)), var_0);
    return reverseBits((~var_1.d.x & -26683i) << (abs(u_input.b.x) % 32u));
}

fn func_6(arg_0: i32, arg_1: u32) -> StorageBuffer {
    let var_0 = reverseBits(arg_0 << (42126u % 32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, -213f), vec3<f32>(263f, -1230f, global0.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-397f, -1000f, global0.b)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1093f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.b, global2.x, true)), _wgslsmith_div_f32(global0.b, global0.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x * 2644f)))) + vec3<f32>(1000f, global0.b, global0.b))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_1))));
    let var_2 = Struct_2(func_2(-1576f).c, 52585u, Struct_1(~(~u_input.b.x) >> (global0.e % 32u), var_1.x, any(!vec4<bool>(true, false, global0.c, global0.c)) & global0.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0 >> (1u % 32u), _wgslsmith_sub_i32(var_0, -1i)), _wgslsmith_clamp_vec2_i32(-u_input.a.xy, vec2<i32>(arg_0, u_input.a.x), vec2<i32>(53894i, -48489i) & vec2<i32>(u_input.a.x, -2147483647i)), u_input.a.xy), _wgslsmith_clamp_u32(1u, u_input.e.x >> (arg_1 % 32u), ~u_input.b.x)), _wgslsmith_mult_i32(func_5(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, global0.d.x) << (u_input.b.xy % vec2<u32>(32u)), vec2<i32>(arg_0, -90981i), vec2<i32>(1i, arg_0)), true), 1i));
    global2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1 * var_1)));
    return StorageBuffer(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, 22484u, global1.x), ~u_input.c, _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(global1.x, global0.e, 1u)))), var_2.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(2147483647i, !(!(!vec2<bool>(global0.c, global0.c))));
    let x = u_input.a;
    s_output = func_6(countOneBits(func_5(vec2<i32>(var_0.a, func_1(u_input.a.x)), func_3(Struct_3(u_input.a.x, vec2<bool>(false, var_0.b.x)), Struct_1(26823u, 144f, global0.c, vec2<i32>(-29830i, -2147483647i), global1.x)).x | all(vec4<bool>(var_0.b.x, global0.c, true, global0.c)))), 0u);
}

