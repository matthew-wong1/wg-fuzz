struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<u32>(2188u, 1u, 4294967295u, 20536u), vec4<bool>(true, true, true, false), vec2<bool>(true, false), true, vec2<bool>(false, true)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<bool>(false, true, false, true), vec2<bool>(false, false), false, vec2<bool>(true, true)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> i32 {
    var var_0 = -26102i;
    var var_1 = 84121u;
    global1 = true;
    var var_2 = !vec2<bool>(!(!any(vec2<bool>(true, false))), true);
    global0 = array<Struct_1, 25>();
    return ~u_input.d.x;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(arg_1.a, vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, arg_1.a.x)), 4294967295u, ~4294967295u, _wgslsmith_sub_u32(4294967295u, ~arg_1.a.x)), vec4<u32>(reverseBits(1u), u_input.b.x, arg_1.a.x ^ u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(arg_1.a, vec4<u32>(u_input.b.x, 4294967295u, 19527u, 0u)), 102672u & arg_1.a.x, arg_1.a.x))), arg_1.b, arg_1.b.wx, true, !arg_1.c);
    global1 = !(true || (!select(false, false, var_0.e.x) & (false & !var_0.b.x)));
    var var_1 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-424f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-917f, 1103f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -2043f));
    let var_2 = 16877u;
    return _wgslsmith_div_f32(-1907f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(933f)) + arg_2.x));
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(539f, _wgslsmith_f_op_f32(f32(-1f) * -1696f))) + _wgslsmith_f_op_f32(func_3(true, global2[_wgslsmith_index_u32(~4294967295u, 2u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 733f, 1678f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -940f))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-187f * -1536f), _wgslsmith_f_op_f32(f32(-1f) * -198f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(817f - -277f), -1077f, false))));
    var var_0 = Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.b.x, 0u, 1u, 35032u), vec4<u32>(4294967295u << (u_input.b.x % 32u), 74273u, 43918u, ~4932u), ~(~vec4<u32>(u_input.b.x, u_input.b.x, 71323u, 13091u))), ~(~vec4<u32>(u_input.b.x, 4294967295u, 68667u, 36284u))), vec4<bool>(true, true, true, true), !vec2<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true))), any(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)))), vec2<bool>(false, true));
    global1 = true;
    let var_1 = var_0.b.wy;
    var var_2 = var_0.a.x;
    return Struct_1(_wgslsmith_div_vec4_u32(var_0.a, var_0.a), !vec4<bool>(u_input.b.x <= 1u, true, var_1.x, any(vec3<bool>(false, var_0.c.x, var_1.x))), select(var_0.e, var_0.c, true & any(!var_0.b.wwz)), any(vec3<bool>(true, all(!var_0.b), var_0.c.x)), !(!vec2<bool>(select(true, var_1.x, var_1.x), true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> vec2<bool> {
    var var_0 = -u_input.c.x > 3783i;
    let var_1 = vec3<i32>(-u_input.d.x, _wgslsmith_div_i32(u_input.a.x, firstTrailingBit(-56686i)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, ~_wgslsmith_sub_i32(arg_2, arg_2), u_input.a.x), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-19413i, u_input.a.x, 46069i, arg_2)), min(vec4<i32>(arg_2, arg_2, u_input.c.x, arg_2), vec4<i32>(-2147483647i, 5479i, arg_2, u_input.a.x))) | u_input.c.x));
    global0 = array<Struct_1, 25>();
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(arg_0.a.x, 16215u), 4294967295u, 4294967295u ^ _wgslsmith_dot_vec4_u32(arg_1.a, vec4<u32>(u_input.b.x, 65311u, arg_0.a.x, arg_0.a.x)), ~0u >> (~u_input.b.x % 32u)), !(!vec4<bool>(!arg_0.d, true, all(vec2<bool>(arg_0.d, arg_1.b.x)), arg_1.c.x)), vec2<bool>(arg_1.c.x || !(11658i >= u_input.c.x), var_1.x == (i32(-1i) * -2147483647i)), func_2().e.x, vec2<bool>(any(select(select(arg_0.b, arg_1.b, arg_1.b), !vec4<bool>(true, arg_0.b.x, false, arg_1.d), vec4<bool>(true, arg_1.e.x, arg_0.e.x, arg_1.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_3, arg_3, arg_0.b.x)))) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1453f, -298f) * _wgslsmith_f_op_f32(arg_3 * arg_3))));
    var var_3 = vec3<u32>(~arg_1.a.x, 47710u, 4294967295u);
    return !vec2<bool>(all(vec3<bool>(true, true, true)), true);
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 2>();
    var var_0 = Struct_1(vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_3.a.x, ~130358u), _wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(0u, 0u), countOneBits(vec2<u32>(arg_2.a.x, arg_3.a.x)))), _wgslsmith_div_u32(reverseBits(_wgslsmith_div_u32(arg_2.a.x, u_input.b.x)), min(arg_3.a.x, 0u) ^ ~10381u), 29650u ^ ~(~arg_2.a.x)), !(!(!(!vec4<bool>(false, true, arg_0, false)))), vec2<bool>(!(!any(arg_3.b.xyy)), true || !func_4(Struct_1(arg_3.a, arg_2.b, vec2<bool>(arg_3.d, true), arg_1.x, arg_1), arg_3, 0i, 208f).x), true, arg_1);
    var_0 = Struct_1(arg_3.a, var_0.b, select(!arg_1, vec2<bool>(false, arg_2.d), false & func_2().d), false, select(arg_1, !arg_3.b.xx, all(!select(arg_3.b.zzx, vec3<bool>(arg_2.e.x, arg_0, false), arg_2.d))));
    let var_1 = 1u;
    var var_2 = Struct_1(var_0.a, func_2().b, vec2<bool>(true, true), all(!select(select(arg_1, vec2<bool>(false, false), true), !vec2<bool>(arg_1.x, arg_0), select(vec2<bool>(arg_1.x, false), vec2<bool>(arg_1.x, var_0.b.x), vec2<bool>(false, arg_1.x)))), !(!(!arg_3.b.xx)));
    return global2[_wgslsmith_index_u32(0u, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = u_input.c.x;
    var var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(92603u, _wgslsmith_dot_vec2_u32(u_input.b, firstLeadingBit(vec2<u32>(u_input.b.x, 3260u)))) & _wgslsmith_sub_u32(firstTrailingBit(u_input.b.x), u_input.b.x)), 25u)];
    let var_3 = u_input.b.x;
    var var_4 = select(-vec2<i32>(abs(_wgslsmith_mult_i32(-55523i, u_input.c.x)), u_input.a.x), u_input.d.zy, true);
    let var_5 = func_5(var_2.c.x, func_4(Struct_1(var_2.a, var_2.b, select(var_2.b.yy, vec2<bool>(true, true), !vec2<bool>(var_2.d, false)), any(!var_2.b.wxy), select(!vec2<bool>(true, var_2.d), !var_2.b.yy, select(var_2.b.yz, vec2<bool>(var_2.e.x, var_2.c.x), var_2.b.x))), func_2(), _wgslsmith_dot_vec3_i32(-u_input.d, countOneBits(u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-894f)))), Struct_1(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.b, var_2.a.xx) >> (abs(1u) % 32u), var_2.a.x, u_input.b.x), var_2.b, vec2<bool>(!func_4(Struct_1(var_2.a, var_2.b, vec2<bool>(var_2.d, true), var_2.d, var_2.c), Struct_1(vec4<u32>(var_3, 25218u, u_input.b.x, var_3), vec4<bool>(var_2.c.x, var_2.c.x, false, true), vec2<bool>(var_2.d, var_2.b.x), var_2.c.x, var_2.b.zz), var_4.x, 1791f).x, var_2.e.x), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-5302i, var_4.x), firstLeadingBit(-4851i), ~(-1i)) <= -32786i, func_2().b.wx), func_2());
    global0 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~(~var_5.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(239f, -1746f) - vec2<f32>(-555f, -638f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(565f, -222f) + vec2<f32>(1409f, -1000f))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(656f, -1297f)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1156f, 450f), vec2<f32>(-1332f, 1179f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(484f, -645f))), vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -759f)), !var_2.b.zw))));
}

