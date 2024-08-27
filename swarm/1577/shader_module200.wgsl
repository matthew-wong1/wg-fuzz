struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 33455u;

var<private> global1: vec4<f32> = vec4<f32>(736f, 1193f, 1607f, 2365f);

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_3, 10>;

var<private> global4: u32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -127f));
    let var_1 = arg_0.d;
    global0 = ~(~u_input.a & 0u);
    global3 = array<Struct_3, 10>();
    let var_2 = !(~0i == reverseBits(arg_0.c.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - var_1), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
}

fn func_3() -> vec2<u32> {
    var var_0 = select(any(vec2<bool>(true && (u_input.b.x <= u_input.b.x), all(vec4<bool>(true, true, true, true)))), global2.x != _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i), global2.wx), (u_input.b.x >> (4294967295u % 32u)) >> (u_input.a % 32u)), false);
    global4 = select(0u, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(1u, u_input.a, 4294967295u), vec3<bool>(false, false, false)) << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, 27476u, u_input.a)) % vec3<u32>(32u)), vec3<u32>(reverseBits(6730u), u_input.a, 4294967295u >> (u_input.a % 32u))), select(false, all(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), true));
    let var_1 = global1.x;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) - _wgslsmith_f_op_f32(-1598f - 435f)))), _wgslsmith_f_op_f32(floor(global1.x)))), abs(~(~1u)));
    var var_3 = Struct_3(Struct_1(true, ~vec2<u32>(var_2.b ^ var_2.b, 0u ^ var_2.b), abs(vec3<i32>(u_input.b.x, 32244i, u_input.b.x)) & global2.xww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(false, vec2<u32>(1u, 0u), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), global1.x, 138418u)))), u_input.a), global1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global1.ww, vec2<f32>(global1.x, 561f))) * global1.yw)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a | abs(1u), _wgslsmith_clamp_u32(~0u, 7810u, ~4294967295u)), var_2.b));
    return vec2<u32>(~u_input.a, var_2.b);
}

fn func_2() -> f32 {
    let var_0 = Struct_3(Struct_1(true || any(vec4<bool>(false, true, false, false)), func_3(), vec3<i32>(u_input.b.x >> (u_input.a % 32u), u_input.b.x, 8030i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-300f)) + _wgslsmith_f_op_f32(min(430f, global1.x)))), ~1u), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2433f - global1.x))), 1244f), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-520f, global1.x)))) - vec2<f32>(_wgslsmith_f_op_f32(abs(931f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), select(u_input.a | ~u_input.a, ~u_input.a, true));
    var var_1 = _wgslsmith_f_op_f32(-453f * _wgslsmith_f_op_f32(func_1(var_0.a)));
    let var_2 = global2.x;
    let var_3 = var_0.a.d;
    var var_4 = vec3<u32>(67180u, var_0.d, u_input.a);
    return 128f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_div_f32(-134f, _wgslsmith_div_f32(-541f, global1.x))) + _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(func_1(Struct_1(false, vec2<u32>(u_input.a, u_input.a), vec3<i32>(u_input.b.x, u_input.b.x, -19528i), global1.x, 1u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global1.x)))))), -409f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) + global1.x));
    global3 = array<Struct_3, 10>();
    let var_0 = !select(select(vec3<bool>(any(vec3<bool>(false, false, true)), true, true), vec3<bool>(false, true, 105f < global1.x), ~u_input.b.x >= firstTrailingBit(u_input.b.x)), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), select(vec3<bool>(global1.x > global1.x, true, all(vec3<bool>(true, true, true))), vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), u_input.a <= u_input.a)));
    var var_1 = firstLeadingBit(abs(~(~vec3<u32>(u_input.a, u_input.a, u_input.a))));
    global4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 21403u, 1u), vec3<u32>(4294967295u, 49663u, u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_1.x), var_1.yx), reverseBits(u_input.a), firstTrailingBit(81966u))), u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.x, -1000f))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -924f)), -1116f) - vec4<f32>(2303f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x * 1550f))), global1.x)), ~min(~(var_1.x >> (138658u % 32u)), var_1.x));
}

