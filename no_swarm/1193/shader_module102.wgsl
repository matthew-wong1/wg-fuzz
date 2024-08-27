struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: array<i32, 9>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = select(select(select(!select(vec4<bool>(false, arg_0.d, false, arg_0.d), vec4<bool>(false, false, arg_0.d, arg_0.d), vec4<bool>(false, arg_0.d, arg_0.d, false)), !(!vec4<bool>(true, false, true, arg_0.d)), (29211u <= arg_0.a.x) & (arg_0.b.x >= -1981f)), select(select(!vec4<bool>(false, arg_0.d, true, false), vec4<bool>(arg_0.d, arg_0.d, false, arg_0.d), arg_0.d), select(select(vec4<bool>(false, arg_0.d, arg_0.d, arg_0.d), vec4<bool>(true, arg_0.d, false, true), vec4<bool>(arg_0.d, false, true, arg_0.d)), !vec4<bool>(true, true, arg_0.d, arg_0.d), arg_0.d), vec4<bool>(all(vec3<bool>(false, false, arg_0.d)), 0u <= u_input.a.x, true, arg_0.b.x != 1408f)), !select(select(vec4<bool>(arg_0.d, true, true, false), vec4<bool>(true, true, false, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true)), !vec4<bool>(false, true, false, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, arg_0.d, true))), vec4<bool>(arg_0.d, firstTrailingBit(~1u) == 18191u, firstLeadingBit(global1[_wgslsmith_index_u32(arg_0.a.x & arg_0.a.x, 9u)]) >= _wgslsmith_mod_i32(23740i, global0[_wgslsmith_index_u32(arg_0.a.x, 14u)]), arg_0.d), !select(select(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d), select(vec4<bool>(true, arg_0.d, arg_0.d, true), vec4<bool>(arg_0.d, false, true, false), arg_0.d), arg_0.d), !vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d), all(!vec3<bool>(arg_0.d, true, arg_0.d))));
    let var_1 = arg_0;
    var var_2 = var_1;
    global1 = array<i32, 9>();
    var var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(countOneBits(arg_0.a), arg_0.a), arg_0.a.x);
    return arg_0.a;
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_1(~func_3(Struct_1(vec4<u32>(u_input.a.x, 49425u, 0u, 4294967295u), vec2<f32>(326f, arg_0), global1[_wgslsmith_index_u32(1u, 9u)], true)) | _wgslsmith_sub_vec4_u32(vec4<u32>(63425u, 11717u, countOneBits(u_input.a.x), _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, select(0u, u_input.a.x, false), 4294967295u, 1u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1686f, arg_0), vec2<f32>(arg_0, arg_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(137f, arg_0) + vec2<f32>(arg_0, arg_0))) + vec2<f32>(_wgslsmith_div_f32(796f, arg_0), arg_0)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) + _wgslsmith_f_op_f32(floor(151f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0)))))), global1[_wgslsmith_index_u32(abs(~countOneBits(4294967295u & u_input.a.x)), 9u)], all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, arg_0 > arg_0, all(vec4<bool>(true, true, true, false))), true)));
    var var_1 = vec2<i32>(global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(var_0.a.x, var_0.a.x)), 9u)], _wgslsmith_mod_i32(_wgslsmith_mult_i32(-u_input.b.x, 1i), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(u_input.a.x, 9u)] & u_input.b.x, _wgslsmith_mod_i32(var_0.c, -32042i))) & _wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], u_input.b.x));
    let var_2 = ~u_input.b.zy;
    var_1 = select(select(-u_input.b.xz, vec2<i32>(10321i | global0[_wgslsmith_index_u32(u_input.a.x, 14u)], ~(-2420i)) & abs(var_2), select(!vec2<bool>(true, var_0.d), !(!vec2<bool>(var_0.d, var_0.d)), true)), countOneBits(vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 9u)], 2162i, global0[_wgslsmith_index_u32(30102u, 14u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(-6052i, u_input.b.x, var_2.x, var_2.x), vec4<i32>(var_0.c, var_0.c, var_0.c, var_2.x))), _wgslsmith_div_i32(44066i, select(-1i, var_0.c, true)))), select(vec2<bool>(!var_0.d, all(!vec4<bool>(var_0.d, false, var_0.d, var_0.d))), vec2<bool>(var_0.d, true), vec2<bool>(var_0.d, true)));
    var var_3 = max(-_wgslsmith_clamp_vec4_i32(abs(-vec4<i32>(-2147483647i, -1i, -30883i, var_2.x)), abs(-vec4<i32>(1i, var_0.c, 1i, var_2.x)), vec4<i32>(_wgslsmith_clamp_i32(var_0.c, 22365i, -21654i), var_2.x, firstLeadingBit(global1[_wgslsmith_index_u32(0u, 9u)]), 1i)), -vec4<i32>(-2147483647i, 32500i, max(1i, var_1.x), global1[_wgslsmith_index_u32(~(~u_input.a.x), 9u)]));
    return var_0.a.x;
}

