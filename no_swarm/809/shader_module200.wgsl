struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17> = array<f32, 17>(276f, 667f, -1557f, 757f, 116f, -1000f, 122f, -737f, 1306f, -1000f, 1000f, 1222f, 445f, 171f, 1221f, -1000f, -897f);

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<vec2<u32>, 32>;

var<private> global3: array<i32, 31> = array<i32, 31>(-1i, 20459i, 22959i, 2147483647i, -15478i, -73673i, -57979i, -1i, 0i, 0i, -27255i, 2147483647i, 1i, 2147483647i, -7692i, i32(-2147483648), i32(-2147483648), 0i, 2147483647i, 1i, 0i, -1i, 37324i, i32(-2147483648), 13690i, 49706i, 0i, -13782i, 2147483647i, 1i, 2147483647i);

var<private> global4: array<u32, 2>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    var var_0 = vec4<i32>(min(abs(i32(-1i) * -872i), i32(-1i) * -9546i), u_input.a, global3[_wgslsmith_index_u32(1u, 31u)], -2147483647i) >> (~_wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, u_input.b, 1u), vec4<u32>(0u, u_input.b, u_input.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(28194u, 2u)], 2u)], 2u)]), vec4<u32>(0u, global4[_wgslsmith_index_u32(u_input.b, 2u)], 74544u, 1u)), _wgslsmith_div_vec4_u32(select(vec4<u32>(global4[_wgslsmith_index_u32(u_input.b, 2u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(27688u, 2u)], 2u)], 93062u, 88135u), vec4<u32>(u_input.b, 4294967295u, global4[_wgslsmith_index_u32(30659u, 2u)], u_input.b), vec4<bool>(true, false, true, arg_0)), vec4<u32>(10605u, u_input.b, 1759u, u_input.b))) % vec4<u32>(32u));
    var var_1 = arg_0;
    global2 = array<vec2<u32>, 32>();
    let var_2 = Struct_3(Struct_2(vec4<bool>(any(vec2<bool>(arg_0, arg_0)), any(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, true, arg_0, arg_0))), true, false), arg_0), Struct_2(select(select(vec4<bool>(false, true, arg_0, arg_0), select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), arg_0), false), select(vec4<bool>(true, arg_0, true, arg_0), select(vec4<bool>(false, arg_0, false, false), vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(true, true, true, true)), any(vec3<bool>(false, false, arg_0))), select(vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(true, false, false, false), vec4<bool>(arg_0, true, false, arg_0))), all(select(select(vec3<bool>(true, true, arg_0), vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, true, arg_0)), vec3<bool>(false, false, arg_0), select(vec3<bool>(true, arg_0, true), vec3<bool>(true, true, arg_0), vec3<bool>(false, true, arg_0))))));
    global2 = array<vec2<u32>, 32>();
    return _wgslsmith_add_vec2_u32(global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(~firstLeadingBit(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 2u)], 32u)]), min(global2[_wgslsmith_index_u32(u_input.b & 1u, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)] & global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 2u)], 32u)]))), 32u)], global2[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(4294967295u, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, 48256u), 2u)]) ^ ~1u), 32u)]);
}

fn func_2() -> Struct_2 {
    var var_0 = vec4<f32>(-908f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1080f - global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 2u)], 17u)])))) * -552f), -1994f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(827f)) * global0[_wgslsmith_index_u32(u_input.b, 17u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 17u)] - 236f)))));
    global3 = array<i32, 31>();
    var var_1 = _wgslsmith_add_vec2_u32(~global2[_wgslsmith_index_u32(select(u_input.b, abs(4294967295u), any(vec4<bool>(true, true, true, true))), 32u)], func_3(_wgslsmith_mod_i32(u_input.a << (u_input.b % 32u), _wgslsmith_sub_i32(-1i, u_input.a)) > 27677i));
    global3 = array<i32, 31>();
    var var_2 = true;
    return Struct_2(vec4<bool>(true, true, true, true), true);
}

