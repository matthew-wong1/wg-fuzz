struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: f32 = -1137f;

var<private> global1: array<u32, 28>;

var<private> global2: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = Struct_3(vec4<i32>(~u_input.a, -6072i, u_input.a, u_input.a), countOneBits(4294967295u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(652f, 330f, -155f), vec3<f32>(arg_0, arg_0, arg_0)), vec3<f32>(arg_0, arg_0, arg_0), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(889f, 211f, arg_0))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(648f, 1000f, -595f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1272f, arg_0, arg_0), vec3<f32>(arg_0, arg_0, -1470f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, arg_0, arg_0)))) - vec3<f32>(_wgslsmith_div_f32(658f, -1250f), _wgslsmith_f_op_f32(round(-858f)), -690f)), true)), true);
    return select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b, 63047u), 28u)] > ~0u), !select(select(vec2<bool>(var_0.d, false), vec2<bool>(var_0.d, var_0.d), vec2<bool>(true, true)), !vec2<bool>(var_0.d, var_0.d), select(vec2<bool>(var_0.d, false), vec2<bool>(true, true), var_0.d)), select(select(!vec2<bool>(var_0.d, var_0.d), !vec2<bool>(var_0.d, false), any(vec4<bool>(var_0.d, true, false, false))), !(!vec2<bool>(var_0.d, var_0.d)), false)), select(select(!vec2<bool>(true, var_0.d), vec2<bool>(!var_0.d, true), var_0.d), !select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(var_0.d, true), false), select(var_0.d, var_0.d, false)), !all(select(vec3<bool>(true, var_0.d, var_0.d), vec3<bool>(false, var_0.d, var_0.d), false))), false);
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = ~global1[_wgslsmith_index_u32(1u, 28u)] < countOneBits(1u);
    global0 = _wgslsmith_f_op_f32(step(-309f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1218f))) + _wgslsmith_div_f32(-1288f, _wgslsmith_f_op_f32(f32(-1f) * -1055f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -576f))))));
    var var_1 = select(select(func_3(864f), !(!(!vec2<bool>(arg_0, var_0))), true), select(select(vec2<bool>(4294967295u != global1[_wgslsmith_index_u32(4294967295u, 28u)], all(vec4<bool>(var_0, arg_0, arg_0, var_0))), vec2<bool>(true, all(vec3<bool>(var_0, false, true))), !all(vec2<bool>(false, true))), select(vec2<bool>(arg_0, true), !func_3(-360f), select(vec2<bool>(false, var_0), select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, false)), !var_0)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -817f))), var_0);
    var var_2 = Struct_2(min(u_input.a, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec4<i32>(2147483647i, -32332i, -2147483647i, -3209i))), 4614i)), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(868f - -2804f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1002f), _wgslsmith_f_op_f32(step(823f, -981f)))), select(vec4<bool>(true, var_0, true, var_1.x), vec4<bool>(global1[_wgslsmith_index_u32(26991u, 28u)] == 24022u, 49374u <= global1[_wgslsmith_index_u32(0u, 28u)], var_1.x, !var_0), true), firstLeadingBit(min(_wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(68215u, 28u)], global1[_wgslsmith_index_u32(40797u, 28u)]), vec2<u32>(1u, 89245u)), vec2<u32>(76495u, 81882u)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-355f, 590f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(674f, 2267f), vec2<f32>(-1459f, 669f))))), vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(46748i, u_input.a), vec2<i32>(54770i, 2147483647i)) != u_input.a, true, true, (global1[_wgslsmith_index_u32(0u, 28u)] & global1[_wgslsmith_index_u32(31262u, 28u)]) >= 35093u), vec2<u32>(_wgslsmith_clamp_u32(1u, global1[_wgslsmith_index_u32(8158u, 28u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12258u, 28u)], 28u)]), global1[_wgslsmith_index_u32(74497u & _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(109265u, 28u)], 28u)], global1[_wgslsmith_index_u32(33896u, 28u)]), 28u)])), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2176f, 584f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-563f, -547f), vec2<f32>(264f, -542f), arg_0)))), !vec4<bool>(true, true, true, any(vec2<bool>(var_0, true))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(43749u, 1u), vec2<u32>(global1[_wgslsmith_index_u32(13266u, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)]), vec2<u32>(global1[_wgslsmith_index_u32(37047u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)])), ~vec2<u32>(71552u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32881u, 28u)], 28u)]), abs(vec2<u32>(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)])))));
    var_2 = Struct_2(var_2.a, var_2.c, var_2.b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(483f, -979f))))), var_2.b.b, var_2.d.c));
    return var_2.c;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_i32(max(vec2<i32>(-1i, _wgslsmith_clamp_i32(u_input.a, select(u_input.a, u_input.a, false), arg_0.a)), _wgslsmith_sub_vec2_i32(-(vec2<i32>(-43530i, u_input.a) << (arg_0.c.c % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, arg_0.a), vec2<i32>(-2147483647i, u_input.a)))), -(~(-vec2<i32>(-2415i, -1i))));
    global1 = array<u32, 28>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b.a.x))));
    let var_2 = arg_0.d;
    global0 = 945f;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1958f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-437f + -302f) * -1746f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1122f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(arg_2.x * arg_0.c.a.x))));
}

