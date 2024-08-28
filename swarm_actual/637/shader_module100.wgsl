struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(0i, i32(-2147483648), 1i, 1i), vec4<i32>(-1i, 2147483647i, 2147483647i, 0i));

var<private> global1: vec3<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> u32 {
    global1 = arg_0.b.yzw;
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, 46305u) & ~_wgslsmith_add_u32(_wgslsmith_div_u32(arg_1.a.x, arg_1.a.x), _wgslsmith_sub_u32(u_input.b.x, 4294967295u)), 0u);
    let var_1 = arg_1;
    let var_2 = Struct_1(reverseBits(~vec3<u32>(84997u, 47520u & arg_0.a.x, _wgslsmith_sub_u32(u_input.b.x, arg_0.a.x))), !(!select(!arg_0.b, !arg_1.b, false)), -39166i, firstTrailingBit(_wgslsmith_div_i32(arg_0.c, -arg_1.c) | (i32(-1i) * -1i)), !vec3<bool>(false || any(vec3<bool>(true, true, global1.x)), true, true));
    global0 = array<vec4<i32>, 2>();
    return ~reverseBits(u_input.b.x & max(~13373u, var_0.x));
}

fn func_2() -> f32 {
    let var_0 = u_input.b.yx;
    let var_1 = Struct_2(Struct_1(vec3<u32>(u_input.b.x, func_3(Struct_1(u_input.b, vec4<bool>(global1.x, global1.x, global1.x, false), 71406i, u_input.a.x, vec3<bool>(false, global1.x, false)), Struct_1(u_input.b, vec4<bool>(global1.x, true, global1.x, global1.x), u_input.a.x, -1i, vec3<bool>(false, global1.x, false)), 1i, -2173f), reverseBits(~0u)), !(!select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(false, false, global1.x, true), vec4<bool>(global1.x, global1.x, true, global1.x))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x)) | _wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(u_input.b.x, 2u)], u_input.a), ~global0[_wgslsmith_index_u32(1u, 2u)]), abs(~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), !select(!vec3<bool>(global1.x, true, true), !vec3<bool>(global1.x, false, global1.x), select(vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, global1.x, false)))));
    global1 = vec3<bool>(all(var_1.a.e), global1.x, var_1.a.e.x);
    let var_2 = (select(vec4<i32>(35051i, var_1.a.c, 0i & var_1.a.c, var_1.a.c | var_1.a.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a.c, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a >> (vec4<u32>(var_1.a.a.x, u_input.b.x, 10205u, var_0.x) % vec4<u32>(32u)), firstTrailingBit(global0[_wgslsmith_index_u32(var_0.x, 2u)])), all(vec4<bool>(var_1.a.b.x, global1.x, global1.x, false))) | _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -48445i, 26956i, _wgslsmith_sub_i32(-1i, 1i)), vec4<i32>(_wgslsmith_div_i32(u_input.a.x, var_1.a.d), ~(-2147483647i), ~u_input.a.x, u_input.a.x))) << (~(~min(vec4<u32>(var_1.a.a.x, var_0.x, var_0.x, 11905u), vec4<u32>(35651u, 75486u, 48347u, 42299u)) >> (max(max(vec4<u32>(54276u, u_input.b.x, 0u, 4294967295u), vec4<u32>(var_1.a.a.x, 0u, u_input.b.x, u_input.b.x)), max(vec4<u32>(var_1.a.a.x, 7264u, var_1.a.a.x, 0u), vec4<u32>(var_0.x, 0u, 0u, var_1.a.a.x))) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = array<vec4<i32>, 2>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1702f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1166f * -1286f))), all(!global1.xz)))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.x, _wgslsmith_f_op_f32(-1564f + _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_0.x) - _wgslsmith_f_op_f32(step(1734f, -1000f))))));
    var_0 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1804f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-454f - arg_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-131f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -437f)))));
    let var_1 = _wgslsmith_mult_i32(25040i, u_input.a.x);
    let var_2 = ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, abs(u_input.b.x << (56163u % 32u)), u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, ~7511u, ~abs(u_input.b.x)));
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -1000f)), _wgslsmith_dot_vec3_i32(~(-u_input.a.yyw), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), u_input.a.wxy)) < -(var_1 << (min(0u, var_2.x) % 32u))));
    return Struct_1(abs(firstTrailingBit(firstLeadingBit(vec3<u32>(u_input.b.x, 1u, 32433u)))), !vec4<bool>(global1.x, global1.x, global1.x, true), -1i, 54843i, !(!vec3<bool>(global1.x, false & global1.x, all(vec3<bool>(true, global1.x, global1.x)))));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_3) -> f32 {
    var var_0 = ~abs(_wgslsmith_add_u32(~arg_1, arg_2.a.a.a.x));
    global1 = arg_2.a.a.b.wzx;
    global0 = array<vec4<i32>, 2>();
    var var_1 = !select(!(!(!arg_2.a.a.b)), vec4<bool>(arg_2.a.a.b.x, all(vec4<bool>(true, false, global1.x, arg_2.a.a.b.x)), min(arg_1, arg_2.a.a.a.x) < (17124u >> (1u % 32u)), any(arg_2.a.a.e)), arg_2.a.a.e.x);
    var_1 = vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.b))))) != _wgslsmith_f_op_f32(arg_2.b * -402f), any(global1.yz), _wgslsmith_clamp_u32(28321u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u), u_input.b), 0u) < arg_1, false);
    return _wgslsmith_f_op_f32(step(1341f, arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(-65004i, u_input.b.x, Struct_3(Struct_2(func_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, -368f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-509f)) - -1474f)))));
    let var_1 = !select(_wgslsmith_f_op_f32(round(-998f)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(563f)))), any(func_1(_wgslsmith_div_vec2_f32(vec2<f32>(-352f, 736f), vec2<f32>(810f, -1000f))).e), true);
    global1 = vec3<bool>(!var_1, all(!select(global1.zz, global1.xx, global1.x)) && all(select(select(vec4<bool>(var_1, global1.x, false, var_1), vec4<bool>(false, false, var_1, var_1), vec4<bool>(false, false, var_1, false)), !vec4<bool>(false, global1.x, global1.x, var_1), select(vec4<bool>(false, false, false, true), vec4<bool>(global1.x, global1.x, var_1, false), true))), false);
    global0 = array<vec4<i32>, 2>();
    var var_2 = u_input.b.xx;
    global1 = vec3<bool>(~1u == u_input.b.x, false, true);
    var_2 = u_input.b.zx;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(497f + -213f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -333f), _wgslsmith_f_op_f32(-415f + -157f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(vec2<f32>(_wgslsmith_f_op_f32(step(-535f, _wgslsmith_div_f32(1865f, -1009f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(360f, -521f))))).a.yx, ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(0u, 4294967295u), u_input.b.x << (1u % 32u), 4294967295u, 25361u), countOneBits(~vec4<u32>(u_input.b.x, 1u, 77200u, var_2.x))));
}

