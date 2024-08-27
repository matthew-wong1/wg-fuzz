struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<bool, 29>;

var<private> global2: Struct_2 = Struct_2(-1342f, true, Struct_1(14253u), Struct_1(11130u), vec2<u32>(72722u, 743u));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> f32 {
    global2 = Struct_2(472f, global2.a == -132f, Struct_1(~(_wgslsmith_div_u32(arg_0.c.a, arg_1.a) >> (~13538u % 32u))), arg_1, _wgslsmith_sub_vec2_u32(u_input.c.yx, _wgslsmith_clamp_vec2_u32(vec2<u32>(54707u, 1u), countOneBits(vec2<u32>(0u, 4294967295u)), ~global2.e)));
    global2 = arg_0.b;
    var var_0 = _wgslsmith_dot_vec2_u32(arg_0.b.e, firstTrailingBit(_wgslsmith_mult_vec2_u32(global2.e | countOneBits(vec2<u32>(global2.e.x, global2.d.a)), vec2<u32>(_wgslsmith_mod_u32(0u, u_input.c.x), u_input.c.x))));
    global0 = vec3<bool>(global2.b, true, global2.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a * arg_0.b.a));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(28159u);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a, -1166f, 540f, -1786f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, global2.a, global2.a, -531f) + vec4<f32>(global2.a, 253f, 1000f, global2.a))))) * vec4<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(-35639i, Struct_2(2654f, global0.x, global2.d, Struct_1(var_0.a), global2.e), Struct_1(32818u)), global2.d)) * _wgslsmith_f_op_f32(-global2.a)))), _wgslsmith_f_op_f32(f32(-1f) * -2124f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.a, -1272f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_1), var_1));
    var var_3 = !vec3<bool>(false, all(!(!vec4<bool>(global1[_wgslsmith_index_u32(21781u, 29u)], true, global0.x, global2.b))), 0u >= ~global2.d.a);
    var var_4 = -(~u_input.a);
    return Struct_2(_wgslsmith_f_op_f32(-global2.a), true, Struct_1(~(~max(4294967295u, u_input.d))), Struct_1(1u), _wgslsmith_mult_vec2_u32(~u_input.b, min(countOneBits(global2.e) | _wgslsmith_sub_vec2_u32(global2.e, vec2<u32>(global2.e.x, u_input.d)), global2.e)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>) -> vec2<bool> {
    var var_0 = arg_0.wx;
    global2 = func_2();
    let var_1 = func_2().d;
    let var_2 = func_2().d;
    let var_3 = Struct_1(0u);
    return global0.yz;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<bool>) -> vec3<f32> {
    var var_0 = Struct_3(firstLeadingBit(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a, u_input.a, 1i), ~vec3<i32>(-9351i, 42742i, u_input.a))), global2.d, func_2().c, Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-710f)))), false, global2.d, global2.d, vec2<u32>(reverseBits(25111u), _wgslsmith_add_u32(~global2.e.x, arg_1.x))));
    var var_1 = max(select(firstTrailingBit(vec4<i32>(var_0.a.x, ~u_input.a, 17203i | var_0.a.x, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(~0i, countOneBits(u_input.a), countOneBits(var_0.a.x), -1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -2147483647i, -2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, -24173i)) | ~vec4<i32>(3758i, u_input.a, u_input.a, u_input.a)), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 2827f, arg_0, arg_0))), vec4<f32>(-467f, _wgslsmith_f_op_f32(global2.a + arg_0), arg_0, _wgslsmith_f_op_f32(var_0.d.a + -1524f))).x), vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_clamp_i32(-55139i, 1i, var_0.a.x), ~var_0.a.x, u_input.a, 1i));
    var var_2 = var_0.c;
    global0 = select(select(vec3<bool>(var_0.d.b, !arg_2.x, true), vec3<bool>(!all(arg_2), true, var_0.d.b), select(!vec3<bool>(false, true, global1[_wgslsmith_index_u32(var_2.a, 29u)]), select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.d.c.a, 29u)], var_0.d.b), vec3<bool>(global0.x, arg_2.x, true), vec3<bool>(false, true, false)), select(vec3<bool>(var_0.d.b, false, arg_2.x), vec3<bool>(arg_2.x, global0.x, true), vec3<bool>(false, true, global0.x)), !vec3<bool>(var_0.d.b, false, var_0.d.b)), func_2().b)), vec3<bool>(global2.b, !any(!vec4<bool>(true, var_0.d.b, arg_2.x, false)), (firstLeadingBit(var_0.a.x) ^ var_0.a.x) < var_0.a.x), true);
    global1 = array<bool, 29>();
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(353f)), global2.a, _wgslsmith_f_op_f32(floor(var_0.d.a))), vec3<f32>(-1000f, global2.a, _wgslsmith_f_op_f32(var_0.d.a + 1318f))) - vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1843f * -1000f), 1089f)), _wgslsmith_f_op_f32(ceil(var_0.d.a)), global2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1449f;
    var var_1 = global2.d;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(-global2.a), firstTrailingBit(u_input.c), func_1(vec4<f32>(-1000f, global2.a, 1469f, global2.a), vec4<f32>(global2.a, -706f, -679f, global2.a)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, global2.a, global2.a) * vec3<f32>(-306f, global2.a, global2.a)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-444f, -644f, global2.a)), vec3<f32>(-2111f, -682f, 310f)))))), global2.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(914f, var_2.x)))))), var_1.a, _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(30798i, u_input.a, -1i) ^ vec3<i32>(2147483647i, -38396i, 22010i), vec3<i32>(11283i, u_input.a, -42411i)), -16458i));
}

