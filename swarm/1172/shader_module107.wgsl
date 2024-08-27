struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    let var_0 = select(select(!select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec4<bool>(true, false, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), -33461i < arg_3.c.a), _wgslsmith_div_f32(-534f, arg_3.c.b.x) < _wgslsmith_f_op_f32(-638f - -1437f)), vec2<bool>(true, false)), select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), any(vec2<bool>(false, false))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true), any(vec4<bool>(all(vec4<bool>(false, false, true, true)), arg_2.a.x >= -2383f, true, arg_1.b.b <= 34024u))), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - arg_1.b.c.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1755f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(539f, 292f)) + _wgslsmith_f_op_f32(round(1601f)))))));
    let var_2 = countOneBits(arg_3.c.a) < -2147483647i;
    var_1 = arg_2.a;
    var var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(~arg_0), _wgslsmith_mod_u32(_wgslsmith_add_u32(~14581u, min(6140u, 119144u)), max(_wgslsmith_div_u32(4294967295u, 38212u), 87636u)), arg_0, _wgslsmith_add_u32(~(~u_input.a.x), arg_0)), ~vec4<u32>(global0[_wgslsmith_index_u32(arg_1.d, 18u)], u_input.a.x, arg_1.d, 4294967295u));
    return _wgslsmith_f_op_f32(f32(-1f) * -1537f);
}

fn func_2() -> i32 {
    var var_0 = Struct_3(vec3<f32>(-178f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1138f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1235f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-307f - -415f) - _wgslsmith_f_op_f32(func_3(~46457u, Struct_4(Struct_3(vec3<f32>(-1004f, 425f, 199f)), Struct_2(-709f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], Struct_1(-1i, vec2<f32>(-117f, -1000f), u_input.a.zy, 1u)), Struct_2(335f, 1u, Struct_1(67982i, vec2<f32>(527f, -1942f), u_input.a.xx, global0[_wgslsmith_index_u32(0u, 18u)])), 0u, Struct_3(vec3<f32>(1000f, 764f, -119f))), Struct_3(vec3<f32>(1179f, 448f, 626f)), Struct_2(-499f, 44681u, Struct_1(2719i, vec2<f32>(-602f, -1000f), vec2<u32>(1u, u_input.a.x), 10676u)))))));
    let var_1 = _wgslsmith_f_op_f32(func_3(1u, Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-var_0.a)), Struct_2(_wgslsmith_f_op_f32(-1f), abs(_wgslsmith_sub_u32(u_input.a.x, 74623u)), Struct_1(-1i, vec2<f32>(var_0.a.x, var_0.a.x), ~vec2<u32>(29260u, 1421u), 1u)), Struct_2(var_0.a.x, ~global0[_wgslsmith_index_u32(~22336u, 18u)], Struct_1(_wgslsmith_sub_i32(-1i, 0i), var_0.a.yy, vec2<u32>(18489u, 1u), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], global0[_wgslsmith_index_u32(9087u, 18u)]))), 4294967295u, Struct_3(vec3<f32>(-779f, _wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_div_f32(-272f, var_0.a.x)))), Struct_3(_wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a + var_0.a)))), Struct_2(var_0.a.x, global0[_wgslsmith_index_u32(7026u, 18u)], Struct_1(1i, vec2<f32>(-328f, var_0.a.x), ~u_input.a.yy, _wgslsmith_add_u32(~u_input.a.x, ~31315u)))));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(47782i, -6798i)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)]), u_input.a.zx) % vec2<u32>(32u)), max(-(~vec2<i32>(1i, 0i)), _wgslsmith_mod_vec2_i32(vec2<i32>(13074i, 2147483647i), vec2<i32>(52717i, -33365i)))), i32(-1i) * -(-1i << (1u % 32u)), abs(-countOneBits(countOneBits(-2147483647i))), _wgslsmith_clamp_i32(9910i, -1i, _wgslsmith_sub_i32(1i, -47774i)));
    var var_3 = Struct_1(~var_2.x, var_0.a.zz, _wgslsmith_mult_vec2_u32(vec2<u32>(59244u, 4294967295u), min(u_input.a.zy, ~(vec2<u32>(49831u, 1u) ^ u_input.a.yy))), ~(~global0[_wgslsmith_index_u32(firstLeadingBit(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)]), 18u)]));
    var var_4 = ~(~(~(~(~vec4<u32>(67943u, var_3.d, u_input.a.x, 34661u)))));
    return -10785i;
}

