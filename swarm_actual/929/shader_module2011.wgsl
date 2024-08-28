struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> f32 {
    var var_0 = select(select(vec3<bool>(arg_3, arg_0.a, arg_1.a), select(!(!vec3<bool>(arg_3, arg_1.a, false)), select(vec3<bool>(arg_1.a, true, arg_3), select(vec3<bool>(arg_1.a, false, arg_0.a), vec3<bool>(arg_3, arg_0.a, false), arg_3), arg_0.a), vec3<bool>(false, false, true)), all(select(select(vec2<bool>(true, false), vec2<bool>(arg_0.a, false), vec2<bool>(false, arg_3)), !vec2<bool>(arg_3, true), select(vec2<bool>(false, arg_1.a), vec2<bool>(arg_3, true), arg_3)))), !(!vec3<bool>(any(vec3<bool>(arg_3, true, true)), -1996f == arg_0.b, !arg_1.a)), select(vec3<bool>(true, arg_3, false & arg_3), vec3<bool>(!any(vec2<bool>(true, arg_0.a)), true, all(!vec4<bool>(true, arg_3, false, true))), !vec3<bool>(arg_3, false, arg_3)));
    var_0 = select(!(!select(vec3<bool>(arg_0.a, arg_3, arg_1.a), !vec3<bool>(false, true, arg_0.a), !vec3<bool>(false, var_0.x, arg_0.a))), !vec3<bool>(false, all(vec4<bool>(arg_3, false, arg_3, false)), false), select(arg_3, countOneBits(u_input.c | 1i) < ~arg_2, any(vec4<bool>(select(true, arg_0.a, false), any(vec4<bool>(true, false, false, arg_0.a)), false, all(vec3<bool>(true, var_0.x, var_0.x))))));
    let var_1 = ~(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(max(1027u, u_input.a.x)), u_input.a.x), 11u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.a.x, 11u)] | ~(~u_input.b.x), 11u)] % 32u));
    return _wgslsmith_f_op_f32(-arg_0.b);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    var var_0 = ~countOneBits(-vec3<i32>(firstTrailingBit(u_input.c), 2147483647i, ~u_input.c));
    var var_1 = _wgslsmith_f_op_f32(max(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(true, 539f), Struct_3(true, -1889f), var_0.x, true))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_3, -549f))))));
    var var_2 = any(select(vec2<bool>(all(!vec2<bool>(arg_0, arg_1.d)), -180f < arg_3), !select(select(vec2<bool>(arg_0, arg_1.d), vec2<bool>(arg_0, arg_2.d), vec2<bool>(arg_1.b, false)), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), arg_2.a), true), arg_2.a));
    var_0 = ~(-vec3<i32>(-49484i, -2147483647i, -var_0.x)) >> (vec3<u32>(4294967295u, ~16036u, ~4294967295u) % vec3<u32>(32u));
    global0 = array<u32, 11>();
    return Struct_3(true, -522f);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1047f - 616f)))) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(2110f)))))), true, u_input.b.zx, any(vec3<bool>(true, true, true)));
    var var_1 = ~var_0.c;
    global0 = array<u32, 11>();
    var var_2 = arg_1.x;
    let var_3 = func_2(true, var_0, Struct_1(all(vec4<bool>(any(vec4<bool>(var_0.b, true, false, true)), true, !arg_0.a, true)), _wgslsmith_add_i32(-2147483647i, -u_input.c) == -30265i, ~(~(vec2<u32>(var_0.c.x, global0[_wgslsmith_index_u32(111935u, 11u)]) << (vec2<u32>(var_1.x, 35761u) % vec2<u32>(32u)))), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(func_2(arg_0.a, Struct_1(false, true, u_input.b.xz, false), Struct_1(true, var_0.a, vec2<u32>(var_0.c.x, 19966u), false), -172f).b)), arg_0.b));
    return arg_0;
}

