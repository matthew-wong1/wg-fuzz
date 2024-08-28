struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, false, true, true, true, true, true, false, false, false, true, false, true, true, true, true, true, true, true, false, false);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> i32 {
    var var_0 = select(-26353i, ~_wgslsmith_mult_i32((9945i << (0u % 32u)) & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 5677i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 26720i) >> (arg_0 % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(-40551i, -54531i), vec2<i32>(41678i, -1i)))), global0[_wgslsmith_index_u32(arg_1, 21u)] & (all(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 21u)])) && !(!global0[_wgslsmith_index_u32(1100u, 21u)])));
    let var_1 = Struct_3(true, any(vec2<bool>(!(u_input.a < arg_1), global0[_wgslsmith_index_u32(abs(arg_1), 21u)])), _wgslsmith_mod_u32(1438u, ~0u));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-704f, 238f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2613f)), _wgslsmith_f_op_f32(floor(449f)))))));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1713f + var_2))) <= _wgslsmith_f_op_f32(-var_2);
    let var_4 = Struct_2(var_2, Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(var_2, var_2), _wgslsmith_f_op_f32(-var_2), var_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1195f, var_2, -1000f)), vec3<bool>(false || var_1.a, false, false))), abs(~vec3<u32>(713u, 38003u, arg_0.x) << (vec3<u32>(1u, 1u, 4294967295u) % vec3<u32>(32u))), true, 22846u < max(var_1.c, _wgslsmith_sub_u32(arg_0.x, 40436u))), ~countOneBits(firstLeadingBit(var_1.c)));
    return firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, 21430i) << (arg_0.x % 32u), 21366i) >> (~(~arg_1) % 32u));
}

