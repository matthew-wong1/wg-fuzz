struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(-1i, 1058i, 1i), vec3<i32>(0i, 0i, -50630i), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<i32>(-62291i, 2147483647i, 29369i), vec3<i32>(-1i, 1i, 2934i), vec3<i32>(10410i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, 40969i), vec3<i32>(21768i, -20393i, 23802i), vec3<i32>(0i, -2372i, 29300i), vec3<i32>(0i, i32(-2147483648), -26453i), vec3<i32>(7616i, -63239i, -1i), vec3<i32>(-47576i, 1i, 47458i), vec3<i32>(-5829i, -32245i, 41755i), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(-28895i, 1i, -7380i), vec3<i32>(-53144i, -1i, 6478i), vec3<i32>(0i, -105009i, 2147483647i), vec3<i32>(-32643i, -22443i, 2147483647i), vec3<i32>(0i, -62566i, -47356i), vec3<i32>(35183i, 0i, i32(-2147483648)), vec3<i32>(1i, -53166i, -15145i), vec3<i32>(1i, -30093i, 0i), vec3<i32>(12468i, -1i, -16551i), vec3<i32>(i32(-2147483648), 0i, -26659i), vec3<i32>(1i, -15323i, i32(-2147483648)), vec3<i32>(-37796i, -1i, 32521i));

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, false), vec4<bool>(false, false, true, false));

var<private> global3: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = global2.b.x || true;
    var var_1 = false;
    var var_2 = Struct_1(vec2<bool>(true, -2396f < _wgslsmith_f_op_f32(-arg_0.c.x)), !select(global3.b, vec4<bool>(true, any(vec3<bool>(arg_0.a, arg_1.a, true)), false, arg_0.a), true));
    let var_3 = (_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, 7886u, 1u), vec4<u32>(u_input.a, u_input.a, 31150u, 0u)), ~vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)) >> (~(~max(vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 50307u))) % vec4<u32>(32u))) ^ vec4<u32>(~4294967295u, _wgslsmith_add_u32(1u, 0u), ~firstLeadingBit(~16420u), ~44537u);
    global0 = array<vec3<i32>, 26>();
    return max(1u, ~max(1u & ~var_3.x, u_input.a << (var_3.x % 32u)));
}

