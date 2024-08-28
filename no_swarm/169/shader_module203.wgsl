struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false));

var<private> global1: array<f32, 6>;

var<private> global2: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = Struct_1(0u);
    global2 = i32(-1i) * -2257i;
    global0 = array<vec4<bool>, 13>();
    global1 = array<f32, 6>();
    return Struct_1(24226u);
}

fn func_3(arg_0: u32, arg_1: i32) -> vec2<i32> {
    let var_0 = 1f;
    global1 = array<f32, 6>();
    var var_1 = all(!vec3<bool>(!all(vec4<bool>(false, true, false, true)), all(vec4<bool>(false, true, true, false)), true));
    var_1 = !(1i < u_input.a.x);
    global0 = array<vec4<bool>, 13>();
    return -select(-vec2<i32>(_wgslsmith_add_i32(21915i, u_input.a.x), u_input.a.x), u_input.a.zx, !(_wgslsmith_f_op_f32(var_0 * var_0) < global1[_wgslsmith_index_u32(66093u, 6u)]));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(41451u, arg_2) >> (arg_0.d.yx % vec2<u32>(32u)), arg_0.d.wx), ~(~vec2<u32>(arg_0.d.x, 4294967295u)))), arg_0.d.zz);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-144f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global1[_wgslsmith_index_u32(arg_0.d.x, 6u)]) - 300f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -371f))) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 6u)]))), 1086f, -806f);
    var var_2 = Struct_2(arg_1.c, func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_1.yz - var_1.zz))), vec2<f32>(_wgslsmith_f_op_f32(var_1.x - 1358f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 6u)] - global1[_wgslsmith_index_u32(580u, 6u)])))), -_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 45697i, u_input.a.x, 1i), vec4<i32>(-1i, 31511i, arg_0.c, -1i)), min(vec4<i32>(u_input.a.x, arg_0.c, -47483i, -2147483647i), vec4<i32>(u_input.a.x, 2147483647i, arg_1.b, u_input.a.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(var_0.x, 0u), 1u, ~var_0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.a, 1u, 0u, arg_2), _wgslsmith_mult_vec4_u32(arg_0.d, arg_0.d), _wgslsmith_add_vec4_u32(arg_0.d, vec4<u32>(arg_2, arg_1.c.a, arg_2, arg_2)))), !vec4<bool>(arg_1.a & true, all(vec3<bool>(arg_1.a, false, false)), any(vec3<bool>(arg_1.a, arg_1.a, false)), arg_0.c <= -2147483647i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e, -2147483647i, -u_input.a.x, _wgslsmith_div_i32(arg_0.e, -23500i)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.a.x, -6115i, 2147483647i, -16317i)), abs(u_input.a))), ~arg_0.d, -36458i);
    var var_3 = var_2.d;
    let var_4 = select(!select(vec2<bool>(true, var_0.x != 4294967295u), select(!vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(false, arg_1.a), !vec2<bool>(true, arg_1.a)), arg_1.a), vec2<bool>(!(_wgslsmith_dot_vec4_u32(var_2.d, vec4<u32>(0u, 32141u, arg_1.c.a, 64075u)) < firstLeadingBit(var_3.x)), !all(vec3<bool>(false, arg_1.a, arg_1.a)) & arg_1.a), arg_1.a);
    return arg_1.c;
}

