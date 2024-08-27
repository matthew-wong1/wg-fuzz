struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: array<bool, 2>;

var<private> global2: Struct_2;

var<private> global3: i32;

var<private> global4: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec4<i32>(-46832i, -1i, -1430i, 2622i)), Struct_3(vec4<i32>(2147483647i, 1i, -20308i, 1i)), Struct_3(vec4<i32>(1237i, -72058i, i32(-2147483648), 1i)), Struct_3(vec4<i32>(0i, 17879i, -519i, 71522i)), Struct_3(vec4<i32>(-3679i, 1071i, 44486i, 0i)), Struct_3(vec4<i32>(19538i, 43424i, -73488i, -40212i)), Struct_3(vec4<i32>(-13361i, 56128i, 8592i, 2147483647i)), Struct_3(vec4<i32>(25297i, 14789i, 0i, 17194i)), Struct_3(vec4<i32>(i32(-2147483648), i32(-2147483648), -7893i, -1i)), Struct_3(vec4<i32>(0i, -11198i, 8940i, 2147483647i)), Struct_3(vec4<i32>(-8207i, 1i, -14574i, -10872i)), Struct_3(vec4<i32>(i32(-2147483648), -1i, -42863i, 1i)), Struct_3(vec4<i32>(-5711i, i32(-2147483648), i32(-2147483648), 2147483647i)), Struct_3(vec4<i32>(i32(-2147483648), 48378i, 55793i, 7311i)), Struct_3(vec4<i32>(1i, -1i, 89i, 0i)), Struct_3(vec4<i32>(0i, 0i, 37197i, 2147483647i)), Struct_3(vec4<i32>(2147483647i, -1i, 0i, -17680i)), Struct_3(vec4<i32>(-27625i, -19391i, 0i, -30109i)), Struct_3(vec4<i32>(-1i, i32(-2147483648), -20958i, -6943i)), Struct_3(vec4<i32>(2147483647i, -8186i, 0i, -49231i)), Struct_3(vec4<i32>(42866i, 0i, -34443i, -6886i)), Struct_3(vec4<i32>(9050i, 2189i, 1i, -1i)), Struct_3(vec4<i32>(i32(-2147483648), -1i, -27i, -4403i)), Struct_3(vec4<i32>(2147483647i, 1i, 28509i, -1i)), Struct_3(vec4<i32>(2147483647i, -9099i, -65223i, i32(-2147483648))), Struct_3(vec4<i32>(0i, -26543i, -2412i, 5485i)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_2(288f, global0[_wgslsmith_index_u32(~23015u, 3u)], vec2<u32>(98655u, ~0u >> (u_input.c.x % 32u)) ^ vec2<u32>(~(~85575u), ~u_input.c.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(global2.e.d, 4294967295u), global2.c) % 32u)), _wgslsmith_f_op_f32(ceil(global2.a)), global2.b);
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_0.b.d, reverseBits(18019u)), 26u)];
    var_1 = Struct_3(~max((var_1.a | var_1.a) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(3062u, global2.c.x, var_0.c.x, var_0.c.x), vec4<u32>(var_0.b.d, 51087u, 0u, 1u)) % vec4<u32>(32u)), vec4<i32>(firstLeadingBit(12832i), _wgslsmith_dot_vec3_i32(vec3<i32>(-16190i, 1i, var_1.a.x), var_1.a.xyw), -1i, ~61394i)));
    global3 = -abs(-2147483647i);
    var var_2 = global1[_wgslsmith_index_u32(~firstTrailingBit(u_input.e), 2u)];
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.d, -1953f, -827f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-145f, 462f, var_0.b.c.x) * vec3<f32>(global2.b.c.x, global2.b.c.x, var_0.b.c.x)), select(true, true, global1[_wgslsmith_index_u32(0u, 2u)]))))));
}

