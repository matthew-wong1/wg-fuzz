struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec3<bool>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1145f, -1695f, 336f);

var<private> global1: vec2<f32> = vec2<f32>(170f, -1489f);

var<private> global2: u32;

var<private> global3: array<f32, 20>;

var<private> global4: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(max(~vec3<u32>(reverseBits(u_input.a), 6739u | u_input.a, abs(1u)), vec3<u32>(u_input.a, _wgslsmith_div_u32(~13304u, _wgslsmith_mult_u32(1u, 8049u)), countOneBits(71604u))), select(firstLeadingBit(reverseBits(vec3<u32>(u_input.a, 5777u, 0u))) ^ select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 61824u), vec3<u32>(0u, 4294967295u, u_input.a)), select(vec3<u32>(1u, 42370u, u_input.a), vec3<u32>(0u, u_input.a, 29518u), true), vec3<bool>(true, true, true)), vec3<u32>(1u, ~_wgslsmith_div_u32(11802u, u_input.a), _wgslsmith_sub_u32(34837u, ~u_input.a)), true), ~firstLeadingBit(vec3<u32>(~4294967295u, _wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 14881u, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u)))));
    return 1185f;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> Struct_1 {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -452f)) + arg_1), _wgslsmith_f_op_f32(func_3()));
    global3 = array<f32, 20>();
    global2 = u_input.a;
    global1 = _wgslsmith_f_op_vec2_f32(trunc(arg_0.xw));
    let var_0 = vec2<u32>(~58826u, u_input.a);
    return Struct_1(vec3<bool>(any(vec4<bool>(all(vec4<bool>(true, true, false, false)), any(vec2<bool>(false, false)), all(vec2<bool>(false, false)), true)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))), any(vec4<bool>(true, true, true, any(vec3<bool>(false, false, false))))), i32(-1i) * -39275i, select(vec2<bool>(true, false), vec2<bool>(true, 28989u < _wgslsmith_div_u32(u_input.a, var_0.x)), select(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(false, all(vec3<bool>(true, true, false))), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(func_3()));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: vec4<f32>) -> vec2<bool> {
    let var_0 = arg_0.d;
    global0 = vec3<f32>(_wgslsmith_div_f32(557f, 1990f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(reverseBits(u_input.a), 20u)]))), -422f);
    let var_1 = 1608u;
    let var_2 = Struct_3(func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1080f, -189f, -881f, global3[_wgslsmith_index_u32(var_1, 20u)]), arg_1)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(344f, 1429f, arg_1.x, global0.x))), !select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0.c.x, var_0.a.x, var_0.a.x, var_0.c.x), vec4<bool>(arg_0.d.c.x, false, false, true)))), arg_1.x), func_2(_wgslsmith_f_op_vec4_f32(-arg_1), 905f), func_2(vec4<f32>(_wgslsmith_f_op_f32(1600f * global3[_wgslsmith_index_u32(min(u_input.a, var_1), 20u)]), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1066f)), -663f)), arg_1.x), (~min(vec2<u32>(1u, u_input.a), vec2<u32>(58154u, 4294967295u)) ^ _wgslsmith_sub_vec2_u32(~vec2<u32>(20772u, 1u), vec2<u32>(u_input.a, var_1) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)))) ^ vec2<u32>(~(~16089u), ~u_input.a ^ _wgslsmith_div_u32(1u, 30391u)));
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 - arg_2) * _wgslsmith_f_op_vec4_f32(vec4<f32>(201f, var_0.d, global3[_wgslsmith_index_u32(u_input.a, 20u)], -1597f) * arg_0.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.d - 853f) - _wgslsmith_f_op_f32(-var_0.d)));
    return select(!vec2<bool>(func_2(vec4<f32>(-935f, -684f, global0.x, global3[_wgslsmith_index_u32(u_input.a, 20u)]), arg_2.x).b != ~(-30011i), var_0.a.x), !(!arg_0.e.zy), !func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)), _wgslsmith_f_op_f32(523f - 400f)).c);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>) -> vec3<bool> {
    let var_0 = firstTrailingBit(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a, 4294967295u, _wgslsmith_mult_u32(15251u, 76025u), 59140u >> (0u % 32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a & 0u, 1u, max(u_input.a, u_input.a), u_input.a), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(7731u, 0u, u_input.a, u_input.a), vec4<u32>(18563u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 55201u, u_input.a)))));
    var var_1 = 4294967295u;
    var var_2 = vec2<bool>(all(!(!select(vec4<bool>(false, arg_0.d.c.x, false, arg_0.e.x), vec4<bool>(arg_0.e.x, arg_0.d.a.x, false, arg_0.c.x), arg_0.d.c.x))), any(!vec4<bool>(arg_1.x < -38062i, arg_0.e.x, arg_1.x != -1i, all(vec2<bool>(arg_0.e.x, arg_0.c.x)))));
    let var_3 = ~(var_0.wxz | (var_0.wwx ^ vec3<u32>(~0u, ~35769u, 73108u)));
    var var_4 = all(select(!select(arg_0.d.a, arg_0.e, false), vec3<bool>(true, all(arg_0.e), false), vec3<bool>(true, var_2.x, any(vec4<bool>(arg_0.d.a.x, true, var_2.x, false))))) == !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-860f)), -2188f) < 1000f);
    return !arg_0.e;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_4) -> Struct_1 {
    global2 = 4294967295u;
    global1 = _wgslsmith_f_op_vec2_f32(arg_3.b.ww * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-459f, -451f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.yz * vec2<f32>(-2316f, global1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.yx, global0.xx)) * vec2<f32>(-910f, arg_1.d))))));
    global4 = 238f;
    let var_0 = ~(~u_input.a << (u_input.a % 32u));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_mult_u32(0u, 1u)) > 78259u, true, true), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(~12675i, ~1i, 0i)), -vec3<i32>(-11373i, _wgslsmith_dot_vec2_i32(vec2<i32>(-23951i, 1049i), vec2<i32>(-2147483647i, 11065i)), -14904i)), vec2<bool>(all(vec2<bool>(true, true)), (~29218u & (u_input.a >> (0u % 32u))) <= _wgslsmith_div_u32(u_input.a, 4294967295u)), global0.x);
    var var_1 = !vec3<bool>(var_0.c.x, !var_0.a.x, !(select(true, true, true) && all(vec4<bool>(var_0.c.x, false, var_0.c.x, false))));
    global4 = global0.x;
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(1086f)), _wgslsmith_f_op_f32(681f * 1000f)))) + global0.yz);
    global3 = array<f32, 20>();
    let var_2 = u_input.a;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-822f, -1000f, 592f) + vec3<f32>(global3[_wgslsmith_index_u32(1u, 20u)], var_0.d, global1.x)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, 795f), vec3<f32>(var_0.d, global3[_wgslsmith_index_u32(u_input.a, 20u)], global0.x), true))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, 853f, global0.x)))))));
    global2 = var_2;
    let var_3 = func_5(Struct_4(var_0.b, vec4<f32>(global1.x, -273f, global3[_wgslsmith_index_u32(abs(u_input.a | u_input.a), 20u)], -914f), vec2<bool>(true, true), Struct_1(select(vec3<bool>(var_0.a.x, var_0.c.x, var_1.x), select(vec3<bool>(var_1.x, var_1.x, var_0.c.x), vec3<bool>(true, var_1.x, var_0.c.x), vec3<bool>(true, var_1.x, var_1.x)), all(var_0.a)), var_0.b, !vec2<bool>(false, var_0.c.x), 770f), func_4(Struct_4(var_0.b, vec4<f32>(-359f, global1.x, -1000f, global0.x), func_1(Struct_4(var_0.b, vec4<f32>(var_0.d, global3[_wgslsmith_index_u32(4294967295u, 20u)], global1.x, global1.x), var_0.a.zy, var_0, vec3<bool>(false, true, var_1.x)), vec4<f32>(global1.x, global3[_wgslsmith_index_u32(39027u, 20u)], global0.x, 522f), vec4<f32>(-969f, global3[_wgslsmith_index_u32(u_input.a, 20u)], 347f, -276f)), var_0, !vec3<bool>(var_0.c.x, true, var_0.a.x)), vec2<i32>(-1i) * -vec2<i32>(0i, 4218i))), func_2(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 20u)], _wgslsmith_f_op_f32(min(1606f, -1164f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-func_2(vec4<f32>(global1.x, global1.x, -1000f, global3[_wgslsmith_index_u32(1u, 20u)]), global1.x).d)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2, ~var_2), 20u)] - global3[_wgslsmith_index_u32(var_2, 20u)])), vec4<bool>(true, true, false, true), Struct_4(-(-var_0.b | var_0.b), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -403f), -1405f, global0.x, _wgslsmith_f_op_f32(global0.x * global0.x)), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), 111f, -921f, global0.x)), select(vec2<bool>(func_4(Struct_4(50574i, vec4<f32>(-141f, -661f, var_0.d, -388f), vec2<bool>(var_0.a.x, var_1.x), Struct_1(vec3<bool>(var_1.x, var_0.c.x, var_0.a.x), var_0.b, var_1.yy, -524f), vec3<bool>(false, var_0.a.x, true)), vec2<i32>(var_0.b, var_0.b)).x, !var_1.x), select(!vec2<bool>(true, var_0.a.x), var_0.a.zz, var_0.a.zy), !var_0.c), var_0, var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(u_input.a, var_2));
}

