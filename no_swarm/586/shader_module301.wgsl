struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), vec2<u32>(6909u, 4294967295u), vec2<u32>(35981u, 23763u), vec2<u32>(20752u, 11633u));

var<private> global1: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = Struct_3(u_input.a, any(!(!(!vec4<bool>(global1.x, global1.x, true, false)))), arg_0.x, global1.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(arg_0.x, -636f, 120f))) * _wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(floor(arg_0)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1773f, 575f, arg_0.x), vec3<f32>(var_0.c, var_0.c, arg_0.x))))));
    global0 = array<vec2<u32>, 5>();
    var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a * vec3<f32>(var_0.c, 844f, -241f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.a.x)), _wgslsmith_div_f32(var_0.c, var_0.c), _wgslsmith_div_f32(400f, 1000f))))));
    var var_2 = -186f;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c)))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(674f - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-524f, 908f, 1452f)))))))) * _wgslsmith_f_op_f32(448f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -1000f), _wgslsmith_f_op_f32(ceil(1000f))))));
    global1 = vec2<bool>(9532u >= ~u_input.a, false);
    var var_1 = Struct_3(abs(min(_wgslsmith_mod_u32(u_input.a << (u_input.a % 32u), 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, u_input.a), global0[_wgslsmith_index_u32(abs(u_input.a), 5u)]))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f * -1237f)))), global1.x);
    let var_2 = _wgslsmith_clamp_u32(u_input.a, var_1.a, ~12579u);
    global1 = !(!select(vec2<bool>(global1.x, !global1.x), select(vec2<bool>(false, false), select(vec2<bool>(global1.x, var_1.d), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)), select(!vec2<bool>(global1.x, false), vec2<bool>(false, false), select(vec2<bool>(global1.x, global1.x), vec2<bool>(var_1.b, global1.x), false))));
    return Struct_3(_wgslsmith_add_u32(0u | _wgslsmith_sub_u32(0u, var_1.a), var_2), var_1.b, -537f, var_1.b);
}

fn func_4(arg_0: Struct_3) -> vec3<f32> {
    global1 = vec2<bool>(false, any(vec2<bool>(func_2(vec4<i32>(1i, 1i, 1i, 1i)).d, all(vec4<bool>(arg_0.b, true, true, arg_0.b)))));
    let var_0 = ~(~(~(~(~vec4<u32>(4294967295u, u_input.a, 1u, 4294967295u)))));
    var var_1 = _wgslsmith_mod_vec3_u32(select(vec3<u32>(86581u, _wgslsmith_div_u32(max(var_0.x, arg_0.a), countOneBits(6543u)), select(abs(u_input.a), u_input.a ^ var_0.x, true | global1.x)), reverseBits(min(~vec3<u32>(0u, arg_0.a, 5650u), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, arg_0.a), vec3<u32>(101512u, 4294967295u, 1u), var_0.zzy))), arg_0.b), (vec3<u32>(~arg_0.a, _wgslsmith_add_u32(u_input.a, arg_0.a), 65424u) | vec3<u32>(_wgslsmith_clamp_u32(arg_0.a, 0u, u_input.a), arg_0.a, abs(var_0.x))) & min(~vec3<u32>(4294967295u, 24906u, 4294967295u), vec3<u32>(_wgslsmith_clamp_u32(var_0.x, var_0.x, arg_0.a), u_input.a >> (1u % 32u), 38468u)));
    var var_2 = arg_0.b;
    global1 = select(select(!(!vec2<bool>(arg_0.b, false)), select(vec2<bool>(all(vec2<bool>(arg_0.d, global1.x)), false), vec2<bool>(!arg_0.d, all(vec4<bool>(global1.x, arg_0.b, false, arg_0.b))), vec2<bool>(global1.x, !arg_0.b)), arg_0.b), vec2<bool>(false, global1.x), select(vec2<bool>(global1.x, (2147483647i << (var_0.x % 32u)) >= reverseBits(2147483647i)), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, arg_0.d), arg_0.d)));
    return vec3<f32>(-1069f, _wgslsmith_f_op_f32(196f + _wgslsmith_div_f32(arg_0.c, arg_0.c)), _wgslsmith_f_op_f32(-1301f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.c, -468f, arg_0.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.c - arg_0.c), _wgslsmith_f_op_f32(-813f - arg_0.c)))))));
}

