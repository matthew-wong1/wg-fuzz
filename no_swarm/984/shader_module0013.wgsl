struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<i32>) -> vec4<i32> {
    global0 = select(!vec2<bool>(all(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), global0.x)), any(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, false, false), vec3<bool>(false, false, false)))), select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), global0.x), vec2<bool>(false, true), select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), global0.x)), select(!vec2<bool>(global0.x, false), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), vec2<bool>(true, global0.x)), global0.x), select(select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), global0.x), select(vec2<bool>(global0.x, true), vec2<bool>(true, global0.x), false), !vec2<bool>(global0.x, false))), select(select(vec2<bool>(false, global0.x), !vec2<bool>(false, global0.x), vec2<bool>(false, false)), vec2<bool>(any(vec2<bool>(true, false)), global0.x), select(select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), global0.x), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, false), true), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), vec2<bool>(false, global0.x)))), global0.x), vec2<bool>(true, all(!select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, false), true))));
    let var_0 = abs(_wgslsmith_mult_vec2_u32(u_input.a, ~u_input.a));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1150f))), 1338f)));
    return _wgslsmith_sub_vec4_i32(~(~firstTrailingBit(vec4<i32>(arg_0.x, 2147483647i, -2147483647i, 58701i))), ~select(-(~vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), max(abs(vec4<i32>(-7695i, arg_0.x, arg_0.x, arg_0.x)), firstLeadingBit(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -25100i))), true));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-34089i, 1i, ~(-5064i), -2147483647i << (u_input.a.x % 32u)), ~func_3(vec3<i32>(44474i, 41326i, -2147483647i))), min(vec4<i32>(max(countOneBits(14986i), ~(-24913i)), -1i & _wgslsmith_clamp_i32(34489i, 2147483647i, 1i), ~(-64283i), ~1i), vec4<i32>(-1i) * -(vec4<i32>(-39081i, 6226i, -85040i, 1i) >> (vec4<u32>(1u, 4294967295u, u_input.a.x, 4294967295u) % vec4<u32>(32u)))));
    var var_1 = global0.x;
    var_0 = -1i;
    let var_2 = ~_wgslsmith_div_i32(29276i, abs(~1i));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(704f, 840f, -774f) * vec3<f32>(449f, 1232f, 244f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-150f, 1744f, -1714f) - vec3<f32>(1000f, 350f, -1394f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-313f, -114f, -1064f) + vec3<f32>(1048f, 1146f, -1586f)), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(806f, -1511f, global0.x)), _wgslsmith_div_f32(1805f, -834f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1000f, -315f, global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-752f)) - _wgslsmith_f_op_f32(700f - -850f)))))));
    return countOneBits(1u);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> f32 {
    global1 = array<Struct_1, 20>();
    var var_0 = Struct_1(true);
    var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))), arg_0, !any(select(vec2<bool>(true, false), vec2<bool>(var_0.a, true), vec2<bool>(true, var_0.a)))))));
    let var_2 = ~min(~vec3<u32>(arg_2, arg_2, 23650u), select(~vec3<u32>(u_input.a.x, 1u, 4294967295u), ~vec3<u32>(arg_2, 25847u, arg_2), 4294967295u <= u_input.a.x)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(select(firstLeadingBit(u_input.a.x), 17717u, select(global0.x, global0.x, global0.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 4294967295u, u_input.a.x), vec3<u32>(26759u, arg_2, 80860u)), 1u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(85429u, 1u, arg_2), vec3<u32>(arg_2, u_input.a.x, arg_2) << (vec3<u32>(u_input.a.x, u_input.a.x, 84593u) % vec3<u32>(32u))), u_input.a.x, ~(~1u)));
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> StorageBuffer {
    global1 = array<Struct_1, 20>();
    global1 = array<Struct_1, 20>();
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(ceil(-2036f)))) * _wgslsmith_div_f32(-180f, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(func_2(), ~4294967295u, _wgslsmith_add_u32(arg_0, 2383u), 13671u << (arg_0 % 32u)) & vec4<u32>(~arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 13788u, 4294967295u), vec3<u32>(arg_0, u_input.a.x, 4294967295u)), u_input.a.x, 21679u), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0, arg_0, u_input.a.x, u_input.a.x), countOneBits(firstTrailingBit(vec4<u32>(10937u, u_input.a.x, 32179u, arg_0))))), 20u)], u_input.a.x << ((~arg_0 | ~(~81210u)) % 32u)));
    global0 = select(!vec2<bool>(false, global0.x), select(vec2<bool>(global0.x, all(vec2<bool>(true, true))), !select(!vec2<bool>(global0.x, true), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), vec2<bool>(true, global0.x)), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), true)), global0.x), select(vec2<bool>(true, true), !(!select(vec2<bool>(global0.x, true), vec2<bool>(true, true), false)), true));
    global1 = array<Struct_1, 20>();
    return StorageBuffer(countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(35345u, u_input.a.x, u_input.a.x), vec3<u32>(45588u, 0u, u_input.a.x))) ^ ~(~vec3<u32>(u_input.a.x, u_input.a.x, 51442u)), -(~(~vec2<i32>(-1i, 24982i)) << (abs(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(arg_0, 4294967295u))) % vec2<u32>(32u))), 2147483647i >> (_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(20949u, 4294967295u)), 1u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(u_input.a.x, vec2<i32>(-2147483647i, _wgslsmith_sub_i32(-(~(-30878i)), 1i)));
}

