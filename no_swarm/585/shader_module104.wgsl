struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 2>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1074f, 297f, -1870f) - vec3<f32>(-354f, 1953f, 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, -655f, 538f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), vec2<bool>(global1[_wgslsmith_index_u32(arg_1.x, 2u)] && true, !all(vec3<bool>(false, true, true))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -103f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.x))))), !var_0.b);
    global0 = any(select(select(vec3<bool>(var_1.b.x | global1[_wgslsmith_index_u32(arg_1.x, 2u)], !var_0.b.x, false != global1[_wgslsmith_index_u32(u_input.c, 2u)]), vec3<bool>(all(vec2<bool>(var_0.b.x, global1[_wgslsmith_index_u32(u_input.c, 2u)])), !var_0.b.x, u_input.a == arg_0.x), !select(vec3<bool>(var_0.b.x, false, false), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 2u)], true), vec3<bool>(true, true, var_1.b.x))), vec3<bool>(!global1[_wgslsmith_index_u32(66515u, 2u)] | all(vec3<bool>(var_0.b.x, false, global1[_wgslsmith_index_u32(4294967295u, 2u)])), !global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, arg_1.x), 2u)], true), any(!select(vec2<bool>(var_1.b.x, var_0.b.x), var_0.b, vec2<bool>(true, true)))));
    var var_2 = var_0.b.x;
    var var_3 = vec4<u32>(~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 1u, 861u, 971u), ~vec4<u32>(0u, 1u, 4294967295u, arg_1.x))), 4294967295u, reverseBits(u_input.c), 4294967295u);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.xy) - _wgslsmith_f_op_vec2_f32(-var_1.a.xx));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-700f)) - _wgslsmith_f_op_f32(abs(-347f))), _wgslsmith_f_op_f32(round(-1567f)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-1709f * _wgslsmith_f_op_f32(floor(932f))), 1f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec4<i32>(u_input.d, 37511i, u_input.a, u_input.b.x), vec2<u32>(57227u, arg_1.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(439f, 1952f)))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))))), vec2<bool>(!any(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.x, global1[_wgslsmith_index_u32(1u, 2u)], arg_0.x), false)), false));
    var var_2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(var_1.a)))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(448f)), _wgslsmith_div_f32(-1774f, -369f)))), vec3<f32>(var_1.a.x, 1479f, var_1.a.x)), select(select(vec2<bool>(false, true), var_1.b, select(vec2<bool>(var_1.b.x, false), vec2<bool>(true, var_1.b.x), vec2<bool>(true, arg_0.x))), select(vec2<bool>(var_1.b.x, global1[_wgslsmith_index_u32(17555u, 2u)]), select(vec2<bool>(false, true), !arg_0, true), vec2<bool>(arg_1.x <= 0u, var_1.b.x)), select(select(vec2<bool>(true, var_1.b.x), select(vec2<bool>(false, false), vec2<bool>(true, var_1.b.x), false), !var_1.b.x), select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(25120u, 2u)]), vec2<bool>(false, var_1.b.x), global1[_wgslsmith_index_u32(93414u, 2u)]), !vec2<bool>(false, global1[_wgslsmith_index_u32(53849u, 2u)]), !arg_0), !all(vec2<bool>(true, arg_0.x)))));
    var_2 = Struct_1(var_1.a, !select(vec2<bool>(all(vec3<bool>(true, false, false)), !var_2.b.x), select(select(arg_0, vec2<bool>(var_2.b.x, global1[_wgslsmith_index_u32(0u, 2u)]), vec2<bool>(false, var_2.b.x)), select(vec2<bool>(var_1.b.x, var_2.b.x), vec2<bool>(false, var_2.b.x), arg_0.x), true), select(vec2<bool>(true, true), !vec2<bool>(var_1.b.x, true), select(vec2<bool>(var_1.b.x, true), vec2<bool>(false, false), arg_0))));
    let var_3 = Struct_2(true, !vec4<bool>(arg_0.x, true, false, true), select(vec4<u32>(_wgslsmith_div_u32(61396u, u_input.c), 39633u, _wgslsmith_mult_u32(arg_1.x, 128595u), max(3983u, u_input.c)) | firstTrailingBit(abs(vec4<u32>(11042u, arg_1.x, 4294967295u, arg_1.x))), _wgslsmith_add_vec4_u32(abs(countOneBits(vec4<u32>(29849u, 47354u, 4294967295u, u_input.c))), vec4<u32>(~1u, arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(58042u, 17771u, 4294967295u, 4294967295u), vec4<u32>(67144u, 5962u, 0u, arg_1.x)), arg_1.x)), arg_0.x));
    return !arg_0.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>) -> vec4<u32> {
    var var_0 = Struct_2(arg_1.x, vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], func_2(arg_0.b.xx, _wgslsmith_mult_vec2_u32(arg_0.c.ww, ~vec2<u32>(12667u, 35366u))), true, arg_1.x), vec4<u32>(_wgslsmith_sub_u32(u_input.c, _wgslsmith_clamp_u32(~u_input.c, ~arg_0.c.x, ~21899u)), firstLeadingBit(arg_0.c.x), ~(~0u), select(_wgslsmith_mod_u32(13229u, _wgslsmith_sub_u32(u_input.c, 55090u)), _wgslsmith_dot_vec2_u32(arg_0.c.wy, reverseBits(arg_0.c.yx)), all(arg_0.b.xzz))));
    global0 = arg_0.b.x;
    global0 = false;
    var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -379f) + 372f);
    return ~countOneBits(~arg_0.c) << (_wgslsmith_mod_vec4_u32(var_0.c, abs(vec4<u32>(~4294967295u, countOneBits(4294967295u), 1u, 44464u))) % vec4<u32>(32u));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    let var_0 = false;
    let var_1 = ~73005i;
    global0 = (~max(0i | arg_2, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.d), u_input.b.xz)) >= _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_add_i32(2147483647i, u_input.b.x)), -24009i)) == arg_1.b.x;
    let var_2 = Struct_2(all(select(select(vec2<bool>(false, var_0), arg_1.b.xx, all(vec4<bool>(false, true, var_0, true))), vec2<bool>(true, false), u_input.b.x >= u_input.a)), vec4<bool>(!any(!arg_1.b), !all(select(arg_1.b.wx, vec2<bool>(var_0, arg_1.a), vec2<bool>(true, false))), global1[_wgslsmith_index_u32((arg_1.c.x << (~66432u % 32u)) << (func_1(arg_1, select(arg_1.b.wz, arg_1.b.zy, arg_1.b.ww)).x % 32u), 2u)], true), arg_1.c);
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-449f * -738f), -1297f, _wgslsmith_f_op_f32(-651f - -1625f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-127f, -264f, -159f, 621f) - vec4<f32>(1000f, -854f, 818f, -735f))))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 2>();
    var var_0 = func_4(u_input.c, Struct_2(global1[_wgslsmith_index_u32(max(10331u, _wgslsmith_dot_vec4_u32(~vec4<u32>(15033u, u_input.c, u_input.c, 82957u), func_1(Struct_2(true, vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 2u)], true, true, false), vec4<u32>(1u, 22325u, 2375u, u_input.c)), vec2<bool>(true, false)))), 2u)], select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c | 4294967295u, 2u)], false, global1[_wgslsmith_index_u32(min(u_input.c, 58715u), 2u)], select(global1[_wgslsmith_index_u32(u_input.c, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)], false)), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.c, 2u)], true), !select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 2u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 2u)], false, global1[_wgslsmith_index_u32(u_input.c, 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)]))), ~_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), ~vec4<u32>(1u, 4294967295u, u_input.c, 0u))), _wgslsmith_div_i32(u_input.b.x, u_input.d));
    var var_1 = vec4<u32>(37925u, 1u, ~(~u_input.c), countOneBits(~12798u));
    let var_2 = -vec4<i32>(_wgslsmith_add_i32(firstLeadingBit(1i), _wgslsmith_clamp_i32(~2147483647i, ~15260i, ~u_input.d)), -1i, ~0i, 31036i);
    let var_3 = Struct_2(all(vec3<bool>(func_2(vec2<bool>(true, false), select(vec2<u32>(var_0.c.x, var_0.c.x), vec2<u32>(var_0.c.x, 1u), var_0.b.xy)), false, true)), vec4<bool>(false, false, any(var_0.b.yy), func_2(select(vec2<bool>(var_0.b.x, var_0.a), var_0.b.yx, var_0.a), vec2<u32>(1u, 31539u)) && global1[_wgslsmith_index_u32(u_input.c, 2u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, firstTrailingBit(~45797u), min(31263u, 1642u), _wgslsmith_div_u32(43587u ^ u_input.c, ~4294967295u)), ~var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-310f - -1205f), -260f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -349f))))), _wgslsmith_f_op_vec2_f32(func_3(-vec4<i32>(29296i, var_2.x, u_input.d, var_2.x) ^ u_input.b, ~vec2<u32>(15778u, 1u))), ~_wgslsmith_dot_vec4_u32(~max(vec4<u32>(var_1.x, 34818u, 4294967295u, var_0.c.x), vec4<u32>(var_0.c.x, var_0.c.x, var_3.c.x, 4294967295u)), vec4<u32>(~var_1.x, ~1u, var_1.x, _wgslsmith_add_u32(var_3.c.x, 1u))));
}