fn func_2() -> Struct_4 {
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    global0 = array<bool, 21>();
    let var_0 = Struct_3(_wgslsmith_sub_i32(_wgslsmith_div_i32(func_3(vec2<u32>(47898u, 1u), 43200u), firstLeadingBit(0i)), func_3(~vec2<u32>(745u, 1u), _wgslsmith_mult_u32(u_input.a, u_input.a))) > firstLeadingBit(-6315i), !(true & all(select(vec4<bool>(true, global0[_wgslsmith_index_u32(87116u, 21u)], false, global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<bool>(global0[_wgslsmith_index_u32(18216u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(u_input.a, 21u)])))), 68271u);
    var var_1 = select(var_0.a, ~(-countOneBits(11740i)) > _wgslsmith_mult_i32(~(-33158i << (u_input.a % 32u)), 1i), any(vec2<bool>(false, func_3(vec2<u32>(u_input.a, var_0.c), 15519u) < (6950i << (var_0.c % 32u)))));
    return Struct_4(Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(-1319f - _wgslsmith_f_op_f32(f32(-1f) * -1529f)), _wgslsmith_div_f32(-1471f, 129f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-380f))))), vec3<u32>(u_input.a, 4636u, _wgslsmith_div_u32(u_input.a, ~u_input.a)), !any(vec2<bool>(var_0.a, var_0.b)), !all(vec3<bool>(true, var_0.a, false))), _wgslsmith_add_u32(abs(u_input.a), abs(~_wgslsmith_mult_u32(u_input.a, 42105u))), Struct_2(_wgslsmith_f_op_f32(892f + 960f), Struct_1(global0[_wgslsmith_index_u32(57050u, 21u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-440f, -1169f, -862f))), ~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), true, false), var_0.c << ((reverseBits(135822u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, u_input.a), vec2<u32>(82456u, 4294967295u)) % 32u)) % 32u)), Struct_3(true, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_0.c, 4294967295u), vec4<u32>(31269u, var_0.c, 1u, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(13711u, 4294967295u, 68160u, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))), 21u)], abs(~0u)));
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: i32, arg_3: vec4<bool>) -> vec3<f32> {
    let var_0 = 1432f;
    var var_1 = global0[_wgslsmith_index_u32(~0u, 21u)];
    var_1 = arg_3.x == false;
    var var_2 = func_2();
    global0 = array<bool, 21>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.c.a), var_0, _wgslsmith_f_op_f32(ceil(-399f))) * vec3<f32>(func_2().a.b.x, -1894f, var_0))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.c.b.b.x, -635f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1214f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_1))))) * arg_0.a.b));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: u32) -> i32 {
    var var_0 = Struct_2(-275f, Struct_1(global0[_wgslsmith_index_u32(arg_2, 21u)], arg_1, vec3<u32>(arg_2, firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 45242u)), u_input.a), !global0[_wgslsmith_index_u32(~31595u, 21u)] & any(vec2<bool>(true, true)), _wgslsmith_sub_u32(~arg_2, arg_2) < u_input.a), arg_2);
    let var_1 = false;
    let var_2 = false;
    let var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(~max(_wgslsmith_dot_vec4_u32(vec4<u32>(114299u, u_input.a, 111079u, 0u), vec4<u32>(29594u, 19368u, u_input.a, arg_2)), var_0.c), ~(~arg_2)), ~_wgslsmith_add_vec2_u32(var_0.b.c.xy, vec2<u32>(4294967295u, var_0.c) >> (vec2<u32>(var_0.b.c.x, 0u) % vec2<u32>(32u))) & _wgslsmith_sub_vec2_u32(~max(var_0.b.c.yx, vec2<u32>(arg_2, 4294967295u)), min(~var_0.b.c.xx, _wgslsmith_clamp_vec2_u32(var_0.b.c.zz, var_0.b.c.yz, var_0.b.c.zy))));
    var var_4 = ~2147483647i;
    return _wgslsmith_sub_i32(abs(0i), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = ~_wgslsmith_mod_vec3_i32(-(firstLeadingBit(vec3<i32>(var_0, var_0, var_0)) << (vec3<u32>(u_input.a, 69392u, 1u) % vec3<u32>(32u))), vec3<i32>(-2147483647i, -39994i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-65740i, var_0, var_0, var_0)), -vec4<i32>(0i, -2147483647i, 2147483647i, 0i))));
    var_1 = abs(-reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0, var_1.x, -2147483647i), vec3<i32>(-1i, -2147483647i, var_0)), vec3<i32>(2147483647i, 1i, -2147483647i) >> (vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u)))));
    var_1 = vec3<i32>(-2147483647i, func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-355f * -360f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-262f - -584f))), -496f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1024f + 1249f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(240f, -604f, 1138f) - vec3<f32>(695f, -1058f, -1835f)) * _wgslsmith_f_op_vec3_f32(func_1(Struct_4(Struct_1(global0[_wgslsmith_index_u32(7090u, 21u)], vec3<f32>(945f, 302f, 1042f), vec3<u32>(u_input.a, u_input.a, 20353u), false, global0[_wgslsmith_index_u32(u_input.a, 21u)]), 29918u, Struct_2(-297f, Struct_1(global0[_wgslsmith_index_u32(u_input.a, 21u)], vec3<f32>(1266f, -105f, -644f), vec3<u32>(27231u, 0u, 4294967295u), global0[_wgslsmith_index_u32(0u, 21u)], true), 61336u), Struct_3(false, false, u_input.a)), 698f, var_1.x, vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], false)))) - vec3<f32>(-348f, _wgslsmith_div_f32(800f, -1676f), -1000f)), u_input.a), max(17307i << ((firstLeadingBit(0u) >> (_wgslsmith_add_u32(u_input.a, u_input.a) % 32u)) % 32u), var_1.x));
    var var_2 = -813f;
    global0 = array<bool, 21>();
    let var_3 = !any(select(vec3<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], true)), true, true), !(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 21u)], false, false)), any(select(vec3<bool>(global0[_wgslsmith_index_u32(1354u, 21u)], false, global0[_wgslsmith_index_u32(22871u, 21u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], true), global0[_wgslsmith_index_u32(u_input.a, 21u)]))));
    var var_4 = _wgslsmith_div_vec4_u32(~select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 3708u, u_input.a), true) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 16735u, u_input.a), vec4<u32>(6189u, u_input.a, u_input.a, 23139u)) % vec4<u32>(32u)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(48545u, u_input.a, 0u, u_input.a)))) << (select(firstLeadingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(69160u, u_input.a, 53656u, u_input.a), vec4<u32>(14319u, u_input.a, u_input.a, 0u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, ~4294967295u, _wgslsmith_div_u32(1u, 16460u), 41373u ^ u_input.a), vec4<u32>(62310u, u_input.a, 1u, u_input.a) & ~vec4<u32>(4294967295u, u_input.a, 75940u, 4294967295u)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], false, false, var_3), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)], false, global0[_wgslsmith_index_u32(92166u, 21u)]), true & global0[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(var_3, all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], true, false, var_3)), true, var_0 == 2147483647i), select(!vec4<bool>(var_3, true, global0[_wgslsmith_index_u32(4294967295u, 21u)], true), select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 21u)], false, false), vec4<bool>(true, var_3, true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], false, false, global0[_wgslsmith_index_u32(u_input.a, 21u)])), select(true, false, true)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(select(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, u_input.a, 4294967295u), ~vec4<u32>(var_4.x, u_input.a, u_input.a, 41035u)), true), min(_wgslsmith_div_u32(4294967295u, var_4.x), var_4.x)), select(vec4<i32>(_wgslsmith_sub_i32(var_1.x, -var_1.x), 42881i, -(~32758i), min(max(-2147483647i, var_0), i32(-1i) * -1i)), vec4<i32>(firstLeadingBit(var_1.x), select(var_1.x, -8892i, true) & 1i, -2147483647i << ((var_4.x | var_4.x) % 32u), func_3(firstLeadingBit(var_4.yx), 4294967295u)), vec4<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(var_4.x, 21u)], true, var_3, global0[_wgslsmith_index_u32(u_input.a, 21u)])), !global0[_wgslsmith_index_u32(~u_input.a, 21u)], false, global0[_wgslsmith_index_u32(abs(83795u), 21u)])), _wgslsmith_clamp_vec2_i32(var_1.yx, -abs(vec2<i32>(var_0, var_1.x)), var_1.yz & var_1.yx), -2147483647i, u_input.a);
}

