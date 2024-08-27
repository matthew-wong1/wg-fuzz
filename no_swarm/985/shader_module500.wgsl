struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 6>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: u32) -> i32 {
    global0 = Struct_1(~(global0.a & ~global0.e), global0.a.x, vec4<f32>(_wgslsmith_div_f32(-137f, _wgslsmith_f_op_f32(-623f * global0.c.x)), _wgslsmith_f_op_f32(sign(arg_1.x)), 2160f, _wgslsmith_f_op_f32(-global0.c.x)), abs(vec2<u32>(~u_input.a, _wgslsmith_add_u32(countOneBits(u_input.a), 6549u))), vec2<u32>(arg_2, global0.e.x));
    global1 = array<Struct_1, 6>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(arg_1)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_1 - global0.c.xyy)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) * _wgslsmith_f_op_vec3_f32(arg_1 * global0.c.www))))));
    global0 = Struct_1(global0.a, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 42930u, 54370u), vec3<u32>(arg_2, 0u, global0.e.x))) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(global0.e, global0.e), _wgslsmith_div_vec2_u32(global0.a, global0.a)), global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c - vec4<f32>(var_0.x, global0.c.x, arg_1.x, -1074f))), _wgslsmith_dot_vec2_u32(vec2<u32>(51967u, 81242u), vec2<u32>(1u, arg_2)) > 0u)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.c, vec4<f32>(var_0.x, global0.c.x, 1000f, arg_1.x)))))), global0.d, ~vec2<u32>(_wgslsmith_mult_u32(~arg_2, u_input.a), 1u));
    var var_1 = arg_1.yy;
    return 19411i;
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~global0.b, global0.b, select(global0.a.x, u_input.a, false)), ~(vec3<u32>(0u, u_input.a, 0u) | vec3<u32>(4294967295u, u_input.a, u_input.a))), _wgslsmith_div_u32(~(~u_input.a), 78978u)), ~u_input.a, _wgslsmith_f_op_vec4_f32(global0.c + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 - global0.c)) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.x, global0.c.x, global0.c.x, arg_1.x))))))), ~select(_wgslsmith_mult_vec2_u32(~vec2<u32>(global0.d.x, 26086u), global0.e), firstLeadingBit(~vec2<u32>(29365u, 4294967295u)), select(true, all(vec3<bool>(true, true, false)), true)), vec2<u32>(~4294967295u, u_input.a));
    global0 = Struct_1(~_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(global0.d ^ vec2<u32>(1u, var_0.a.x), vec2<u32>(61789u, 62452u)), global0.e), ~global0.a.x | _wgslsmith_mod_u32(reverseBits(u_input.a) ^ ~global0.d.x, 1u), var_0.c, var_0.a, ~vec2<u32>(global0.d.x, u_input.a));
    let var_1 = Struct_1(_wgslsmith_mult_vec2_u32(abs(_wgslsmith_add_vec2_u32(global0.a, vec2<u32>(1u, 1u))) | global0.a, ~(~firstTrailingBit(vec2<u32>(global0.a.x, 30995u)))), ~u_input.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_1, vec4<f32>(var_0.c.x, 2507f, var_0.c.x, -649f))) - global0.c)), global0.c), var_0.a, var_0.d);
    let var_2 = vec3<u32>(~_wgslsmith_clamp_u32(abs(~var_1.b), u_input.a, 10389u), global0.d.x, select(0u, _wgslsmith_div_u32(var_1.b, ~(~u_input.a)), !select(false, true, u_input.b.x < 58064i)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-global0.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-398f))))), 1f, -2643f);
    return abs(_wgslsmith_sub_u32(global0.b, global0.a.x));
}

