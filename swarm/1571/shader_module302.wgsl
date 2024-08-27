struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(16381i, 16575i, -1i, 1i, 1i, 52554i, -1i, 0i, -8974i, 2147483647i, -1i, 1i, -15644i, 0i, 1i, i32(-2147483648), i32(-2147483648), 0i, 2147483647i, 9637i, 67288i, -1i);

var<private> global1: vec3<f32> = vec3<f32>(-976f, -1000f, -173f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    let var_0 = u_input.a;
    var var_1 = false;
    var var_2 = Struct_2(select(var_0.x, 0u, -32084i < _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(1u, 22u)], 2147483647i)), Struct_1(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, 554f), vec2<f32>(277f, global1.x)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1111f, global1.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1057f, global1.x)))), all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true))), firstLeadingBit(_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(var_0.x, 1u, var_0.x, u_input.a.x))) & 1u), Struct_1(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), true != all(vec2<bool>(true, true))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-587f)), -1222f), true, ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)));
    var var_3 = Struct_1(!select(!(!vec3<bool>(var_2.c.a.x, true, var_2.b.c)), vec3<bool>(var_2.b.c, global0[_wgslsmith_index_u32(u_input.b.x, 22u)] != global0[_wgslsmith_index_u32(1u, 22u)], all(vec2<bool>(var_2.c.a.x, var_2.b.c))), var_0.x >= ~9023u), vec2<f32>(-1250f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.c.b.x)))), true && var_2.c.a.x, 1u);
    var_1 = all(!(!var_2.b.a)) && !any(vec4<bool>(false, var_2.b.a.x, false, var_2.b.c));
    return _wgslsmith_sub_i32(min(~(-10322i), 24375i), 3960i);
}

fn func_2(arg_0: Struct_3) -> u32 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, -538f, -611f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(666f, -683f, -980f) * vec3<f32>(185f, 931f, global1.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, global1.x, 1313f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)), all(vec4<bool>(false, true, true, false))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1370f, 1000f, global1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1133f, -311f)))))));
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.yy), u_input.c.yx, false) & u_input.c.zy, ~(~vec2<i32>(u_input.c.x, 0i) >> (u_input.a.xw % vec2<u32>(32u)))), func_3());
    var var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), 540f), Struct_3(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(arg_0.a.x, u_input.a.x)), u_input.b.zy)));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(sign(106f)))))), -254f, var_1.a.x);
    var var_2 = var_1.a.x;
    return 0u;
}

fn func_4(arg_0: u32) -> f32 {
    let var_0 = Struct_2(4294967295u, Struct_1(vec3<bool>(true, true, true), vec2<f32>(global1.x, 881f), true, arg_0), Struct_1(select(vec3<bool>(any(vec2<bool>(true, true)), true, true), vec3<bool>(u_input.e != 0u, true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), false)), vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(154f, 642f, false)))), true, 4294967295u));
    let var_1 = select(select(!select(var_0.c.a, var_0.c.a, !vec3<bool>(var_0.b.a.x, true, var_0.b.c)), vec3<bool>(any(vec2<bool>(true, true)), var_0.b.c, any(select(vec4<bool>(false, false, false, var_0.c.a.x), vec4<bool>(var_0.c.c, var_0.c.c, var_0.c.a.x, var_0.b.a.x), true))), !(!var_0.c.a.x)), vec3<bool>(28768u >= arg_0, any(vec3<bool>(false, true, 1590f <= var_0.c.b.x)), true), any(vec2<bool>(true, true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(309f + global1.x));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 644f, -231f) + vec3<f32>(1000f, var_2, var_2)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, global1.x, -411f))), !var_0.b.a)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(549f, var_0.b.b.x, -127f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b.x))));
}

fn func_1() -> StorageBuffer {
    global1 = vec3<f32>(_wgslsmith_div_f32(651f, 2420f), _wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(func_4(_wgslsmith_add_u32(~func_2(Struct_3(vec2<u32>(14086u, 0u))), _wgslsmith_add_u32(u_input.b.x, u_input.a.x)))));
    var var_0 = Struct_1(!select(select(vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), any(vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(select(global1.yy, global1.zy, !(!all(vec3<bool>(false, false, true))))), ~_wgslsmith_div_u32(~u_input.b.x, u_input.a.x) != u_input.d, ~_wgslsmith_clamp_u32(u_input.a.x, 16144u >> (firstTrailingBit(u_input.b.x) % 32u), u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(global1.xy, global1.xz)))), var_0.b)), var_0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, var_0.b.x))))) - vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(681f - global1.x)), _wgslsmith_f_op_f32(-var_0.b.x)))));
    return StorageBuffer(firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c.x, -1i), global0[_wgslsmith_index_u32(15027u ^ u_input.b.x, 22u)]), max(1i, -39548i) | global0[_wgslsmith_index_u32(u_input.d ^ 1u, 22u)], -2147483647i, u_input.c.x)), _wgslsmith_clamp_vec4_i32(max(-vec4<i32>(1i, global0[_wgslsmith_index_u32(48642u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], -1i), vec4<i32>(_wgslsmith_add_i32(u_input.c.x, -21770i), countOneBits(2481i), -1i, min(-12839i, global0[_wgslsmith_index_u32(4294967295u, 22u)]))), firstTrailingBit(~(-vec4<i32>(2147483647i, 2600i, u_input.c.x, 1i))), vec4<i32>(~global0[_wgslsmith_index_u32(var_0.d, 22u)] | abs(2147483647i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), u_input.c.xx), ~u_input.c.x), countOneBits(global0[_wgslsmith_index_u32(var_0.d, 22u)]) >> (~19233u % 32u), u_input.c.x ^ 2147483647i)), ~vec4<u32>(~u_input.a.x, var_0.d, _wgslsmith_sub_u32(~var_0.d, 0u << (var_0.d % 32u)), 20050u), min(var_0.d, ~0u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

