struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_4 = Struct_4(vec3<bool>(true, true, false), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<bool>(true, true, true), Struct_1(vec2<i32>(-32491i, -19842i)), vec3<f32>(-930f, -766f, 2898f));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<i32>(-7614i, -34693i)), vec2<f32>(-475f, -110f), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global3: vec4<u32>;

var<private> global4: array<bool, 18> = array<bool, 18>(true, true, true, true, true, false, true, true, false, false, true, true, true, true, false, true, true, false);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> vec2<f32> {
    var var_0 = vec3<u32>(0u, 0u, global1.b.x);
    global2 = Struct_2(Struct_1(global1.d.a), global0.b, select(!(!global2.d), vec2<bool>(global2.d.x, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, 48837u, u_input.d), ~vec4<u32>(1u, arg_1.x, global3.x, global1.b.x)), 18u)]), global1.c.zy), select(select(!select(global0.c, vec2<bool>(global4[_wgslsmith_index_u32(var_0.x, 18u)], false), true), global1.a.xx, any(!vec4<bool>(true, true, global4[_wgslsmith_index_u32(var_0.x, 18u)], true))), global1.a.xy, true));
    var var_1 = _wgslsmith_mod_vec4_u32(abs(vec4<u32>(max(_wgslsmith_div_u32(58344u, 76323u), ~1u), _wgslsmith_div_u32(~u_input.d, var_0.x), select(~u_input.d, 4294967295u, all(global1.a.xz)), 1u)), ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(global3.x, global3.x, global1.b.x, 86302u)), ~vec4<u32>(var_0.x, global3.x, 1u, 0u)), vec4<u32>(u_input.d << (4294967295u % 32u), 0u, global1.b.x, countOneBits(32703u))));
    let var_2 = global1.d;
    var var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(arg_0), 4294967295u, _wgslsmith_mod_u32(53194u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(8504u, global1.b.x, arg_0), arg_0)), ~_wgslsmith_mult_u32(abs(47775u), 1u)), ~(vec4<u32>(27774u, 1u, 0u, ~97034u) & countOneBits(vec4<u32>(1u, 4294967295u, arg_1.x, arg_1.x))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-823f, 317f)) * vec2<f32>(1043f, global0.b.x)))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global1 = Struct_4(!global1.c, firstLeadingBit(~vec3<u32>(1u, 79347u, global3.x)) & (global3.xyy ^ _wgslsmith_add_vec3_u32(vec3<u32>(global3.x, 1u, 49688u), global3.yxw ^ global1.b)), global1.a, Struct_1(vec2<i32>(abs(u_input.c.x ^ u_input.c.x), (u_input.c.x >> (4294967295u % 32u)) | -global0.a.a.x)), _wgslsmith_f_op_vec3_f32(floor(global1.e)));
    let var_0 = Struct_3(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.d, _wgslsmith_dot_vec3_u32(global3.wyy, global3.yzw), 31567u, 13511u), ~(vec4<u32>(global3.x, global3.x, 37262u, 13918u) ^ vec4<u32>(26275u, global3.x, global3.x, 4294967295u))), vec4<u32>(firstLeadingBit(~1u), abs(21252u), 1u, firstTrailingBit(~4294967295u))));
    var var_1 = Struct_1(~(~(vec2<i32>(global1.d.a.x, 2147483647i) & global2.a.a)));
    var var_2 = vec2<u32>(4294967295u, u_input.a.x);
    let var_3 = vec2<i32>(-2147483647i, _wgslsmith_add_i32(~var_1.a.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(global0.a.a.x, var_1.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.a.x, 1i), vec2<i32>(-14171i, u_input.b.x))) << (~19693u % 32u)));
    return Struct_2(global1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(~4294967295u, vec4<u32>(~1u, 1u, 4294967295u | var_0.a.x, _wgslsmith_clamp_u32(1u, u_input.d, u_input.a.x))))), global1.c.yz, vec2<bool>(!(~global1.d.a.x > _wgslsmith_div_i32(-2147483647i, 1i)), arg_0));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>) -> u32 {
    var var_0 = Struct_3(abs(~vec4<u32>(u_input.a.x, arg_2.x, arg_2.x & global1.b.x, ~arg_2.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global2.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(1914f, global2.b.x) * vec2<f32>(-1053f, 1531f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-763f, global2.b.x) * arg_0.b))) + global1.e.yz), vec2<f32>(-270f, _wgslsmith_f_op_f32(global1.e.x - global2.b.x))));
    let var_2 = any(select(!vec4<bool>(arg_1, arg_1, true, false), !vec4<bool>(global2.d.x, true, true && arg_0.d.x, true || global1.c.x), vec4<bool>(all(select(global1.c, vec3<bool>(global4[_wgslsmith_index_u32(global3.x, 18u)], false, arg_1), true)), true, all(global1.a), global3.x != 25772u)));
    let var_3 = global1.e;
    var_0 = Struct_3(vec4<u32>(0u, u_input.a.x, u_input.a.x, _wgslsmith_mult_u32(global1.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 1u, var_0.a.x, u_input.d), vec4<u32>(global1.b.x, u_input.a.x, var_0.a.x, 0u)))));
    return arg_2.x;
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = global0.a.a.x;
    let var_1 = select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x, 15323u, _wgslsmith_div_u32(global3.x, global1.b.x)), ~vec4<u32>(14208u, global1.b.x, ~50336u, ~global3.x), ~(~abs(vec4<u32>(0u, global1.b.x, global3.x, u_input.d)))), vec4<u32>(func_4(func_2(!global2.d.x), (global2.c.x && global4[_wgslsmith_index_u32(7319u, 18u)]) || any(vec3<bool>(false, false, true)), global1.b.zx), 4294967295u, firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_sub_u32(349u, global1.b.x), u_input.a.x & global1.b.x)), max(33179u, ~max(49773u, u_input.a.x))), select(select(select(!arg_1, select(arg_1, vec4<bool>(global0.c.x, false, global2.c.x, false), true), arg_1.x), arg_1, true), select(arg_1, !(!arg_1), !(!arg_1)), true));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-147f, -1369f, global1.e.x))) + global1.e), global1.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.e - global1.e), _wgslsmith_f_op_vec3_f32(global1.e + global1.e)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1129f, -991f, global0.b.x))))), _wgslsmith_f_op_vec3_f32(-global1.e), true));
    global3 = vec4<u32>(abs(global3.x) >> (reverseBits(var_1.x) % 32u), max(u_input.d, global3.x), 13993u, ~reverseBits(60809u));
    global2 = Struct_2(func_2(select(false, true, all(select(vec2<bool>(global4[_wgslsmith_index_u32(0u, 18u)], true), vec2<bool>(true, arg_1.x), vec2<bool>(global0.d.x, arg_1.x))))).a, _wgslsmith_f_op_vec2_f32(-global1.e.zz), vec2<bool>(true, all(select(vec2<bool>(false, true), arg_1.wz, true))), !(!vec2<bool>(all(arg_1), global0.c.x)));
    return Struct_3(var_1 & ~var_1);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_4) -> bool {
    global3 = arg_1.a;
    var var_0 = global2.a;
    global0 = func_2(any(select(select(vec2<bool>(true, false), vec2<bool>(global2.c.x, true), global0.b.x < global0.b.x), arg_0.zx, select(vec2<bool>(global1.c.x, global2.d.x), select(arg_0.xw, vec2<bool>(arg_0.x, false), global2.c), func_2(false).c))));
    return -global2.a.a.x < (func_2(all(!vec3<bool>(arg_0.x, arg_0.x, arg_2.c.x))).a.a.x ^ ~_wgslsmith_dot_vec3_i32(-vec3<i32>(global2.a.a.x, 53482i, -17092i), vec3<i32>(var_0.a.x, global1.d.a.x, arg_2.d.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = 1u;
    global0 = Struct_2(global2.a, vec2<f32>(_wgslsmith_f_op_f32(1117f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.e.x)))), -1000f), vec2<bool>(func_5(!(!vec4<bool>(true, global1.c.x, global4[_wgslsmith_index_u32(37822u, 18u)], global2.c.x)), func_1(_wgslsmith_mod_i32(global2.a.a.x, u_input.b.x), vec4<bool>(false, true, var_0, true)), Struct_4(vec3<bool>(global4[_wgslsmith_index_u32(26148u, 18u)], var_0, global1.a.x), global3.xyx, vec3<bool>(global4[_wgslsmith_index_u32(global1.b.x, 18u)], true, true), func_2(true).a, _wgslsmith_f_op_vec3_f32(-global1.e))), _wgslsmith_div_i32(_wgslsmith_add_i32(global0.a.a.x, 16605i), -2438i) < -9949i), vec2<bool>(var_0, !select(true, global4[_wgslsmith_index_u32(0u, 18u)], false) | select(true, 13631i >= u_input.c.x, any(vec3<bool>(global2.c.x, var_0, true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.b.x, 697f, -124f, global1.e.x), vec4<f32>(1000f, -1779f, global1.e.x, -1123f)))))))));
    global0 = func_2(true);
    global1 = Struct_4(global1.a, global1.b, select(global1.c, !vec3<bool>(true, !var_0, var_0), vec3<bool>(global1.a.x, ~0u != var_1, !global4[_wgslsmith_index_u32(countOneBits(0u), 18u)])), func_2(any(vec4<bool>(false, true, all(vec2<bool>(true, true)), true))).a, vec3<f32>(global1.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global1.e.x)))) + global1.e.x), var_2.x));
    let var_3 = func_2(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(7202u, global3.x), ~global1.b.x, ~37391u), global3.wxy), ~29838u, 1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(var_3.b.x - -1095f), -959f), var_2)) + var_2));
}

