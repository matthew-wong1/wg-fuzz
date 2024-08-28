struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<f32>) -> vec3<bool> {
    let var_0 = Struct_3(select(!vec2<bool>(true, !arg_1), vec2<bool>(true, true), !vec2<bool>(arg_1, u_input.c < 1i)), Struct_2(u_input.a.x, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.b.x) | ~vec4<u32>(35686u, u_input.b.x, u_input.a.x, u_input.a.x), vec4<u32>(select(42736u, 53387u, arg_1), 4294967295u, u_input.a.x, ~u_input.b.x)), Struct_1(arg_2.x, !vec4<bool>(false, false, arg_1, arg_1)), any(!(!vec4<bool>(arg_1, arg_1, false, arg_1)))), arg_2.x, _wgslsmith_f_op_f32(arg_0.x + 1444f));
    let var_1 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(992f + arg_2.x));
    var var_2 = vec3<u32>(~var_0.b.a, 1u, 13222u);
    var var_3 = Struct_2(_wgslsmith_sub_u32(u_input.a.x, ~var_0.b.b.x), ~vec4<u32>(var_0.b.a, 4294967295u, abs(~0u), ~1u), var_0.b.c, all(var_0.b.c.b) || false);
    global0 = array<vec2<i32>, 9>();
    return !vec3<bool>(select(true, false == var_0.a.x, !arg_1 || (u_input.c <= 19148i)), any(!vec4<bool>(true, var_0.a.x, var_0.b.c.b.x, arg_1)), !arg_1);
}

fn func_2() -> vec3<bool> {
    let var_0 = 46261u;
    var var_1 = Struct_5(-u_input.c, vec2<f32>(1237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1943f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1097f, -2230f, false)) - _wgslsmith_f_op_f32(796f * 1274f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-249f + 278f) - 1499f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1240f))) + 501f))));
    let var_2 = _wgslsmith_f_op_f32(round(1596f));
    var var_3 = select(vec3<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), true)), any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), true), select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), true), !all(vec4<bool>(true, true, true, true))), true);
    var var_4 = firstLeadingBit(-select(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c, var_1.a, -1i)), vec3<i32>(0i, u_input.c, 0i) ^ vec3<i32>(1i, -28209i, var_1.a)), vec3<i32>(var_1.a ^ u_input.c, _wgslsmith_clamp_i32(u_input.c, var_1.a, var_1.a), -u_input.c), select(!vec3<bool>(var_3.x, true, var_3.x), func_3(vec2<f32>(var_2, 307f), true, var_1.b), true)));
    return !vec3<bool>(var_3.x || !all(vec4<bool>(true, false, var_3.x, var_3.x)), !(any(vec2<bool>(var_3.x, var_3.x)) | true), !any(select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(var_3.x, true, false), vec3<bool>(false, true, var_3.x))));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(297f, vec4<bool>(!(true || all(vec2<bool>(true, false))), true, any(vec4<bool>(true, true, true, true)), any(func_2())));
    global0 = array<vec2<i32>, 9>();
    global0 = array<vec2<i32>, 9>();
    return _wgslsmith_clamp_u32(firstTrailingBit(4294967295u | _wgslsmith_mod_u32(reverseBits(u_input.b.x), max(4294967295u, u_input.b.x))), ~408u ^ u_input.b.x, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 9>();
    let var_0 = Struct_5(firstLeadingBit(-22873i) | ~(-_wgslsmith_mult_i32(u_input.c, u_input.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1345f, 568f, true)))), 250f)), -1029f);
    var var_1 = vec2<u32>(u_input.a.x, u_input.a.x) ^ firstTrailingBit(vec2<u32>(0u, ~func_1()));
    var var_2 = vec4<bool>(var_0.a < 76697i, any(vec3<bool>(!all(vec4<bool>(false, true, true, false)), all(vec4<bool>(true, true, true, true)), !func_2().x)), all(vec3<bool>((var_1.x ^ u_input.b.x) == u_input.b.x, _wgslsmith_f_op_f32(-var_0.b.x) == var_0.c, true)), all(vec3<bool>(true, true, true)));
    var var_3 = !(true && any(var_2.xzz));
    var var_4 = 848f;
    var var_5 = ~(~(~min(~vec2<u32>(u_input.b.x, 31687u), u_input.b.xz)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(vec2<i32>(0i, -10156i) ^ global0[_wgslsmith_index_u32(u_input.a.x, 9u)])) & vec2<i32>(var_0.a, -(~0i)), _wgslsmith_f_op_f32(ceil(var_0.b.x)), ~0u);
}