fn func_2() -> Struct_1 {
    global4 = array<Struct_3, 26>();
    let var_0 = Struct_2(-501f, Struct_1(abs(u_input.b), vec4<bool>(false, global2.b.b.x, any(select(vec3<bool>(global2.b.b.x, false, global1[_wgslsmith_index_u32(1u, 2u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 2u)], global1[_wgslsmith_index_u32(62223u, 2u)], false), global2.b.b.x)), 1u == _wgslsmith_mult_u32(8223u, u_input.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * vec3<f32>(_wgslsmith_f_op_f32(global2.d + global2.d), _wgslsmith_f_op_f32(max(-1000f, global2.b.c.x)), _wgslsmith_f_op_f32(-global2.e.c.x))), ~select(_wgslsmith_div_u32(u_input.c.x, 4294967295u), _wgslsmith_div_u32(0u, u_input.c.x), !global2.b.b.x), _wgslsmith_mult_u32(u_input.e, 60706u)), ~(~u_input.c.zx), _wgslsmith_f_op_f32(abs(-1000f)), global0[_wgslsmith_index_u32(global2.b.d, 3u)]);
    let var_1 = var_0.c.x;
    let var_2 = var_0;
    global4 = array<Struct_3, 26>();
    return Struct_1(-var_2.e.a, vec4<bool>(true, all(select(vec3<bool>(false, var_0.b.b.x, var_0.e.b.x), select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 2u)], false), global2.b.b.xww, var_2.b.b.x), select(vec3<bool>(var_0.b.b.x, var_0.e.b.x, true), vec3<bool>(global2.b.b.x, var_0.e.b.x, false), vec3<bool>(var_0.b.b.x, true, global1[_wgslsmith_index_u32(global2.c.x, 2u)])))), global2.e.b.x, true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.b.c - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.b.c), vec3<f32>(var_0.e.c.x, var_0.a, 1356f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b.c * var_0.b.c) * var_2.b.c), global2.b.b.zzw)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.e, global2.e.e, global2.b.d) & u_input.c, ~u_input.c), u_input.c), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, var_0.b.e, global2.c.x, 4294967295u), vec4<u32>(0u, 30064u, global2.c.x, global2.b.e)), vec4<u32>(4294967295u, 15049u, u_input.e, _wgslsmith_add_u32(var_2.c.x, 0u)), abs(~vec4<u32>(39662u, u_input.e, var_1, var_1))), abs(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(93517u, global2.b.e, 0u, var_2.b.e), vec4<u32>(714u, u_input.c.x, 31077u, var_2.c.x), vec4<u32>(var_0.e.e, var_2.c.x, 22338u, u_input.c.x)), vec4<u32>(var_1, u_input.c.x, 1u, 1u) << (vec4<u32>(var_2.c.x, 0u, var_1, 4294967295u) % vec4<u32>(32u))))));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: u32) -> Struct_3 {
    let var_0 = ~u_input.c.x;
    var var_1 = _wgslsmith_f_op_f32(global2.e.c.x + _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(986f + global2.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-199f - 894f) * -694f)))));
    let var_2 = _wgslsmith_sub_i32(arg_2.a.x, _wgslsmith_sub_i32(global2.e.a, -2147483647i));
    var var_3 = func_2();
    let var_4 = func_2();
    return global4[_wgslsmith_index_u32(u_input.c.x, 26u)];
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.e, 3u)];
    global3 = -1i;
    global2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) - func_2().c.x), var_0.c.x), Struct_1(func_2().a | -15943i, !global2.b.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.e.c.x, -1081f, global2.e.c.x)))), ~firstTrailingBit(1u) | _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global2.c, global2.c), 4294967295u), var_0.d), abs(~(~_wgslsmith_div_vec2_u32(global2.c, u_input.c.xz))), var_0.c.x, Struct_1(func_2().a, !vec4<bool>(true, var_0.b.x, !global2.b.b.x, var_0.b.x | global1[_wgslsmith_index_u32(0u, 2u)]), vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(floor(3166f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-835f - 1144f)))), ~reverseBits(var_0.e) | _wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_sub_vec3_u32(u_input.c, u_input.c)), ~_wgslsmith_sub_u32(var_0.d, select(67749u, 208u, global1[_wgslsmith_index_u32(var_0.d, 2u)]))));
    global0 = array<Struct_1, 3>();
    var_0 = global0[_wgslsmith_index_u32(min(var_0.d, _wgslsmith_mult_u32(max(4294967295u, 9026u), u_input.e)), 3u)];
    return Struct_1(min(var_0.a, -reverseBits(~arg_2.a.x)), select(!vec4<bool>(global2.b.a < 5573i, arg_0, false, arg_0), vec4<bool>(true, !any(arg_1.yz), func_2().b.x, !(!global1[_wgslsmith_index_u32(global2.b.d, 2u)])), !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(var_0.e, var_0.e), ~global2.b.e), 2u)]), vec3<f32>(global2.e.c.x, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f * -2401f))), ~global2.c.x << (~_wgslsmith_div_u32(countOneBits(39253u), 4294967295u | var_0.d) % 32u), firstLeadingBit(reverseBits(_wgslsmith_div_u32(global2.e.e, 1u)) >> (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -36239i;
    global4 = array<Struct_3, 26>();
    global2 = Struct_2(-779f, func_4(false, select(vec3<bool>(all(vec2<bool>(false, true)), 27908i >= global2.b.a, false), !global2.b.b.zyw, true), func_1(!all(global2.b.b), vec2<i32>(u_input.d & -2147483647i, 1149i), Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(1i, global2.b.a, 0i, 72733i), vec4<i32>(2147483647i, -1i, -1i, 50031i))), 4294967295u)), vec2<u32>(80051u, u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1707f)) + _wgslsmith_f_op_vec3_f32(func_3()).x)))), Struct_1(global2.e.a >> ((608u | _wgslsmith_mod_u32(global2.c.x, global2.c.x)) % 32u), !vec4<bool>(!global1[_wgslsmith_index_u32(35090u, 2u)], global2.b.a > global2.e.a, global2.b.b.x, all(global2.b.b)), global2.e.c, ~select(_wgslsmith_mod_u32(4294967295u, 1u), max(u_input.c.x, u_input.c.x), 0i != global2.b.a), ~abs(_wgslsmith_dot_vec2_u32(global2.c, vec2<u32>(global2.b.d, 1u)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(global2.e.c * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b.c.x, -750f) + _wgslsmith_f_op_f32(floor(global2.e.c.x))), _wgslsmith_f_op_f32(-global2.a)) + vec3<f32>(global2.e.c.x, 927f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec2_u32(global2.c, countOneBits(vec2<u32>(u_input.e, u_input.e)), ~(~vec2<u32>(u_input.c.x, global2.c.x))), u_input.c.zz, ~abs(_wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(global2.c.x, global2.b.e, 12894u))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(214f + -448f), var_1.x, global2.b.b.x)), func_4(!global1[_wgslsmith_index_u32(~global2.c.x, 2u)], vec3<bool>(false, global2.e.a <= global2.b.a, true), func_1(true, ~vec2<i32>(global2.b.a, u_input.b), func_1(false, vec2<i32>(-35610i, u_input.b), Struct_3(vec4<i32>(2147483647i, u_input.b, global2.e.a, u_input.a)), global2.c.x), reverseBits(4294967295u))).c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, -1378f)), -145f)))));
}

