struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<bool, 22>;

var<private> global2: Struct_1;

var<private> global3: array<u32, 22> = array<u32, 22>(54796u, 72185u, 0u, 33516u, 0u, 46625u, 0u, 37921u, 0u, 11373u, 19509u, 0u, 54845u, 38599u, 4294967295u, 1u, 48526u, 0u, 4294967295u, 152u, 21837u, 4087u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global0.xwz);
    var var_1 = _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.c, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, -47666i, u_input.c)), u_input.d)), 20148i), -(select(2147483647i, 21129i, all(arg_0.zx)) >> (global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.b, arg_1.b, 0u), 22u)] % 32u)));
    global3 = array<u32, 22>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1577f, arg_3.a.x)))))) + vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-728f, global2.a.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.a.x, -639f, global1[_wgslsmith_index_u32(u_input.b, 22u)])), _wgslsmith_f_op_f32(max(-119f, arg_3.c)))))));
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, -1233f, global0.x, 1196f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1731f, global2.c, var_2.x, arg_2.a.x), vec4<f32>(global0.x, -443f, 381f, arg_2.a.x)))), global1[_wgslsmith_index_u32(~1u, 22u)])), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(var_0.x, global0.x), global2.a.x, -682f, _wgslsmith_f_op_f32(-var_2.x))))))));
    return _wgslsmith_div_u32(global2.b, _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(1502u, 4294967295u, u_input.b))), firstLeadingBit(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b, 70194u, 13111u), vec3<u32>(arg_3.b, 42969u, u_input.b)), firstTrailingBit(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_3.b, 22u)], 22u)], arg_2.b, 4294967295u))))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    global1 = array<bool, 22>();
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(26954u, global2.b), 128323u)), func_3(select(vec4<bool>(false, false, true, false), vec4<bool>(global1[_wgslsmith_index_u32(4765u, 22u)], false, false, true), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.x, 22u)], 22u)]), Struct_1(vec2<f32>(global2.c, -1000f), 49646u, global2.a.x), Struct_1(global0.xy, u_input.b, 1136f), Struct_1(global0.wy, 4294967295u, -1281f)) & ~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.x, 22u)], 22u)], 22u)] | 20917u), 0u), ~vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], max(global2.b, abs(4294967295u)), _wgslsmith_mod_u32(60018u & global2.b, 4294967295u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.a, global2.a) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(316f, global0.x)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a * global0.wy)))), global3[_wgslsmith_index_u32(83865u, 22u)], _wgslsmith_f_op_f32(max(-452f, -1221f)));
    var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-791f, global2.a.x)), -193f)) + var_1.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-2288f, -2266f)), _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(round(1397f)))))), _wgslsmith_dot_vec3_u32(select(~var_0, _wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_1.b, 50407u, 20005u)), ~var_0), select(!vec3<bool>(false, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 22u)], 22u)], global1[_wgslsmith_index_u32(6042u, 22u)]), !vec3<bool>(true, global1[_wgslsmith_index_u32(var_1.b, 22u)], true), !vec3<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10866u, 22u)], 22u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 22u)], true))), vec3<u32>(3376u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, global3[_wgslsmith_index_u32(1u, 22u)], 76408u), 25258u, 4294967295u), abs(_wgslsmith_clamp_u32(0u, 73562u, 4294967295u)))), var_1.c);
    var var_2 = vec3<f32>(-338f, _wgslsmith_f_op_f32(abs(var_1.c)), _wgslsmith_div_f32(1000f, 1934f));
    return Struct_1(var_2.yz, var_0.x, _wgslsmith_f_op_f32(select(1048f, _wgslsmith_f_op_f32(-var_2.x), !(0u <= _wgslsmith_div_u32(global2.b, u_input.b)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> Struct_1 {
    global3 = array<u32, 22>();
    global2 = func_2(firstTrailingBit(firstTrailingBit(vec2<u32>(~33197u, _wgslsmith_sub_u32(33480u, u_input.b)))));
    global2 = arg_2;
    let var_0 = arg_2;
    global3 = array<u32, 22>();
    return var_0;
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    global2 = arg_2;
    let var_0 = ~_wgslsmith_mod_u32(~firstTrailingBit(~u_input.b), 24281u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global2.a), arg_1, global2.c);
    let var_2 = u_input.d.x;
    let var_3 = firstTrailingBit(vec3<u32>(~var_1.b, _wgslsmith_mod_u32(0u, var_0) | ~global3[_wgslsmith_index_u32(4294967295u, 22u)], _wgslsmith_clamp_u32(var_1.b & 4294967295u, 23149u, arg_2.b >> (0u % 32u)))) << (~_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(arg_0.x, 47554u, 28502u), select(vec3<bool>(global1[_wgslsmith_index_u32(var_1.b, 22u)], true, true), vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(27861u, 22u)])), ~(~vec3<u32>(0u, 35392u, 0u))) % vec3<u32>(32u));
    return 22814u;
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-265f, -694f), 293f) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1354f, 1000f) - vec2<f32>(arg_0, 2011f)), vec2<f32>(1718f, -607f)))), 57142u, -1128f), func_4(Struct_1(vec2<f32>(326f, -268f), ~(7459u << (0u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(212f, 104f)), 794f)), Struct_1(_wgslsmith_f_op_vec2_f32(-global2.a), func_5(vec2<u32>(arg_2, 31964u), ~4294967295u, Struct_1(global0.wx, u_input.b, 588f), vec2<i32>(18101i, -2662i)), _wgslsmith_div_f32(global2.c, -382f))).a, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(global2.a, global2.a))), firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 33752u)), -2289f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global2.a.x + 460f), 1000f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1601f, global0.x)), 4294967295u, arg_3)));
    let var_1 = ~(~_wgslsmith_mod_u32(firstLeadingBit(select(u_input.b, global2.b, global1[_wgslsmith_index_u32(arg_2, 22u)])), ~(~5107u)));
    let var_2 = var_0;
    let var_3 = ~0i;
    var var_4 = vec2<u32>(global2.b, _wgslsmith_clamp_u32(39448u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global2.b, global2.b, arg_2), abs(firstTrailingBit(vec3<u32>(var_0.b, arg_2, 0u)))), 1u));
    return var_2;
}

