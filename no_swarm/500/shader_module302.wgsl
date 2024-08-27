struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-146f, 323f, 2989f, 723f), vec4<f32>(-484f, 1698f, 554f, -578f), vec4<f32>(1000f, -309f, -1386f, -209f), vec4<f32>(1304f, -214f, 1272f, -884f), vec4<f32>(-1000f, -1271f, -650f, -204f), vec4<f32>(751f, 744f, -462f, 710f), vec4<f32>(-1000f, 1002f, 398f, 1699f), vec4<f32>(-1000f, -1275f, 197f, -1000f), vec4<f32>(-475f, 162f, -445f, 782f), vec4<f32>(934f, 1000f, 422f, 514f), vec4<f32>(-163f, 1725f, 428f, 1000f), vec4<f32>(-392f, 645f, -599f, 854f), vec4<f32>(1000f, -247f, 1000f, 994f), vec4<f32>(470f, -944f, -574f, 1387f), vec4<f32>(-1033f, -1370f, 1588f, -477f), vec4<f32>(917f, -1365f, -1000f, -884f), vec4<f32>(-104f, -903f, -1212f, 1000f), vec4<f32>(-203f, 1722f, -1224f, 192f), vec4<f32>(886f, -373f, 1130f, -491f), vec4<f32>(-2001f, 520f, 1000f, -162f), vec4<f32>(756f, 523f, -263f, -828f), vec4<f32>(1000f, -614f, 506f, 455f), vec4<f32>(354f, 1139f, -222f, -356f), vec4<f32>(-2601f, 292f, -602f, -145f));