fn func_1(arg_0: f32) -> vec2<u32> {
    let var_0 = func_4(Struct_2(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-256f, arg_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(117f, -209f))), vec4<i32>(-1i) * -u_input.a, vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), select(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(10735u, 13u)], vec4<bool>(false, true, false, false)))), Struct_1(_wgslsmith_mod_u32(1u, 10730u)), _wgslsmith_dot_vec2_i32(min(func_3(43566u, u_input.a.x), reverseBits(u_input.a.yy)), func_3(0u, 2147483647i) & -u_input.a.xz), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 0u, 2988u, 0u), vec4<u32>(61555u, 91008u, 15037u, 25247u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), u_input.a.x), Struct_3(true, func_3(1u, 2147483647i).x, func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], -775f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, global1[_wgslsmith_index_u32(18972u, 6u)]))), vec2<bool>(true, true))), reverseBits(vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, 9392i) | u_input.a), vec4<u32>(_wgslsmith_div_u32(2523u, 38400u), min(1u, 51950u), firstLeadingBit(1u), abs(39922u)), global0[_wgslsmith_index_u32(~(~4389u), 13u)])), firstTrailingBit(_wgslsmith_mod_u32(reverseBits(max(0u, 33u)), _wgslsmith_div_u32(~34099u, _wgslsmith_add_u32(0u, 29286u)))));
    var var_1 = u_input.a.x;
    var var_2 = Struct_2(func_4(Struct_2(func_2(vec2<f32>(-676f, arg_0), u_input.a, abs(vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a)), vec4<bool>(true, true, true, true)), Struct_1(var_0.a), 0i, ~(~vec4<u32>(var_0.a, 0u, var_0.a, 0u)), u_input.a.x), Struct_3(abs(var_0.a) >= 64477u, -1i, var_0), ~(~(~0u))), var_0, -_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, 1i), u_input.a.x), 32775i), firstTrailingBit(vec4<u32>(var_0.a, var_0.a, 4294967295u, countOneBits(var_0.a))), min(2147483647i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)));
    var var_3 = Struct_3(false, reverseBits(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-27556i, var_2.c, -2147483647i, -42764i), vec4<i32>(-12243i, u_input.a.x, -58769i, -19241i)) & (i32(-1i) * -2147483647i), 2147483647i)), var_2.b);
    var var_4 = var_2.d.yzz << (var_2.d.wyx % vec3<u32>(32u));
    return ~(~vec2<u32>(var_2.a.a | 1u, 42038u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 6>();
    global0 = array<vec4<bool>, 13>();
    let var_0 = 601f;
    let var_1 = u_input.a.wzw;
    global0 = array<vec4<bool>, 13>();
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(~719u, _wgslsmith_sub_u32(~(~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), func_1(var_0))), func_4(Struct_2(func_4(Struct_2(Struct_1(10616u), Struct_1(1u), var_1.x, vec4<u32>(57614u, 1u, 4294967295u, 42297u), -1i), Struct_3(true, 33448i, Struct_1(30686u)), 1u), func_4(Struct_2(Struct_1(9602u), Struct_1(0u), 2147483647i, vec4<u32>(43804u, 0u, 113312u, 84280u), -3282i), Struct_3(true, 30007i, Struct_1(27307u)), 63853u), 12632i, vec4<u32>(1u, 1u, 1u, 1u), -2147483647i), Struct_3(true, _wgslsmith_clamp_i32(-57708i, u_input.a.x, -3477i), Struct_1(43389u)), ~1u).a), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, 1u, 1u)), ~reverseBits(vec3<u32>(4294967295u, 48206u, 0u))));
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(var_2.x, 6u)], global1[_wgslsmith_index_u32(var_2.x, 6u)])))))), min(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(19271i, -2147483647i, var_1.x, 9428i)), vec4<i32>(var_1.x, u_input.a.x, var_1.x, u_input.a.x)) >> (~(~vec4<u32>(var_2.x, var_2.x, 36419u, var_2.x)) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 25758i, var_1.x, u_input.a.x), u_input.a), u_input.a)), vec4<u32>(min(reverseBits(0u), _wgslsmith_mult_u32(1u, 4294967295u)) | var_2.x, 55348u, ~(var_2.x << (var_2.x % 32u)), countOneBits(_wgslsmith_mult_u32(countOneBits(var_2.x), ~var_2.x))), global0[_wgslsmith_index_u32(var_2.x, 13u)]);
    let var_4 = Struct_1(var_3.a);
    let var_5 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(1000f, -368f), global1[_wgslsmith_index_u32(var_4.a, 6u)]))), ~(~(-u_input.a)), ~(~(~vec4<u32>(34880u, 30236u, 0u, 1u))), vec4<bool>(_wgslsmith_f_op_f32(198f - -1421f) >= _wgslsmith_f_op_f32(sign(-349f)), var_4.a == 4294967295u, true, 2147483647i < ~var_1.x)), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-655f, global1[_wgslsmith_index_u32(67017u, 6u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(491f, 463f)))), u_input.a << (~(~vec4<u32>(var_4.a, 47968u, var_2.x, 4222u)) % vec4<u32>(32u)), vec4<u32>(42515u, abs(20753u), firstTrailingBit(84907u), func_2(vec2<f32>(1960f, -329f), vec4<i32>(-25925i, var_1.x, -42407i, -1i), vec4<u32>(0u, 20078u, var_3.a, 1u), global0[_wgslsmith_index_u32(0u, 13u)]).a) << (~(~vec4<u32>(var_3.a, var_3.a, 7314u, 4294967295u)) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(var_3.a << (0u % 32u), 13u)]), var_1.x, vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.zz, ~var_2.zz), abs(var_2.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, 3912u, 4294967295u, var_2.x), vec4<u32>(var_4.a, var_3.a, 0u, var_3.a)) >> (~(var_2.x | 21995u) % 32u), 4294967295u), ~(-func_3(max(var_2.x, 418u), ~2147483647i).x));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a, countOneBits(~16227u), 77494i, u_input.a.x, _wgslsmith_dot_vec2_u32(~var_5.d.ww, vec2<u32>(_wgslsmith_mult_u32(max(91893u, var_2.x), ~var_3.a), 1u)));
}