fn func_5(arg_0: Struct_3) -> f32 {
    let var_0 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.b.x, 0u, 62577u) << (vec4<u32>(4294967295u, 36092u, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(53117u, 11u)]) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.b.x, 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], 11u)], u_input.b.x), vec4<u32>(1u, u_input.b.x, 1u, u_input.a.x)), u_input.b.x, 4294967295u, u_input.b.x << (global0[_wgslsmith_index_u32(4294967295u, 11u)] % 32u))), 35054u);
    var var_1 = _wgslsmith_f_op_f32(-arg_0.b);
    let var_2 = reverseBits(firstTrailingBit(-14874i));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(500f, 1557f)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(min(-1134f, _wgslsmith_div_f32(func_4(func_4(arg_0, vec4<i32>(var_2, -2147483647i, var_2, -1i), 1i), vec4<i32>(u_input.c, -33839i, u_input.c, u_input.c), ~21559i).b, arg_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(285f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.b)), _wgslsmith_f_op_f32(arg_0.b * -221f)))));
    return 550f;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(func_5(func_4(func_2(_wgslsmith_div_u32(u_input.b.x, 90451u) > (global0[_wgslsmith_index_u32(30894u, 11u)] & 4294967295u), Struct_1(true, true, firstLeadingBit(u_input.a), all(vec4<bool>(true, true, false, false))), Struct_1(true, true, firstLeadingBit(vec2<u32>(u_input.a.x, 103310u)), all(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(ceil(-223f))), firstTrailingBit(~vec4<i32>(u_input.c, -1i, -15714i, -2147483647i) >> ((vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11501u, 11u)], 11u)], 1u) >> (vec4<u32>(11163u, 0u, 4294967295u, 33539u) % vec4<u32>(32u))) % vec4<u32>(32u))), -_wgslsmith_div_i32(-1i, -u_input.c))));
    let var_1 = vec4<bool>(true, func_4(Struct_3(true, 904f), _wgslsmith_add_vec4_i32(firstTrailingBit(~vec4<i32>(u_input.c, -2147483647i, 0i, 16793i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, 0i, 52085i, u_input.c), vec4<i32>(u_input.c, -2147483647i, 1i, u_input.c) ^ vec4<i32>(u_input.c, 0i, u_input.c, 0i))), ~(-1i)).a, any(select(vec4<bool>(u_input.a.x != global0[_wgslsmith_index_u32(u_input.b.x, 11u)], any(vec2<bool>(true, false)), true, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), true)), true);
    global0 = array<u32, 11>();
    var var_2 = Struct_3(var_1.x, _wgslsmith_f_op_f32(abs(917f)));
    let var_3 = var_1;
    return Struct_3(all(!vec4<bool>(true, false && var_3.x, true, -550f > var_2.b)), var_2.b);
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> vec2<u32> {
    global0 = array<u32, 11>();
    var var_0 = select(_wgslsmith_sub_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(4582i, 46142i, 47538i), vec3<i32>(45806i, 1i, 18425i))), vec3<i32>(-2147483647i, 38602i, 0i)), ~(vec3<i32>(1i, u_input.c, 2147483647i) | firstTrailingBit(vec3<i32>(u_input.c, 13337i, u_input.c))), !select(!vec3<bool>(arg_3.a, true, true), select(vec3<bool>(true, true, arg_2), vec3<bool>(arg_2, true, true), false), arg_2 && arg_2)) << (vec3<u32>(1u, ~u_input.b.x, 14303u) % vec3<u32>(32u));
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    var_0 = select(~vec3<i32>(var_0.x, -54483i, i32(-1i) * -42947i), -(vec3<i32>(var_0.x, u_input.c, 35592i) << (vec3<u32>(u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(1u, 11u)]) % vec3<u32>(32u))), vec3<bool>(true, func_2(-143f == arg_3.b, Struct_1(true, true, vec2<u32>(global0[_wgslsmith_index_u32(102720u, 11u)], 4294967295u), true), Struct_1(arg_2, true, vec2<u32>(0u, 1u), true), _wgslsmith_f_op_f32(arg_0.b + arg_0.b)).a, true || func_1().a)) | vec3<i32>(u_input.c, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, -1i, 1i), reverseBits(vec3<i32>(54928i, var_0.x, u_input.c))), -_wgslsmith_mult_i32(reverseBits(-26320i), -1i));
    return vec2<u32>(19375u, u_input.a.x >> (~(~u_input.b.x) % 32u)) << (_wgslsmith_sub_vec2_u32(u_input.b.yz, _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(36600u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58042u, 11u)], 11u)], 11u)]) & vec2<u32>(u_input.b.x, 4294967295u), ~vec2<u32>(u_input.a.x, 50868u)), u_input.a)) % vec2<u32>(32u));
}