fn func_1(arg_0: vec3<bool>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1753f, -192f) * global0[_wgslsmith_index_u32(u_input.b, 17u)]);
    let var_1 = func_2();
    var var_2 = 0u;
    let var_3 = Struct_5(1i, !func_2().a.x, global1[_wgslsmith_index_u32(~4294967295u, 9u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-1275f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(644f)) + global0[_wgslsmith_index_u32(4294967295u, 17u)])) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(37087u, 17u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 17u)]))))));
    var var_4 = ~var_3.c.a.xz;
    return _wgslsmith_mult_vec3_i32((vec3<i32>(-1i) * -var_3.c.a) << (~vec3<u32>(min(var_3.c.b, 1u), _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(4294967295u, 2u)], u_input.b), 1u) % vec3<u32>(32u)), var_3.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 31>();
    var var_0 = ~(~func_1(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)));
    var_0 = _wgslsmith_mod_vec3_i32(-firstTrailingBit(_wgslsmith_mult_vec3_i32(-vec3<i32>(-29748i, var_0.x, -20372i), select(vec3<i32>(var_0.x, 2147483647i, 50183i), vec3<i32>(0i, u_input.c, 1i), vec3<bool>(true, false, false)))), ~(~(-vec3<i32>(-19610i, global3[_wgslsmith_index_u32(76855u, 31u)], u_input.a))));
    global0 = array<f32, 17>();
    var_0 = (vec3<i32>(-55672i, 25288i, -36027i | global3[_wgslsmith_index_u32(~22180u, 31u)]) >> (select(reverseBits(max(vec3<u32>(global4[_wgslsmith_index_u32(55488u, 2u)], 1555u, u_input.b), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 2u)], 2u)], 49600u, 1u))), vec3<u32>(u_input.b >> (0u % 32u), _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(24036u, 2u)], 0u), u_input.b | 4294967295u), !(-12707i >= global3[_wgslsmith_index_u32(u_input.b, 31u)])) % vec3<u32>(32u))) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(func_1(vec3<bool>(true, false, false)), vec3<i32>(-2147483647i, var_0.x, var_0.x) << (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 70403u, u_input.b), vec3<u32>(0u, global4[_wgslsmith_index_u32(10516u, 2u)], 61514u)) % vec3<u32>(32u))), vec3<i32>(min(u_input.a, -10055i), ~var_0.x, firstLeadingBit(2147483647i)), -vec3<i32>(global3[_wgslsmith_index_u32(~u_input.b, 31u)], 1i & global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 2u)], 31u)], 0i));
    global2 = array<vec2<u32>, 32>();
    let var_1 = select(vec2<bool>(true, true), vec2<bool>(!any(vec3<bool>(true, false, true)), !all(vec4<bool>(false, true, false, true)) & (select(u_input.c, global3[_wgslsmith_index_u32(0u, 31u)], true) <= _wgslsmith_dot_vec2_i32(var_0.xz, var_0.xx))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(!func_2().a.zw, !select(vec2<bool>(true, true), vec2<bool>(false, true), true), false), vec2<bool>(false, !(u_input.a < -3673i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(-2474f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(60712u, 17u)]) + _wgslsmith_f_op_f32(ceil(553f))), global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(select(_wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(120456u, 2u)], 84160u), global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 2u)], 32u)]), u_input.b | 25651u, var_1.x), 2u)], 17u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(103f, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 2u)], 17u)], -907f, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 2u)], 17u)])))), !func_2().a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1671f, 1709f, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 2u)], 2u)], 17u)], global0[_wgslsmith_index_u32(72779u, 17u)]))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(665f, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(39549u, 17u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 2u)], 17u)]))))))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 17u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(15536u, 17u)] + global0[_wgslsmith_index_u32(24324u, 17u)]), -803f, 1113f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 17u)]) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.b, 17u)])) - global0[_wgslsmith_index_u32(1u, 17u)]))), ~global4[_wgslsmith_index_u32(u_input.b, 2u)], vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(5271u, 17u)])), -1641f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(765f, -2556f))), _wgslsmith_f_op_f32(ceil(var_2.x))), 350f);
}