fn func_1() -> vec2<f32> {
    global1 = array<u32, 28>();
    global1 = array<u32, 28>();
    global0 = 402f;
    global2 = _wgslsmith_f_op_f32(func_4(Struct_2(2147483647i, func_2(true), func_2(false), func_2(func_2(true).b.x)), select(vec4<bool>(any(vec2<bool>(true, false)), all(vec3<bool>(false, true, false)), true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1661f, 882f, -2525f, -444f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1052f, 630f, 1052f, -1175f), vec4<f32>(-887f, 2152f, 1946f, -1232f)))))))) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-287f * -743f)), 1286f));
    let var_0 = vec4<i32>(u_input.a, 0i, ~u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a >> (1u % 32u)) >> ((global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(44820u, 28u)], 28u)], 28u)]), 28u)] >> (_wgslsmith_div_u32(0u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2054u, 28u)], 28u)] % 32u), reverseBits(51315u)) % 32u)) % 32u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(-231f, 170f), _wgslsmith_f_op_f32(round(-655f))))) - vec2<f32>(_wgslsmith_f_op_f32(sign(-1481f)), -1103f)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    let var_0 = vec3<i32>(-1i) * -arg_2.a.yzz;
    var var_1 = all(vec3<bool>(true, !func_2(false).b.x, select(arg_2.d || arg_0.x, false, true && arg_0.x))) || true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(-arg_2.c.x)));
    let var_3 = true;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(262f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), vec4<bool>(arg_0.x, false, arg_1.b.x, 4294967295u != (1u | arg_1.c.x)), select(arg_1.c, (vec2<u32>(39439u, 1644u) ^ (arg_1.c ^ arg_1.c)) | min(firstLeadingBit(arg_1.c), _wgslsmith_add_vec2_u32(arg_1.c, arg_1.c)), !all(arg_1.b.xww)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<bool>(true, !select(false, select(false, true, false), u_input.a < -2147483647i), !(!(1u > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)])), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(20146u, 28u)], 1770u, max(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 28u)])) <= _wgslsmith_dot_vec3_u32(vec3<u32>(86291u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)]), vec3<u32>(70898u, global1[_wgslsmith_index_u32(45131u, 28u)], 8436u) & vec3<u32>(0u, global1[_wgslsmith_index_u32(0u, 28u)], 45575u))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1())), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), false), ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(40363u, global1[_wgslsmith_index_u32(24843u, 28u)], 0u), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(44882u, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41502u, 28u)], 28u)])), global1[_wgslsmith_index_u32(1u, 28u)])), Struct_3(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a, -2147483647i, u_input.a, 1i) ^ -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), 30673u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1831f + -1812f)), 534f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(430f + -1180f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x)));
    let var_1 = ~_wgslsmith_sub_i32(0i, ~(-8688i) | u_input.a);
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1340f, var_0.a.x) + var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + func_2(var_0.b.x & true).a.x))));
    global2 = !var_0.b.x;
    let var_2 = vec4<u32>(~global1[_wgslsmith_index_u32(~38032u, 28u)], ~(~_wgslsmith_clamp_u32(reverseBits(63788u), var_0.c.x, firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55827u, 28u)], 28u)]))), func_5(vec4<bool>(!any(var_0.b.zy), !func_2(false).b.x, any(func_2(var_0.b.x).b), true), var_0, Struct_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 0i, u_input.a, u_input.a) >> (vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, 1u) % vec4<u32>(32u)), vec4<i32>(11846i, -858i, -8963i, var_1), vec4<i32>(u_input.a, var_1, -7516i, 2147483647i)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(65711u, global1[_wgslsmith_index_u32(16825u, 28u)]), ~67397u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.x, -103f, var_0.a.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.x, -366f, var_0.a.x), vec3<f32>(731f, var_0.a.x, 737f))))), true)).c.x, var_0.c.x);
    var var_3 = func_2(var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(2515u);
}