var<private> global4: array<Struct_2, 2>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 39136u), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(4294967295u, 33742u, arg_0.d, arg_1), arg_0.a.d, false), _wgslsmith_clamp_vec4_u32(vec4<u32>(770u, 38188u, 13724u, arg_0.c.d.x), vec4<u32>(3390u, arg_1, 24894u, arg_1), vec4<u32>(arg_0.c.a, 0u, arg_0.d, 0u)) | vec4<u32>(global2.d.x, arg_0.c.a, global2.d.x, 0u))), 1i, 1u, ~vec4<u32>(min(_wgslsmith_sub_u32(global2.d.x, 0u), _wgslsmith_clamp_u32(arg_0.b.x, 1u, arg_1)), firstLeadingBit(~4294967295u), global2.d.x, global2.a));
    var var_1 = arg_0;
    var var_2 = vec4<bool>(false, true, false, true & (!select(global0.x, global0.x, global0.x) && any(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, true, global0.x, global0.x), true))));
    let var_3 = _wgslsmith_sub_vec4_u32(~(~var_0.d), select(reverseBits(reverseBits(vec4<u32>(1u, 1u, arg_1, arg_1))), ~(~var_1.c.d), true) & _wgslsmith_add_vec4_u32(vec4<u32>(0u, 25724u, var_1.a.c, ~arg_0.b.x), vec4<u32>(reverseBits(global2.a), min(0u, 26306u), ~23915u, var_0.d.x)));
    let var_4 = Struct_2(arg_0.a, global2.d.zww << (_wgslsmith_sub_vec3_u32(min(vec3<u32>(4294967295u, 4294967295u, 62629u), vec3<u32>(1u, 0u, 1u)) | (global2.d.xxx | arg_0.c.d.zww), global2.d.ywy) % vec3<u32>(32u)), var_1.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, var_3.x, 26540u), global2.d.zyy, var_2.yyw), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c.a, arg_1, 1u), var_3.xyz)), 4294967295u) | arg_0.b.x);
    return arg_1 << (~0u % 32u);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(385f - _wgslsmith_f_op_f32(max(536f, -1077f))))));
    let var_1 = u_input.a;
    global0 = select(select(vec2<bool>(false, global0.x), !select(select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x)), select(vec2<bool>(true, false), vec2<bool>(false, true), false), !vec2<bool>(global0.x, global0.x)), global0.x), vec2<bool>(!(!(true & global0.x)), global0.x), global0.x);
    var var_2 = select(~arg_0.b.yx, _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(global2.d.yy, ~(arg_0.c.d.yw ^ global2.d.yx)), firstTrailingBit(~vec2<u32>(85981u, arg_0.c.c))), true & ((global0.x && true) | false));
    global0 = select(vec2<bool>(false, global0.x), !select(select(!vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), all(vec4<bool>(false, false, true, false))), !select(vec2<bool>(true, global0.x), vec2<bool>(true, false), global0.x), !global0.x), vec2<bool>(global0.x, false));
    return ~_wgslsmith_clamp_vec2_i32(u_input.a.zy, vec2<i32>(0i, 52887i), _wgslsmith_clamp_vec2_i32(-max(vec2<i32>(var_1.x, u_input.c), vec2<i32>(arg_1.x, -13536i)), vec2<i32>(arg_1.x, 4840i), _wgslsmith_div_vec2_i32(var_1.yz, vec2<i32>(global2.b, 17409i) << (vec2<u32>(65604u, arg_0.c.a) % vec2<u32>(32u)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> vec4<u32> {
    let var_0 = Struct_1(firstTrailingBit(~(~(~1u))), -60200i, global2.c, ~(vec4<u32>(~0u, _wgslsmith_dot_vec3_u32(arg_1.d.zxx, vec3<u32>(18700u, global2.d.x, arg_1.c)), _wgslsmith_div_u32(22000u, 4798u), _wgslsmith_mod_u32(376u, arg_1.d.x)) | arg_1.d));
    let var_1 = firstLeadingBit(reverseBits(_wgslsmith_sub_vec2_u32(~(~arg_0.d.xx), vec2<u32>(_wgslsmith_sub_u32(arg_1.d.x, global2.d.x), arg_0.d.x))));
    var var_2 = vec4<u32>(0u | ~_wgslsmith_dot_vec3_u32(~var_0.d.xzy, arg_0.d.zxw), global2.d.x, (1u << (_wgslsmith_sub_u32(firstLeadingBit(2328u), func_3(global4[_wgslsmith_index_u32(arg_1.a, 2u)], 4294967295u)) % 32u)) | _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_1.d.zw << (vec2<u32>(var_0.d.x, 34599u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(arg_0.d.xy, vec2<u32>(global2.a, arg_0.d.x))), 1u), _wgslsmith_div_u32(_wgslsmith_mult_u32(~30242u, 0u | _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 63523u), vec2<u32>(arg_1.a, global2.a))), firstTrailingBit(_wgslsmith_mod_u32(global2.d.x, ~1u))));
    return vec4<u32>(var_0.d.x, arg_0.d.x, 63261u, 0u);
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_clamp_u32(~arg_0, global2.a, (20542u ^ ~arg_0) | (firstTrailingBit(global2.a) | arg_0)), _wgslsmith_add_i32(u_input.c, global2.b), global2.c, func_5(Struct_1(_wgslsmith_div_u32(23352u, ~25542u), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), u_input.d), global2.a << (~arg_0 % 32u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 4294967295u, 1u, 1u), vec4<u32>(27191u, 4294967295u, global2.d.x, global2.d.x))), Struct_1(arg_0 >> (~4294967295u % 32u), 1i, global2.a, reverseBits(global2.d)), func_4(Struct_2(Struct_1(arg_0, 44688i, 849u, global2.d), max(vec3<u32>(24u, global2.c, arg_0), global2.d.wzy), Struct_1(arg_0, 21867i, 26951u, vec4<u32>(0u, 37254u, 0u, global2.a)), func_3(Struct_2(Struct_1(12434u, -2147483647i, global2.d.x, global2.d), global2.d.zyw, Struct_1(arg_0, -1i, arg_0, vec4<u32>(global2.c, global2.a, 12673u, 54566u)), arg_0), 0u)), select(-vec4<i32>(global2.b, global2.b, u_input.b, u_input.d.x), select(vec4<i32>(26869i, 0i, u_input.d.x, global2.b), vec4<i32>(1339i, 30362i, 2147483647i, -1i), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), !vec4<bool>(global0.x, true, true, global0.x)))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -104f);
    var var_2 = vec4<f32>(var_1, _wgslsmith_f_op_f32(-arg_1.x), 527f, -541f);
    var var_3 = global2.d;
    let var_4 = select(-_wgslsmith_mod_i32(0i, 1i), func_4(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_3.x, var_3.x), var_3.x >> (1u % 32u), 43174u), 2u)], ~(vec4<i32>(global2.b, -2147483647i, var_0.b, -2147483647i) >> (vec4<u32>(1u, 80315u, 4294967295u, 38937u) % vec4<u32>(32u)))).x, !(!global0.x)) << (~42628u % 32u);
    return 1664f;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = global4[_wgslsmith_index_u32(~41890u >> (1u % 32u), 2u)];
    global3 = array<vec4<f32>, 24>();
    return arg_0;
}

