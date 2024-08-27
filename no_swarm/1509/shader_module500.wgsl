struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32>;

var<private> global2: array<i32, 13> = array<i32, 13>(-48685i, 0i, 2147483647i, 74794i, 1i, i32(-2147483648), 1i, i32(-2147483648), -1i, 1i, i32(-2147483648), 1028i, 0i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec2<f32>) -> i32 {
    var var_0 = Struct_2(~25207i, Struct_1(abs(firstLeadingBit(_wgslsmith_add_u32(2015u, arg_1.c.a))), arg_1.c.b), Struct_1(_wgslsmith_div_u32(arg_1.c.b, reverseBits(reverseBits(arg_1.c.a))), 1u), vec4<i32>(min(-global2[_wgslsmith_index_u32(13964u, 13u)], max(-1i, 2147483647i)), _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.xy), -firstTrailingBit(firstTrailingBit(arg_1.b.b)), _wgslsmith_mod_i32(~u_input.a.x, 2147483647i)), arg_1.c);
    let var_1 = arg_1;
    var var_2 = vec3<u32>(min(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, arg_1.c.a), u_input.c.x), _wgslsmith_mod_u32(countOneBits(~0u), var_0.e.a >> ((0u ^ var_1.c.a) % 32u))), _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(u_input.b.x, 58168u))), vec2<u32>(var_0.e.b, u_input.c.x)), abs(_wgslsmith_dot_vec3_u32((u_input.b | u_input.b) >> (~vec3<u32>(24751u, var_0.c.a, arg_1.c.b) % vec3<u32>(32u)), abs(firstLeadingBit(u_input.b)))));
    global2 = array<i32, 13>();
    var var_3 = var_1;
    return (_wgslsmith_clamp_i32(0i, ~var_3.b.b, select(global2[_wgslsmith_index_u32(~4294967295u, 13u)], 1i, true)) >> ((_wgslsmith_div_u32(var_0.c.b, 0u) << (arg_1.c.b % 32u)) % 32u)) ^ _wgslsmith_dot_vec3_i32(abs(firstLeadingBit(var_0.d.zzw)), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(var_0.d.zwy ^ vec3<i32>(arg_1.b.d.x, 1192i, 2147483647i), vec3<i32>(var_0.d.x, -2147483647i, -20744i)), ~min(vec3<i32>(-9290i, var_1.b.d.x, 4999i), vec3<i32>(var_0.a, arg_1.b.d.x, -81462i))));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_4 {
    let var_0 = !(select((global2[_wgslsmith_index_u32(u_input.c.x, 13u)] > u_input.a.x) || (5332i != u_input.d.x), any(vec4<bool>(false, false, false, false)), true) | (_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.c.x, 13u)], func_3(50508u, Struct_4(false, Struct_3(vec2<bool>(false, false), 9155i, vec2<f32>(-1000f, 1000f), vec2<i32>(arg_0, -2147483647i)), Struct_1(39611u, u_input.b.x)), vec2<f32>(780f, arg_1)), -1i) >= (~u_input.d.x >> (1u % 32u))));
    var var_1 = Struct_2(8992i, Struct_1(reverseBits(_wgslsmith_div_u32(13427u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 12348u), u_input.b.xy))), 1u), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, ~11687u, u_input.c.x, ~u_input.b.x), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.b.x, u_input.b.x), vec4<u32>(87218u, u_input.c.x, u_input.c.x, u_input.b.x))), _wgslsmith_add_u32(firstTrailingBit(firstTrailingBit(1u)), 67270u)), vec4<i32>(global2[_wgslsmith_index_u32(~u_input.b.x, 13u)], -15718i, -(~(-32085i)) ^ _wgslsmith_div_i32(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(35361u, 13u)], -1i), -40312i), ~(~global2[_wgslsmith_index_u32(21935u, 13u)]) & ~_wgslsmith_mod_i32(arg_0, u_input.d.x)), Struct_1(1u, select(u_input.b.x, firstLeadingBit(u_input.b.x), var_0)));
    var_1 = Struct_2(~(_wgslsmith_sub_i32(var_1.a, -8080i) ^ (-4353i ^ arg_0)) & (arg_0 << (0u % 32u)), var_1.e, Struct_1(~((4294967295u ^ var_1.e.b) ^ 0u), 1u), vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.c.a, 80172u, var_1.c.b), _wgslsmith_sub_vec4_u32(vec4<u32>(44410u, var_1.b.a, u_input.c.x, 25552u), vec4<u32>(var_1.b.b, 67919u, 0u, 1u))), 13u)], u_input.a.x, 0i, _wgslsmith_dot_vec2_i32(~u_input.a.yz, u_input.a.xy)) ^ ~(~_wgslsmith_clamp_vec4_i32(var_1.d, var_1.d, u_input.d)), var_1.e);
    var_1 = Struct_2(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(1u, 13u)], -4895i), vec2<i32>(11945i, -6314i))) << (vec2<u32>(u_input.b.x & var_1.e.a, u_input.b.x) % vec2<u32>(32u)), -select(var_1.d.xx, _wgslsmith_div_vec2_i32(u_input.a.zy, u_input.d.ww), true)), var_1.b, var_1.b, ~_wgslsmith_clamp_vec4_i32(-u_input.d, u_input.d, _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 6866i, global2[_wgslsmith_index_u32(var_1.b.b, 13u)]), vec4<i32>(var_1.d.x, arg_0, 1i, var_1.d.x), vec4<i32>(arg_0, global2[_wgslsmith_index_u32(50040u, 13u)], 47313i, -1i)), vec4<i32>(arg_0, var_1.a, 28505i, 36188i))), var_1.e);
    var var_2 = arg_1;
    return Struct_4(false, Struct_3(select(select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, true)), !vec2<bool>(var_0, var_0), !var_0), !vec2<bool>(false, var_0), vec2<bool>(var_0, false)), ~1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, global1.x), vec2<f32>(1000f, arg_1))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-602f, global1.x) * vec2<f32>(216f, 210f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(181f, 2873f) * vec2<f32>(911f, 470f)))), _wgslsmith_add_vec2_i32(-vec2<i32>(11600i, -2147483647i) << (~u_input.b.yx % vec2<u32>(32u)), vec2<i32>(u_input.d.x, 0i))), var_1.b);
}