fn func_1(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1123f, _wgslsmith_f_op_f32(floor(1229f)), _wgslsmith_f_op_f32(f32(-1f) * -115f)) * _wgslsmith_f_op_vec3_f32(func_4(func_2(~vec4<i32>(0i, 8193i, 2147483647i, -10869i))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(step(var_0.a.x, 407f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 271f);
    global1 = select(vec2<bool>(!(_wgslsmith_f_op_f32(floor(1955f)) < _wgslsmith_f_op_f32(-var_1.x)), any(select(vec3<bool>(arg_0.b, global1.x, false), vec3<bool>(arg_0.d, true, arg_0.b), vec3<bool>(true, true, true)))), select(select(vec2<bool>(false, true), select(vec2<bool>(false, global1.x), select(vec2<bool>(global1.x, arg_0.b), vec2<bool>(false, global1.x), vec2<bool>(false, true)), vec2<bool>(true, arg_0.b)), true), !select(!vec2<bool>(global1.x, arg_0.b), select(vec2<bool>(arg_0.b, true), vec2<bool>(arg_0.d, global1.x), vec2<bool>(true, false)), global1.x), select(!vec2<bool>(global1.x, arg_0.b), vec2<bool>(true, any(vec3<bool>(true, true, false))), select(select(vec2<bool>(true, global1.x), vec2<bool>(true, global1.x), global1.x), select(vec2<bool>(true, true), vec2<bool>(arg_0.d, true), vec2<bool>(global1.x, global1.x)), any(vec3<bool>(global1.x, true, false))))), any(!select(vec3<bool>(true, true, true), vec3<bool>(arg_0.b, global1.x, true), vec3<bool>(true, true, false))));
    let var_2 = max(vec4<i32>(select(firstLeadingBit(~0i), 2147483647i, false), ~_wgslsmith_sub_i32(-14901i, countOneBits(16957i)), _wgslsmith_mod_i32(~_wgslsmith_div_i32(3906i, 22126i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(35911i, 21173i, -2147483647i), vec3<i32>(-786i, -2147483647i, 28487i), vec3<bool>(global1.x, true, arg_0.b)), -vec3<i32>(-1i, 14471i, -5041i))), (26306i << (countOneBits(1u) % 32u)) | (0i >> (~arg_0.a % 32u))), vec4<i32>(abs(select(i32(-1i) * -1i, 6623i, select(global1.x, global1.x, true))), _wgslsmith_mult_i32(1i, i32(-1i) * -1i), -2147483647i, min(-1i, -(-54166i << (u_input.a % 32u)))));
    var var_3 = true;
    return !vec2<bool>(arg_0.b, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1771f;
    global1 = select(vec2<bool>(true, 1f == _wgslsmith_f_op_f32(155f - _wgslsmith_f_op_f32(-310f + var_0))), !(!vec2<bool>(!global1.x, !global1.x)), vec2<bool>(false, true));
    global1 = vec2<bool>(((var_0 <= _wgslsmith_f_op_f32(-var_0)) || select(global1.x, true, global1.x & global1.x)) | global1.x, !any(select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, false), vec2<bool>(true, true))) && global1.x);
    global1 = !vec2<bool>(all(!func_1(Struct_3(u_input.a, global1.x, 1000f, global1.x))), global1.x);
    global1 = !(!(!vec2<bool>(-601f == var_0, false)));
    var var_1 = -503f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(min(27653u, 7963u), func_2(vec4<i32>(-40346i, -2147483647i, -35335i, -29257i)).d, _wgslsmith_f_op_f32(var_0 + var_0), true))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -690f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -210f) - vec2<f32>(var_0, var_0)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, var_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(582f, 319f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1297f, -762f), vec2<f32>(var_0, var_0)))))), true));
    global0 = array<vec2<u32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, func_2(vec4<i32>(0i, -19909i, 1i, 1i) >> (vec4<u32>(1u, u_input.a, u_input.a, 1u) % vec4<u32>(32u))).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -449f) + -363f), var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(-var_0), var_0, -704f) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -614f, 263f, var_2.x)))))));
}

