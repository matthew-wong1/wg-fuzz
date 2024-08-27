struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
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

var<private> global0: array<vec3<f32>, 29>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_1(vec4<i32>(-1i) * -firstLeadingBit(-vec4<i32>(0i, u_input.d.x, -8667i, u_input.d.x)), vec3<bool>((any(vec4<bool>(true, false, true, true)) & true) != any(vec2<bool>(true, true)), select(any(vec2<bool>(false, false)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true))), any(vec4<bool>(false, true, true, true))), false), firstTrailingBit(u_input.a.x), 0u);
    var var_1 = Struct_1(min(select(~abs(vec4<i32>(u_input.d.x, 76646i, 2147483647i, -1i)), var_0.a, all(vec2<bool>(var_0.b.x, var_0.b.x))), var_0.a | u_input.d), vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(arg_0.x - arg_0.x)) >= 525f, !(var_0.b.x & true) || (-14256i < (var_0.a.x << (var_0.d % 32u))), true), 2665i, var_0.d << (max(~var_0.d, _wgslsmith_add_u32(1u, abs(0u))) % 32u));
    var_0 = Struct_1(reverseBits(~_wgslsmith_div_vec4_i32(max(vec4<i32>(var_0.c, var_0.c, var_1.a.x, var_0.a.x), var_1.a), var_0.a)), var_0.b, -var_0.a.x, 1130u);
    var var_2 = max(vec4<u32>(firstLeadingBit(var_1.d), var_1.d, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, 21285u, var_0.d, var_1.d), vec4<u32>(4294967295u, var_0.d, 4294967295u, 55229u)), abs(1u)), firstLeadingBit(abs(min(vec4<u32>(var_1.d, var_1.d, 3641u, var_0.d), vec4<u32>(var_1.d, 17776u, 1u, 1u)))) ^ max(abs(vec4<u32>(2683u, var_0.d, 4294967295u, var_1.d)), reverseBits(min(vec4<u32>(0u, var_0.d, var_0.d, 26661u), vec4<u32>(var_1.d, var_0.d, var_0.d, 21661u)))));
    let var_3 = false;
    return _wgslsmith_f_op_f32(ceil(-722f));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> vec3<u32> {
    global0 = array<vec3<f32>, 29>();
    var var_0 = arg_3;
    let var_1 = _wgslsmith_mult_u32(var_0.d, ~(~(~var_0.d)) ^ var_0.d);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(exp2(global0[_wgslsmith_index_u32(1u, 29u)])))), -1552f), 929f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(arg_3.d, 29u)] * global0[_wgslsmith_index_u32(arg_2, 29u)]))) * -1298f), _wgslsmith_f_op_f32(floor(253f))));
    var_2 = _wgslsmith_f_op_f32(1206f - -1165f);
    return reverseBits(vec3<u32>(18393u, countOneBits(var_0.d), ~firstTrailingBit(arg_2)) & _wgslsmith_mod_vec3_u32(vec3<u32>(firstTrailingBit(var_1), var_0.d, arg_2), vec3<u32>(_wgslsmith_mult_u32(arg_2, 8359u), 1u, ~35620u)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = func_2(u_input.b.x, !(6787u <= _wgslsmith_mod_u32(select(9977u, 4294967295u, true), _wgslsmith_clamp_u32(arg_0, 0u, arg_0))), ~arg_0, Struct_1(min(-abs(vec4<i32>(u_input.b.x, -2147483647i, -1i, u_input.c.x)), vec4<i32>(firstTrailingBit(u_input.a.x), u_input.d.x ^ u_input.d.x, u_input.b.x, firstTrailingBit(u_input.a.x))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), u_input.a.x, 62437u));
    global0 = array<vec3<f32>, 29>();
    let var_1 = 4294967295u & arg_0;
    let var_2 = vec2<i32>(47289i, u_input.c.x);
    var_0 = ~vec3<u32>(arg_0, _wgslsmith_dot_vec2_u32(reverseBits(var_0.zy), var_0.yz | vec2<u32>(44191u, arg_0)), _wgslsmith_div_u32(func_2(var_2.x, false, 4294967295u, Struct_1(u_input.d, vec3<bool>(false, true, true), 20499i, var_1)).x, ~arg_0)) ^ vec3<u32>(var_1, arg_0, _wgslsmith_div_u32(arg_0, min(~4294967295u, 4294967295u ^ var_0.x)));
    return Struct_1(abs(u_input.d), vec3<bool>(!select(true, true, all(vec2<bool>(true, false))), any(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)), true), firstLeadingBit(~_wgslsmith_dot_vec3_i32(u_input.c, u_input.c & u_input.d.ywx)), ~_wgslsmith_mult_u32(var_0.x << (4294967295u % 32u), 54240u) | (func_2(max(u_input.c.x, -26014i), var_2.x >= -1i, var_1, Struct_1(vec4<i32>(var_2.x, -2147483647i, u_input.c.x, -29197i), vec3<bool>(false, false, false), var_2.x, 4294967295u)).x | ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, 43347u, 54697u), vec4<u32>(var_1, var_1, 1u, var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 29>();
    var var_0 = func_1(1u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-148f - _wgslsmith_f_op_f32(-1476f * -1110f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1313f)), !var_0.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<i32>(1i, var_0.a.x)));
}

