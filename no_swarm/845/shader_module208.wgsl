struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: u32;

var<private> global2: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(-1i, 1i, 0i), vec3<i32>(18369i, i32(-2147483648), -99470i), vec3<i32>(11240i, -1i, 1i), vec3<i32>(i32(-2147483648), 9155i, 0i), vec3<i32>(-1i, 1i, -24559i), vec3<i32>(12647i, i32(-2147483648), 46643i), vec3<i32>(0i, 1i, -28798i), vec3<i32>(1i, 1i, -8843i), vec3<i32>(-1i, 16505i, i32(-2147483648)), vec3<i32>(-20707i, i32(-2147483648), 0i), vec3<i32>(1i, 0i, 1i), vec3<i32>(12130i, -20195i, 12706i), vec3<i32>(-8977i, 28125i, -12274i));

var<private> global3: vec2<f32> = vec2<f32>(369f, -1000f);

var<private> global4: vec2<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-974f, global3.x, 597f))))))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(-484f, 977f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * -1000f) * _wgslsmith_f_op_f32(min(global3.x, global3.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global3.x))))))));
    let var_2 = u_input.a.x;
    let var_3 = select(select(!select(vec4<bool>(global4.x, global4.x, global4.x, global4.x), vec4<bool>(global4.x, global4.x, global4.x, true), any(vec4<bool>(global4.x, false, true, global4.x))), !(!(!vec4<bool>(false, global4.x, global4.x, global4.x))), select(global4.x, -1000f < _wgslsmith_f_op_f32(sign(global3.x)), !any(vec2<bool>(false, false)))), select(!vec4<bool>(true, !global4.x, false, true | global4.x), select(vec4<bool>(global3.x == -1263f, u_input.a.x >= var_2, true, all(vec3<bool>(true, true, global4.x))), !select(vec4<bool>(false, false, true, global4.x), vec4<bool>(true, global4.x, global4.x, false), true), all(vec2<bool>(true, true))), global4.x), select(true, all(select(vec4<bool>(global4.x, global4.x, global4.x, global4.x), vec4<bool>(false, global4.x, global4.x, false), vec4<bool>(true, false, false, true))) | true, global4.x));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(39823u ^ (abs(reverseBits(global0[_wgslsmith_index_u32(26076u, 24u)])) << (~_wgslsmith_add_u32(12718u, global0[_wgslsmith_index_u32(1u, 24u)]) % 32u)), 24u)], ~(~1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(2413u, 55647u, 1170u), vec3<u32>(u_input.b.x, 71572u, 94947u)) % 32u))), 24u)];
    return _wgslsmith_f_op_f32(-394f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(min(821f, -1462f))), -1007f)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>, arg_3: i32) -> vec2<f32> {
    var var_0 = arg_0;
    let var_1 = abs(_wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(countOneBits(u_input.b.xx), max(vec2<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 24u)]), vec2<u32>(global0[_wgslsmith_index_u32(arg_1, 24u)], 31485u))), _wgslsmith_mod_vec2_u32(u_input.c, ~u_input.b.yz)));
    let var_2 = -1401f;
    var var_3 = (_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(557f, var_2) * global3.x), _wgslsmith_f_op_f32(f32(-1f) * -1602f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + -212f)))) == (-27702i <= (~(~u_input.a.x) << (global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, countOneBits(9621u)), 24u)] % 32u)));
    global0 = array<u32, 24>();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1561f * var_0.b)), global3.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(round(330f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x)))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(abs(138f))), _wgslsmith_f_op_f32(var_0.b * 229f))));
}

