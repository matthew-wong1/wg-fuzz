struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-659f, -1281f);

var<private> global1: f32;

var<private> global2: array<f32, 17>;

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-1i, 357f, false, vec2<u32>(58139u, 0u)), Struct_1(1i, -607f, true, vec2<u32>(0u, 1u)), Struct_1(6702i, 630f, true, vec2<u32>(0u, 31273u)), Struct_1(-20572i, -1529f, true, vec2<u32>(4294967295u, 1u)), Struct_1(-1i, 214f, false, vec2<u32>(18918u, 4294967295u)), Struct_1(i32(-2147483648), -2077f, true, vec2<u32>(0u, 0u)), Struct_1(2147483647i, 279f, true, vec2<u32>(20952u, 1u)), Struct_1(i32(-2147483648), -906f, false, vec2<u32>(4294967295u, 140461u)), Struct_1(132i, -1272f, true, vec2<u32>(9171u, 1u)), Struct_1(26599i, 281f, true, vec2<u32>(95492u, 0u)), Struct_1(-28158i, 1998f, false, vec2<u32>(23598u, 4294967295u)), Struct_1(38920i, 1000f, false, vec2<u32>(0u, 34382u)), Struct_1(61190i, -143f, false, vec2<u32>(34690u, 50258u)), Struct_1(i32(-2147483648), -884f, true, vec2<u32>(1u, 4294967295u)), Struct_1(-17627i, -280f, true, vec2<u32>(12350u, 4294967295u)), Struct_1(-29855i, -539f, true, vec2<u32>(0u, 3773u)), Struct_1(i32(-2147483648), 127f, true, vec2<u32>(58763u, 17714u)), Struct_1(-1i, -354f, true, vec2<u32>(49560u, 4294967295u)), Struct_1(102i, -463f, true, vec2<u32>(0u, 8879u)), Struct_1(1i, 532f, false, vec2<u32>(1u, 27732u)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> i32 {
    let var_0 = Struct_1(abs(21332i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x))))), !((_wgslsmith_mult_i32(1i, arg_1.x) <= max(arg_1.x, arg_1.x)) | select(arg_0.e.x, false || arg_0.e.x, select(arg_0.e.x, arg_0.e.x, arg_0.e.x))), _wgslsmith_sub_vec2_u32(arg_0.a, reverseBits(~firstTrailingBit(vec2<u32>(u_input.a.x, 0u)))));
    var var_1 = 1u;
    let var_2 = firstTrailingBit(2147483647i) ^ _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, var_0.a, var_0.a, var_0.a), ~arg_1, arg_1), vec4<i32>(var_0.a, -arg_1.x, -2147483647i, _wgslsmith_div_i32(3009i, 15412i))), 2147483647i);
    let var_3 = Struct_1(firstLeadingBit(abs(abs(~var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x + 1f)), arg_0.e.x, countOneBits(~select(u_input.a.xx, ~vec2<u32>(u_input.b, 4294967295u), any(vec4<bool>(false, var_0.c, false, arg_0.e.x)))));
    global2 = array<f32, 17>();
    return 0i;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32, arg_3: vec3<bool>) -> i32 {
    let var_0 = -vec2<i32>(i32(-1i) * -func_3(Struct_2(vec2<u32>(u_input.a.x, arg_0.d.x), 40825u, arg_0.d.x, vec3<f32>(971f, 1591f, -1667f), vec3<bool>(false, false, false)), vec4<i32>(arg_0.a, -19914i, 17698i, arg_0.a)), 32388i);
    var var_1 = -(~arg_0.a);
    var_1 = 1i;
    var var_2 = arg_0.a;
    var_1 = -2147483647i;
    return abs(max(-1417i, i32(-1i) * -41029i));
}

fn func_4(arg_0: vec3<i32>) -> f32 {
    var var_0 = vec3<u32>(~0u, ~1u, u_input.a.x >> (_wgslsmith_dot_vec2_u32(abs(countOneBits(vec2<u32>(u_input.a.x, 62096u))), vec2<u32>(51967u, u_input.b)) % 32u));
    global3 = array<Struct_1, 20>();
    var var_1 = Struct_1(arg_0.x, -828f, all(vec4<bool>(arg_0.x > arg_0.x, !all(vec4<bool>(true, false, true, false)), 0u != (14140u | var_0.x), false)), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x >> (4294967295u % 32u), ~72007u), ~(~var_0.zx))));
    let var_2 = any(vec2<bool>(true, false));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-622f)), global0.x, var_1.b) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(503f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_1.b)))), var_1.b)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(var_1.d.x, 17u)], global2[_wgslsmith_index_u32(0u, 17u)], var_2)) - _wgslsmith_f_op_f32(step(global0.x, global2[_wgslsmith_index_u32(4294967295u, 17u)]))), global0.x, -427f) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-443f, global2[_wgslsmith_index_u32(var_1.d.x, 17u)], global2[_wgslsmith_index_u32(32848u, 17u)])) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(749f, -1568f, 204f))))))));
    return var_1.b;
}

