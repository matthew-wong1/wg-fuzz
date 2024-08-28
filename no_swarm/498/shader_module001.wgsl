struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, -2080f, 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_1(~u_input.e.x, global0.b, (4294967295u | u_input.e.x) << (~u_input.c % 32u));
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c ^ 25656u, max(4294967295u, 4294967295u), 492u, max(4294967295u, var_0.c)), u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_div_u32(1u, 12510u));
    let var_1 = Struct_1(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-421f + _wgslsmith_f_op_f32(-global0.b))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b)))))), firstTrailingBit(~_wgslsmith_sub_u32(global0.c, 4294967295u)) | _wgslsmith_mult_u32(16948u & select(global0.a, 0u, false), ~var_0.a | (var_0.a >> (var_0.a % 32u))));
    var var_2 = -abs(_wgslsmith_div_i32(0i, ~1i) | reverseBits(u_input.b.x | 0i));
    let var_3 = select(vec2<bool>(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b))) < _wgslsmith_f_op_f32(469f - -370f)), !select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), vec2<bool>(arg_0, true)), !vec2<bool>(arg_0, arg_0), 212f == var_1.b), select(select(vec2<bool>(true, true), vec2<bool>(true, arg_0), arg_0), !vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false))), vec2<bool>(all(vec3<bool>(arg_0, arg_0, true)), true)), true);
    return u_input.c;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(firstLeadingBit(global0.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(178f - 494f), 763f) - _wgslsmith_f_op_f32(f32(-1f) * -792f)), func_3(any(vec2<bool>(true, true)) != !any(vec3<bool>(true, false, false))));
    global0 = Struct_1(u_input.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b, global0.b, true)) - _wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-227f))))), ~0u);
    global0 = Struct_1(~u_input.e.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.b), global0.b)), 0u);
    let var_0 = true;
    global0 = Struct_1(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)) - 193f), 69877u);
    return Struct_1(max(u_input.c, global0.c), global0.b, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, u_input.c << (46029u % 32u)), 57990u));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = func_2();
    global0 = arg_1;
    let var_1 = !(-1142f >= global0.b);
    let var_2 = ~arg_0 > u_input.d;
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - 248f) - arg_1.b))), ~min(abs(~arg_1.a), ~(~0u)));
    return ~(~(~u_input.c));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32) -> f32 {
    global0 = Struct_1(func_4(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mod_i32(4981i, ~u_input.d)), func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - -986f) - -569f)), func_4(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(arg_0, u_input.a.x, 0i, -44517i)), vec4<i32>(arg_0, 0i, 10066i, arg_0) & vec4<i32>(u_input.b.x, 48569i, 2147483647i, 0i)) >> (~reverseBits(u_input.e.x) % 32u), func_2()));
    var var_0 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(firstLeadingBit(vec3<i32>(0i, arg_0, u_input.a.x) ^ u_input.b.zyx) ^ countOneBits(vec3<i32>(2147483647i, u_input.b.x, arg_0) >> (vec3<u32>(0u, u_input.c, 18432u) % vec3<u32>(32u)))), vec3<i32>(arg_0, _wgslsmith_div_i32(arg_0, ~0i & u_input.a.x), _wgslsmith_sub_i32(24189i, _wgslsmith_dot_vec4_i32(u_input.b >> (u_input.e % vec4<u32>(32u)), vec4<i32>(1i, arg_0, u_input.d, arg_0)))), vec3<i32>(_wgslsmith_div_i32(32326i, _wgslsmith_mod_i32(0i, -2147483647i & u_input.a.x)), u_input.d, i32(-1i) * -25276i));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1454f, global0.b))) * -847f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, global0.b, u_input.c);
    let var_0 = global0.c & _wgslsmith_sub_u32(~global0.a, _wgslsmith_add_u32(64821u, global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(-1965f, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-494f, global0.b)))), _wgslsmith_f_op_f32(func_1(firstTrailingBit(u_input.b.x), any(vec3<bool>(false, true, true)), global0.b))), global0.b, global0.b, _wgslsmith_f_op_f32(ceil(2802f))), _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(899f * _wgslsmith_f_op_f32(1000f - global0.b)))), firstLeadingBit(countOneBits(_wgslsmith_add_u32(var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_0), vec2<u32>(4294967295u, 43992u))))));
}

