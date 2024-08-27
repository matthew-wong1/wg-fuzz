struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = u_input.b.x;
    var var_1 = Struct_3(_wgslsmith_mult_u32(~abs(~u_input.b.x), 8089u), false, Struct_1(u_input.c));
    global0 = array<f32, 13>();
    global0 = array<f32, 13>();
    let var_2 = Struct_3(~_wgslsmith_mult_u32(var_0, abs(13489u)) & 20515u, !(global0[_wgslsmith_index_u32(abs(~var_1.a), 13u)] > global0[_wgslsmith_index_u32(var_0, 13u)]), var_1.c);
    return var_1.c;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<bool>) -> i32 {
    var var_0 = Struct_3(abs(~firstTrailingBit(arg_1.a)) >> (1u % 32u), arg_0.x, arg_1.c);
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(var_0.c.a, 1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.c.a, -28652i >> (var_0.a % 32u)), ~_wgslsmith_mod_i32(47357i, arg_1.c.a), firstTrailingBit(4166i))), 34523i ^ -abs(-1i ^ var_0.c.a), -1i);
    let var_2 = _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(45235u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)]));
    var_0 = arg_1;
    var var_3 = func_2(abs(~reverseBits(vec4<i32>(11434i, var_0.c.a, var_0.c.a, 28524i))), Struct_1(u_input.c), ~(~firstTrailingBit(arg_1.c.a))).a;
    return _wgslsmith_add_i32(~(-2147483647i), _wgslsmith_mult_i32(~3498i, ~(-1471i)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec2<i32>) -> vec3<u32> {
    global0 = array<f32, 13>();
    let var_0 = 11809u;
    global0 = array<f32, 13>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(countOneBits(~var_0), 13u)]));
    global0 = array<f32, 13>();
    return vec3<u32>(17373u, 31734u, 4294967295u);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> bool {
    let var_0 = min(func_4(reverseBits(u_input.b.x), func_2(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.c, u_input.c, -4891i), vec4<i32>(-1i, 2147483647i, u_input.a, 69853i)), Struct_1(-22006i), -40931i), ~u_input.b.x, -vec2<i32>(func_3(vec4<bool>(true, arg_1.x, arg_1.x, true), Struct_3(u_input.b.x, arg_1.x, Struct_1(u_input.c)), vec2<bool>(true, false)), 0i)), vec3<u32>(4294967295u, _wgslsmith_sub_u32(~7101u, reverseBits(u_input.b.x)) | ~(64782u << (1u % 32u)), ~u_input.b.x));
    let var_1 = select(select(select(!(!vec4<bool>(true, arg_1.x, arg_1.x, true)), select(!vec4<bool>(false, false, arg_1.x, false), !vec4<bool>(true, arg_1.x, true, false), arg_1.x == false), vec4<bool>(arg_1.x, arg_1.x, true, true)), vec4<bool>(select(true, any(vec3<bool>(false, true, true)), var_0.x == var_0.x), any(select(vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(arg_1.x, true, false, true), arg_1.x)), arg_1.x, any(select(vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(true, true, arg_1.x, arg_1.x), true))), !vec4<bool>(all(arg_1), true, !arg_1.x, arg_1.x)), !(!select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), select(vec4<bool>(true, arg_1.x, arg_1.x, false), vec4<bool>(false, arg_1.x, false, true), false), select(vec4<bool>(true, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, false, arg_1.x)))), !select(select(vec4<bool>(false, arg_1.x, true, false), !vec4<bool>(false, false, arg_1.x, false), arg_1.x & arg_1.x), !(!vec4<bool>(arg_1.x, true, true, false)), !select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), vec4<bool>(false, false, true, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false))));
    var var_2 = func_2(min(vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c, 30463i, u_input.a)), ~vec3<i32>(u_input.a, u_input.c, u_input.c)), abs(u_input.c >> (32294u % 32u)), u_input.a, _wgslsmith_div_i32(~u_input.a, u_input.a)), ~(-(~vec4<i32>(u_input.c, 12757i, -30962i, u_input.a)))), func_2(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.c, -10665i, 1i, u_input.c)), vec4<i32>(2717i << (0u % 32u), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(15536i, u_input.a, 2147483647i, u_input.c), vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.a)), u_input.a)), Struct_1(0i), 6900i), 1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, abs(u_input.b.x), ~0u), ~max(vec4<u32>(u_input.b.x, 0u, 68844u, 23832u), vec4<u32>(60043u, 0u, 0u, var_0.x))) % 32u));
    let var_3 = vec4<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, reverseBits(~4294967295u))), max(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b.x, 85348u, 4294967295u, u_input.b.x), vec4<u32>(25241u, 36824u, 10297u, 78975u)), ~vec4<u32>(62318u, u_input.b.x, var_0.x, 73450u)), 32770u), _wgslsmith_clamp_u32(~4294967295u, u_input.b.x, ~var_0.x) ^ u_input.b.x);
    var var_4 = func_2(min(~(vec4<i32>(2147483647i, 0i, -16350i, u_input.c) & vec4<i32>(-2147483647i, 1i, u_input.c, u_input.a)), vec4<i32>(_wgslsmith_add_i32(-var_2.a, _wgslsmith_clamp_i32(u_input.c, -1i, 9163i)), -u_input.c ^ abs(-6238i), 0i >> (~var_0.x % 32u), var_2.a)), func_2(-vec4<i32>(0i, func_3(vec4<bool>(var_1.x, arg_1.x, true, var_1.x), Struct_3(var_0.x, var_1.x, Struct_1(-1i)), arg_1), var_2.a, func_2(vec4<i32>(26555i, -2147483647i, 35292i, u_input.c), Struct_1(-1i), var_2.a).a), func_2(-(~vec4<i32>(75i, u_input.c, var_2.a, 4764i)), Struct_1(var_2.a & 65710i), 22853i), 79857i), var_2.a);
    return all(var_1.zwy);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3) -> bool {
    let var_0 = firstTrailingBit(~1u);
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(42465u, 4294967295u), vec2<u32>(u_input.b.x, var_0))), 4294967295u) >> (~(~(~u_input.b.x)) % 32u), _wgslsmith_div_u32(~84748u, abs(_wgslsmith_mult_u32(func_4(arg_1.a, arg_1.c, arg_1.a, vec2<i32>(u_input.a, arg_1.c.a)).x, ~58900u))));
    var_1 = ~select(1u, (arg_1.a ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.a, 34075u, 1u), vec4<u32>(var_0, arg_1.a, var_0, var_0))) >> (min(arg_1.a, ~125225u) % 32u), any(select(vec4<bool>(true, arg_0.x, arg_0.x, false), select(vec4<bool>(arg_1.b, true, arg_0.x, true), vec4<bool>(arg_0.x, true, arg_1.b, false), false), select(vec4<bool>(arg_0.x, true, arg_1.b, arg_0.x), vec4<bool>(true, false, true, true), true))));
    var var_2 = select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 13u)] + global0[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_f_op_f32(182f * global0[_wgslsmith_index_u32(1u, 13u)])), select(vec2<bool>(arg_1.b, arg_1.b), !arg_0, !arg_0.x)), _wgslsmith_div_f32(116f, global0[_wgslsmith_index_u32(3134u | u_input.b.x, 13u)]) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 13u)] - global0[_wgslsmith_index_u32(22027u, 13u)])))), vec3<bool>(true, false, arg_1.b));
    var var_3 = -vec4<i32>(arg_1.c.a, arg_1.c.a, max(-2147483647i, -5253i), arg_1.c.a | min(-u_input.c, reverseBits(arg_1.c.a)));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec2<bool>(true, true), Struct_3(~(~_wgslsmith_clamp_u32(14540u, u_input.b.x, 1u)), true || (select(false, true, true) | func_1(global0[_wgslsmith_index_u32(34535u, 13u)], vec2<bool>(false, true))), Struct_1(1i)));
    global0 = array<f32, 13>();
    global0 = array<f32, 13>();
    var var_1 = firstLeadingBit(min(countOneBits(~vec4<i32>(u_input.c, -1i, u_input.a, 0i)), abs(abs(vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.a)))) | -_wgslsmith_mod_vec4_i32(~vec4<i32>(58094i, -15440i, u_input.a, -64934i), vec4<i32>(-10936i, -56131i, -19526i, u_input.a) ^ vec4<i32>(-9008i, u_input.c, u_input.c, 2147483647i)));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -980f) + global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, ~1u), 13u)]) + -441f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 13u)]), 230f))));
    let var_3 = -39784i | var_1.x;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 13u)])))))) - _wgslsmith_f_op_f32(f32(-1f) * -453f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~countOneBits(countOneBits(u_input.b.x)), _wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.b.x, _wgslsmith_sub_u32(1u, u_input.b.x)), u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, abs(u_input.b.x)) & u_input.b.x), vec4<i32>(48735i, var_3, -_wgslsmith_add_i32(_wgslsmith_div_i32(var_1.x, var_3), ~var_3), var_3), 0u, countOneBits(~_wgslsmith_sub_vec4_i32(vec4<i32>(-14720i, u_input.c, -2147483647i, -1i), countOneBits(vec4<i32>(var_1.x, var_1.x, 2093i, var_1.x)))), u_input.b);
}