fn func_2() -> vec2<bool> {
    global3 = _wgslsmith_f_op_vec2_f32(func_4(Struct_1(!(!select(vec4<bool>(global4.x, global4.x, global4.x, global4.x), vec4<bool>(true, false, global4.x, global4.x), vec4<bool>(false, false, global4.x, global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(func_3()))), vec3<bool>(select(false, u_input.a.x > -5199i, false), false, global4.x)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(~_wgslsmith_add_u32(u_input.c.x, 24691u)), ~77217u), 24u)], vec3<bool>(any(!(!vec4<bool>(false, false, global4.x, true))), global4.x, all(vec3<bool>(any(vec3<bool>(true, global4.x, false)), global3.x == 655f, any(vec4<bool>(global4.x, false, global4.x, global4.x))))), -1i));
    let var_0 = Struct_2(global3.x);
    global2 = array<vec3<i32>, 13>();
    global3 = vec2<f32>(_wgslsmith_f_op_f32(1667f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(-1389f + -488f)), var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-global3.x)) + 1683f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, -781f))));
    let var_1 = u_input.a.xy;
    return select(!vec2<bool>(false, all(vec2<bool>(global4.x, global4.x))), !(!vec2<bool>(true, all(vec4<bool>(true, false, global4.x, global4.x)))), select(!(!(!vec2<bool>(false, global4.x))), select(!(!vec2<bool>(false, global4.x)), select(!vec2<bool>(global4.x, global4.x), select(vec2<bool>(global4.x, global4.x), vec2<bool>(false, false), global4.x), any(vec2<bool>(global4.x, true))), all(!vec3<bool>(false, global4.x, global4.x))), true));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_2(global3.x);
    let var_1 = var_0;
    var var_2 = Struct_2(-519f);
    var var_3 = arg_2;
    var var_4 = select(!vec3<bool>(var_3.a.x, any(vec4<bool>(arg_2.a.x, false, true, arg_2.a.x)), func_2().x), select(!arg_2.c, vec3<bool>(false, _wgslsmith_clamp_i32(arg_0.x, u_input.a.x, 509i) < ~arg_0.x, _wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(64670u, 13u)], vec3<i32>(1846i, 7930i, u_input.a.x)) < 62429i), !vec3<bool>(var_3.a.x, true, global4.x)), !vec3<bool>(!(1883f <= global3.x), _wgslsmith_div_f32(369f, var_2.a) == 1000f, true));
    return vec3<bool>(true, var_4.x, true);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(!select(arg_1.a, vec4<bool>(false, u_input.a.x == u_input.a.x, arg_2.c.x && arg_1.c.x, global4.x), arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(floor(648f))))), func_5(select(vec4<i32>(2147483647i, -24305i, u_input.a.x, ~u_input.a.x), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(24912i, -9313i, -15193i, -8558i), vec4<i32>(u_input.a.x, 1219i, -1i, 1i)), vec4<i32>(u_input.a.x, 32638i, 2147483647i, u_input.a.x)), arg_2.a), func_2(), arg_2));
    global3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a)))), -767f);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(1131f, arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(441f), Struct_1(vec4<bool>(global4.x, false, true, global4.x), -778f, vec3<bool>(false, false, true)), Struct_1(vec4<bool>(global4.x, global4.x, global4.x, true), global3.x, vec3<bool>(global4.x, global4.x, false))))))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global3.x), -1000f)))), vec2<f32>(165f, 1578f)));
    var var_0 = Struct_2(2054f);
    var var_1 = Struct_1(vec4<bool>(~(~global0[_wgslsmith_index_u32(u_input.c.x, 24u)]) >= firstLeadingBit(23779u), ~(u_input.a.x << (4294967295u % 32u)) == (_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 21083i, 1i, -34086i), vec4<i32>(u_input.a.x, 12820i, u_input.a.x, u_input.a.x)) | ~30580i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec4<bool>(global4.x, false, global4.x, false), 847f, vec3<bool>(true, false, true)), u_input.b.x, vec3<bool>(false, global4.x, true), u_input.a.x)).x)) > _wgslsmith_f_op_f32(-global3.x), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + global3.x)), var_0.a), !vec3<bool>(true, global4.x, global4.x));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1867f, -409f)));
    var var_2 = Struct_1(var_1.a, -1000f, vec3<bool>(global4.x, true, true));
    var_2 = Struct_1(select(select(!(!vec4<bool>(global4.x, true, true, false)), vec4<bool>(var_2.c.x || false, true, false, !var_2.a.x), any(!vec3<bool>(global4.x, global4.x, global4.x))), var_2.a, var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec4<bool>(global4.x, global4.x, false, global4.x), 1465f, vec3<bool>(true, var_1.a.x, true)), ~86475u, select(var_1.c, vec3<bool>(false, var_2.a.x, var_2.c.x), vec3<bool>(true, false, global4.x)), u_input.a.x)).x))), select(var_1.c, vec3<bool>(true, true, true), func_5(vec4<i32>(~u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, global2[_wgslsmith_index_u32(0u, 13u)]), -31091i, -21144i | u_input.a.x), !var_1.a.zz, Struct_1(select(var_2.a, var_2.a, global4.x), _wgslsmith_f_op_f32(trunc(1463f)), var_1.a.xxy))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), var_2.b, -297f);
    var_1 = Struct_1(!vec4<bool>(var_1.c.x, false, global4.x, true), var_3.x, !var_2.a.zzx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-179f, -1340f)) * var_3.x), 1566f, _wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec4<bool>(false, false, var_2.c.x, false), 940f, var_2.a.xzw), ~31686u, func_5(vec4<i32>(u_input.a.x, u_input.a.x, -2878i, u_input.a.x), var_1.a.zy, Struct_1(var_2.a, 318f, var_2.c)), countOneBits(-2147483647i))).x, global3.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(ceil(-603f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1533f - 846f), -549f)), -824f, var_1.b))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~min(vec2<u32>(4294967295u, 60072u), vec2<u32>(1754u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)])), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(65423u, 24u)]), vec2<u32>(4294967295u, 16146u)), firstTrailingBit(vec2<u32>(u_input.b.x, 0u)))), u_input.c.x), var_3.x);
}

