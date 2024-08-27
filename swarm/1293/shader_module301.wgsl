struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(1i, 1i, -42828i, 1i), vec4<i32>(0i, -13166i, 2147483647i, -1i), vec4<i32>(i32(-2147483648), -1i, 40815i, -14316i), vec4<i32>(30712i, 13143i, 0i, i32(-2147483648)), vec4<i32>(-65225i, i32(-2147483648), -24900i, 0i), vec4<i32>(2147483647i, 12047i, -32251i, 5678i), vec4<i32>(i32(-2147483648), i32(-2147483648), 47450i, -32273i));

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<vec2<u32>, 5>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> vec4<u32> {
    let var_0 = vec4<i32>(~u_input.c.x, abs(-_wgslsmith_clamp_i32(0i, u_input.c.x, 20247i)), select(i32(-1i) * -u_input.c.x, -u_input.c.x | -54517i, false), -38105i);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(538f, -686f, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(368f, -223f, 484f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(548f, 332f, 676f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(782f, -1668f, 268f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(267f, 251f, 2592f))), vec3<bool>(true, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-134f * 240f), _wgslsmith_div_f32(887f, -489f))), _wgslsmith_f_op_f32(782f - _wgslsmith_f_op_f32(max(-2303f, -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(563f, _wgslsmith_f_op_f32(-871f - -267f)))), -1990f);
    var var_2 = ~firstTrailingBit(max(_wgslsmith_add_u32(select(4294967295u, 66220u, false), _wgslsmith_add_u32(u_input.b.x, u_input.a.x)), 1u));
    global2 = array<vec2<u32>, 5>();
    return ~u_input.a;
}

fn func_3(arg_0: f32) -> vec4<f32> {
    global0 = array<vec4<i32>, 7>();
    var var_0 = !vec4<bool>(all(vec2<bool>(true, true)), !select(u_input.c.x >= u_input.c.x, all(vec4<bool>(true, false, true, true)), true), true, true);
    global0 = array<vec4<i32>, 7>();
    let var_1 = Struct_2(u_input.a.xyy, firstLeadingBit(_wgslsmith_div_u32(13688u, firstTrailingBit(u_input.d.x)) >> (u_input.b.x % 32u)), global1[_wgslsmith_index_u32(19630u, 18u)], Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1240f, arg_0, -1382f), vec3<f32>(arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 658f, arg_0))), _wgslsmith_div_f32(-533f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, 302f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 + 247f)))), global1[_wgslsmith_index_u32(u_input.a.x, 18u)]);
    var var_2 = _wgslsmith_add_i32(abs(27154i), ~max(0i, -u_input.c.x << (~6502u % 32u)));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.d.b, -573f, -369f, 138f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(326f, -104f, var_1.d.a.x, 292f) * vec4<f32>(var_1.c.b, 381f, -2037f, arg_0)))))))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<f32>) -> u32 {
    global0 = array<vec4<i32>, 7>();
    global1 = array<Struct_1, 18>();
    let var_0 = Struct_2(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.e, ~u_input.e, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.e), u_input.b)), ~u_input.d, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.e, 15110u), 12325u), countOneBits(u_input.d.x), 103517u)), ~max(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d.x), u_input.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(86603u, 0u, 9881u, u_input.e), vec4<u32>(u_input.b.x, 35060u, u_input.e, 1u))), global1[_wgslsmith_index_u32(~(~(~4294967295u)), 18u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(min(4294967295u, u_input.e), _wgslsmith_add_u32(0u, u_input.b.x)), _wgslsmith_add_u32(~79582u, u_input.d.x << (0u % 32u))) << (_wgslsmith_clamp_u32(u_input.d.x, 43685u, _wgslsmith_add_u32(~u_input.e, 1u)) % 32u), 18u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~select(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 10823u << (u_input.e % 32u), arg_0), countOneBits(u_input.d.x)), 18u)]);
    var var_1 = 1u;
    global1 = array<Struct_1, 18>();
    return ~(~(~(~11505u))) ^ u_input.e;
}

fn func_2() -> vec4<i32> {
    let var_0 = global1[_wgslsmith_index_u32(14432u, 18u)];
    var var_1 = var_0.a;
    var var_2 = Struct_2(countOneBits(u_input.a.zxy), select(func_4(!all(vec3<bool>(true, false, true)), _wgslsmith_f_op_vec4_f32(func_3(-236f)), _wgslsmith_f_op_vec4_f32(func_3(var_1.x)).zwx), firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, 4294967295u)), any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(65880u, 17209u, 0u)), vec3<u32>(~u_input.a.x, 1u, 69599u)), ~u_input.a.zxx), 18u)], Struct_1(_wgslsmith_f_op_vec3_f32(trunc(var_0.a)), var_0.b, var_0.c), Struct_1(vec3<f32>(-1000f, 922f, _wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(ceil(var_0.a.x))))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1318f - var_1.x)))))));
    var_2 = Struct_2(~vec3<u32>(u_input.a.x, 0u, (var_2.a.x | var_2.b) & _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_2.a.x, 88393u))), _wgslsmith_clamp_u32(~(~4294967295u ^ ~var_2.a.x), ~4294967295u, 1u), Struct_1(var_2.c.a, var_1.x, 927f), var_2.d, Struct_1(vec3<f32>(-720f, var_2.e.b, -2933f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -1344f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -2227f))), var_1.x));
    var var_3 = !any(select(vec3<bool>(true, true, false), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)));
    return vec4<i32>(_wgslsmith_sub_i32(u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x << (23643u % 32u), u_input.c.x, _wgslsmith_div_i32(2147483647i, -6294i)) & _wgslsmith_sub_i32(min(u_input.c.x, u_input.c.x), select(u_input.c.x, -37351i, false))), -23476i, _wgslsmith_sub_i32(min(u_input.c.x, 1i << (_wgslsmith_div_u32(1u, 135096u) % 32u)), 0i), -41811i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_2();
    let var_2 = u_input.a.wxw;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(526f + _wgslsmith_f_op_f32(970f * _wgslsmith_f_op_f32(-1361f + _wgslsmith_f_op_f32(abs(362f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-203f * _wgslsmith_f_op_f32(f32(-1f) * -400f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, -_wgslsmith_mult_vec3_i32(vec3<i32>(max(var_1.x, -1i), ~u_input.c.x, u_input.c.x), vec3<i32>(-2147483647i, ~(-1i), -var_1.x)));
}

