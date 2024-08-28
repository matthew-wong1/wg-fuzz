struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 1u);

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec2<i32>(6507i, 0i), vec3<i32>(-41931i, 36602i, -7918i)), Struct_2(vec2<i32>(-68144i, 15135i), vec3<i32>(i32(-2147483648), -1i, -12701i)), Struct_2(vec2<i32>(-37383i, -1i), vec3<i32>(-28300i, 1i, 1i)), Struct_2(vec2<i32>(1i, 8236i), vec3<i32>(-37474i, 0i, -10469i)), Struct_2(vec2<i32>(0i, i32(-2147483648)), vec3<i32>(1i, 19505i, -4109i)), Struct_2(vec2<i32>(0i, 31553i), vec3<i32>(-9931i, -907i, 2147483647i)), Struct_2(vec2<i32>(-42779i, 0i), vec3<i32>(-3258i, 2147483647i, 0i)), Struct_2(vec2<i32>(39369i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -27327i, 8388i)), Struct_2(vec2<i32>(-1i, -1i), vec3<i32>(25698i, -1i, 7084i)), Struct_2(vec2<i32>(15529i, -1i), vec3<i32>(1i, -39981i, 6891i)), Struct_2(vec2<i32>(11128i, -56893i), vec3<i32>(0i, -29035i, 0i)), Struct_2(vec2<i32>(30853i, -24577i), vec3<i32>(-2145i, 2147483647i, 0i)), Struct_2(vec2<i32>(-36333i, -5349i), vec3<i32>(-15076i, 46359i, -1i)), Struct_2(vec2<i32>(32948i, -1i), vec3<i32>(i32(-2147483648), 10505i, i32(-2147483648))), Struct_2(vec2<i32>(i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), 1i, 12296i)), Struct_2(vec2<i32>(46670i, -7682i), vec3<i32>(58875i, i32(-2147483648), -23630i)), Struct_2(vec2<i32>(1i, 2147483647i), vec3<i32>(2147483647i, -6454i, i32(-2147483648))), Struct_2(vec2<i32>(-8317i, -2030i), vec3<i32>(2056i, 25607i, 3737i)), Struct_2(vec2<i32>(41639i, 0i), vec3<i32>(12776i, -38390i, 1i)), Struct_2(vec2<i32>(-31368i, -9976i), vec3<i32>(2147483647i, -17599i, -73173i)), Struct_2(vec2<i32>(2993i, -1i), vec3<i32>(-1i, 32130i, -28534i)), Struct_2(vec2<i32>(-1136i, -10226i), vec3<i32>(19784i, 1i, 0i)), Struct_2(vec2<i32>(0i, -1i), vec3<i32>(-16999i, 2147483647i, -3231i)), Struct_2(vec2<i32>(1i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, -29165i)), Struct_2(vec2<i32>(-1i, i32(-2147483648)), vec3<i32>(-28055i, i32(-2147483648), 2147483647i)), Struct_2(vec2<i32>(14745i, 2147483647i), vec3<i32>(0i, 28900i, 2147483647i)));

var<private> global3: Struct_2 = Struct_2(vec2<i32>(0i, 0i), vec3<i32>(53339i, -1i, 1i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> vec2<i32> {
    var var_0 = Struct_1(countOneBits(_wgslsmith_add_u32(countOneBits(global1.x), abs(_wgslsmith_mult_u32(global1.x, global1.x)))), ~vec3<i32>(_wgslsmith_mult_i32(global3.a.x, 1i) << (33023u % 32u), ~(-614i), _wgslsmith_dot_vec3_i32(~vec3<i32>(global0.b, 0i, 2147483647i), vec3<i32>(global3.a.x, 16669i, u_input.c.x))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -528f))), -672f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(288f, _wgslsmith_f_op_f32(global0.d.x * -1107f))))), false);
    global3 = global0.a;
    let var_1 = u_input.b.wzy;
    let var_2 = vec3<bool>(true, any(select(select(vec3<bool>(var_0.d, true, var_0.d), !vec3<bool>(var_0.d, true, false), !vec3<bool>(var_0.d, false, true)), select(vec3<bool>(var_0.d, var_0.d, false), select(vec3<bool>(false, var_0.d, var_0.d), vec3<bool>(true, var_0.d, false), true), select(vec3<bool>(var_0.d, true, true), vec3<bool>(true, false, var_0.d), vec3<bool>(true, true, var_0.d))), !select(vec3<bool>(var_0.d, false, var_0.d), vec3<bool>(false, var_0.d, var_0.d), false))), true);
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.c.x, var_0.c.x, global0.d.x)));
    return _wgslsmith_add_vec2_i32(countOneBits(var_0.b.zz), vec2<i32>(var_1.x >> (~global0.c.x % 32u), 20116i));
}

