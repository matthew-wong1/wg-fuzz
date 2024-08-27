struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(-1441i, 28693i, 81734i, 1i), vec4<i32>(-61795i, 37537i, -1i, i32(-2147483648)), vec4<i32>(67328i, -16600i, 10960i, 23412i), vec4<i32>(3124i, 1i, 0i, -1i), vec4<i32>(0i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(-1i, 45526i, -36557i, 77701i), vec4<i32>(2147483647i, 2147483647i, 12871i, 27861i), vec4<i32>(-77988i, -17529i, -50948i, 1i), vec4<i32>(32967i, -41767i, 59091i, 14755i), vec4<i32>(-35874i, 27217i, -24469i, 0i), vec4<i32>(-1i, 23524i, -2709i, 1i), vec4<i32>(36103i, -12837i, 0i, 2147483647i), vec4<i32>(1i, 21456i, -62669i, -47427i), vec4<i32>(-25630i, 62278i, -32592i, -19712i), vec4<i32>(0i, -11821i, 91651i, 0i), vec4<i32>(-3972i, 1i, 2147483647i, -1385i), vec4<i32>(i32(-2147483648), -1i, -22793i, 4813i), vec4<i32>(-2404i, 0i, 0i, -4764i), vec4<i32>(40004i, -1i, i32(-2147483648), 0i), vec4<i32>(32188i, -17i, -28698i, 2147483647i), vec4<i32>(27835i, -7493i, 15679i, i32(-2147483648)), vec4<i32>(-9399i, 1i, -1i, -24574i));