fn func_1() -> Struct_3 {
    var var_0 = func_2(global2[_wgslsmith_index_u32(1u, 13u)], -1488f);
    var var_1 = select(vec3<i32>(func_2(var_0.b.d.x, global1.x).b.b | _wgslsmith_div_i32(var_0.b.b, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], -1i)), 2147483647i, reverseBits(select(24308i, 0i, false))), u_input.a, var_0.a);
    global2 = array<i32, 13>();
    var var_2 = 14812u >> (var_0.c.b % 32u);
    let var_3 = select(!vec4<bool>(true, var_0.a, ~0u <= _wgslsmith_mult_u32(u_input.b.x, 1u), !any(vec2<bool>(false, true))), select(select(select(select(vec4<bool>(true, var_0.b.a.x, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, false), var_0.a), !vec4<bool>(false, var_0.a, var_0.b.a.x, var_0.b.a.x), select(true, false, var_0.b.a.x)), vec4<bool>(false, true, var_0.a, var_0.a), _wgslsmith_f_op_f32(max(794f, var_0.b.c.x)) > _wgslsmith_f_op_f32(step(global1.x, 686f))), vec4<bool>(true, var_0.b.a.x, 20965u >= min(var_0.c.b, u_input.c.x), true), !func_2(~var_1.x, _wgslsmith_f_op_f32(select(159f, var_0.b.c.x, var_0.b.a.x))).a), true);
    return func_2(global2[_wgslsmith_index_u32(81250u, 13u)] & -(func_3(45494u, Struct_4(var_0.a, var_0.b, var_0.c), vec2<f32>(global1.x, global1.x)) << (_wgslsmith_mod_u32(u_input.c.x, 23639u) % 32u)), _wgslsmith_f_op_f32(var_0.b.c.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global1.x)))), global1.x))).b;
}

fn func_4(arg_0: Struct_3) -> vec2<f32> {
    global0 = all(!select(vec3<bool>(true, true, true), !vec3<bool>(arg_0.a.x, arg_0.a.x, false), any(vec2<bool>(arg_0.a.x, arg_0.a.x))));
    let var_0 = vec3<bool>(false && arg_0.a.x, arg_0.a.x, false);
    let var_1 = func_2(arg_0.b, _wgslsmith_f_op_f32(-arg_0.c.x));
    global1 = _wgslsmith_f_op_vec2_f32(var_1.b.c - vec2<f32>(_wgslsmith_f_op_f32(-func_1().c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, -700f) + arg_0.c) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1225f, 1952f) * arg_0.c))), func_2(_wgslsmith_dot_vec2_i32(var_1.b.d, arg_0.d), global1.x).b.c));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(arg_0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1564f, var_2.x))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1454f, arg_0.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 1497f) * var_1.b.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, -156f) - _wgslsmith_f_op_vec2_f32(step(arg_0.c, arg_0.c)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(442f, -1423f)), _wgslsmith_f_op_vec2_f32(func_4(func_1()))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, _wgslsmith_f_op_f32(floor(global1.x))))));
    global2 = array<i32, 13>();
    var var_0 = func_1().a.x;
    global0 = true;
    var var_1 = !vec4<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)) && all(vec3<bool>(false, false, false)), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(135f + -133f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-881f, global1.x) * _wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, 2215f))))));
}

