struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<vec3<bool>, 16>;

var<private> global2: Struct_1 = Struct_1(-67498i);

var<private> global3: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(1759u, 4294967295u, 31161u), vec3<u32>(1u, 41113u, 14040u), vec3<u32>(0u, 56833u, 0u), vec3<u32>(13578u, 0u, 0u), vec3<u32>(1u, 27370u, 1u), vec3<u32>(16169u, 1u, 1u), vec3<u32>(4294967295u, 0u, 122830u), vec3<u32>(21083u, 0u, 60505u), vec3<u32>(4294967295u, 31755u, 48834u), vec3<u32>(1u, 0u, 4294967295u));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> u32 {
    let var_0 = -(-u_input.a >> ((~u_input.d.x & _wgslsmith_sub_u32(~u_input.b, u_input.d.x)) % 32u));
    global1 = array<vec3<bool>, 16>();
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
    let var_2 = arg_1;
    var_1 = -3862f;
    return u_input.d.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> Struct_1 {
    var var_0 = abs(-(1i | -u_input.a));
    global0 = array<Struct_1, 12>();
    var var_1 = vec4<i32>(~arg_2, global2.a, -2147483647i, arg_2) >> (~vec4<u32>(0u, 0u, _wgslsmith_sub_u32(~u_input.b, func_3(arg_0, vec3<f32>(849f, 408f, -969f))), _wgslsmith_mod_u32(~arg_1, 4363u & u_input.b)) % vec4<u32>(32u));
    let var_2 = u_input.b;
    var var_3 = 4294967295u;
    return global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(u_input.d.yx, firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.d.yx, vec2<u32>(0u, u_input.b))))), 12u)];
}

fn func_1(arg_0: bool) -> Struct_2 {
    global2 = func_2(Struct_2(true), 98085u, -max(global2.a, 16907i) ^ u_input.a);
    global1 = array<vec3<bool>, 16>();
    let var_0 = Struct_1(global2.a);
    var var_1 = -14298i;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(865f, 782f) + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-511f)) - 1f), true)), -216f) - vec2<f32>(-975f, 1000f));
    return Struct_2(all(vec4<bool>(arg_0, false, arg_0, arg_0)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_mod_u32(~(abs(22024u) ^ firstTrailingBit(u_input.d.x)) << (reverseBits(1u) % 32u), 0u);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1433f)))) >= _wgslsmith_f_op_f32(1f + -2351f));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1593f, 201f, true)) * _wgslsmith_div_f32(-503f, -1504f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1144f)) - 1706f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1150f, -804f)), _wgslsmith_f_op_f32(f32(-1f) * -167f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1359f), _wgslsmith_f_op_f32(337f + 1205f), 1020f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(887f, -760f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global2 = Struct_1(arg_3.x);
    var var_3 = func_2(func_1(var_1.a), ~firstTrailingBit(var_0), select(i32(-1i) * -(arg_2 & global2.a), u_input.a, false));
    return func_1(!(!(!(0u <= u_input.d.x))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> Struct_1 {
    global2 = Struct_1(10212i);
    global0 = array<Struct_1, 12>();
    let var_0 = Struct_1(1i);
    global1 = array<vec3<bool>, 16>();
    global3 = array<vec3<u32>, 10>();
    return Struct_1(59753i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -844f), _wgslsmith_f_op_f32(498f - -1643f)));
    let var_1 = func_5(func_4(func_1(any(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), firstLeadingBit(~_wgslsmith_add_vec3_u32(global3[_wgslsmith_index_u32(4294967295u, 10u)], u_input.d)), _wgslsmith_mult_i32((1i | global2.a) & ~75i, -(~u_input.a)), vec3<i32>(_wgslsmith_sub_i32(global2.a, u_input.c), abs(global2.a), ~global2.a) << (_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.b, u_input.d.x, 0u)), ~global3[_wgslsmith_index_u32(1u, 10u)]) % vec3<u32>(32u))), u_input.d.x, u_input.b);
    var var_2 = 1i < abs(var_1.a);
    global2 = func_5(func_1(!all(!global1[_wgslsmith_index_u32(54278u, 16u)])), u_input.b, u_input.d.x & u_input.d.x);
    global3 = array<vec3<u32>, 10>();
    var var_3 = ~((~(~u_input.b) << (_wgslsmith_clamp_u32(u_input.b, ~u_input.b, 1u) % 32u)) >> ((countOneBits(_wgslsmith_mod_u32(u_input.d.x, 0u)) & u_input.b) % 32u));
    let var_4 = select(vec4<bool>(true, any(select(select(vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(u_input.d.x, 16u)], global1[_wgslsmith_index_u32(30005u, 16u)]), global1[_wgslsmith_index_u32(~65765u, 16u)], u_input.b <= u_input.b)), !all(vec2<bool>(true, true)), false), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), true)), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), func_4(Struct_2(true), global3[_wgslsmith_index_u32(u_input.d.x, 10u)], -21097i, vec3<i32>(-30048i, 102i, 1i)).a)));
    var_2 = _wgslsmith_div_u32(~1u, u_input.d.x) >= u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_i32(select(vec2<i32>(global2.a, -12114i), vec2<i32>(0i, var_1.a), true), ~vec2<i32>(var_1.a, -36492i)) & _wgslsmith_mod_vec2_i32(vec2<i32>(abs(1i), _wgslsmith_sub_i32(2147483647i, u_input.c)), -vec2<i32>(78902i, 2147483647i) | -vec2<i32>(u_input.a, u_input.a)));
}