fn func_7(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<u32, 11>();
    let var_0 = arg_0.d.x;
    global0 = array<u32, 11>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), -1000f, var_0, var_0);
    var var_2 = vec2<i32>(-1i, 23721i ^ (1i ^ u_input.c));
    return Struct_1(arg_0.c.d, !arg_0.e.d, max(vec2<u32>(~4294967295u, 70551u), u_input.b.yx), (_wgslsmith_f_op_f32(-503f + func_2(arg_0.b, arg_0.c, arg_0.e, var_0).b) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x * var_1.x))) || any(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 11>();
    var var_0 = true;
    let var_1 = func_7(Struct_2(vec2<u32>(abs(62954u), 4294967295u) >> (vec2<u32>(1u, abs(0u)) % vec2<u32>(32u)), true, Struct_1(u_input.c >= u_input.c, true, vec2<u32>(reverseBits(u_input.a.x), u_input.b.x), true), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(119f, -841f)), vec2<f32>(-1000f, -164f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(192f, 457f))), vec2<bool>(any(vec2<bool>(true, false)), true))), Struct_1(false, true, ~(~u_input.a), 76948u == ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], 11u)])), _wgslsmith_sub_vec4_u32(~(vec4<u32>(0u, 4294967295u, u_input.b.x, 0u) << (~vec4<u32>(1u, 0u, 36899u, 50084u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~(vec4<u32>(global0[_wgslsmith_index_u32(62210u, 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 11u)], 1u, global0[_wgslsmith_index_u32(u_input.a.x, 11u)]) << (vec4<u32>(u_input.a.x, 42557u, u_input.b.x, u_input.a.x) % vec4<u32>(32u))), vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24337u, 11u)], 11u)], 0u, global0[_wgslsmith_index_u32(4294967295u, 11u)]) << (~vec4<u32>(16064u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))), abs(func_6(Struct_3(false, _wgslsmith_f_op_f32(sign(-1000f))), true, select(true, select(false, false, false), true), func_1())));
    var var_2 = vec4<u32>(_wgslsmith_add_u32(1u, ~15352u), func_7(Struct_2(~var_1.c, all(select(vec3<bool>(true, var_1.a, true), vec3<bool>(true, var_1.b, var_1.b), true)), var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -644f), vec2<f32>(1000f, -1803f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -637f))), var_1), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1u, 28845u, u_input.a.x), vec4<u32>(var_1.c.x, global0[_wgslsmith_index_u32(4200u, 11u)], 1u, 0u)) << (~vec4<u32>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], 4294967295u, 4294967295u) % vec4<u32>(32u))), u_input.b.xx).c.x, 18873u, u_input.a.x);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_3(var_1.b, -1036f), Struct_3(var_1.d, 445f), -25360i, var_1.d)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_3(true, -306f))) + 1370f));
    let x = u_input.a;
    s_output = StorageBuffer(0u << (min(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(global0[_wgslsmith_index_u32(var_1.c.x, 11u)], u_input.b.x, 1u)) & global0[_wgslsmith_index_u32(~1u, 11u)], 0u) % 32u), _wgslsmith_mod_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.c, 0i), vec2<i32>(u_input.c, -12354i), vec2<i32>(u_input.c, -18869i) | vec2<i32>(u_input.c, -20551i))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 30107i, u_input.c, u_input.c), vec4<i32>(1i, 0i, u_input.c, u_input.c)) | u_input.c, abs(abs(u_input.c)))), 189f, u_input.c, func_6(func_4(func_1(), ~vec4<i32>(-1i, -2147483647i, u_input.c, 18442i) >> (min(vec4<u32>(u_input.a.x, u_input.a.x, var_2.x, 4294967295u), vec4<u32>(var_1.c.x, 1u, u_input.b.x, 1u)) % vec4<u32>(32u)), 0i), true, !var_1.a, func_1()));
}

