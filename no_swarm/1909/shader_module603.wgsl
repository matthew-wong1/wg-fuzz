struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 1u, 72440u, 33632u);

var<private> global1: array<i32, 22>;

var<private> global2: array<vec2<i32>, 8>;

var<private> global3: vec4<u32> = vec4<u32>(46349u, 33761u, 73207u, 0u);

var<private> global4: array<Struct_2, 30>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, arg_1.a)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-512f, arg_1.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_1.c))))));
    global3 = vec4<u32>(global3.x, _wgslsmith_mod_u32(0u, arg_0), ~global0.x, _wgslsmith_div_u32(100045u, 1u)) ^ u_input.a;
    return 49542u & global3.x;
}

fn func_2() -> vec3<bool> {
    global3 = vec4<u32>(1u, abs(_wgslsmith_div_u32(min(~global3.x, ~8027u), firstLeadingBit(0u))), abs(func_3(global3.x & u_input.a.x, Struct_1(_wgslsmith_div_f32(-907f, 442f), vec2<i32>(0i, global1[_wgslsmith_index_u32(0u, 22u)]), _wgslsmith_f_op_f32(911f * 1936f), vec3<bool>(true, true, true), 1f))), 36471u);
    let var_0 = select(vec3<bool>(true, true, false), select(select(vec3<bool>(true, all(vec4<bool>(false, false, true, true)), true), vec3<bool>(true, false, any(vec4<bool>(false, true, true, false))), any(vec2<bool>(true, true))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), vec3<bool>(false, false, any(vec4<bool>(true, false, true, false))), false), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), true)), all(vec3<bool>(true, true, true)));
    return !(!select(var_0, vec3<bool>(false, var_0.x | var_0.x, true), u_input.c <= reverseBits(-1i)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.b + -330f))) - -1641f) * _wgslsmith_f_op_f32(min(-1454f, _wgslsmith_f_op_f32(-arg_2.a)))), _wgslsmith_f_op_f32(-245f * 1642f));
    let var_1 = vec4<bool>(false, ((i32(-1i) * -arg_0) < -2147483647i) || any(!func_2()), any(vec4<bool>(true, true, true, true)) & false, all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), false)));
    let var_2 = var_1.x;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-174f + 1000f), vec2<i32>(max(_wgslsmith_clamp_i32(-31012i, arg_0, firstTrailingBit(arg_0)), u_input.c), i32(-1i) * -1i), _wgslsmith_f_op_f32(1604f - -1479f), func_2(), arg_2.b);
    let var_4 = 456f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(u_input.c, 4294967295u, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(48950u, global3.x, 4294967295u), ~u_input.a.yyz), 30u)])), 454f, !all(func_2().yz))) + _wgslsmith_f_op_f32(round(1300f)));
    let var_1 = vec2<bool>(!func_2().x == (-_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(global0.x, 22u)], 21562i, global1[_wgslsmith_index_u32(global0.x, 22u)]) <= -16376i), select(true, true, u_input.d == ~0u));
    global4 = array<Struct_2, 30>();
    var var_2 = -1754f;
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(~(~44079u), 0u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global3.zz, global0.wy), abs(16979u)), 1u), ~(~(4294967295u & global0.x)))), 30u)];
    var_3 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(func_3(u_input.d, Struct_1(-1260f, global2[_wgslsmith_index_u32(0u, 8u)], var_3.b, vec3<bool>(true, true, false), 1010f)), 1u | min(global3.x, 20829u)), vec2<u32>(59149u, u_input.d | _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(12998u, global3.x)), vec2<u32>(global3.x, 82254u)))), 30u)];
    let var_4 = ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, global3.x, global3.x), _wgslsmith_div_vec3_u32(~u_input.b, u_input.a.xzx << (vec3<u32>(0u, global3.x, 35142u) % vec3<u32>(32u)))) ^ 4294967295u, 8u)];
    var var_5 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)))), -_wgslsmith_add_vec2_i32(var_4, reverseBits(var_4 << (u_input.b.yy % vec2<u32>(32u)))), -694f, select(!vec3<bool>(true, any(vec3<bool>(true, var_1.x, var_1.x)), any(var_1)), vec3<bool>(true, true, _wgslsmith_f_op_f32(var_3.b - var_3.a) < _wgslsmith_div_f32(-803f, 657f)), _wgslsmith_f_op_f32(-var_3.a) == _wgslsmith_f_op_f32(floor(var_3.a))), _wgslsmith_f_op_f32(-var_3.b));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(26923i, global0.x, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(54707u, 0u, 4294967295u) << (global0.x % 32u), 30u)])), _wgslsmith_f_op_f32(var_5.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-324f)), var_3.a)))) * 409f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(var_5.a + _wgslsmith_f_op_f32(-1897f + var_5.e)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1155f + -235f), var_3.b, all(var_5.d))), var_5.c))), _wgslsmith_clamp_vec2_u32(u_input.a.yx, global0.zz, _wgslsmith_div_vec2_u32(vec2<u32>(max(global3.x, 0u), firstLeadingBit(4294967295u)), ~_wgslsmith_sub_vec2_u32(global3.xy, global0.xx))), _wgslsmith_div_vec4_u32(vec4<u32>(~max(global0.x, 25290u), 35684u, _wgslsmith_clamp_u32(1u, 0u, ~global0.x), ~(~u_input.d)), ~u_input.a));
}

