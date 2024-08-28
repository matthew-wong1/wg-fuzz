struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(376f, -23836i, 0u);

var<private> global1: array<Struct_2, 32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-1006f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a))))));
    var var_1 = arg_0;
    var_1 = arg_0;
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    return _wgslsmith_f_op_f32(-var_0);
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(floor(global0.a))))));
    global1 = array<Struct_2, 32>();
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))), reverseBits(reverseBits(u_input.a)), min(min(arg_1.b.c, 4294967295u), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, arg_1.a.c, 4294967295u, arg_1.a.c), ~vec4<u32>(global0.c, 66833u, arg_1.b.c, 4294967295u))));
    global1 = array<Struct_2, 32>();
    return global0.c | 16420u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(func_2(_wgslsmith_f_op_f32(round(arg_1.a)), Struct_2(Struct_1(1000f, -48135i, 49454u), Struct_1(1000f, u_input.d, u_input.b))), min(_wgslsmith_div_u32(0u, 14354u), _wgslsmith_dot_vec4_u32(vec4<u32>(7507u, 0u, 0u, global0.c), vec4<u32>(0u, 61505u, 63492u, u_input.b))), ~arg_0.c, ~firstTrailingBit(u_input.b)), ~(~(~vec4<u32>(arg_0.c, 35961u, global0.c, global0.c)))), 32u)];
    let var_1 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1.c, ~var_0.a.c), u_input.b) ^ countOneBits(var_0.a.c), arg_0.c, 54231u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, firstLeadingBit(_wgslsmith_mod_u32(0u, 72073u))), firstLeadingBit(min(~vec2<u32>(10091u, 0u), ~vec2<u32>(1u, 0u)))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-135f, _wgslsmith_f_op_f32(abs(global0.a)), true)))), arg_1.a))));
    return ~min(vec4<i32>(1i, u_input.a, -var_0.b.b, 1i) >> (select(~vec4<u32>(global0.c, u_input.b, arg_0.c, 4294967295u), vec4<u32>(21034u, 1u, var_1.x, var_0.a.c), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false))) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(arg_0.b, 2147483647i), max(-23761i, -2147483647i), _wgslsmith_mod_i32(1i, u_input.a), i32(-1i) * -26426i), vec4<i32>(0i, u_input.d, _wgslsmith_clamp_i32(15990i, 3703i, -82744i), global0.b)));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: i32) -> vec3<f32> {
    let var_0 = Struct_1(global0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~19813i, _wgslsmith_mult_i32(arg_2, u_input.d)), ~_wgslsmith_sub_i32(-2147483647i, -65608i), global0.b), min(vec3<i32>(arg_1.x, ~1i, _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(0i, -4770i, -14173i, arg_1.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(3229i, u_input.c, 0i), firstTrailingBit(arg_1.xzx)))), 0u);
    global1 = array<Struct_2, 32>();
    let var_1 = -1287f;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-284f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.a, global0.a))))), 2147483647i, 4294967295u);
    global0 = Struct_1(-572f, -2147483647i, global0.c);
    return vec3<f32>(global0.a, _wgslsmith_f_op_f32(-1088f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - 2084f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))) + var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 32>();
    var var_0 = global1[_wgslsmith_index_u32(global0.c, 32u)];
    global1 = array<Struct_2, 32>();
    var var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global0.a - global0.a), var_0.a.a)));
    var var_2 = -(-(i32(-1i) * -2147483647i) & u_input.d);
    let var_3 = vec4<u32>(~(~19820u), var_0.b.c, var_0.a.c, 1u & global0.c);
    global1 = array<Struct_2, 32>();
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -269f, 107f)) - _wgslsmith_f_op_vec3_f32(func_4(true, func_1(var_0.b, var_0.a), -var_0.b.b)))) * vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-307f, global0.a)) + _wgslsmith_f_op_f32(floor(1315f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1344f), _wgslsmith_f_op_f32(max(var_1.x, var_0.b.a))), global0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_sub_u32(45015u, 1u) ^ ~u_input.b, abs(abs(27686u))));
}