fn func_1() -> Struct_2 {
    let var_0 = global4[_wgslsmith_index_u32(1u, 2u)];
    global2 = Struct_1(global2.d.x, i32(-1i) * -1i, _wgslsmith_clamp_u32(~global2.d.x, 1u, _wgslsmith_mult_u32(~global2.c, min(4294967295u, global2.c))) << (12153u % 32u), ~select(abs(min(vec4<u32>(global2.d.x, var_0.b.x, global2.d.x, var_0.c.a), global2.d)), var_0.a.d, true));
    global4 = array<Struct_2, 2>();
    global2 = func_6(Struct_1(_wgslsmith_sub_u32(global2.d.x, 1u) & max(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, 4294967295u, 0u, 4294967295u), vec4<u32>(var_0.c.c, 62186u, var_0.b.x, 1u)), max(var_0.b.x, global2.d.x)), _wgslsmith_mod_i32(var_0.c.b, reverseBits(var_0.c.b)), max(41609u, _wgslsmith_add_u32(~global2.c, _wgslsmith_mod_u32(global2.c, 1u))), var_0.a.d), u_input.a.xy, vec3<f32>(1120f, 1976f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(61736u, vec2<f32>(996f, 2359f)))) + -554f)), 94904u);
    let var_1 = vec4<u32>(10005u & global2.d.x, var_0.c.c, var_0.b.x, _wgslsmith_dot_vec2_u32(min(~abs(vec2<u32>(4294967295u, 4294967295u)), var_0.c.d.xz), vec2<u32>(var_0.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 2115u), var_0.a.d.xxx) % 32u), ~(43236u << (global2.d.x % 32u)))));
    return global4[_wgslsmith_index_u32(func_6(func_6(func_6(Struct_1(6907u, 41029i, 4294967295u, vec4<u32>(global2.a, 0u, 57139u, var_1.x)), countOneBits(abs(vec2<i32>(-29799i, u_input.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-134f, -129f, 477f))), 1654u), vec2<i32>(0i, _wgslsmith_mod_i32(u_input.c | var_0.a.b, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b, global2.b, global2.b), vec3<i32>(u_input.a.x, 1i, -1i)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-345f, 1353f, -2117f))), vec3<f32>(1000f, -263f, _wgslsmith_f_op_f32(trunc(-1785f))), vec3<bool>(select(false, false, true), true, true))), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.c, var_1.x, 1u, 0u), vec4<u32>(~global2.a, 13189u, ~1u, ~0u))), countOneBits((vec2<i32>(global2.b, 25561i) << (var_0.a.d.zx % vec2<u32>(32u))) & firstLeadingBit(_wgslsmith_add_vec2_i32(u_input.a.yz, vec2<i32>(global2.b, -1701i)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-882f + 248f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -395f))), 1f), var_1.x).a, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = global4[_wgslsmith_index_u32(~global2.d.x, 2u)];
    global0 = vec2<bool>(any(select(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), global0.x), !(!vec2<bool>(global0.x, true)), select(select(vec2<bool>(false, false), vec2<bool>(global0.x, true), vec2<bool>(true, false)), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x)), global0.x))), true);
    global4 = array<Struct_2, 2>();
    var var_2 = ~countOneBits(func_1().a.d.wxy);
    let var_3 = func_1();
    let var_4 = var_1.d;
    var_0 = Struct_2(func_1().c, vec3<u32>(~9486u, _wgslsmith_mult_u32(var_3.c.a, firstLeadingBit(global2.d.x)), _wgslsmith_mod_u32(var_1.c.d.x, ~(~var_1.b.x))), var_0.c, var_3.a.c);
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(var_0.b.x, ~var_1.c.d.x, 9501u, _wgslsmith_mod_u32(global2.d.x, 68310u))));
}