fn func_2() -> bool {
    var var_0 = Struct_2(true, Struct_1(vec2<bool>(!all(vec2<bool>(true, global2.b.x)), any(!global3.b.zxx)), !global3.b), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(153f, -1505f))) * vec2<f32>(_wgslsmith_f_op_f32(step(-353f, 1000f)), -1304f)))));
    let var_1 = Struct_2(true, var_0.b, _wgslsmith_div_vec2_f32(var_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.c), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.c.x, 1524f))))))));
    var var_2 = vec4<u32>(reverseBits(func_3(Struct_2(global3.b.x, var_1.b, _wgslsmith_div_vec2_f32(var_0.c, var_1.c)), var_1)), _wgslsmith_dot_vec2_u32(select(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(69796u, 62927u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(9594u, 0u) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), vec2<u32>(36007u, 4294967295u) & _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(51024u, u_input.a)), global3.a.x), ~(~vec2<u32>(67218u, 24932u))), u_input.a, u_input.a);
    let var_3 = Struct_1(select(!vec2<bool>(any(vec3<bool>(true, global2.a.x, false)), true), global2.b.zz, global3.b.x), !vec4<bool>(-715f != var_0.c.x, true, !(!global3.b.x), !(!global3.a.x)));
    global1 = var_0.c.x;
    return (-1i | u_input.b) <= 1i;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(117f, 413f) * vec2<f32>(arg_1, arg_1)), vec2<f32>(890f, -1727f), vec2<bool>(global2.b.x, true)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -977f) * vec2<f32>(-578f, arg_1)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1524f, arg_1)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))));
    global0 = array<vec3<i32>, 26>();
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(115f * 315f), var_0.x)), _wgslsmith_f_op_f32(min(-486f, arg_1)))));
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a << (~firstTrailingBit(u_input.a) % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 50657u) | vec2<u32>(1u, u_input.a)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), reverseBits(vec4<u32>(4294967295u, 53872u, u_input.a, 0u)))), 12777u, u_input.a), ~vec4<u32>(1u, ~0u, u_input.a, u_input.a));
    var var_2 = _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, countOneBits(-1i)), ~arg_0), arg_0.x);
    return Struct_2((~var_1.x <= var_1.x) == (true && global2.b.x), Struct_1(!(!vec2<bool>(false, global3.b.x)), vec4<bool>(global2.a.x, any(global3.b.xwz), func_2(), any(select(vec4<bool>(true, true, false, false), global3.b, global3.b)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-924f, 110f), vec2<f32>(var_0.x, 1183f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    let var_0 = !vec3<bool>(true, !all(global3.b.yw), true);
    global1 = arg_0.c.x;
    let var_1 = arg_2.b;
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1243f);
    global3 = func_1(global0[_wgslsmith_index_u32(~14256u, 26u)], arg_3.c.x).b;
    return any(vec4<bool>(true, true, var_1.a.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.b, u_input.b >> (u_input.a % 32u)) >> ((select(vec2<u32>(u_input.a, ~43557u), ~firstTrailingBit(vec2<u32>(0u, 1u)), global3.a) ^ (~(~vec2<u32>(0u, u_input.a)) << (select(~vec2<u32>(24793u, 21968u), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 23110u), vec2<u32>(4294967295u, u_input.a)), global2.a.x && global3.a.x) % vec2<u32>(32u)))) % vec2<u32>(32u));
    global3 = Struct_1(vec2<bool>(select(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 79225u), vec2<u32>(0u, 43745u)), true) > _wgslsmith_clamp_u32(~u_input.a, 1u, 18745u), func_4(Struct_2(!global3.a.x, Struct_1(global2.a, global3.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(932f, -1358f))), Struct_2(var_0.x != 0i, Struct_1(global2.b.zw, vec4<bool>(false, global2.a.x, false, global3.a.x)), vec2<f32>(912f, 282f)), func_1(select(vec3<i32>(u_input.b, var_0.x, -35393i), vec3<i32>(-4696i, 21395i, var_0.x), global2.b.x), _wgslsmith_f_op_f32(round(977f))), func_1(vec3<i32>(1i, 1i, 1i), 1f))), global3.b);
    let var_1 = func_1(vec3<i32>(~(-16609i), firstTrailingBit(var_0.x), 1i), _wgslsmith_f_op_f32(sign(1661f))).a;
    let var_2 = firstLeadingBit(vec3<i32>(-_wgslsmith_clamp_i32(_wgslsmith_mod_i32(44762i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -18409i, u_input.b, u_input.b), vec4<i32>(var_0.x, u_input.b, u_input.b, -7778i)), reverseBits(var_0.x)), var_0.x, ~firstTrailingBit(u_input.b)));
    var var_3 = !(!vec4<bool>(global3.b.x, all(vec4<bool>(true, true, false, true)), (28863u >> (u_input.a % 32u)) > ~15900u, all(select(vec4<bool>(global3.b.x, false, true, global2.b.x), vec4<bool>(false, global3.a.x, false, var_1), vec4<bool>(true, true, var_1, global3.b.x)))));
    var_0 = var_2.yy;
    let var_4 = vec4<bool>(func_2(), global3.a.x, any(!(!vec4<bool>(global2.b.x, global2.b.x, true, var_1))), select(true, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, -25106i, var_2.x), _wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(u_input.a, 26u)], var_2)) == -2147483647i, func_4(Struct_2(!global3.a.x, func_1(global0[_wgslsmith_index_u32(u_input.a, 26u)], 254f).b, vec2<f32>(309f, -1949f)), Struct_2(1u < u_input.a, Struct_1(global3.b.wx, global2.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(942f, 343f))), Struct_2(any(vec4<bool>(global3.b.x, var_3.x, var_3.x, global3.a.x)), Struct_1(var_3.ww, vec4<bool>(var_3.x, true, true, var_1)), vec2<f32>(-1000f, 734f)), func_1(var_2 | var_2, _wgslsmith_f_op_f32(904f + 885f)))));
    var_3 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(13721u, 1u, u_input.a, u_input.a), firstLeadingBit(vec4<u32>(0u, u_input.a, u_input.a, 24360u))) ^ firstLeadingBit(vec4<u32>(86231u, u_input.a, u_input.a, 94423u) << (vec4<u32>(u_input.a, u_input.a, 9139u, u_input.a) % vec4<u32>(32u)))), vec3<i32>(-(-u_input.b | var_2.x), countOneBits(-1i), -1i), -114f);
}

