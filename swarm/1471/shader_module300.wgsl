struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31>;

var<private> global1: array<vec3<i32>, 21>;

var<private> global2: u32;

var<private> global3: vec4<f32>;

var<private> global4: array<bool, 16> = array<bool, 16>(false, false, true, true, false, false, false, false, true, true, false, true, true, false, true, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = -(~vec3<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_add_i32(arg_0.x, u_input.a.x)), _wgslsmith_div_i32(~arg_0.x, arg_0.x), -arg_0.x));
    global2 = min(73372u, countOneBits(~(~countOneBits(u_input.b.x))));
    return vec4<bool>(true, true, true, true);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<i32>) -> f32 {
    let var_0 = func_3(global1[_wgslsmith_index_u32(4294967295u, 21u)]);
    var var_1 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_div_f32(-387f, -297f), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(abs(-1697f))), Struct_1(countOneBits(vec3<u32>(arg_0.x, 48570u, 0u)) >> (select(vec3<u32>(arg_0.x, arg_0.x, 1u), vec3<u32>(1u, 1590u, arg_0.x), var_0.zyw) % vec3<u32>(32u)), select(countOneBits(vec4<u32>(0u, 0u, u_input.b.x, arg_0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 0u, u_input.b.x, u_input.b.x), vec4<u32>(arg_0.x, 0u, 0u, arg_0.x)), var_0), reverseBits(-54725i), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-375f, 478f, global3.x, global3.x) - vec4<f32>(global3.x, 1202f, global3.x, 1614f)))), var_0.yzx), reverseBits(-(u_input.a | u_input.a)), Struct_1(vec3<u32>(~arg_0.x, abs(arg_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 52745u), vec2<u32>(u_input.b.x, arg_0.x))), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, u_input.b.x, 4294967295u, 17u) & vec4<u32>(arg_0.x, 621u, 4411u, 0u), vec4<u32>(0u, 57052u, arg_0.x, arg_0.x)), _wgslsmith_mult_i32(-22793i, countOneBits(u_input.a.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1090f, 2353f, -948f, global3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 1000f, -575f, global3.x)))), !var_0.wzx)), Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-335f, -622f, global3.x)), global3.xxx), Struct_1(vec3<u32>(arg_0.x, arg_0.x << (23863u % 32u), 4294967295u), abs(vec4<u32>(u_input.b.x, u_input.b.x, 106065u, arg_0.x)) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, 2008u, u_input.b.x, 25966u), vec4<u32>(u_input.b.x, arg_0.x, 20367u, arg_0.x)) % vec4<u32>(32u)), ~(arg_2.x | u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(floor(global3.x)), global3.x, -631f, -191f), vec3<bool>(all(vec3<bool>(false, false, arg_1)), true, func_3(global1[_wgslsmith_index_u32(0u, 21u)]).x)), select(u_input.a, u_input.a, !var_0) ^ (u_input.a << ((vec4<u32>(4294967295u, arg_0.x, 76583u, u_input.b.x) << (vec4<u32>(71194u, u_input.b.x, 17099u, 41581u) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(min(vec3<u32>(arg_0.x, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, 45068u)) & _wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(53620u, 31u)], vec3<u32>(107419u, arg_0.x, arg_0.x)), abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, arg_0.x) & vec4<u32>(arg_0.x, 12754u, 0u, 48399u)), ~34301i, vec4<f32>(_wgslsmith_f_op_f32(-1240f + global3.x), 1214f, global3.x, _wgslsmith_div_f32(1565f, global3.x)), vec3<bool>(var_0.x | var_0.x, !arg_1, select(false, true, true)))));
    global2 = arg_0.x;
    var_1 = Struct_3(var_1.a, var_1.b);
    global1 = array<vec3<i32>, 21>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2407f, 1142f)) - _wgslsmith_f_op_f32(-global3.x));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -538f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 855f) * global3.x)) + _wgslsmith_f_op_f32(1072f - _wgslsmith_f_op_f32(func_2(countOneBits(u_input.b.yz), global4[_wgslsmith_index_u32(~u_input.b.x, 16u)], u_input.a.zw))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) - _wgslsmith_div_f32(global3.x, global3.x)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1319f)), _wgslsmith_f_op_f32(-264f * 1283f))))), global3.x);
    let var_2 = u_input.b.x;
    let var_3 = u_input.b.xz;
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), var_1.x) * var_1);
    return true;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> bool {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], ~arg_3, -31512i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-global3.x)), arg_0, global3.x, 891f)), !vec3<bool>(!any(vec3<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 16u)], false)), true, arg_1.x));
    let var_1 = vec4<i32>(abs(select(u_input.a.x, -7397i, true)), ~(-min(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, -33016i, var_0.c))), select(2936i, -firstLeadingBit(-19554i), true), _wgslsmith_clamp_i32(1i, abs(-(~u_input.a.x)), select(-74924i, 1i, !arg_1.x)));
    var_0 = Struct_1(~var_0.b.wzy, arg_3, u_input.a.x, vec4<f32>(-1631f, -517f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global3.x, arg_0)))))), global3.x), vec3<bool>(func_1(), all(!(!vec2<bool>(var_0.e.x, false))), all(!select(vec4<bool>(var_0.e.x, arg_1.x, false, false), arg_1, vec4<bool>(true, global4[_wgslsmith_index_u32(1u, 16u)], global4[_wgslsmith_index_u32(49438u, 16u)], true)))));
    var_0 = Struct_1(_wgslsmith_mult_vec3_u32(~arg_2, ~vec3<u32>(20847u, _wgslsmith_mod_u32(u_input.b.x, arg_2.x), reverseBits(1093u))), vec4<u32>(_wgslsmith_mod_u32(~0u, ~u_input.b.x), 4294967295u << (_wgslsmith_sub_u32(~arg_2.x, 17570u) % 32u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 1u >> (u_input.b.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(30286u, u_input.b.x), arg_2.xz)), ~(~u_input.b.x)), ~(~arg_2.x)), _wgslsmith_add_i32(u_input.a.x, max(-var_0.c >> (~60204u % 32u), var_0.c)), _wgslsmith_f_op_vec4_f32(-var_0.d), arg_1.xyy);
    let var_2 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(~arg_3.x, firstTrailingBit(22930u)), ~(~vec2<u32>(1071u, arg_2.x)));
    return !select(false, !var_0.e.x, var_0.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<f32>(_wgslsmith_f_op_f32(step(-669f, 1341f)), 607f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -279f));
    var var_0 = func_4(global3.x, vec4<bool>(true, global4[_wgslsmith_index_u32(~16463u, 16u)], ((u_input.b.x >> (u_input.b.x % 32u)) >= 61302u) || global4[_wgslsmith_index_u32(u_input.b.x, 16u)], func_1()), vec3<u32>(~_wgslsmith_div_u32(abs(71248u), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(23436u, 1u, 4294967295u))), 77318u, abs(select(1u, 24540u, global4[_wgslsmith_index_u32(~67033u, 16u)]))), _wgslsmith_add_vec4_u32((abs(vec4<u32>(43154u, u_input.b.x, 0u, 33304u)) >> (select(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 16u)], true, true, global4[_wgslsmith_index_u32(u_input.b.x, 16u)])) % vec4<u32>(32u))) ^ vec4<u32>(4294967295u, u_input.b.x, _wgslsmith_div_u32(u_input.b.x, 0u), _wgslsmith_clamp_u32(19073u, 1u, 28014u)), min(~select(vec4<u32>(u_input.b.x, 30498u, 0u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), global4[_wgslsmith_index_u32(5141u, 16u)]), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u) ^ vec4<u32>(u_input.b.x, u_input.b.x, 46168u, u_input.b.x)))));
    global0 = array<vec3<u32>, 31>();
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(sign(-863f)), global3.x, global3.x), Struct_1(countOneBits(abs(max(vec3<u32>(40799u, 1u, u_input.b.x), vec3<u32>(u_input.b.x, 1u, 1u)))), ~(~(~vec4<u32>(25855u, u_input.b.x, u_input.b.x, u_input.b.x))), 0i, vec4<f32>(global3.x, 1828f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.b.xy, global4[_wgslsmith_index_u32(0u, 16u)], vec2<i32>(1i, -2147483647i))) + _wgslsmith_f_op_f32(floor(global3.x))), -1645f), select(vec3<bool>(u_input.a.x < -39358i, true, true), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 16u)] & global4[_wgslsmith_index_u32(50168u, 16u)], false, select(global4[_wgslsmith_index_u32(21521u, 16u)], global4[_wgslsmith_index_u32(0u, 16u)], global4[_wgslsmith_index_u32(u_input.b.x, 16u)])), false)), abs(u_input.a), Struct_1(vec3<u32>(abs(u_input.b.x), _wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~u_input.b.x) >> (vec3<u32>(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 4294967295u), 46578u) % vec3<u32>(32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 30759u, 41983u, 0u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 0u)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(0u, u_input.b.x, 50328u, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 90889u) << (vec4<u32>(u_input.b.x, 0u, 76794u, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)), -63952i, vec4<f32>(_wgslsmith_f_op_f32(sign(-634f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1930f) - -732f), _wgslsmith_f_op_f32(floor(-137f)), -3104f), select(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.b.x, 16u)], global4[_wgslsmith_index_u32(4294967295u, 16u)] || global4[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec3<bool>(func_3(u_input.a.wxx).x, false, global4[_wgslsmith_index_u32(abs(143852u), 16u)]), !global4[_wgslsmith_index_u32(u_input.b.x, 16u)])));
    let var_2 = Struct_2(var_1.a, Struct_1(firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(var_1.d.b.x, var_1.d.b.x), _wgslsmith_mod_u32(var_1.d.a.x, 4294967295u), u_input.b.x)), vec4<u32>(~_wgslsmith_mod_u32(var_1.d.b.x, u_input.b.x), _wgslsmith_sub_u32(4294967295u << (0u % 32u), u_input.b.x), 0u, u_input.b.x), _wgslsmith_dot_vec4_i32(select(var_1.c, -var_1.c, false), var_1.c), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - -801f), 411f, _wgslsmith_f_op_f32(func_2(vec2<u32>(4294967295u, var_1.b.a.x) >> (vec2<u32>(u_input.b.x, var_1.d.b.x) % vec2<u32>(32u)), func_4(var_1.d.d.x, vec4<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 16u)], true, false, false), vec3<u32>(1u, 4294967295u, 82045u), var_1.d.b), ~vec2<i32>(-31795i, -8673i))), _wgslsmith_f_op_f32(f32(-1f) * -1763f)), !var_1.b.e), u_input.a, Struct_1(vec3<u32>(~(~76746u), ~firstLeadingBit(u_input.b.x), 1u & _wgslsmith_sub_u32(var_1.d.b.x, u_input.b.x)), ~_wgslsmith_clamp_vec4_u32(var_1.d.b, var_1.b.b, var_1.d.b) | var_1.d.b, var_1.c.x, vec4<f32>(var_1.a.x, global3.x, _wgslsmith_f_op_f32(f32(-1f) * -674f), -1948f), vec3<bool>(true, var_1.b.e.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(478f * -1298f), _wgslsmith_f_op_f32(371f - var_2.b.d.x), -1847f, -519f) - var_2.d.d)), ~2147483647i);
}

