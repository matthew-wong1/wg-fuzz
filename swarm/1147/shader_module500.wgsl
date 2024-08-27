struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = abs(reverseBits(u_input.a));
    global0 = array<vec3<bool>, 16>();
    var_0 = ~min(countOneBits(~0u), _wgslsmith_clamp_u32(max(115399u, u_input.a), 26993u, 4294967295u)) ^ 3813u;
    let var_1 = select(!vec2<bool>(true, select(true, arg_0, !arg_0)), vec2<bool>(!select(arg_0, all(vec2<bool>(false, arg_0)), arg_0 || true), arg_0), all(global0[_wgslsmith_index_u32(4294967295u, 16u)]));
    var var_2 = countOneBits(u_input.b);
    return _wgslsmith_f_op_f32(f32(-1f) * -748f);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(arg_0.a, arg_0.b | vec3<i32>(~firstTrailingBit(arg_0.b.x), 0i, 38907i));
    let var_1 = _wgslsmith_f_op_f32(step(-611f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0.a.b)) * 1171f)))))));
    global0 = array<vec3<bool>, 16>();
    var_0 = Struct_2(arg_0.a, arg_0.b);
    global0 = array<vec3<bool>, 16>();
    return Struct_2(Struct_1(vec2<u32>(~arg_0.a.a.x, 1u), all(!vec2<bool>(var_0.a.b, arg_0.a.b))), -vec3<i32>(1i, arg_0.b.x, var_0.b.x));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -350f);
    let var_1 = global0[_wgslsmith_index_u32(24133u, 16u)];
    global0 = array<vec3<bool>, 16>();
    var var_2 = var_1.xy;
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(-var_0) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-638f - var_0)))), true, false, !(!all(vec3<bool>(false, false, var_2.x))));
    return func_2(Struct_2(Struct_1(vec2<u32>(u_input.a, ~u_input.b.x), var_1.x), firstLeadingBit(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(12287i, 1i, 0i)), vec3<i32>(1i, 1i, 1i)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2, arg_3: vec3<f32>) -> vec3<bool> {
    global0 = array<vec3<bool>, 16>();
    let var_0 = 36225u;
    let var_1 = arg_3;
    var var_2 = Struct_2(arg_2.a, ~(-(-vec3<i32>(arg_2.b.x, 34997i, arg_2.b.x) & _wgslsmith_clamp_vec3_i32(arg_2.b, vec3<i32>(arg_2.b.x, 10526i, arg_2.b.x), arg_2.b))));
    return select(!global0[_wgslsmith_index_u32(4294967295u << (arg_2.a.a.x % 32u), 16u)], !global0[_wgslsmith_index_u32(1u, 16u)], func_1().a.b);
}

fn func_5(arg_0: vec3<bool>) -> f32 {
    global0 = array<vec3<bool>, 16>();
    global0 = array<vec3<bool>, 16>();
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(820f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f))), _wgslsmith_f_op_f32(274f + _wgslsmith_f_op_f32(round(-394f))), all(!(!select(vec3<bool>(arg_0.x, true, true), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true))))));
    global0 = array<vec3<bool>, 16>();
    var var_1 = Struct_1(vec2<u32>(u_input.a, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, u_input.b.x), 4294967295u, 4294967295u) & ~153u), !any(vec3<bool>(func_1().a.b, true, arg_0.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-290f, var_0), 1170f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(683f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(925f)))) - _wgslsmith_f_op_f32(ceil(-469f)))), _wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(557f, 868f), vec2<f32>(2306f, -239f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-874f, 2151f) - vec2<f32>(-206f, 549f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(950f, -855f)), func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-799f, -614f, -528f))))))), 64473u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -605f)), _wgslsmith_f_op_f32(min(205f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-682f, -1000f)))))), _wgslsmith_clamp_i32(21189i, 2147483647i, ~func_2(Struct_2(Struct_1(u_input.b.yx, true), vec3<i32>(36613i, 27442i, 2147483647i))).b.x));
}

