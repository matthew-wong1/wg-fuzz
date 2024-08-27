struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(1123f, 215f, 2100f, -377f), vec4<f32>(-810f, -330f, -1396f, -508f), vec4<f32>(-314f, -429f, 748f, 1735f), vec4<f32>(-1139f, 1340f, -385f, 890f), vec4<f32>(-613f, -152f, -1000f, -673f), vec4<f32>(1955f, -675f, -1516f, -1000f), vec4<f32>(211f, -2362f, 1236f, -2631f), vec4<f32>(1000f, -463f, 1751f, -1000f), vec4<f32>(-1096f, 756f, 159f, 1542f), vec4<f32>(-1365f, -364f, -185f, -1647f), vec4<f32>(1043f, 1146f, 494f, 102f), vec4<f32>(-1407f, 960f, -1272f, -1000f));

var<private> global1: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-1921f, -662f), vec2<f32>(754f, -1681f), vec2<f32>(-481f, 1432f), vec2<f32>(2337f, -359f), vec2<f32>(-387f, 1001f), vec2<f32>(-1939f, -128f), vec2<f32>(-1163f, 480f), vec2<f32>(1392f, 1000f), vec2<f32>(-378f, 124f), vec2<f32>(-529f, -1679f), vec2<f32>(1000f, -1000f));

var<private> global2: array<Struct_1, 13>;

var<private> global3: u32 = 0u;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(1u, 11u)] * global1[_wgslsmith_index_u32(4294967295u, 11u)]);
    let var_1 = _wgslsmith_f_op_f32(ceil(var_0.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(151f, var_1, var_1), vec3<f32>(-2832f, 1163f, var_0.x)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-206f, var_0.x, var_0.x))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-527f, var_0.x, 1000f)) - vec3<f32>(849f, var_1, 977f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 194f, -783f), vec3<f32>(1020f, -443f, 546f), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 319f, var_0.x))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(max(var_1, var_0.x))), -1000f)));
    let var_3 = Struct_1(~1u, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, false)), vec4<bool>(true, all(vec4<bool>(false, false, false, false)), any(vec4<bool>(true, true, false, false)), true)), !vec4<bool>(all(vec2<bool>(true, false)), true, false, true), true), vec4<u32>(_wgslsmith_clamp_u32(1u, ~3206u >> (_wgslsmith_sub_u32(1u, 0u) % 32u), 1u), 1u, 46256u, 101470u), vec2<bool>((u_input.a.x >= countOneBits(u_input.b)) == all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), true), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec2<bool>(false, true))), vec2<bool>(true, true), true)));
    var var_4 = ~firstLeadingBit(~u_input.b);
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = u_input.a;
    var var_1 = vec2<bool>(!any(vec3<bool>(true, func_3(), arg_0.d.x)), all(vec3<bool>(firstLeadingBit(30982u) > arg_0.c.x, any(vec2<bool>(true, arg_2.x)), any(vec2<bool>(true, arg_3.e)))));
    let var_2 = ~(var_0.yww | var_0.xzy);
    var_0 = max(u_input.a | min(u_input.a, u_input.a), u_input.a);
    var var_3 = vec4<i32>(-abs(-var_2.x), _wgslsmith_sub_i32(max(max(_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.yy), var_2.x), _wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec3_i32(u_input.a.xwz, vec3<i32>(34147i, u_input.b, var_0.x)), -46776i >> (arg_1.x % 32u))), -38447i), var_2.x, abs(_wgslsmith_mod_i32(~98039i, 43350i)) & (-(-2147483647i & u_input.a.x) ^ _wgslsmith_mult_i32(i32(-1i) * -1i, 67733i)));
    return -u_input.b;
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<f32>, 12>();
    global2 = array<Struct_1, 13>();
    global3 = firstTrailingBit(1u);
    let var_0 = _wgslsmith_clamp_u32(max(countOneBits(20255u), 1u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(29101u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 7525u), vec3<u32>(37628u, 4294967295u, 9105u))) << (_wgslsmith_add_u32(1u, ~30900u) % 32u), ~(~17942u)), ~1u);
    global0 = array<vec4<f32>, 12>();
    return Struct_1(firstTrailingBit(_wgslsmith_sub_u32(58409u, var_0)), vec4<bool>(true, u_input.a.x == func_2(Struct_1(14019u, vec4<bool>(true, false, false, false), vec4<u32>(43979u, var_0, var_0, 0u), vec2<bool>(false, false), false), vec2<u32>(0u, var_0), vec3<bool>(true, true, true), Struct_1(var_0, vec4<bool>(true, false, false, true), vec4<u32>(var_0, var_0, 1u, 0u), vec2<bool>(true, false), false)), !select(true, true, true), all(vec3<bool>(true, true, true))), vec4<u32>(abs(var_0), var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(~11663u, var_0), vec2<u32>(0u, var_0) & ~vec2<u32>(24530u, 0u)), ~_wgslsmith_mod_u32(var_0, _wgslsmith_div_u32(var_0, 10974u))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<vec4<f32>, 12>();
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_0.c.x, var_0.c.x), 13u)];
    let var_2 = u_input.a.x;
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1062f)) + _wgslsmith_f_op_f32(min(1415f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(212f + 648f) + 1413f)))) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-259f * _wgslsmith_f_op_f32(-1000f + -754f)))));
    var_1 = Struct_1(var_1.c.x, vec4<bool>(all(!select(vec3<bool>(var_1.d.x, var_3, var_1.e), vec3<bool>(false, true, var_3), vec3<bool>(false, var_1.e, true))), min(firstLeadingBit(30717i), var_2 >> (var_0.a % 32u)) < func_2(func_1(), _wgslsmith_sub_vec2_u32(var_1.c.yy, vec2<u32>(44659u, 1u)), !vec3<bool>(true, false, var_0.e), Struct_1(1u, var_1.b, vec4<u32>(var_1.a, var_0.c.x, var_1.a, var_0.a), vec2<bool>(false, true), var_1.d.x)), false, !(false & (var_1.c.x > 14678u))), func_1().c, !(!var_0.d), false);
    global3 = ~_wgslsmith_div_u32(1088u, var_0.c.x | 1u);
    global1 = array<vec2<f32>, 11>();
    var_0 = Struct_1(firstLeadingBit(abs(972u)), !var_1.b, var_0.c, var_1.b.zx, false);
    let x = u_input.a;
    s_output = StorageBuffer(~func_1().c.wz, 15182i, vec4<f32>(-995f, 1f, 1701f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1121f, 1385f)))), ~firstTrailingBit(~(vec3<u32>(var_1.a, 1u, 1u) ^ var_1.c.yzz)));
}