fn func_4(arg_0: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(328f, 1088f), _wgslsmith_f_op_f32(-1783f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1175f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3744f), -353f, _wgslsmith_f_op_f32(-1144f + -589f), -839f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(731f, 1211f, -145f, 1236f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-663f, 408f, -1647f, -736f))))));
    let var_1 = vec2<f32>(173f, var_0.x);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.a.x, 18u)], 18u)], 18u)] | global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 13952u, 98101u), 18u)], _wgslsmith_clamp_u32(25391u, u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 38503u))), Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-var_0.yxx)), Struct_2(_wgslsmith_f_op_f32(651f - var_1.x), firstLeadingBit(0u), Struct_1(arg_0, var_0.wy, u_input.a.yx, u_input.a.x)), Struct_2(1248f, u_input.a.x, Struct_1(2147483647i, vec2<f32>(-465f, var_1.x), u_input.a.zz, 11401u)), _wgslsmith_mult_u32(~4294967295u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)]), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_1.x, var_0.x)))), Struct_3(_wgslsmith_f_op_vec3_f32(var_0.wzz - _wgslsmith_f_op_vec3_f32(-var_0.zyx))), Struct_2(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(max(var_1.x, var_1.x))), 37143u, Struct_1(-arg_0, _wgslsmith_f_op_vec2_f32(var_1 - var_1), u_input.a.xx, global0[_wgslsmith_index_u32(~32498u, 18u)])))), 1309f, _wgslsmith_f_op_f32(min(var_1.x, var_0.x)), var_0.x);
    let var_2 = true;
    global0 = array<u32, 18>();
    return Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-109f, -368f, var_2)))), _wgslsmith_f_op_f32(491f - var_1.x)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.wyw)))))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(~func_2());
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -554f, var_0.a.x, 967f) * vec4<f32>(-425f, -230f, var_0.a.x, -1684f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(151f, -973f, 953f, 583f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -1000f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -105f, var_0.a.x, 193f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, 902f, -573f) - vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 758f))))))));
    return Struct_2(_wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27033u, 18u)], 18u)]), ~31462u), Struct_4(var_0, Struct_2(var_1.x, 0u, Struct_1(2147483647i, vec2<f32>(1765f, -836f), vec2<u32>(4294967295u, u_input.a.x), 0u)), Struct_2(1000f, 16762u, Struct_1(-3690i, var_1.yw, u_input.a.yy, global0[_wgslsmith_index_u32(1u, 18u)])), ~34811u, Struct_3(var_1.yxw)), var_0, Struct_2(_wgslsmith_f_op_f32(max(var_0.a.x, -980f)), u_input.a.x, Struct_1(-18346i, var_1.yz, u_input.a.zy, global0[_wgslsmith_index_u32(u_input.a.x, 18u)])))))), 83345u, Struct_1(2147483647i, var_0.a.zy, ~_wgslsmith_mod_vec2_u32(u_input.a.xz, _wgslsmith_add_vec2_u32(u_input.a.yy, vec2<u32>(0u, 56607u))), ~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 18>();
    var var_0 = ~(~u_input.a.x);
    var var_1 = Struct_2(1f, 4294967295u, Struct_1(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(2147483647i, -53689i)), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, -25687i, -2557i)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -18482i, 17141i), vec3<i32>(-27429i, -1i, -674i)))), vec2<f32>(_wgslsmith_div_f32(434f, _wgslsmith_f_op_f32(f32(-1f) * -1149f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-987f + 1856f))), max(vec2<u32>(abs(945u), 0u), vec2<u32>(~84188u, 0u)), ~abs(global0[_wgslsmith_index_u32(u_input.a.x, 18u)])));
    var_1 = func_1();
    global0 = array<u32, 18>();
    var var_2 = (vec2<u32>(17391u, 1u) << (~var_1.c.c % vec2<u32>(32u))) ^ u_input.a.xx;
    global0 = array<u32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(var_1.c.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.b.x, -2003f)), var_1.c.b), true)))), ~(~(-(~vec2<i32>(var_1.c.a, var_1.c.a)))), -63870i, _wgslsmith_f_op_f32(sign(-364f)), var_1.b);
}