fn func_1(arg_0: f32) -> Struct_1 {
    return Struct_1(vec4<u32>(4294967295u, func_2(-198f), firstTrailingBit(2045u), ~0u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 748f), vec2<f32>(arg_0, 287f)))))), _wgslsmith_dot_vec4_i32(-vec4<i32>(45346i, 0i, 32564i, 0i), ~reverseBits(vec4<i32>(-23422i, global0[_wgslsmith_index_u32(1u, 14u)], -4037i, u_input.b.x))) & (i32(-1i) * -55943i), false);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> f32 {
    var var_0 = arg_2.a.x;
    var var_1 = _wgslsmith_f_op_f32(max(374f, arg_0.b.x));
    var var_2 = arg_2;
    var var_3 = arg_0.a.x;
    var var_4 = arg_0;
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = vec3<i32>(-47186i, max(select(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), vec2<i32>(-2147483647i, u_input.b.x)), select(u_input.b.x, -15516i, select(var_0, false, var_0)), var_0), -2147483647i >> (_wgslsmith_clamp_u32(reverseBits(u_input.a.x), ~4294967295u, 36078u) % 32u)), u_input.b.x << (_wgslsmith_sub_u32(min(1u, 0u), _wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, 0u, u_input.a.x), vec3<u32>(4321u, u_input.a.x, u_input.a.x)), min(vec3<u32>(4294967295u, 4294967295u, 656u), vec3<u32>(4294967295u, u_input.a.x, 0u)))) % 32u));
    global1 = array<i32, 9>();
    var var_2 = _wgslsmith_add_i32(abs(reverseBits(~global1[_wgslsmith_index_u32(u_input.a.x, 9u)])) >> (~(~u_input.a.x) % 32u), 3034i);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(func_1(-1210f), _wgslsmith_div_f32(177f, 313f), Struct_1(vec4<u32>(144826u, u_input.a.x, u_input.a.x, 4294967295u), vec2<f32>(1085f, 1588f), 5029i, var_0), u_input.a.x))))) + _wgslsmith_f_op_f32(-824f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-559f, -349f)) * 1239f)));
    var_1 = vec3<i32>(-u_input.b.x & 0i, max(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 82506u), 14u)], -47871i), u_input.b.x) >> (u_input.a.x % 32u), -3373i);
    global1 = array<i32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_mod_u32(26651u, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(32350u, 1u), u_input.a)), _wgslsmith_mult_u32(~14201u, u_input.a.x | u_input.a.x)), min(vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, ~(-72791i)), ~(u_input.b.x | 19051i), _wgslsmith_mod_i32(reverseBits(global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), var_1.x), 0i), ~vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a.x), 9u)], -2027i, countOneBits(-25160i), -u_input.b.x)));
}