var<private> global2: Struct_2 = Struct_2(805f, vec2<i32>(2147483647i, -1i), Struct_1(vec3<u32>(90446u, 1u, 91522u), vec3<i32>(0i, 0i, -23449i), vec2<u32>(1u, 4294967295u), vec4<bool>(false, false, false, false)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> f32 {
    return -533f;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -489f))), 145f, reverseBits(select(-13647i, 2147483647i, false)) == u_input.c)));
    let var_0 = Struct_4(u_input.b.x);
    global1 = array<vec4<i32>, 22>();
    global2 = Struct_2(arg_2, vec2<i32>(15688i, u_input.a.x), Struct_1(vec3<u32>(0u, u_input.b.x, 4294967295u), vec3<i32>(select(firstLeadingBit(global2.c.b.x), ~global2.b.x, true), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.c.b.x, global2.c.b.x, global2.c.b.x, 0i) & global1[_wgslsmith_index_u32(var_0.a, 22u)], global1[_wgslsmith_index_u32(~u_input.b.x, 22u)]), ~45223i), vec2<u32>(5090u, u_input.b.x), !global2.c.d));
    var var_1 = Struct_3(global2.c, -2147483647i, -(~vec3<i32>(firstTrailingBit(-1i), u_input.a.x, min(global2.b.x, 0i))), Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(11825u, 0u, u_input.b.x), vec3<u32>(9417u, var_0.a, global2.c.a.x)), ~vec3<u32>(u_input.b.x, 13410u, var_0.a)), vec3<u32>(~1u, abs(13653u), 0u)), firstLeadingBit(_wgslsmith_add_vec3_i32(-global2.c.b, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -23452i, 19849i), u_input.a))), vec2<u32>(~7005u, 4294967295u), !select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, true, arg_0.x), any(global2.c.d.xyz))), vec4<i32>(_wgslsmith_add_i32(20003i, reverseBits(~global2.c.b.x)), u_input.a.x >> (abs(1u) % 32u), -_wgslsmith_mult_i32(-u_input.c, 0i | u_input.c), min(global2.c.b.x, firstLeadingBit(global2.b.x << (var_0.a % 32u)))));
    return var_1.a;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec2_u32(global2.c.c, u_input.b.zw);
    let var_1 = arg_2;
    var var_2 = Struct_3(global2.c, ~global2.b.x, vec3<i32>(global2.b.x, ~u_input.d, abs(-1i | global2.c.b.x)) | -vec3<i32>(-global2.b.x, u_input.c, -12165i), func_3(!vec2<bool>(global2.c.d.x, arg_2.x || true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.a, global2.a, global2.a))), vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, 205f)), _wgslsmith_f_op_f32(func_2(true, Struct_3(Struct_1(vec3<u32>(5565u, 0u, 18061u), vec3<i32>(arg_0, arg_0, -1i), vec2<u32>(25206u, 1u), vec4<bool>(false, true, arg_1.x, false)), -1i, global2.c.b, Struct_1(vec3<u32>(8141u, var_0.x, var_0.x), u_input.a, var_0, global2.c.d), vec4<i32>(arg_0, 0i, -1i, 25977i)))), 1857f, global2.a)), -326f), -global1[_wgslsmith_index_u32(74552u, 22u)]);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1890f)), -2682f)), _wgslsmith_f_op_f32(func_2(true, Struct_3(var_2.a, var_2.b, vec3<i32>(-11409i, -1i, global2.b.x), var_2.a, vec4<i32>(u_input.a.x, u_input.d, arg_0, 1i)))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-606f, -400f) - vec2<f32>(680f, global2.a))))))));
    var var_4 = func_3(!(!vec2<bool>(true, true & global2.c.d.x)), vec4<f32>(269f, var_3.x, _wgslsmith_f_op_f32(var_3.x - var_3.x), 1453f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1091f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.x, var_3.x)) * 670f) - 860f))));
    return Struct_1(var_4.a, vec3<i32>(global2.b.x, abs(firstLeadingBit(-48299i)) >> (u_input.b.x % 32u), var_4.b.x), ~var_2.a.a.xz, vec4<bool>(func_3(vec2<bool>(true, !var_4.d.x), vec4<f32>(_wgslsmith_f_op_f32(select(var_3.x, -1901f, true)), _wgslsmith_f_op_f32(sign(var_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -647f), _wgslsmith_div_f32(global2.a, -855f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(362f - global2.a))).d.x, all(func_3(vec2<bool>(arg_2.x, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(114f, 239f, -1000f, -898f)), _wgslsmith_f_op_f32(-global2.a)).d.wxz), var_2.a.d.x && false, true & (true | !global2.c.d.x)));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> vec4<i32> {
    return vec4<i32>(u_input.d, arg_1, ~(~firstTrailingBit(arg_1)), global2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(min(vec2<u32>(45117u, (1u ^ u_input.b.x) << (u_input.b.x % 32u)), ~(~global2.c.c)), _wgslsmith_mod_i32(~u_input.c, 81i), func_1(max(1i, ~(-1i)), vec3<bool>(false, true, true), vec2<bool>(!(global2.c.d.x & false), _wgslsmith_f_op_f32(global2.a + global2.a) == -113f), ~(~(26776u | global2.c.c.x))), max(u_input.b.x, _wgslsmith_sub_u32(~global2.c.a.x, _wgslsmith_add_u32(global2.c.a.x, global2.c.a.x))) << (global2.c.a.x % 32u));
    let var_1 = Struct_4(~(1u | _wgslsmith_mod_u32(u_input.b.x ^ 17153u, global2.c.c.x)));
    var_0 = abs(func_4(~global2.c.a.yx, abs(_wgslsmith_sub_i32(var_0.x, u_input.a.x)), global2.c, ~23594u)) ^ ~_wgslsmith_mod_vec4_i32(~global1[_wgslsmith_index_u32(u_input.b.x, 22u)], ~vec4<i32>(1i, u_input.d, global2.c.b.x, -60535i));
    let var_2 = global2.c.d.wzz;
    let var_3 = -(vec3<i32>(select(-u_input.d, _wgslsmith_clamp_i32(-12473i, 0i, var_0.x), func_1(27490i, vec3<bool>(true, true, true), global2.c.d.zw, global2.c.a.x).d.x), func_1(1i, global2.c.d.xyz, func_3(vec2<bool>(true, false), vec4<f32>(-376f, global2.a, 791f, global2.a), 373f).d.xw, 18212u).b.x, _wgslsmith_sub_i32(-9451i, -25287i)) << ((global2.c.a << (~(vec3<u32>(88460u, global2.c.a.x, global2.c.a.x) >> (vec3<u32>(global2.c.a.x, 9349u, global2.c.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_4 = global2.c;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a * 494f) - _wgslsmith_f_op_f32(-global2.a))) + _wgslsmith_f_op_f32(func_2(all(global2.c.d), Struct_3(Struct_1(vec3<u32>(global2.c.c.x, var_4.a.x, u_input.b.x), vec3<i32>(-78629i, 1i, 77529i), global2.c.c, vec4<bool>(global2.c.d.x, false, var_2.x, var_2.x)), _wgslsmith_clamp_i32(var_4.b.x, var_4.b.x, -1i), vec3<i32>(0i, -54247i, global2.c.b.x), global2.c, vec4<i32>(var_4.b.x, var_4.b.x, var_3.x, 1i) ^ vec4<i32>(2147483647i, -2147483647i, -24015i, -2147483647i))))) + _wgslsmith_f_op_f32(-global2.a));
    let x = u_input.a;
    s_output = StorageBuffer(-567f, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(306f, global2.a), vec2<f32>(global2.a, 586f), var_2.yz)))))), ~vec3<i32>(global2.b.x | reverseBits(25701i), func_3(func_3(vec2<bool>(true, var_4.d.x), vec4<f32>(-913f, 468f, 1046f, global2.a), global2.a).d.yw, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, global2.a, global2.a)), global2.a).b.x, 12670i), _wgslsmith_dot_vec2_i32(vec2<i32>(-8082i, 27309i), vec2<i32>(2147483647i, -6752i) << (~(u_input.b.xx >> (u_input.b.xz % vec2<u32>(32u))) % vec2<u32>(32u))));
}

