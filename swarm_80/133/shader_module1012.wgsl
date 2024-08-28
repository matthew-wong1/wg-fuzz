struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<bool>(false, false), 78892u, 393f, false), Struct_1(vec2<bool>(false, true), 0u, 2628f, true), Struct_1(vec2<bool>(true, true), 4294967295u, 1088f, false), Struct_1(vec2<bool>(false, true), 35929u, -1206f, true), Struct_1(vec2<bool>(false, true), 6952u, -957f, true), Struct_1(vec2<bool>(true, false), 0u, 1918f, false), Struct_1(vec2<bool>(true, true), 146421u, -1798f, false), Struct_1(vec2<bool>(true, false), 0u, 1496f, true), Struct_1(vec2<bool>(false, false), 4294967295u, -302f, true), Struct_1(vec2<bool>(true, false), 1u, 580f, false), Struct_1(vec2<bool>(false, false), 4294967295u, -1388f, false), Struct_1(vec2<bool>(false, false), 17977u, -116f, false), Struct_1(vec2<bool>(false, false), 1u, 931f, false), Struct_1(vec2<bool>(false, true), 29362u, 589f, true), Struct_1(vec2<bool>(false, false), 48183u, 1233f, false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = ~(-_wgslsmith_add_vec2_i32(u_input.c, u_input.a));
    let var_1 = _wgslsmith_f_op_f32(select(-749f, _wgslsmith_f_op_f32(f32(-1f) * -337f), true));
    global1 = array<Struct_1, 17>();
    var var_2 = Struct_1(!vec2<bool>(!(u_input.c.x <= -8870i), !all(vec2<bool>(false, false))), _wgslsmith_sub_u32(_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(12260u, 20u)]), ~_wgslsmith_clamp_u32(12402u | global0[_wgslsmith_index_u32(u_input.b.x, 20u)], _wgslsmith_add_u32(u_input.b.x, 4294967295u), u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(var_1 - -295f))) + _wgslsmith_f_op_f32(727f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), var_1 >= var_1)));
    var var_3 = global1[_wgslsmith_index_u32(~var_2.b, 17u)];
    return select(select(select(!select(vec2<bool>(var_3.d, var_2.d), var_2.a, vec2<bool>(true, var_2.d)), vec2<bool>(var_2.a.x, var_1 == 442f), select(var_3.a, vec2<bool>(var_3.d, false), all(vec3<bool>(var_3.d, false, var_2.d)))), var_2.a, true), select(select(var_3.a, !vec2<bool>(var_3.a.x, var_2.a.x), var_3.a), !(!select(vec2<bool>(var_3.d, var_3.d), vec2<bool>(var_2.d, false), var_2.a)), true), select(!var_2.a, vec2<bool>(-1473f >= var_3.c, u_input.c.x > var_0.x), vec2<bool>(var_3.a.x, var_3.a.x)));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-u_input.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.c.x), vec2<i32>(-1i, -14932i), vec2<i32>(u_input.c.x, -2147483647i))) >> (~(~u_input.b.x) % 32u), arg_3.x, _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.a), vec2<i32>(u_input.a.x, 29726i)))), 1i, arg_3.x);
    let var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 20u)];
    var var_2 = vec2<u32>(reverseBits(u_input.b.x), (~abs(4294967295u) | ~global0[_wgslsmith_index_u32(28799u, 20u)]) >> (0u % 32u));
    global2 = array<Struct_1, 15>();
    var var_3 = Struct_1(!select(select(vec2<bool>(false, arg_2.x), vec2<bool>(false, false), func_3()), func_3(), arg_2.zx), 3398u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(900f)))) - -1135f)), arg_2.x);
    return Struct_1(!var_3.a, 1u, -1412f, false);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = u_input.c.x;
    var var_1 = func_2(-456f, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.c)) * 1584f), arg_1.c, arg_1.c), vec3<f32>(_wgslsmith_div_f32(936f, _wgslsmith_f_op_f32(1462f + arg_1.c)), _wgslsmith_f_op_f32(sign(arg_1.c)), _wgslsmith_f_op_f32(floor(308f)))), arg_2.yzy, ~vec4<i32>(-firstLeadingBit(-1i), ~0i, -2147483647i, abs(countOneBits(arg_0.x))));
    let var_2 = func_2(_wgslsmith_f_op_f32(var_1.c + var_1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(-218f)), -342f, arg_1.c)))), vec3<bool>(true, true, true), min(-vec4<i32>(_wgslsmith_dot_vec4_i32(arg_0, arg_0), arg_0.x, -24165i, 81585i), _wgslsmith_div_vec4_i32(~reverseBits(arg_0), arg_0)));
    let var_3 = arg_1;
    let var_4 = max((u_input.c.x << (~(0u & var_1.b) % 32u)) ^ (_wgslsmith_sub_i32(reverseBits(arg_0.x), arg_0.x) & -1i), arg_0.x | _wgslsmith_mod_i32(countOneBits(arg_0.x), u_input.a.x));
    return Struct_1(select(func_3(), !var_3.a, vec2<bool>(any(arg_2), var_2.a.x)), 4294967295u, 1000f, func_2(_wgslsmith_f_op_f32(round(553f)), vec3<f32>(-859f, _wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(-arg_1.c))), arg_1.c), vec3<bool>(all(!vec4<bool>(arg_1.a.x, var_3.d, true, var_3.a.x)), arg_1.c <= _wgslsmith_f_op_f32(-var_1.c), true), ~arg_0).a.x);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = func_1(vec4<i32>(_wgslsmith_mod_i32(countOneBits(~33008i), i32(-1i) * -u_input.c.x), u_input.c.x >> (0u % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 7352i), vec4<i32>(15596i, u_input.c.x, u_input.a.x, -7392i), vec4<bool>(arg_0.a.x, true, arg_0.d, arg_0.d)), vec4<i32>(22069i, -4667i, u_input.a.x, -1i)), u_input.c.x), 0i), arg_0, !(!(!vec4<bool>(true, arg_0.d, false, true))));
    let var_1 = select(vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(abs(_wgslsmith_clamp_i32(u_input.a.x, -1i, u_input.c.x)), 16429i), 2147483647i), vec3<i32>(-34365i, u_input.c.x >> (~4294967295u % 32u), 8169i) | (vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 45942i, 0i), vec4<i32>(-1i, 55759i, -39257i, 2147483647i)), abs(40369i)) | (~vec3<i32>(26073i, u_input.c.x, u_input.a.x) ^ min(vec3<i32>(1i, u_input.a.x, u_input.c.x), vec3<i32>(u_input.a.x, 2147483647i, -2147483647i)))), true);
    let var_2 = true;
    let var_3 = Struct_1(select(select(arg_0.a, !vec2<bool>(true, arg_0.a.x), !select(vec2<bool>(true, true), arg_0.a, vec2<bool>(arg_0.a.x, var_0.a.x))), select(!(!arg_0.a), !arg_0.a, func_3()), var_2), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-282f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, -358f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1334f)) * _wgslsmith_f_op_f32(ceil(arg_0.c))))), !func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1349f + arg_0.c))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-524f, 566f, -708f))))), vec3<bool>(var_0.d, true, global0[_wgslsmith_index_u32(u_input.b.x, 20u)] == 1u), -vec4<i32>(var_1.x, var_1.x, u_input.c.x, 1i)).d);
    global2 = array<Struct_1, 15>();
    return _wgslsmith_div_i32(-_wgslsmith_mod_i32(27566i, _wgslsmith_clamp_i32(u_input.c.x, var_1.x ^ u_input.a.x, _wgslsmith_mod_i32(var_1.x, u_input.a.x))), -var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(vec3<i32>(-(i32(-1i) * -1i), u_input.c.x, -16767i) ^ (vec3<i32>(116488i & u_input.c.x, -u_input.a.x, u_input.c.x) ^ abs(vec3<i32>(-31200i, -11162i, u_input.a.x))));
    global2 = array<Struct_1, 15>();
    let var_1 = func_4(func_1(~_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -11988i, -11219i, 8946i), vec4<i32>(var_0.x, u_input.c.x, var_0.x, var_0.x)), ~vec4<i32>(var_0.x, -1i, var_0.x, var_0.x)), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~62469u ^ _wgslsmith_add_u32(u_input.b.x, 31025u), 20u)], 20u)] >> (~(~u_input.b.x) % 32u), 15u)], !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(false, false, true, false), all(vec2<bool>(false, false)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -589f));
    global0 = array<u32, 20>();
    var var_3 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(select(true, false, true), true), vec2<bool>(true, func_2(-573f, vec3<f32>(568f, 2605f, 1000f), vec3<bool>(false, true, false), vec4<i32>(-29801i, u_input.c.x, -1i, var_0.x)).a.x), false)), u_input.b.x, _wgslsmith_f_op_f32(max(1274f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-241f, -810f)) * -218f))))), true);
    let var_4 = func_1(_wgslsmith_div_vec4_i32(select(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-44191i, -22776i, 0i, var_0.x), vec4<i32>(var_0.x, 21522i, -58329i, var_1), vec4<i32>(-1i, var_1, var_1, u_input.c.x)), (vec4<i32>(-1i, var_1, u_input.c.x, 2147483647i) >> (vec4<u32>(673u, 131u, var_3.b, 27157u) % vec4<u32>(32u))) ^ firstTrailingBit(vec4<i32>(-33001i, -16367i, var_1, var_1)), func_3().x), vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_1, 2147483647i, 0i, var_1)), vec4<i32>(-11350i, u_input.a.x, 0i, -8545i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, u_input.a.x, var_1, 1i), vec4<i32>(u_input.c.x, -16648i, u_input.a.x, var_0.x)), i32(-1i) * -2147483647i, 26388i), ~_wgslsmith_clamp_i32(var_0.x, -32372i, var_0.x), u_input.c.x << (abs(0u) % 32u))), func_1(vec4<i32>(_wgslsmith_div_i32(-var_0.x, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_1, var_0.x, var_1), vec4<i32>(var_1, -44212i, 1i, -43443i)) >> (0u % 32u), ~countOneBits(54642i), countOneBits(var_1)), func_1(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.c.x, -2147483647i), vec4<i32>(var_0.x, var_1, 0i, var_1))), Struct_1(!var_3.a, 1u, _wgslsmith_f_op_f32(step(-465f, var_3.c)), true), !vec4<bool>(true, false, var_3.d, var_3.a.x)), vec4<bool>(true, !any(vec4<bool>(var_3.d, var_3.d, var_3.d, true)), true, true)), vec4<bool>(false, !(!var_3.d), (var_1 | -23909i) <= 48882i, var_3.c < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c))));
    let var_5 = Struct_1(var_3.a, func_1(min(vec4<i32>(-2147483647i, _wgslsmith_add_i32(-2147483647i, 0i), abs(-8300i), 0i), vec4<i32>(-19704i, select(var_0.x, -1i, var_4.d), 0i, ~1i)), Struct_1(select(select(vec2<bool>(var_4.a.x, false), var_4.a, vec2<bool>(var_4.d, true)), !var_3.a, vec2<bool>(true, true)), _wgslsmith_sub_u32(var_3.b | 63440u, var_3.b), var_3.c, !select(var_4.a.x, var_4.a.x, false)), !(!vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, var_3.a.x))).b, _wgslsmith_div_f32(1600f, 1537f), false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(_wgslsmith_dot_vec3_i32(max(var_0, vec3<i32>(var_1, u_input.c.x, -8767i)), var_0 >> (vec3<u32>(0u, 42955u, 5001u) % vec3<u32>(32u))))), var_0);
}