fn func_1(arg_0: vec3<u32>) -> vec3<i32> {
    global1 = array<Struct_1, 6>();
    let var_0 = global1[_wgslsmith_index_u32(func_3(func_2(true, _wgslsmith_f_op_vec3_f32(global0.c.ywx + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.c.yxw + vec3<f32>(1422f, 274f, global0.c.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(398f, -197f, global0.c.x))))), 1u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -157f, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -298f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1255f, global0.c.x, 330f, 750f)))))), 6u)];
    global0 = Struct_1(global0.a >> (~vec2<u32>(_wgslsmith_add_u32(0u, global0.d.x), ~arg_0.x) % vec2<u32>(32u)), abs(arg_0.x) & global0.b, vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), -699f), 100f), global0.d, firstTrailingBit(~(~abs(vec2<u32>(var_0.d.x, 57477u)))));
    return _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, i32(-1i) * -23200i, abs(2147483647i)), abs(reverseBits(firstLeadingBit(vec3<i32>(u_input.d.x, u_input.c, 1i)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> bool {
    global0 = global1[_wgslsmith_index_u32(14625u, 6u)];
    global0 = arg_0;
    var var_0 = Struct_1(~vec2<u32>(~1u, firstTrailingBit(~0u)), ~reverseBits(11826u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)), ~(~(~arg_0.e)) << (((_wgslsmith_add_vec2_u32(arg_0.a, arg_0.a) & global0.a) ^ ~firstTrailingBit(vec2<u32>(4294967295u, 28742u))) % vec2<u32>(32u)), ~(~(~vec2<u32>(arg_0.e.x, 0u))));
    let var_1 = Struct_1(select(global0.e, min(vec2<u32>(~u_input.a, max(27332u, 22379u)), ~(~var_0.e)), true), 4294967295u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.c.x * -870f))), _wgslsmith_div_f32(855f, _wgslsmith_f_op_f32(-417f - 1280f)), -149f, _wgslsmith_f_op_f32(arg_0.c.x + 2069f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0.c))))), ~(~(~var_0.a)) >> (var_0.d % vec2<u32>(32u)), select(_wgslsmith_mod_vec2_u32(firstTrailingBit(abs(vec2<u32>(58654u, 4294967295u))), var_0.d ^ var_0.d), _wgslsmith_mod_vec2_u32(var_0.a, arg_0.e), vec2<bool>(false, max(0u, 23203u) > select(arg_0.b, var_0.b, false))));
    var var_2 = var_1;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d | -_wgslsmith_add_vec2_i32((vec2<i32>(-2147483647i, u_input.e) | vec2<i32>(-1i, u_input.d.x)) << (vec2<u32>(4294967295u, global0.e.x) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -110677i), vec2<i32>(0i, u_input.c)), u_input.e));
    global1 = array<Struct_1, 6>();
    let var_1 = !vec3<bool>(select(all(vec4<bool>(true, false, true, false)), select(true, true, any(vec4<bool>(false, false, true, true))), all(vec2<bool>(false, true))), any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)) || true, func_4(global1[_wgslsmith_index_u32(~(global0.d.x & global0.d.x), 6u)], -func_1(vec3<u32>(34871u, global0.a.x, 6388u))));
    global1 = array<Struct_1, 6>();
    var_0 = u_input.b;
    let var_2 = reverseBits(func_2(1i > _wgslsmith_add_i32(abs(-2147483647i), var_0.x), vec3<f32>(214f, -2065f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.c.x - -955f), _wgslsmith_f_op_f32(-global0.c.x)))), ~(~_wgslsmith_dot_vec2_u32(global0.d, vec2<u32>(0u, 34459u)))));
    var var_3 = _wgslsmith_mod_vec4_u32(select(vec4<u32>(func_3(1i, global0.c) | 69432u, _wgslsmith_dot_vec2_u32(global0.e, vec2<u32>(0u, u_input.a) & vec2<u32>(25830u, u_input.a)), _wgslsmith_mod_u32(16053u, global0.d.x) | ~global0.d.x, _wgslsmith_add_u32(1u << (u_input.a % 32u), max(u_input.a, u_input.a))), _wgslsmith_sub_vec4_u32(select(~vec4<u32>(u_input.a, 0u, 53605u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 20513u, global0.a.x), vec4<u32>(global0.b, 28054u, 4294967295u, 0u)), select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(true, true, var_1.x, var_1.x), true)), ~firstLeadingBit(vec4<u32>(0u, 45431u, global0.a.x, 1u))), !all(select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, false), false))), vec4<u32>(~((70394u >> (global0.e.x % 32u)) >> (~global0.a.x % 32u)), global0.e.x, abs(~1u), reverseBits(~(~u_input.a))));
    global0 = global1[_wgslsmith_index_u32(countOneBits(var_3.x), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(~u_input.d.x << (12923u % 32u)));
}