fn func_1() -> f32 {
    var var_0 = u_input.e.x <= u_input.a;
    var var_1 = true;
    let var_2 = func_6(_wgslsmith_f_op_f32(abs(1866f)), _wgslsmith_add_i32(firstTrailingBit(u_input.e.x), min(u_input.a, u_input.e.x)), func_5(abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(45551u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(28173u, 5839u), vec2<u32>(4294967295u, global2.b)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 29626u), vec2<u32>(u_input.b, 35921u)))), ~(~_wgslsmith_sub_u32(92u, global3[_wgslsmith_index_u32(u_input.b, 22u)])), func_4(func_2(vec2<u32>(10393u, global2.b) ^ vec2<u32>(global3[_wgslsmith_index_u32(u_input.b, 22u)], 36760u)), global0.wx, func_2(~vec2<u32>(global2.b, 11045u))), ~min(max(vec2<i32>(1i, u_input.c), u_input.e.xx), u_input.d.xz ^ vec2<i32>(-14879i, u_input.e.x))), _wgslsmith_f_op_f32(-108f - _wgslsmith_f_op_f32(-func_2(reverseBits(vec2<u32>(global3[_wgslsmith_index_u32(global2.b, 22u)], 4294967295u))).c)));
    var var_3 = max(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.b, reverseBits(18460u)) & vec2<u32>(func_5(vec2<u32>(var_2.b, 1u), global2.b, var_2, u_input.e.xz), var_2.b), vec2<u32>(3026u, _wgslsmith_mult_u32(~0u, func_3(vec4<bool>(true, global1[_wgslsmith_index_u32(global2.b, 22u)], true, true), Struct_1(global2.a, 1u, global0.x), Struct_1(global0.ww, 1u, global2.c), Struct_1(vec2<f32>(1415f, global0.x), global2.b, var_2.c)))), select(~vec2<u32>(global3[_wgslsmith_index_u32(var_2.b, 22u)], 1u), ~(~vec2<u32>(4294967295u, 4294967295u)), global0.x >= _wgslsmith_f_op_f32(floor(-225f)))), (_wgslsmith_clamp_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(u_input.b, 22u)], 0u), vec2<u32>(43912u, 17014u), ~vec2<u32>(23038u, 42958u)) ^ vec2<u32>(0u, 14895u)) & ~abs(reverseBits(vec2<u32>(u_input.b, u_input.b))));
    let var_4 = !vec4<bool>(true, global1[_wgslsmith_index_u32(func_4(var_2, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, var_2.c)), var_2).b, 22u)], global1[_wgslsmith_index_u32(firstLeadingBit(1u & global2.b), 22u)], any(vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.b, u_input.b), 22u)], all(vec3<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 22u)])), !global1[_wgslsmith_index_u32(var_3.x, 22u)])));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-282f, _wgslsmith_f_op_f32(f32(-1f) * -1409f), _wgslsmith_f_op_f32(-global0.x), 1000f) * vec4<f32>(212f, global0.x, _wgslsmith_f_op_f32(floor(-425f)), _wgslsmith_f_op_f32(global2.c - global2.c))) * vec4<f32>(-951f, 1720f, 1235f, _wgslsmith_f_op_f32(global2.c + _wgslsmith_f_op_f32(-global0.x)))));
    var var_0 = Struct_1(global0.zx, ~u_input.b, _wgslsmith_div_f32(-1992f, 129f));
    let var_1 = u_input.a;
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(390f, _wgslsmith_f_op_f32(global0.x + 1000f)), _wgslsmith_f_op_f32(-536f * _wgslsmith_f_op_f32(-global2.c))), var_0.a), 11642u, 174f);
    let var_3 = vec3<f32>(var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-457f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(func_1())))) + -163f));
    var var_4 = _wgslsmith_sub_vec4_u32(~(~abs(vec4<u32>(var_2.b, var_0.b, var_2.b, var_2.b))), reverseBits(vec4<u32>(~33881u, global2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(82416u, 4294967295u, 4029u), firstTrailingBit(vec3<u32>(global2.b, global3[_wgslsmith_index_u32(var_0.b, 22u)], 57856u))), ~65052u)));
    var var_5 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec2<i32>(u_input.d.x, -51335i) >> (vec2<u32>(19419u, ~var_0.b) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(~min(reverseBits(u_input.e.yy), vec2<i32>(-30554i, -2147483647i)), abs(abs(vec2<i32>(u_input.a, 65184i)))));
}

