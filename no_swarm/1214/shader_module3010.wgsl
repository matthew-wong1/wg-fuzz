struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_4,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(234f, 947f, 205f), vec3<f32>(-220f, 689f, 517f));

var<private> global2: array<vec4<u32>, 25>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = u_input.a.x;
    let var_1 = arg_0.c.a;
    return false;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = ~reverseBits(~(~(arg_2.b ^ arg_2.b)));
    var var_1 = !(false && !select(true, false, true));
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_2.d))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-124f, arg_3)) * vec2<f32>(-1458f, arg_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-267f, _wgslsmith_div_f32(362f, arg_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_0))))), Struct_4(arg_2, func_3(Struct_3(global2[_wgslsmith_index_u32(var_0, 25u)], -1802f, Struct_2(arg_0, vec4<bool>(true, false, false, true), true, arg_1), Struct_2(arg_2.d, vec4<bool>(true, true, false, false), true, vec3<u32>(global0.x, 4294967295u, global0.x)), arg_2.a.x)) & !any(vec3<bool>(false, true, false))), any(vec4<bool>(!func_3(Struct_3(global2[_wgslsmith_index_u32(48635u, 25u)], 714f, Struct_2(1772f, vec4<bool>(false, true, false, true), true, vec3<u32>(arg_1.x, arg_1.x, 2462u)), Struct_2(177f, vec4<bool>(true, true, false, true), true, vec3<u32>(0u, u_input.a.x, 1u)), arg_2.c.x)), true, true, all(vec2<bool>(true, true)))), Struct_2(arg_2.d, vec4<bool>(true, false, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), true || select(true, arg_3 != 842f, false), vec3<u32>(abs(~u_input.a.x), arg_1.x, global0.x)));
    global1 = array<vec3<f32>, 2>();
    var_1 = true;
    return _wgslsmith_f_op_f32(floor(arg_2.d));
}

fn func_1() -> Struct_4 {
    var var_0 = -2147483647i;
    var_0 = 60309i;
    global2 = array<vec4<u32>, 25>();
    global2 = array<vec4<u32>, 25>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-175f, vec3<u32>(u_input.a.x, 42101u, 4294967295u), Struct_1(vec2<i32>(0i, 23429i), 12109u, vec4<i32>(2147483647i, -1i, 2147483647i, 3367i), 526f), -1316f)) - -585f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(512f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(973f + 2314f) - -482f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f)))));
    return Struct_4(Struct_1(~(-vec2<i32>(-2147483647i, -2147483647i)) >> (~vec2<u32>(global0.x, u_input.a.x) % vec2<u32>(32u)), u_input.a.x, _wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -22204i, firstTrailingBit(45964i), -1i << (1u % 32u), 23338i << (global0.x % 32u)), vec4<i32>(-1i) * -vec4<i32>(-20832i, 0i, -34587i, -9648i), -vec4<i32>(21158i, 18688i, 6794i, -38923i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-484f, _wgslsmith_f_op_f32(max(170f, 1178f))))))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_1().a;
    let var_2 = _wgslsmith_mod_u32(min(1u, 0u >> (0u % 32u)), ~75180u | ~var_0.a.b);
    let var_3 = 155f;
    global1 = array<vec3<f32>, 2>();
    let var_4 = !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(!var_0.b, var_0.a.d < 726f), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(var_0.b, var_0.b)), !vec2<bool>(var_0.b, true), true)), var_0.b);
    var var_5 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3 * -455f)));
    var var_6 = Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_3)))), _wgslsmith_f_op_f32(-func_1().a.d))), Struct_4(func_1().a, select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.b), global0.zz) >= 6211u, !(var_4.x & true), var_0.b)), all(select(var_4, !select(vec2<bool>(true, false), vec2<bool>(true, var_4.x), vec2<bool>(var_0.b, true)), func_1().b)), Struct_2(_wgslsmith_f_op_f32(-342f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.d * 310f), _wgslsmith_f_op_f32(-var_0.a.d), false))), !(!(!vec4<bool>(true, var_4.x, var_4.x, true))), !(!all(var_4)), max(vec3<u32>(4294967295u, u_input.a.x, 27353u) & firstLeadingBit(vec3<u32>(var_0.a.b, 42268u, 4294967295u)), abs(countOneBits(vec3<u32>(var_2, var_1.b, 65053u))))));
    var_5 = -2168f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-var_0.a.c.x, -17389i), var_0.a.d, -_wgslsmith_dot_vec3_i32(abs(var_1.c.wzx) >> ((vec3<u32>(16843u, 22646u, 39665u) >> (var_6.d.d % vec3<u32>(32u))) % vec3<u32>(32u)), var_6.b.a.c.wxz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(108f + -740f)));
}

