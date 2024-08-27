struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11>;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(-2107f, 1671f, Struct_1(vec4<i32>(2147483647i, 72789i, -1i, i32(-2147483648)), vec3<f32>(688f, 694f, -2741f), vec4<bool>(false, false, true, true), vec3<i32>(-2427i, -31934i, 50349i), 0u), vec2<u32>(63576u, 1u), 1i), Struct_2(1000f, -797f, Struct_1(vec4<i32>(1370i, 1i, 13966i, -14377i), vec3<f32>(697f, 125f, 1622f), vec4<bool>(false, false, true, false), vec3<i32>(2147483647i, 0i, i32(-2147483648)), 22062u), vec2<u32>(4595u, 1u), -1i), Struct_2(-921f, -1000f, Struct_1(vec4<i32>(11985i, 0i, 9972i, i32(-2147483648)), vec3<f32>(124f, 1179f, 125f), vec4<bool>(false, false, true, true), vec3<i32>(0i, -49354i, 12929i), 4294967295u), vec2<u32>(12357u, 1u), 1i), Struct_2(-223f, -399f, Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -42353i), vec3<f32>(1000f, -1254f, 164f), vec4<bool>(false, false, false, true), vec3<i32>(1i, 2599i, 2147483647i), 1u), vec2<u32>(1u, 0u), 2147483647i), Struct_2(-1599f, 2080f, Struct_1(vec4<i32>(-35956i, 2147483647i, 61012i, 2147483647i), vec3<f32>(-1005f, -938f, 1743f), vec4<bool>(true, false, false, true), vec3<i32>(i32(-2147483648), -13776i, 17787i), 0u), vec2<u32>(17340u, 61342u), i32(-2147483648)), Struct_2(345f, 1455f, Struct_1(vec4<i32>(59923i, 7569i, 32396i, -61268i), vec3<f32>(146f, 355f, -1356f), vec4<bool>(false, false, false, false), vec3<i32>(-8819i, 1i, -12911i), 3035u), vec2<u32>(0u, 2179u), -55617i), Struct_2(-365f, 849f, Struct_1(vec4<i32>(2147483647i, 3441i, -20808i, -7962i), vec3<f32>(1002f, -480f, 837f), vec4<bool>(true, false, true, false), vec3<i32>(-1i, -1i, 39494i), 0u), vec2<u32>(17448u, 0u), 2147483647i));

var<private> global2: array<u32, 24> = array<u32, 24>(11260u, 37813u, 39230u, 0u, 4294967295u, 27628u, 9472u, 45505u, 4294967295u, 57195u, 4294967295u, 48974u, 0u, 1u, 0u, 1u, 12606u, 96626u, 44677u, 0u, 4294967295u, 0u, 1311u, 1354u);

var<private> global3: i32 = i32(-2147483648);

