struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 23>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, true, false, false), vec4<u32>(1u, 4294967295u, 0u, 0u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: vec3<u32>) -> vec4<f32> {
    var var_0 = -1i;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(1408f - arg_1.x), arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(216f + arg_1.x), _wgslsmith_f_op_f32(1000f - -1190f), true))), _wgslsmith_f_op_f32(407f + _wgslsmith_f_op_f32(round(arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * -435f)));
    var var_2 = Struct_1(select(select(vec4<bool>(any(global1.a.xyw), all(arg_0.a.www), true, true), select(select(vec4<bool>(arg_0.a.x, arg_0.a.x, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, global1.a.x, arg_0.a.x)), global1.a, true), global1.a), !global1.a, global1.a.x), vec4<u32>(~(~25001u), abs(u_input.b.x & _wgslsmith_dot_vec3_u32(global1.b.yzz, global1.b.wwz)), u_input.b.x, 1u));
    let var_3 = Struct_1(!vec4<bool>(!global1.a.x || any(vec4<bool>(var_2.a.x, false, arg_0.a.x, true)), u_input.a > -u_input.e.x, true, true), select(global1.b & _wgslsmith_div_vec4_u32(vec4<u32>(0u, arg_3.x, u_input.c, var_2.b.x), global1.b), reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, global1.b.x, arg_2.x, arg_2.x), global1.b)), vec4<bool>(true, all(global1.a), _wgslsmith_f_op_f32(-arg_1.x) == _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_add_u32(arg_3.x, 53362u) <= ~0u)));
    let var_4 = vec4<i32>(abs(abs(0i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-19821i, -62237i, 1i, u_input.e.x), vec4<i32>(u_input.e.x, -1i, u_input.d, u_input.a)))), u_input.e.x, _wgslsmith_dot_vec3_i32(u_input.e, u_input.e), -2321i);
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-573f, var_1.x, -773f, arg_1.x), vec4<f32>(var_1.x, 1194f, var_1.x, 1661f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.x, var_1.x, var_1.x))))), reverseBits(1u) != abs(arg_3.x ^ 37554u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, var_1.x, var_1.x, -1000f)))) + vec4<f32>(-588f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-137f, var_1.x)), _wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(abs(142f))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> u32 {
    global0 = array<vec3<f32>, 23>();
    let var_0 = arg_1.b;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(!select(global1.a, global1.a, true), vec4<u32>(u_input.c, ~0u, 0u & var_0.x, var_0.x ^ global1.b.x)), vec3<f32>(-962f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1181f) * _wgslsmith_f_op_f32(f32(-1f) * -1706f)), -1554f), u_input.b, abs(var_0.zxz) | vec3<u32>(~u_input.b.x, ~arg_1.b.x, _wgslsmith_sub_u32(23978u, 14504u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-553f, 890f, -751f, -1047f), vec4<f32>(407f, 975f, 882f, -1773f)))) + vec4<f32>(791f, _wgslsmith_f_op_f32(max(2287f, 133f)), _wgslsmith_f_op_f32(f32(-1f) * -1527f), _wgslsmith_f_op_f32(-848f * -373f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(625f, -240f, 252f, 923f) + vec4<f32>(-426f, 351f, -958f, -132f)) - vec4<f32>(1518f, 503f, 331f, -653f))))));
    var var_2 = abs(_wgslsmith_sub_i32(-59966i, ~(-1i)));
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(_wgslsmith_dot_vec2_i32(-arg_0, vec2<i32>(arg_0.x, 16144i) ^ vec2<i32>(-8969i, arg_2))), -firstTrailingBit(_wgslsmith_add_i32(arg_0.x, 2147483647i))), vec2<i32>(0i, u_input.a));
    return max(arg_3, ~arg_3);
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: u32) -> vec2<f32> {
    let var_0 = Struct_1(!(!vec4<bool>(false, any(vec2<bool>(global1.a.x, true)), any(global1.a.wz), any(vec3<bool>(false, global1.a.x, true)))), _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(global1.b, ~arg_0), ~select(~vec4<u32>(4940u, 25394u, 1u, global1.b.x), vec4<u32>(4294967295u, 1u, arg_2, arg_0.x), global1.a.x & true)));
    global0 = array<vec3<f32>, 23>();
    let var_1 = false;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -423f), -780f)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(436f, _wgslsmith_f_op_f32(1437f + -2520f))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<f32>) -> vec3<f32> {
    var var_0 = Struct_1(!(!global1.a), _wgslsmith_div_vec4_u32(global1.b, ~_wgslsmith_add_vec4_u32(vec4<u32>(24661u, u_input.b.x, u_input.c, 4294967295u), global1.b)) & ~countOneBits(vec4<u32>(u_input.c, 17281u, u_input.b.x, u_input.c)));
    let var_1 = Struct_1(select(var_0.a, !(!(!vec4<bool>(var_0.a.x, false, global1.a.x, global1.a.x))), var_0.a.x), max(vec4<u32>(_wgslsmith_dot_vec3_u32(~var_0.b.wxy, var_0.b.yxw), 34058u, firstLeadingBit(u_input.c << (global1.b.x % 32u)), ~4631u), ~_wgslsmith_clamp_vec4_u32(global1.b << (vec4<u32>(4294967295u, var_0.b.x, var_0.b.x, 62370u) % vec4<u32>(32u)), vec4<u32>(39770u, u_input.c, 25214u, u_input.c), global1.b)));
    var var_2 = true;
    var var_3 = all(vec2<bool>(all(select(!global1.a.yz, select(var_0.a.wx, var_0.a.zy, true), select(vec2<bool>(true, true), var_0.a.wx, vec2<bool>(true, var_1.a.x)))), true));
    var_0 = var_1;
    return _wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(var_1.b.x, 23u)]));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<f32>) -> vec4<u32> {
    global0 = array<vec3<f32>, 23>();
    var var_0 = arg_3.x;
    global0 = array<vec3<f32>, 23>();
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-456f, arg_3.x) - vec2<f32>(arg_3.x, 1058f)))), _wgslsmith_f_op_vec2_f32(func_4(abs(~arg_1.b), _wgslsmith_dot_vec2_u32(vec2<u32>(74517u, 0u), ~arg_1.b.wz), func_2(arg_2, arg_0, _wgslsmith_div_i32(u_input.d, arg_2.x), ~arg_0.b.x)))))));
    let var_2 = vec4<u32>(min(global1.b.x, ~u_input.c), arg_0.b.x, countOneBits(_wgslsmith_dot_vec4_u32(global1.b, ~arg_1.b)), 1u & arg_1.b.x) & arg_0.b;
    return vec4<u32>(arg_0.b.x, 1u, select(reverseBits(firstTrailingBit(abs(u_input.c))), ~arg_0.b.x, any(select(select(global1.a.ywy, arg_1.a.wwx, global1.a.x), !global1.a.yzx, true))), firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, var_2.x) | _wgslsmith_clamp_u32(var_2.x, 13447u, 4294967295u), var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(!(!global1.a), ~(global1.b | func_1(Struct_1(vec4<bool>(false, true, global1.a.x, global1.a.x), global1.b), Struct_1(vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x), global1.b), vec2<i32>(4053i, -1i), vec4<f32>(1434f, -310f, 801f, 602f))));
    let var_0 = true;
    global0 = array<vec3<f32>, 23>();
    let var_1 = all(select(!select(vec4<bool>(true, true, false, false), !global1.a, !global1.a.x), global1.a, !global1.a));
    var var_2 = select(all(select(!vec2<bool>(var_0, global1.a.x), vec2<bool>(true, !var_0), any(!global1.a))), !var_1, all(vec2<bool>(true, select(true, false, false & global1.a.x))));
    var var_3 = u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.d, ~2147483647i, 1i, -abs(-1i)) >> (~global1.b % vec4<u32>(32u)), ~global1.b.x);
}

