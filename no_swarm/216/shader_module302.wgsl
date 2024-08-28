struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<i32> {
    var var_0 = ~24787u;
    global0 = array<i32, 24>();
    var_0 = ~30701u;
    let var_1 = Struct_1(select(select(vec4<bool>(true, true, all(vec3<bool>(false, false, false)), false), vec4<bool>(false, any(vec4<bool>(true, false, true, false)), false, true), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, false, false), false), vec4<bool>(true, any(vec4<bool>(false, false, false, false)), true, all(vec2<bool>(true, true))), !any(vec3<bool>(false, true, false))), true), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-17390i, global0[_wgslsmith_index_u32(42292u, 24u)], -36313i, global0[_wgslsmith_index_u32(0u, 24u)]), vec4<i32>(-4214i, -2147483647i, global0[_wgslsmith_index_u32(38130u, 24u)], u_input.a), vec4<i32>(13397i, global0[_wgslsmith_index_u32(51096u, 24u)], u_input.a, u_input.a)), vec4<i32>(33379i, -25212i, -2147483647i, -10340i))), u_input.a), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true && any(vec3<bool>(true, false, false))), all(vec3<bool>(true, true, true))), vec4<i32>(25600i, _wgslsmith_mod_i32(-7534i, abs(u_input.a) >> (~18096u % 32u)), global0[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(1u, 0u, 108451u) << (0u % 32u), ~_wgslsmith_add_u32(0u, 0u)), 24u)], 42737i), -2147483647i);
    let var_2 = var_1;
    return vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-(~var_2.d.zww), vec3<i32>(u_input.a, 49063i, var_2.e), firstTrailingBit(var_2.d.xwx | var_2.d.xzy)), var_2.d.yxx), countOneBits(-(~_wgslsmith_add_i32(global0[_wgslsmith_index_u32(53036u, 24u)], global0[_wgslsmith_index_u32(69350u, 24u)]))), _wgslsmith_div_i32(-var_2.d.x, -var_2.d.x) << (4294967295u % 32u), _wgslsmith_div_i32(_wgslsmith_mult_i32(~(~1i), global0[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_add_i32(36976i, 1032i)));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec4<bool>(true, true, arg_1.x, false), (~global0[_wgslsmith_index_u32(0u, 24u)] ^ ~2147483647i) ^ (-28198i ^ _wgslsmith_sub_i32(38231i, u_input.a)), select(select(select(vec2<bool>(false, arg_1.x), arg_1.zw, arg_1.x), !arg_1.xy, arg_1.ww), arg_1.xy, arg_1.xw), select(vec4<i32>(50065i, -2147483647i, u_input.a, ~u_input.a), -(vec4<i32>(global0[_wgslsmith_index_u32(59722u, 24u)], -2147483647i, u_input.a, global0[_wgslsmith_index_u32(1u, 24u)]) & vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(26092u, 24u)], -6277i, global0[_wgslsmith_index_u32(4294967295u, 24u)])), arg_1), ~_wgslsmith_sub_i32(-23485i ^ arg_0, arg_0 >> (75720u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(240f * -1115f), _wgslsmith_f_op_f32(arg_2 * 1190f)))) + arg_2), Struct_1(arg_1, -32991i, vec2<bool>(!(arg_2 >= arg_2), true), func_3(), _wgslsmith_dot_vec2_i32(max(firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(0u, 24u)], 1i)), vec2<i32>(29566i, u_input.a) >> (vec2<u32>(83757u, 4294967295u) % vec2<u32>(32u))), min(vec2<i32>(-53850i, -19595i), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 24u)])) & vec2<i32>(arg_0, 40789i))), arg_0);
    var var_1 = false;
    var var_2 = var_0.c;
    let var_3 = Struct_1(!select(var_0.c.a, vec4<bool>(all(var_0.a.a.yxy), false, var_2.c.x || var_0.a.c.x, arg_1.x), true), ((select(global0[_wgslsmith_index_u32(7060u, 24u)], -41810i, arg_1.x) & _wgslsmith_mult_i32(u_input.a, global0[_wgslsmith_index_u32(1u, 24u)])) ^ var_0.c.e) << (~abs(reverseBits(14536u)) % 32u), !vec2<bool>(arg_1.x, arg_2 != _wgslsmith_f_op_f32(floor(var_0.b))), vec4<i32>(var_0.d << (_wgslsmith_div_u32(0u, _wgslsmith_mod_u32(47899u, 20711u)) % 32u), abs(2064i), _wgslsmith_clamp_i32(-8374i | var_2.b, abs(~(-1i)), max(arg_0 >> (66027u % 32u), _wgslsmith_dot_vec4_i32(var_2.d, vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], arg_0, u_input.a, 59426i)))), i32(-1i) * -25921i), var_0.c.e);
    var var_4 = arg_2;
    return Struct_2(Struct_1(var_3.a, var_0.d, var_3.a.zw, var_3.d << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), u_input.a), _wgslsmith_f_op_f32(-982f - _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_2)), arg_2, -2147483647i > u_input.a)), true))), Struct_1(vec4<bool>(true, var_0.a.c.x, ~var_3.e > (0i ^ var_0.c.b), var_2.a.x), global0[_wgslsmith_index_u32(countOneBits(~4294967295u), 24u)], !(!(!vec2<bool>(false, var_0.c.a.x))), abs(-min(vec4<i32>(global0[_wgslsmith_index_u32(100357u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], -1i, 1i), var_3.d)), reverseBits(arg_0) << (~(~1u) % 32u)), var_0.a.d.x);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = func_2(i32(-1i) * -12647i, !arg_0.a.a, arg_0.b);
    var var_1 = arg_0;
    var var_2 = func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, countOneBits(9261i)), -select(var_1.a.d.yy | var_0.c.d.yz, vec2<i32>(-1i, 0i), false)), vec4<bool>(!(~19409u >= select(46471u, 1u, var_1.a.a.x)), func_2(var_1.d, !var_1.c.a, _wgslsmith_div_f32(1579f, -657f)).a.a.x, arg_2.x, var_1.c.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -929f)))).a;
    let var_3 = Struct_1(var_1.a.a, min(24527i, min(_wgslsmith_div_i32(~(-6968i), global0[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_dot_vec4_i32(-arg_0.a.d, arg_0.a.d))), !var_0.a.c, vec4<i32>(-2147483647i, var_0.c.d.x, ~_wgslsmith_add_i32(-23308i, var_0.a.b), var_0.d), 17465i);
    var_1 = arg_0;
    return var_3;
}

fn func_1() -> u32 {
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    var var_0 = Struct_2(func_4(func_2(max(~6166i, ~global0[_wgslsmith_index_u32(0u, 24u)]), select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false), true), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_div_f32(501f, 198f)))), _wgslsmith_f_op_f32(step(356f, 948f)), select(vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 24u)] <= global0[_wgslsmith_index_u32(9292u, 24u)]), any(vec3<bool>(true, true, true))), select(vec3<bool>(true, true, all(vec2<bool>(false, false))), vec3<bool>(any(vec3<bool>(false, true, true)), false, func_2(0i, vec4<bool>(false, false, true, false), 1522f).c.c.x), false)), -402f, func_2(1i, !vec4<bool>(true, true, func_4(Struct_2(Struct_1(vec4<bool>(false, true, true, false), -38939i, vec2<bool>(true, false), vec4<i32>(global0[_wgslsmith_index_u32(34088u, 24u)], global0[_wgslsmith_index_u32(30264u, 24u)], u_input.a, 2147483647i), -46738i), 1632f, Struct_1(vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(24342u, 24u)], vec2<bool>(false, false), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 1i, -1i, global0[_wgslsmith_index_u32(0u, 24u)]), u_input.a), u_input.a), 668f, vec2<bool>(false, true), vec3<bool>(true, false, false)).a.x, false), _wgslsmith_f_op_f32(582f + _wgslsmith_f_op_f32(sign(176f)))).a, u_input.a);
    let var_1 = select(~1i, global0[_wgslsmith_index_u32(abs(1u), 24u)], any(select(func_2(19723i, !vec4<bool>(var_0.a.a.x, false, var_0.a.a.x, false), -108f).a.a, var_0.a.a, !func_4(Struct_2(Struct_1(vec4<bool>(var_0.a.a.x, true, false, var_0.c.a.x), -51696i, var_0.a.a.yw, var_0.a.d, u_input.a), var_0.b, var_0.a, u_input.a), 1117f, var_0.a.a.wx, var_0.c.a.wyw).a)));
    return 17796u;
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = ~vec3<u32>(arg_0, abs(~arg_0) & 0u, arg_1.x);
    let var_1 = func_4(func_2(firstTrailingBit(1i), vec4<bool>(true, true, !all(arg_2.a.wwy), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-823f)))), _wgslsmith_f_op_f32(trunc(-107f))))), -1922f, !func_4(func_2(10799i, vec4<bool>(arg_2.a.x, true, true, arg_2.a.x), func_2(6600i, arg_2.a, 1000f).b), 1403f, vec2<bool>(any(arg_2.a), true), vec3<bool>(!arg_2.c.x, false & arg_2.c.x, true)).a.zy, !arg_2.a.yxx);
    var var_2 = func_2(-var_1.d.x | ~_wgslsmith_dot_vec4_i32(-var_1.d, func_2(global0[_wgslsmith_index_u32(0u, 24u)], var_1.a, 622f).c.d), func_4(func_2(2147483647i, vec4<bool>(func_2(global0[_wgslsmith_index_u32(arg_0, 24u)], var_1.a, 778f).c.a.x, all(arg_2.a.zz), arg_2.a.x && false, var_1.a.x), -231f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-933f))), !var_1.a.zz, select(vec3<bool>(var_0.x < 23159u, all(vec4<bool>(false, var_1.a.x, arg_2.a.x, false)), true), select(select(vec3<bool>(arg_2.c.x, true, true), vec3<bool>(arg_2.c.x, arg_2.a.x, arg_2.a.x), vec3<bool>(var_1.c.x, var_1.a.x, true)), !arg_2.a.yyz, true), true)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(872f * 1263f)));
    var_2 = func_2(_wgslsmith_add_i32(var_1.b, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-14698i, 4725i), -2270i)) >> (_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_0, arg_1.x), ~arg_0, min(0u, 54462u)), ~var_0.x) % 32u), !vec4<bool>(true, var_2.a.a.x, !func_2(arg_2.b, arg_2.a, 1161f).c.a.x, !var_1.c.x), -1000f);
    let var_3 = func_2(_wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_2.d.x, 1i), vec2<i32>(-6299i, -2147483647i), var_2.a.c.x), arg_2.d.yz), _wgslsmith_mult_i32(abs(var_2.c.b), (arg_2.e >> (arg_1.x % 32u)) >> (1u % 32u))), var_2.a.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_2.b)), _wgslsmith_f_op_f32(741f - _wgslsmith_f_op_f32(ceil(var_2.b)))))))).c;
    return Struct_2(var_2.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(893f, var_2.b)), var_2.b)))), func_2(~(~26220i) & func_4(Struct_2(arg_2, 1825f, var_3, global0[_wgslsmith_index_u32(0u, 24u)]), _wgslsmith_f_op_f32(f32(-1f) * -451f), vec2<bool>(arg_2.a.x, var_3.a.x), vec3<bool>(arg_2.c.x, true, true)).b, vec4<bool>(true, all(arg_2.a.wwx), !func_4(Struct_2(Struct_1(var_1.a, 1i, vec2<bool>(var_2.c.c.x, false), var_3.d, arg_2.e), var_2.b, Struct_1(var_1.a, var_3.e, var_2.c.a.xw, vec4<i32>(arg_2.b, -29221i, u_input.a, var_3.d.x), -21044i), var_1.d.x), var_2.b, var_3.c, arg_2.a.zwz).a.x, select(false, var_1.a.x, arg_0 <= 32049u)), _wgslsmith_f_op_f32(floor(2284f))).a, ~arg_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    var var_0 = func_5(~reverseBits(_wgslsmith_sub_u32(45521u, 1u)) ^ func_1(), vec4<u32>(_wgslsmith_div_u32(4294967295u, countOneBits(1u)), 1u, 1u, max(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 5218u), vec4<u32>(0u, 0u, 1u, 4294967295u))), 78537u)), func_2(-1i, select(vec4<bool>(true, all(vec3<bool>(false, true, false)), false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1325f)), 1f))).a);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(var_0.b - var_0.b), func_2(var_0.c.d.x, var_0.a.a, var_0.b).b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, -978f))))) - vec3<f32>(480f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.b, var_0.b))) * _wgslsmith_f_op_f32(sign(-474f))), var_0.b));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -866f), _wgslsmith_f_op_f32(-1000f * var_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, -117f, var_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-940f, -887f, -1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2365f, -697f, 1464f)) - vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(var_0.b * 780f), _wgslsmith_f_op_f32(var_0.b * var_1.x)))));
    var_0 = func_5(_wgslsmith_mod_u32(_wgslsmith_add_u32(func_1() ^ 41809u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 79u, 42029u), vec3<u32>(30193u, 65861u, 3142u)), 1u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(1u, 1u, 1u, 1u), Struct_1(!vec4<bool>(false, true, var_2.x > var_0.b, any(var_0.a.a)), 1i, var_0.c.a.xy, var_0.c.d, -49203i));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xy);
}