fn func_2() -> f32 {
    let var_0 = false;
    let var_1 = global1.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d.yx + _wgslsmith_f_op_vec2_f32(abs(global0.d.wx)))))));
    var var_3 = Struct_3(Struct_2(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d.x + var_2.x), 379f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -286f, global0.d.x) - vec3<f32>(571f, 742f, 1470f))))), u_input.b.zxx >> ((~vec3<u32>(global0.c.x, global1.x, 4294967295u) << (~vec3<u32>(0u, u_input.a, global1.x) % vec3<u32>(32u))) % vec3<u32>(32u))), 2147483647i, vec2<u32>(~(~4294967295u), ~(~countOneBits(1u))), _wgslsmith_f_op_vec4_f32(global0.d - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(var_2.x, global0.d.x, true)), _wgslsmith_f_op_f32(1519f - var_2.x), _wgslsmith_f_op_f32(global0.d.x - 2317f), _wgslsmith_f_op_f32(var_2.x * -802f)) - vec4<f32>(1f, _wgslsmith_div_f32(global0.d.x, 472f), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-326f - var_2.x)))));
    let var_4 = ~(~var_3.c.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_3.d.x)), var_2.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global0.d.x, global0.d.x)))) + var_3.d.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 551f), var_2.x), _wgslsmith_f_op_f32(min(global0.d.x, var_3.d.x))) + var_2.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec2_i32(~global3.b.zz << (vec2<u32>(~(global1.x | 0u), ~firstLeadingBit(u_input.a)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(~countOneBits(vec2<i32>(u_input.b.x, u_input.b.x)), -(u_input.b.zw ^ vec2<i32>(u_input.b.x, global3.a.x))) << ((reverseBits(global0.c ^ global0.c) << ((global0.c ^ vec2<u32>(97774u, 35712u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global3 = Struct_2(reverseBits(_wgslsmith_add_vec2_i32(global3.b.xx, -_wgslsmith_mod_vec2_i32(global0.a.a, u_input.c.yz))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(min(-global3.b, global3.b), u_input.c.wyx), -vec3<i32>(-1i, _wgslsmith_clamp_i32(var_0, 2147483647i, 0i), -2147483647i)));
    let var_1 = -18827i;
    global3 = global0.a;
    var var_2 = !vec4<bool>(arg_1.x && true, true || (global0.d.x > -389f), 2975u <= ~_wgslsmith_mod_u32(1u, global1.x), 34706i > u_input.c.x);
    return Struct_3(global2[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_dot_vec2_i32(u_input.b.zx, -vec2<i32>(17297i, firstLeadingBit(2147483647i))), _wgslsmith_add_vec2_u32(~global0.c, select(vec2<u32>(global1.x & 54714u, max(4294967295u, global0.c.x)), _wgslsmith_div_vec2_u32(global0.c, vec2<u32>(u_input.a, 35007u)), vec2<bool>(global1.x < global0.c.x, !arg_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.d.x, arg_0.x, 927f, -182f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-929f, arg_0.x, arg_0.x, global0.d.x))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -418f, global0.d.x, global0.d.x)), global0.d))));
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = func_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(393f, 1283f)) * -1051f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), 1432f), 385f), vec4<f32>(-375f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1048f, 546f)), 2131f, true)), global0.d.x, -172f)), vec3<bool>(any(select(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, true), false), !vec4<bool>(true, arg_0, false, true), !vec4<bool>(false, arg_0, arg_0, false))), !(!arg_0), (i32(-1i) * -20002i) > global0.b));
    global0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-592f, var_0.d.x, -1027f, var_0.d.x))))), select(!(!(!vec3<bool>(true, false, arg_0))), !vec3<bool>(!arg_0, arg_0, arg_0), !select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, arg_0, true), true), any(vec3<bool>(true, arg_0, arg_0)))));
    var var_1 = Struct_1(0u, ~(-(u_input.c.xxz | vec3<i32>(global0.b, u_input.b.x, 44472i))), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.d.x)), var_0.d.x), all(vec4<bool>(arg_0, arg_0 | arg_0, arg_0, true)));
    var_0 = func_4(global0.d, !select(!(!vec3<bool>(arg_0, false, false)), vec3<bool>(true, true, true), var_1.d));
    var var_2 = Struct_3(var_0.a, u_input.b.x, vec2<u32>(~_wgslsmith_clamp_u32(global0.c.x, var_0.c.x ^ global0.c.x, ~24790u), ~1u), var_0.d);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(global0.b, global0.b, abs(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.x, 0i) & global3.a, vec2<i32>(-1i, global3.a.x) | vec2<i32>(global3.a.x, 2147483647i)), 1i)));
    var var_1 = vec2<i32>(-firstTrailingBit(func_1(u_input.a < 54571u)), 1i);
    var_1 = -vec2<i32>(2147483647i, ~global0.a.a.x);
    let var_2 = 1000f;
    global1 = _wgslsmith_div_vec2_u32(~global0.c, _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, global0.c.x), select(global0.c, vec2<u32>(firstTrailingBit(64576u), u_input.a), vec2<bool>(any(vec3<bool>(false, false, true)), true))));
    var var_3 = Struct_3(Struct_2(abs(~(-global0.a.a)), vec3<i32>(global3.b.x | ~global0.b, ~(~45109i), min(75293i, ~(-4015i)))), 4659i << (_wgslsmith_mult_u32(global0.c.x, ~global1.x) % 32u), global0.c, vec4<f32>(-2180f, _wgslsmith_f_op_f32(abs(-1828f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -551f) - _wgslsmith_f_op_f32(trunc(var_2))) + _wgslsmith_f_op_f32(f32(-1f) * -265f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.d.x), -706f))));
    let x = u_input.a;
    s_output = StorageBuffer(1i ^ -global3.b.x, reverseBits(global0.c.x), _wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, 113f, _wgslsmith_f_op_f32(trunc(895f)), -1054f)));
}

