struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(0u, 47838u, 1u, 93434u), vec4<u32>(1u, 1u, 48709u, 1u), vec4<u32>(0u, 0u, 0u, 45658u), vec4<u32>(4294967295u, 1u, 0u, 22361u), vec4<u32>(5801u, 4294967295u, 5773u, 8781u), vec4<u32>(0u, 28809u, 94945u, 59018u), vec4<u32>(41804u, 1u, 19528u, 48769u), vec4<u32>(0u, 1u, 5722u, 14820u), vec4<u32>(3932u, 1u, 0u, 0u), vec4<u32>(28000u, 1u, 1u, 1u), vec4<u32>(45425u, 0u, 24289u, 39105u), vec4<u32>(40625u, 0u, 126476u, 4294967295u), vec4<u32>(31461u, 69881u, 36611u, 6328u), vec4<u32>(7843u, 1u, 1u, 0u), vec4<u32>(76600u, 91405u, 27236u, 76559u), vec4<u32>(1u, 6189u, 10674u, 0u), vec4<u32>(4294967295u, 7511u, 0u, 4294967295u), vec4<u32>(1u, 78139u, 4294967295u, 0u), vec4<u32>(5161u, 1u, 0u, 1u), vec4<u32>(4294967295u, 55265u, 31999u, 51300u));

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 18>;

var<private> global3: array<vec2<u32>, 25>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<u32> {
    global2 = array<vec4<f32>, 18>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-947f * -792f), -1000f)))))) * -315f);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_0, 1375f, -206f), vec3<f32>(var_0, -1000f, var_0))))) * vec3<f32>(_wgslsmith_f_op_f32(var_0 * -571f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0))), 497f)));
    global2 = array<vec4<f32>, 18>();
    var var_2 = Struct_1(countOneBits(_wgslsmith_clamp_i32(global1.a, ~_wgslsmith_clamp_i32(global1.a, global1.a, global1.a), abs(4006i) >> (~4294967295u % 32u))), _wgslsmith_div_vec3_u32(min(abs(vec3<u32>(4294967295u, 0u, u_input.a)), max(vec3<u32>(0u, 92351u, u_input.a), global1.b)) ^ ~global1.b, global1.b));
    return ~abs(vec3<u32>(5832u, countOneBits(var_2.b.x), global1.b.x) >> (var_2.b % vec3<u32>(32u)));
}

fn func_2(arg_0: i32, arg_1: i32) -> vec2<i32> {
    global2 = array<vec4<f32>, 18>();
    var var_0 = Struct_1(-45926i, vec3<u32>(_wgslsmith_dot_vec3_u32(min(func_3(), ~vec3<u32>(94696u, global1.b.x, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.b.x, u_input.a, global1.b.x) | global1.b, vec3<u32>(1u, u_input.a, 49877u))), 46246u, _wgslsmith_add_u32(~(u_input.a ^ u_input.a), func_3().x)));
    var var_1 = u_input.a;
    var_0 = Struct_1(_wgslsmith_mult_i32(max(arg_1, _wgslsmith_div_i32(arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, global1.a), vec2<i32>(var_0.a, 20160i)))), 83417i), var_0.b);
    var_1 = _wgslsmith_mult_u32(global1.b.x, max(~firstLeadingBit(var_0.b.x), ~global1.b.x) >> (u_input.a % 32u));
    return vec2<i32>(~firstLeadingBit(_wgslsmith_mod_i32(-2147483647i, reverseBits(arg_0))), max(_wgslsmith_div_i32(-24667i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_1, 1i, -2147483647i) ^ vec4<i32>(-26778i, global1.a, arg_1, 0i), vec4<i32>(arg_1, 2147483647i, arg_0, arg_0))), _wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(23029i, -30267i, arg_1, -2147483647i)), abs(min(vec4<i32>(arg_0, -1i, -42768i, -26089i), vec4<i32>(-38704i, var_0.a, 52436i, 1i))))));
}

fn func_1() -> Struct_1 {
    let var_0 = global1.b.x;
    var var_1 = global1.b.yy & (reverseBits(~vec2<u32>(u_input.a, 1u) ^ ~global3[_wgslsmith_index_u32(u_input.a, 25u)]) >> ((global1.b.xz ^ countOneBits(global3[_wgslsmith_index_u32(4294967295u, 25u)])) % vec2<u32>(32u)));
    global1 = Struct_1(global1.a, vec3<u32>(16759u, var_1.x, 13374u) & global1.b);
    let var_2 = -vec3<i32>(-2147483647i, 0i, firstTrailingBit(_wgslsmith_dot_vec2_i32(-vec2<i32>(global1.a, 35259i), func_2(global1.a, global1.a))));
    var var_3 = vec2<u32>(var_1.x, u_input.a);
    return Struct_1(global1.a, vec3<u32>(~_wgslsmith_mod_u32(1u, global1.b.x), ~(~u_input.a), var_1.x));
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true)), vec4<bool>(any(vec2<bool>(true, true)), select(false, false, true), true, true)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(false, true, true, false)), any(vec4<bool>(true, false, false, false)), all(vec4<bool>(true, true, false, true)), true), true)));
    global1 = Struct_1(global1.a, vec3<u32>(((83600u >> (0u % 32u)) << (~u_input.a % 32u)) & u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(select(67635u, u_input.a, true), global1.b.x, global1.b.x, 1u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.b.xx, global1.b.zz), 20u)] & abs(vec4<u32>(0u, 19034u, 0u, 77538u))), ~func_3().x));
    let var_1 = func_1();
    global2 = array<vec4<f32>, 18>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1333f, 1785f)))), vec2<f32>(-689f, _wgslsmith_f_op_f32(step(-557f, 708f))))));
    return _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~(~firstTrailingBit(var_1.b)), abs(vec3<u32>(13148u, 64431u, arg_0.b.x)) << (~(~var_1.b) % vec3<u32>(32u))), ~arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, func_4(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(max(firstTrailingBit(~(vec4<i32>(1i, 2147483647i, global1.a, global1.a) << (vec4<u32>(0u, u_input.a, global1.b.x, 4294967295u) % vec4<u32>(32u)))), select(vec4<i32>(global1.a, _wgslsmith_mult_i32(global1.a, global1.a), 1i, 2147i), vec4<i32>(~global1.a, global1.a, 1i, _wgslsmith_add_i32(global1.a, global1.a)), vec4<bool>(true, true, true, true))), ~vec3<i32>(_wgslsmith_mult_i32(-global1.a, abs(44553i)), reverseBits(1i), _wgslsmith_clamp_i32(global1.a, -global1.a, _wgslsmith_mod_i32(global1.a, global1.a))), reverseBits(1u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -412f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1156f * -2140f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(900f, 900f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(700f))))));
}