var<private> global4: array<f32, 18> = array<f32, 18>(569f, 397f, -580f, 178f, 458f, -957f, -1000f, -1263f, -792f, 962f, -1843f, 362f, -1759f, 1000f, 1878f, -439f, 823f, -355f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<i32>) -> bool {
    let var_0 = -2147483647i;
    global1 = array<Struct_2, 7>();
    var var_1 = Struct_1(-(~abs(~vec4<i32>(var_0, -23516i, -1i, 2147483647i))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 18u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14327u, 24u)], 18u)], global4[_wgslsmith_index_u32(u_input.b.x, 18u)]) - vec3<f32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 18u)], 1038f, global4[_wgslsmith_index_u32(15754u, 18u)])))), vec3<f32>(-870f, _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19896u, 24u)], 18u)])), _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(33392u, 18u)])))))), !select(select(!vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, arg_0, false, false), !vec4<bool>(arg_0, arg_0, false, arg_0)), !(!vec4<bool>(false, false, false, arg_0)), !arg_0), ~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -58491i, 0i, 1i), vec4<i32>(arg_2.x, -2147483647i, -2147483647i, 17193i)), arg_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), arg_2.yy)), ~vec3<i32>(u_input.a.x, arg_1.x, arg_2.x)), _wgslsmith_clamp_u32(88114u, ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.b, ~vec2<u32>(583u, u_input.d)), 24u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_mod_vec2_u32(u_input.b, abs(vec2<u32>(3253u, global2[_wgslsmith_index_u32(0u, 24u)])))), 24u)]));
    var var_2 = !arg_0;
    let var_3 = var_1.c.ywy;
    return false;
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<i32>, 11>();
    let var_0 = Struct_1(select(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, u_input.c.x, 15935i, 0i), -_wgslsmith_sub_vec4_i32(-vec4<i32>(-11910i, 10055i, u_input.a.x, u_input.c.x), min(vec4<i32>(-11393i, u_input.c.x, 30310i, 14632i), vec4<i32>(-2147483647i, u_input.a.x, 29356i, 19196i))), select(vec4<bool>(true, false, true, true), vec4<bool>(func_3(true, u_input.a, vec3<i32>(48636i, 17019i, 14863i)), false, global4[_wgslsmith_index_u32(u_input.d, 18u)] >= -1139f, true), vec4<bool>(true, false, true, global4[_wgslsmith_index_u32(29190u, 18u)] <= global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 24u)], 18u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(u_input.d, 18u)], 665f), global4[_wgslsmith_index_u32(4294967295u, 18u)]), 472f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(51792u, 18u)] - global4[_wgslsmith_index_u32(21555u, 18u)]))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(1u, 18u)], 601f, 112f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(291f, 810f, global4[_wgslsmith_index_u32(u_input.d, 18u)])))))), select(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, true, false)), any(vec2<bool>(true, false)) && all(vec4<bool>(true, true, false, false))), (func_3(true, vec2<i32>(-2147483647i, u_input.a.x), global0[_wgslsmith_index_u32(9904u, 11u)]) || (2434i != u_input.c.x)) == (true || select(false, false, true))), _wgslsmith_add_vec3_i32(-max(max(vec3<i32>(13422i, u_input.a.x, u_input.a.x), vec3<i32>(-46i, 47056i, 1i)), select(global0[_wgslsmith_index_u32(4241u, 11u)], global0[_wgslsmith_index_u32(u_input.d, 11u)], vec3<bool>(false, true, false))), global0[_wgslsmith_index_u32(1u | reverseBits(reverseBits(u_input.b.x)), 11u)]), ~u_input.d);
    var var_1 = Struct_1(_wgslsmith_mult_vec4_i32(~(select(var_0.a, var_0.a, false) & firstTrailingBit(vec4<i32>(u_input.a.x, 30016i, var_0.d.x, 15316i))), vec4<i32>(~(-3484i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, 2147483647i, u_input.a.x, var_0.a.x), vec4<i32>(u_input.c.x, -7280i, u_input.a.x, u_input.a.x)), -var_0.d.x, u_input.a.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(715f, var_0.b.x, var_0.b.x)), _wgslsmith_f_op_vec3_f32(-var_0.b), vec3<bool>(var_0.c.x, var_0.c.x, false))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0.b), var_0.b)))), !(!var_0.c), var_0.d, 0u);
    return global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(min(abs(1u), firstTrailingBit(_wgslsmith_mod_u32(~1u, ~u_input.b.x))), 24u)], 7u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    global3 = _wgslsmith_sub_i32(firstTrailingBit(arg_0.x), ~_wgslsmith_dot_vec3_i32(~(-arg_1.c.d), vec3<i32>(_wgslsmith_mod_i32(arg_2.e, 0i), -2147483647i, _wgslsmith_div_i32(arg_2.e, arg_1.e))));
    let var_0 = func_2();
    let var_1 = global4[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(arg_1.c.e, 24u)], 18u)];
    global2 = array<u32, 24>();
    var var_2 = func_2();
    return !(!(!func_3(arg_1.c.c.x, vec2<i32>(var_0.c.d.x, var_0.e), vec3<i32>(var_0.e, -41138i, arg_1.e))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 7>();
    let var_0 = Struct_1(-max(~vec4<i32>(1i, 9832i, 0i, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, -44879i), vec4<i32>(14238i, 27487i, -1i, 2858i)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(-5340i, 2147483647i, u_input.a.x, -5852i), vec4<i32>(u_input.a.x, 0i, 33911i, 60516i))), vec3<f32>(-1109f, global4[_wgslsmith_index_u32(~u_input.b.x, 18u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 18u)], _wgslsmith_div_f32(-108f, global4[_wgslsmith_index_u32(0u, 18u)]))))), select(vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), any(vec4<bool>(true, true, true, true)), true, true), !vec4<bool>(select(true, false, false), true, func_1(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -13136i), global1[_wgslsmith_index_u32(u_input.d, 7u)], Struct_2(-1001f, -1956f, Struct_1(vec4<i32>(-3261i, u_input.c.x, u_input.c.x, -5882i), vec3<f32>(374f, -244f, global4[_wgslsmith_index_u32(66811u, 18u)]), vec4<bool>(true, true, false, false), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 11u)], 0u), u_input.b, u_input.a.x)), false), func_3(true, vec2<i32>(-1i) * -vec2<i32>(3040i, u_input.a.x), vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 33493i, u_input.a.x), global0[_wgslsmith_index_u32(u_input.b.x, 11u)]), u_input.c.x))), global0[_wgslsmith_index_u32(u_input.b.x, 11u)], 109097u);
    let var_1 = global1[_wgslsmith_index_u32(var_0.e, 7u)];
    let var_2 = select(!func_2().c.c, vec4<bool>(0u > func_2().d.x, var_1.c.c.x, -855f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.a, 1298f, false)), _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(29618u, 18u)]))), !all(!var_0.c)), !var_1.c.c);
    let var_3 = !vec3<bool>(var_1.c.c.x == all(vec2<bool>(var_2.x, true)), !var_0.c.x, var_1.c.c.x);
    global0 = array<vec3<i32>, 11>();
    var var_4 = global1[_wgslsmith_index_u32(~var_1.d.x, 7u)];
    let var_5 = 1165f;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_dot_vec4_i32(var_0.a, ~var_1.c.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1938f, _wgslsmith_f_op_f32(-var_5))) - var_1.b), _wgslsmith_f_op_f32(var_4.c.b.x + -641f), true)));
}

