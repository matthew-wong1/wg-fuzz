struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<f32>, 22>;

var<private> global2: vec4<f32> = vec4<f32>(-1618f, 1000f, 1031f, -641f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, global0.b.a, 1i, -13735i), max(-vec4<i32>(-20422i, u_input.b, -1i, u_input.b), vec4<i32>(global0.d.a, -2147483647i, global0.b.a, 13648i) | vec4<i32>(u_input.b, global0.a, -2147483647i, 12293i)), vec4<i32>(1i, 0i << (global0.e.x % 32u), global0.b.a, global0.d.a | global0.a)), -vec4<i32>(0i, global0.b.a << (121401u % 32u), 0i << (global0.e.x % 32u), min(u_input.b, global0.b.a))), abs(~vec4<i32>(global0.d.a << (global0.e.x % 32u), firstLeadingBit(global0.d.a), global0.b.a ^ u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.b.a, 29872i, u_input.a), vec4<i32>(u_input.a, 46762i, -2147483647i, -2147483647i)))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -114f)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1208f, 361f)))))));
    global1 = array<vec3<f32>, 22>();
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1130f, _wgslsmith_f_op_f32(sign(-124f)))))), global2.x, -368f)));
    global1 = array<vec3<f32>, 22>();
    return _wgslsmith_mod_i32(-(-11361i << (firstTrailingBit(46864u) % 32u)), ~u_input.b);
}

fn func_2() -> Struct_1 {
    var var_0 = !vec4<bool>(true, !(min(u_input.b, u_input.b) >= -33506i), any(vec3<bool>(false, true, global2.x <= 590f)), false);
    return Struct_1(~func_3());
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: bool, arg_3: bool) -> i32 {
    global0 = Struct_2(-16597i, global0.c, func_2(), global0.c, firstTrailingBit(vec2<u32>(~(global0.e.x << (0u % 32u)), ~max(68700u, 28138u))));
    let var_0 = vec4<f32>(-511f, _wgslsmith_f_op_f32(f32(-1f) * -1093f), -611f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1805f))) - -220f)));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(global0.e.x, _wgslsmith_clamp_u32(~countOneBits(1u), max(global0.e.x, _wgslsmith_mult_u32(global0.e.x, 1u)), global0.e.x)), global0.e);
    let var_2 = Struct_1(~arg_0.x);
    return ~2147483647i;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = false;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.a.x)), -982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x))), _wgslsmith_f_op_f32(round(global2.x))) * arg_2.a));
    global1 = array<vec3<f32>, 22>();
    var var_3 = Struct_1(var_0.a);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), (_wgslsmith_f_op_f32(-278f - global2.x) > 164f) && !(741f > global2.x), true, true);
    let var_1 = vec2<f32>(936f, -1444f);
    global1 = array<vec3<f32>, 22>();
    let var_2 = func_4(Struct_2(abs(func_1(vec3<i32>(global0.a, 0i, 1i), var_0.xy, var_0.x, var_0.x)) >> (global0.e.x % 32u), Struct_1(u_input.a), Struct_1(-30297i), Struct_1(2147483647i), ~_wgslsmith_mult_vec2_u32(vec2<u32>(50874u, global0.e.x) | global0.e, global0.e | global0.e)), !var_0.x, Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, var_1.x, 930f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1018f, global2.x, -418f, 352f), vec4<f32>(-732f, global2.x, -1739f, global2.x), var_0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, global2.x, 1546f, global2.x), vec4<f32>(var_1.x, -368f, global2.x, var_1.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1715f, -503f, global2.x, 2494f))))), _wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(33757u, global0.e.x)) | firstLeadingBit(vec2<u32>(global0.e.x, 36705u)), vec2<u32>(_wgslsmith_mod_u32(~1u, 30064u), _wgslsmith_dot_vec2_u32(global0.e, vec2<u32>(4294967295u, 1u)) | _wgslsmith_mod_u32(62892u, 4294967295u)), global0.e));
    let var_3 = countOneBits(~vec4<i32>(-91346i, -4221i, ~0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, 1i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 21312i, global0.b.a), vec4<i32>(10414i, var_2.d.a, var_2.c.a, var_2.b.a)))));
    let var_4 = func_2();
    var var_5 = 9086u;
    var var_6 = Struct_1(~firstTrailingBit(u_input.a ^ global0.a));
    var var_7 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(446f - global2.x), _wgslsmith_f_op_f32(f32(-1f) * -1037f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -264f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1091f, global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-847f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(690f * -588f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(834f - -1670f), 21560u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(525f + global2.x))), -1260f));
}