fn func_1() -> i32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(~vec3<i32>(func_2(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 17u)], 796f, global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)]), global2[_wgslsmith_index_u32(4294967295u, 17u)], vec3<bool>(true, false, true)), _wgslsmith_mod_i32(-19810i, 49345i), reverseBits(2147483647i)))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, max(u_input.a.x, u_input.a.x)), 17u)]);
    var var_0 = 2147483647i;
    var var_1 = Struct_2(~u_input.a.yy, u_input.a.x, 46960u, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-480f, _wgslsmith_f_op_f32(max(-375f, -2218f))), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(0u, 17u)], 1116f)), -570f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1049f, 471f, -804f), vec3<f32>(883f, global2[_wgslsmith_index_u32(u_input.b, 17u)], global2[_wgslsmith_index_u32(24605u, 17u)]))))))), vec3<bool>(!any(vec3<bool>(true, true, true)), true, false));
    global1 = global0.x;
    global3 = array<Struct_1, 20>();
    return -1i;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -arg_2, firstTrailingBit(arg_3.a)), arg_0);
    return ~1i;
}

fn func_6(arg_0: vec3<u32>, arg_1: bool, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1146f, 1045f) - _wgslsmith_f_op_f32(func_4(vec3<i32>(11083i, arg_2, -19539i)))))));
    var var_1 = ~firstLeadingBit(select(arg_3, countOneBits(min(arg_3, arg_0.x)), arg_1));
    let var_2 = -min(~(~2147483647i), arg_2);
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-635f, global0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1651f, 2327f))))), !select(vec2<bool>(false, true), vec2<bool>(false, arg_1), arg_1))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-176f * 209f), _wgslsmith_f_op_f32(global0.x + global0.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(22594u, 17u)] * global0.x), global2[_wgslsmith_index_u32(1u, 17u)], arg_1)))))));
    var var_3 = Struct_2(arg_0.zz, ~98476u, 4294967295u, vec3<f32>(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(36998u, 17u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1158f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-474f * global0.x)))), select(vec3<bool>(any(!vec3<bool>(true, arg_1, arg_1)), !any(vec3<bool>(arg_1, true, false)), !arg_1), !select(!vec3<bool>(false, arg_1, false), !vec3<bool>(true, arg_1, false), !vec3<bool>(arg_1, arg_1, arg_1)), -988f > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(vec3<i32>(var_2, 0i, arg_2))), _wgslsmith_f_op_f32(ceil(global0.x))))));
    return Struct_1(_wgslsmith_mult_i32(arg_2, arg_2), global2[_wgslsmith_index_u32(select(var_3.b, arg_3 >> (select(select(u_input.b, 16627u, arg_1), var_3.c, true) % 32u), arg_1), 17u)], true, vec2<u32>(52897u, _wgslsmith_dot_vec2_u32(countOneBits(u_input.a.yz) ^ vec2<u32>(1u, arg_3), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, var_3.b), var_3.a, vec2<u32>(arg_0.x, var_3.b)), vec2<u32>(14564u, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec3<u32>(~_wgslsmith_add_u32(~17912u, u_input.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(28792u, 1u, u_input.b, u_input.a.x) << (vec4<u32>(u_input.b, u_input.a.x, 9538u, 12058u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.a.x, u_input.b), vec4<u32>(u_input.b, 3826u, 12537u, u_input.b), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.b))), abs(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_div_u32(0u, 24655u)))), any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, global0.x == global0.x, true))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), countOneBits(vec3<i32>(-4904i, -2147483647i, -1i))), func_5(vec3<i32>(1i, func_1(), ~(-31983i)), ~(-vec2<i32>(13790i, 29177i)), 24787i, Struct_1(i32(-1i) * -49909i, -1422f, false, u_input.a.zy))), 4294967295u);
    global1 = _wgslsmith_f_op_f32(step(-1000f, global2[_wgslsmith_index_u32(2902u, 17u)]));
    global2 = array<f32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-26729i), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + global2[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_0.b)), firstLeadingBit(14233u));
}

