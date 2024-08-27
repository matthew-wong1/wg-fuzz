struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(true, false, false, false, true, true, false, false, false, false, true, false, false, false, false, true, true);

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<f32>, 23>;

var<private> global3: vec3<u32> = vec3<u32>(86591u, 0u, 4294967295u);

var<private> global4: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> u32 {
    let var_0 = any(select(vec2<bool>(true, !global0[_wgslsmith_index_u32(arg_0, 17u)] && select(false, false, false)), vec2<bool>(select(any(vec4<bool>(global0[_wgslsmith_index_u32(global3.x, 17u)], false, global4.x, false)), any(vec4<bool>(true, true, global0[_wgslsmith_index_u32(global3.x, 17u)], global0[_wgslsmith_index_u32(1u, 17u)])), all(vec2<bool>(true, global4.x))), !(!global0[_wgslsmith_index_u32(4294967295u, 17u)])), any(select(global4.yy, vec2<bool>(false, false), true))));
    let var_1 = _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(~global3.x, _wgslsmith_sub_u32(~u_input.c, 0u | u_input.a), u_input.a, 11359u)), ~(~vec4<u32>(1u, _wgslsmith_add_u32(72443u, u_input.e.x), select(11311u, global3.x, false), global3.x | arg_0)));
    let var_2 = firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(firstLeadingBit(22093i)), firstLeadingBit(1i), min(u_input.b, ~1i), 4249i), vec4<i32>(arg_1.x, abs(_wgslsmith_dot_vec2_i32(arg_1, arg_1)), _wgslsmith_mod_i32(u_input.b >> (1u % 32u), i32(-1i) * -67813i), ~(arg_1.x | -2147483647i))));
    var var_3 = all(!select(select(global4.yw, !vec2<bool>(var_0, true), !global4.wy), select(global4.ww, select(global4.wy, global4.wx, vec2<bool>(true, false)), global4.yx), global0[_wgslsmith_index_u32(~var_1, 17u)] && all(global4.yyz)));
    let var_4 = Struct_3(vec4<f32>(global1.x, _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-global1.x))), 163f, -394f), Struct_2(global4.xxz, Struct_1(~(~u_input.e.x), vec3<u32>(reverseBits(var_1), 16785u, _wgslsmith_dot_vec2_u32(global3.yz, vec2<u32>(4294967295u, 63565u))), vec4<bool>(global4.x & true, true, var_0, !global0[_wgslsmith_index_u32(u_input.c, 17u)]), _wgslsmith_mult_vec2_u32(global3.yy, global3.zx) ^ global3.zz, vec4<f32>(_wgslsmith_f_op_f32(step(-1985f, -1020f)), _wgslsmith_f_op_f32(-global1.x), global1.x, 953f))));
    return global3.x;
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = select(_wgslsmith_mod_vec4_u32(~(vec4<u32>(35237u, arg_0.b.d.x, global3.x, arg_0.b.d.x) & vec4<u32>(2961u, u_input.a, 0u, 0u)) << (~vec4<u32>(26212u, global3.x, arg_0.b.b.x, arg_0.b.a) % vec4<u32>(32u)), max(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.e), 0u, _wgslsmith_sub_u32(54997u, arg_0.b.a), 4294967295u), firstTrailingBit(~vec4<u32>(0u, 56491u, global3.x, u_input.c)))), ~vec4<u32>(~_wgslsmith_add_u32(u_input.d.x, global3.x), global3.x, 0u, 59703u), vec4<bool>(any(arg_0.b.c.wz), arg_0.a.x, !global0[_wgslsmith_index_u32(select(~4294967295u, func_3(u_input.d.x, vec2<i32>(1i, 3102i)), select(false, false, arg_0.a.x)), 17u)], !(max(u_input.b, u_input.b) < (u_input.b & u_input.b))));
    let var_1 = 0u == ~arg_0.b.a;
    global1 = _wgslsmith_f_op_vec2_f32(ceil(arg_0.b.e.zx));
    let var_2 = u_input.e;
    var var_3 = Struct_3(vec4<f32>(2096f, _wgslsmith_f_op_f32(sign(-743f)), _wgslsmith_f_op_f32(max(812f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global1.x))))), Struct_2(!arg_0.a, arg_0.b));
    return ~vec4<i32>(-1i, (1i >> (u_input.a % 32u)) >> (var_3.b.b.a % 32u), abs(-30453i) >> (firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, var_2.x), var_0.xzx)) % 32u), -18461i ^ ~u_input.b);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> u32 {
    var var_0 = ~func_2(Struct_2(select(global4.wzz, select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 17u)], true, true), global4.yzx, global4.wxx), select(global4.zwx, global4.yxy, global4.yzz)), Struct_1(global3.x << (10278u % 32u), _wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(global3.x, 30324u, 16515u)), select(vec4<bool>(false, global0[_wgslsmith_index_u32(global3.x, 17u)], false, false), vec4<bool>(false, arg_0, true, false), vec4<bool>(false, true, true, arg_0)), u_input.d.yz, _wgslsmith_f_op_vec4_f32(arg_1 + arg_1))));
    global4 = vec4<bool>(!global0[_wgslsmith_index_u32(global3.x, 17u)] || !(!(global0[_wgslsmith_index_u32(1u, 17u)] & global0[_wgslsmith_index_u32(10057u, 17u)])), arg_0, any(select(select(!vec4<bool>(false, true, global4.x, global4.x), select(vec4<bool>(false, arg_0, true, false), vec4<bool>(arg_0, global0[_wgslsmith_index_u32(70869u, 17u)], true, false), arg_0), vec4<bool>(true, arg_0, true, global4.x)), vec4<bool>(all(vec3<bool>(arg_0, global4.x, global4.x)), !global0[_wgslsmith_index_u32(u_input.d.x, 17u)], !global4.x, arg_0), arg_0)), false);
    let var_1 = select(~_wgslsmith_sub_vec3_u32(~u_input.d, vec3<u32>(u_input.a, 1u, u_input.e.x)) | ~(~(u_input.d | vec3<u32>(29049u, 0u, 1u))), _wgslsmith_clamp_vec3_u32(((vec3<u32>(65872u, global3.x, 22409u) ^ u_input.d) & ~vec3<u32>(2344u, u_input.d.x, 51190u)) >> (~u_input.d % vec3<u32>(32u)), select(u_input.d, ~_wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(67516u, global3.x, u_input.c), u_input.d), true), ~firstTrailingBit(u_input.d)), global4.zwy);
    let var_2 = vec4<i32>(-abs(-countOneBits(1i)), firstLeadingBit(20671i), ~_wgslsmith_div_i32(_wgslsmith_mod_i32(-9902i, var_0.x), min(~var_0.x, u_input.b)), ~firstLeadingBit(-6965i));
    let var_3 = true;
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(22782u, func_1(all(select(global4.yxy, vec3<bool>(true, global4.x, false), !global4.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-746f, -858f, 865f, global1.x), global2[_wgslsmith_index_u32(global3.x, 23u)], true)))), 1u);
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(293f * 169f), -725f, _wgslsmith_f_op_f32(f32(-1f) * -166f)), Struct_2(select(global4.zyx, global4.www, select(vec3<bool>(false, global4.x, true), vec3<bool>(false, global0[_wgslsmith_index_u32(global3.x, 17u)], false), global3.x < global3.x)), Struct_1(~_wgslsmith_div_u32(27991u, global3.x), vec3<u32>(_wgslsmith_mult_u32(54328u, 1u), 4294967295u, var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 17u)] && global0[_wgslsmith_index_u32(0u, 17u)], !global4.x, any(global4.zy), false), ~u_input.e, vec4<f32>(-473f, global1.x, 1000f, _wgslsmith_f_op_f32(sign(global1.x))))));
    var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -809f), global1.x, _wgslsmith_f_op_f32(abs(var_1.a.x)), _wgslsmith_f_op_f32(ceil(1137f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global2[_wgslsmith_index_u32(14832u, 23u)], vec4<f32>(global1.x, -525f, var_1.b.b.e.x, 1000f), true)))))), var_1.b);
    var var_2 = vec3<i32>(-_wgslsmith_div_i32((u_input.b | u_input.b) & -2147483647i, ~u_input.b & -4084i), u_input.b, _wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i, u_input.b, u_input.b), u_input.b));
    var var_3 = Struct_4(Struct_2(vec3<bool>(any(select(vec4<bool>(global4.x, global0[_wgslsmith_index_u32(1u, 17u)], true, global4.x), vec4<bool>(false, true, false, false), false)), _wgslsmith_mod_u32(3648u, global3.x) == ~var_1.b.b.d.x, !all(var_1.b.b.c)), Struct_1(_wgslsmith_add_u32(var_1.b.b.b.x >> (45031u % 32u), _wgslsmith_dot_vec3_u32(u_input.d, var_0)), ~_wgslsmith_sub_vec3_u32(var_0, var_1.b.b.b), select(var_1.b.b.c, !vec4<bool>(global4.x, true, true, global4.x), select(var_1.b.b.c, var_1.b.b.c, true)), _wgslsmith_add_vec2_u32(select(u_input.d.xy, global3.zy, var_1.b.a.x), vec2<u32>(1u, global3.x)), _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(u_input.e.x ^ var_0.x, 23u)] + global2[_wgslsmith_index_u32(44502u, 23u)]))));
    var var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), u_input.b, func_2(var_1.b), 68522u ^ func_1(!(var_1.b.b.c.x || false), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(438f, global1.x, global1.x, -555f), vec4<f32>(var_3.a.b.e.x, global1.x, -853f, -121f), true))))));
}

