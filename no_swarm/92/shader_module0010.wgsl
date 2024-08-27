struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<u32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 22> = array<f32, 22>(-570f, -1000f, 239f, 1000f, -334f, -327f, -1000f, -400f, -1580f, -730f, 754f, -839f, 589f, 1134f, 846f, -1016f, 149f, 1000f, 475f, 1000f, -782f, 1000f);

var<private> global2: array<u32, 25>;

var<private> global3: bool;

var<private> global4: array<Struct_5, 15> = array<Struct_5, 15>(Struct_5(1i), Struct_5(-3973i), Struct_5(0i), Struct_5(-37009i), Struct_5(2147483647i), Struct_5(16599i), Struct_5(-1i), Struct_5(1i), Struct_5(1i), Struct_5(1i), Struct_5(-1i), Struct_5(-23484i), Struct_5(1i), Struct_5(19220i), Struct_5(-25623i));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> vec3<f32> {
    let var_0 = Struct_4(-1306f, Struct_3(arg_0 > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(7562u, 22u)] * global1[_wgslsmith_index_u32(u_input.c.x, 22u)]))), u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32230u, 25u)], 22u)]) - vec2<f32>(-692f, global1[_wgslsmith_index_u32(4294967295u, 22u)]))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 22u)], 646f))) + _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 160f), vec2<f32>(549f, 529f))))), _wgslsmith_clamp_u32(1u, 96672u, firstTrailingBit(abs(6137u))));
    global4 = array<Struct_5, 15>();
    var var_1 = Struct_5(u_input.a.x);
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.c, firstLeadingBit(var_0.c)), 22u)], 534f), -1165f, _wgslsmith_div_f32(1290f, -1264f))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_4) -> u32 {
    let var_0 = abs(-vec4<i32>(arg_2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1476i), u_input.d.zw) ^ _wgslsmith_mod_i32(u_input.b.x, u_input.a.x), arg_2.x >> (arg_3.c.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, -18568i, u_input.b.x), vec3<i32>(arg_2.x, -33378i, -1i)) | _wgslsmith_mult_i32(u_input.b.x, u_input.a.x)));
    global2 = array<u32, 25>();
    var var_1 = Struct_3(!arg_3.b.a && arg_3.b.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(arg_1, 22u)]));
    let var_3 = Struct_5(select(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b.x, 1i, -1i), -2147483647i), u_input.d.x, true & (21788u < ~arg_3.e)));
    return min(firstLeadingBit(~76614u | global2[_wgslsmith_index_u32(min(1u, u_input.c.x ^ 22097u), 25u)]), ~0u);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: bool, arg_3: vec3<bool>) -> u32 {
    var var_0 = arg_0.x;
    let var_1 = vec4<f32>(113f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-610f)))), 340f, -162f);
    var var_2 = ~_wgslsmith_div_vec4_u32(u_input.c, _wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(4294967295u, 11075u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55211u, 25u)], 25u)], 25u)], 1u)), vec4<u32>(1u << (1u % 32u), ~global2[_wgslsmith_index_u32(4294967295u, 25u)], ~4294967295u, global2[_wgslsmith_index_u32(~4296u, 25u)])));
    var var_3 = vec2<u32>(func_2(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.c.xx), ~u_input.c.zy), 0u, _wgslsmith_div_vec4_i32(-u_input.a, firstLeadingBit(vec4<i32>(-15029i, u_input.d.x, 33480i, arg_0.x))), Struct_4(_wgslsmith_f_op_f32(-var_1.x), Struct_3(arg_3.x), vec4<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 25u)], 5475u, 66652u, 1u), _wgslsmith_f_op_vec2_f32(-var_1.wx), ~u_input.c.x)) >> (_wgslsmith_mult_u32((var_2.x | 29574u) << (~7220u % 32u), u_input.c.x << (0u % 32u)) % 32u), _wgslsmith_sub_u32(min(var_2.x, 89364u), 0u));
    global0 = any(vec4<bool>(arg_2, !(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(7840u, 22u)]) > -2095f), false, true));
    return global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(63816u, 1u), 25u)];
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2) -> vec2<f32> {
    global1 = array<f32, 22>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-549f - arg_0))))), _wgslsmith_div_f32(777f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))))), -268f);
    global1 = array<f32, 22>();
    var var_1 = select(!(any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)) && !(var_0.x != arg_0)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), false))), true);
    global0 = true;
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_1.xy))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec3_f32(func_3(arg_1.x)).xy, vec2<f32>(620f, 1554f)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-637f, 728f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(91527u, global2[_wgslsmith_index_u32(arg_2.d.x, 25u)], u_input.c.x), 22u)]), 2203f)), !all(vec4<bool>(any(vec2<bool>(true, false)), true, var_0.x != global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(17543u, 25u)], 22u)], 29314u < global2[_wgslsmith_index_u32(4294967295u, 25u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))) | all(vec4<bool>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 22u)] + -1168f) >= global1[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(73185u, 25u)], global2[_wgslsmith_index_u32(82386u, 25u)]), 22u)], any(vec4<bool>(true, false, false, true)), !any(vec2<bool>(true, false)), any(vec3<bool>(true, true, true))));
    let var_0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1453f, global1[_wgslsmith_index_u32(65415u, 22u)]))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1841f + global1[_wgslsmith_index_u32(abs(17916u), 22u)])))), Struct_3(true != all(vec4<bool>(true, true, true, true))), select(~_wgslsmith_add_vec4_u32(u_input.c, u_input.c), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19872u, 25u)], 25u)])) << (~23869u % 32u), 2370u, ~u_input.c.x << (~1u % 32u), 54486u), false), _wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(func_1(vec3<i32>(u_input.a.x, -38134i, 0i) & abs(vec3<i32>(-2147483647i, 0i, 29762i)), _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 25u)], u_input.c.x, u_input.c.x, u_input.c.x), u_input.c), true, vec3<bool>(true, true, any(vec4<bool>(true, true, false, true)))), 22u)], _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(179f, global1[_wgslsmith_index_u32(1u, 22u)], -301f, -406f))), vec4<f32>(2473f, 1000f, global1[_wgslsmith_index_u32(u_input.c.x, 22u)], 755f)))), Struct_2(~4286u, Struct_1(u_input.c.x, u_input.c.x & 15090u, _wgslsmith_dot_vec2_u32(u_input.c.yw, u_input.c.yy)), Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 25u)], ~u_input.c.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.c.x, 25u)], 25u)]), u_input.c.zzx, Struct_1(global2[_wgslsmith_index_u32(21222u, 25u)] << (87596u % 32u), _wgslsmith_div_u32(1u, 2139u), u_input.c.x)))), min(reverseBits(u_input.c.x), 4401u));
    var var_1 = 30343u > firstTrailingBit(4294967295u);
    global0 = true;
    var var_2 = Struct_2(u_input.c.x, Struct_1(min(4294967295u & u_input.c.x, func_2(0u, 4294967295u, u_input.d, Struct_4(-1603f, Struct_3(var_0.b.a), u_input.c, vec2<f32>(-715f, 1000f), 0u))) << (~var_0.e % 32u), u_input.c.x, u_input.c.x), Struct_1(1u, 1u, ~1u), firstLeadingBit(vec3<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(var_0.e, 1u, 1u) << (u_input.c.xxy % vec3<u32>(32u))), var_0.e)), Struct_1(firstTrailingBit(~(~u_input.c.x)), ~global2[_wgslsmith_index_u32(var_0.e, 25u)], 26976u));
    let x = u_input.a;
    s_output = StorageBuffer(-899f);
}

