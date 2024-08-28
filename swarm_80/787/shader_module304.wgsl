struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26>;

var<private> global1: vec4<u32>;

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<i32>(0i, -1i), 1572f), Struct_1(vec2<i32>(30249i, i32(-2147483648)), -1411f), Struct_1(vec2<i32>(0i, -1i), -1273f), Struct_1(vec2<i32>(i32(-2147483648), -36446i), 142f), Struct_1(vec2<i32>(0i, 28281i), 1019f), Struct_1(vec2<i32>(50390i, i32(-2147483648)), -729f), Struct_1(vec2<i32>(0i, 2147483647i), 634f), Struct_1(vec2<i32>(10146i, -20115i), -929f), Struct_1(vec2<i32>(-99i, 0i), 392f), Struct_1(vec2<i32>(56225i, 0i), -403f), Struct_1(vec2<i32>(1i, 2002i), 411f), Struct_1(vec2<i32>(i32(-2147483648), 26859i), 871f), Struct_1(vec2<i32>(-37103i, 1i), 1370f), Struct_1(vec2<i32>(-14701i, -25796i), -2126f), Struct_1(vec2<i32>(-27268i, 2147483647i), -1107f), Struct_1(vec2<i32>(2147483647i, 44356i), 723f), Struct_1(vec2<i32>(22948i, i32(-2147483648)), 409f), Struct_1(vec2<i32>(i32(-2147483648), 35200i), -331f), Struct_1(vec2<i32>(4133i, 4218i), 487f), Struct_1(vec2<i32>(-56049i, -1i), 1925f), Struct_1(vec2<i32>(34547i, -91130i), 327f), Struct_1(vec2<i32>(i32(-2147483648), 33205i), -919f), Struct_1(vec2<i32>(16729i, 0i), 162f), Struct_1(vec2<i32>(-1i, 2147483647i), -781f), Struct_1(vec2<i32>(1i, -1i), -1177f), Struct_1(vec2<i32>(2147483647i, -1i), 249f), Struct_1(vec2<i32>(-52052i, i32(-2147483648)), -1807f), Struct_1(vec2<i32>(3687i, -1i), -414f), Struct_1(vec2<i32>(0i, 21896i), 715f), Struct_1(vec2<i32>(-1i, -4581i), 1832f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<u32> {
    var var_0 = -245f;
    let var_1 = vec2<bool>(any(!vec4<bool>(true, true, all(vec2<bool>(false, true)), any(vec3<bool>(true, false, false)))), true || !any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))));
    let var_2 = vec3<bool>(true, true, var_1.x);
    let var_3 = 742f;
    global3 = array<Struct_1, 30>();
    return abs(global1.xyw | global1.wyz);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_3) -> bool {
    var var_0 = firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(firstTrailingBit(59016u), _wgslsmith_dot_vec4_u32(vec4<u32>(1881u, arg_3.b.a.x, 1u, 1u), vec4<u32>(0u, arg_0.b.a.x, 4294967295u, arg_0.b.a.x)), ~0u), func_3()));
    let var_1 = Struct_2(var_0.zx, arg_0.c.b, !(any(select(vec3<bool>(arg_3.b.c, false, arg_3.c.c), vec3<bool>(false, true, arg_0.c.c), arg_0.c.c)) | arg_3.b.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-211f - -641f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1520f)) + _wgslsmith_f_op_f32(min(-1000f, arg_3.a.b))))));
    var var_2 = Struct_3(arg_0.b.b, Struct_2(reverseBits(select(~vec2<u32>(var_0.x, 0u), vec2<u32>(global1.x, 676u), var_1.c)), Struct_1(reverseBits(-u_input.a.yy), arg_0.c.e), arg_0.b.c, arg_3.c.e, 587f), arg_3.c);
    global2 = u_input.a;
    let var_3 = arg_0.a.a.x;
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = 34854u;
    let var_1 = global3[_wgslsmith_index_u32(~(~(~u_input.b)), 30u)];
    global0 = array<vec4<bool>, 26>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * var_1.b)) * _wgslsmith_f_op_f32(abs(-874f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(306f)), 379f))));
    global2 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(var_1.a.x >> (_wgslsmith_mult_u32(13745u, global1.x) % 32u), _wgslsmith_clamp_i32(-2147483647i | u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, u_input.a.x, -53393i, global2.x), vec4<i32>(50856i, 1i, -26477i, var_1.a.x)), var_1.a.x), min(-57682i, ~var_1.a.x), -11221i), vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(firstLeadingBit(-u_input.a.www), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-22663i, global2.x), global2.zx), firstLeadingBit(var_1.a.x), -31757i)), -56338i, var_1.a.x), vec4<i32>(global2.x, 40166i, ~min(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.xwx, u_input.a.zxz)), _wgslsmith_dot_vec2_i32(~var_1.a, select(vec2<i32>(0i, -1i), var_1.a, vec2<bool>(arg_0.x, arg_0.x))) << (min(~arg_1.x, 10947u) % 32u)));
    return Struct_2(global1.ww, global3[_wgslsmith_index_u32(global1.x, 30u)], arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(var_2.x - 1555f)), _wgslsmith_f_op_f32(var_2.x - var_1.b))))), _wgslsmith_f_op_f32(f32(-1f) * -1450f));
}

fn func_5(arg_0: Struct_2) -> f32 {
    global1 = vec4<u32>(~45468u, _wgslsmith_sub_u32(arg_0.a.x, global1.x) ^ arg_0.a.x, ~(~36553u), _wgslsmith_dot_vec4_u32(~vec4<u32>(63255u, 32688u, u_input.b, u_input.b), vec4<u32>(arg_0.a.x, 0u, global1.x, arg_0.a.x) >> (abs(vec4<u32>(0u, 1u, 0u, 28009u)) % vec4<u32>(32u)))) & ~(~vec4<u32>(arg_0.a.x, func_4(vec3<bool>(arg_0.c, arg_0.c, arg_0.c), vec2<u32>(global1.x, arg_0.a.x)).a.x, _wgslsmith_clamp_u32(arg_0.a.x, global1.x, global1.x), _wgslsmith_sub_u32(1u, global1.x)));
    global0 = array<vec4<bool>, 26>();
    global3 = array<Struct_1, 30>();
    let var_0 = global2.xyz;
    global3 = array<Struct_1, 30>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-452f + 1316f)));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<f32>(508f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1476f - -554f) + _wgslsmith_f_op_f32(303f - 906f)) + 1338f), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(func_5(func_4(vec3<bool>(true, func_2(Struct_3(global3[_wgslsmith_index_u32(67511u, 30u)], Struct_2(vec2<u32>(4294967295u, u_input.b), Struct_1(vec2<i32>(global2.x, global2.x), -868f), true, 1497f, -271f), Struct_2(global1.xz, Struct_1(vec2<i32>(u_input.a.x, 1i), -243f), false, -1134f, 867f)), global3[_wgslsmith_index_u32(0u, 30u)], u_input.a.ww, Struct_3(global3[_wgslsmith_index_u32(20935u, 30u)], Struct_2(vec2<u32>(global1.x, u_input.b), Struct_1(u_input.a.wy, -495f), true, -661f, -367f), Struct_2(vec2<u32>(4294967295u, global1.x), global3[_wgslsmith_index_u32(36320u, 30u)], true, 289f, 1004f))), select(false, true, true)), abs(reverseBits(vec2<u32>(19833u, u_input.b)))))));
    var var_1 = func_4(vec3<bool>(func_2(Struct_3(global3[_wgslsmith_index_u32(u_input.b, 30u)], Struct_2(vec2<u32>(u_input.b, 39673u), Struct_1(vec2<i32>(42571i, u_input.c), -1038f), true, -1495f, var_0.x), func_4(vec3<bool>(false, true, true), vec2<u32>(25402u, 46477u))), Struct_1(vec2<i32>(-13567i, global2.x), _wgslsmith_f_op_f32(var_0.x - var_0.x)), vec2<i32>(global2.x, u_input.a.x), Struct_3(Struct_1(vec2<i32>(u_input.c, global2.x), 1820f), func_4(vec3<bool>(true, true, true), global1.ww), func_4(vec3<bool>(false, true, false), global1.yw))), !(!any(vec2<bool>(true, false))), true), vec2<u32>(~15u, _wgslsmith_clamp_u32(global1.x, global1.x, 47125u)));
    let var_2 = u_input.a.x;
    var var_3 = Struct_3(Struct_1(vec2<i32>(-38392i, var_2), -494f), Struct_2(select(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(global1.yx, var_1.a), vec2<u32>(1u, 60272u)), ~func_3().yy, !select(vec2<bool>(false, var_1.c), vec2<bool>(var_1.c, false), var_1.c)), Struct_1(countOneBits(vec2<i32>(0i, var_1.b.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1778f + 1261f), var_1.d))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(920f - -1349f) - _wgslsmith_f_op_f32(abs(1085f)))), 733f), Struct_2(~_wgslsmith_add_vec2_u32(min(global1.zx, vec2<u32>(u_input.b, 0u)), vec2<u32>(global1.x, global1.x)), func_4(vec3<bool>(var_1.d != -188f, true, var_0.x != -1000f), select(var_1.a, var_1.a, var_1.c)).b, (var_1.a.x >= ~var_1.a.x) == (var_1.c && false), _wgslsmith_f_op_f32(524f - var_0.x), 1958f));
    let var_4 = !select(vec2<bool>(select(var_0.x < var_1.e, false, true), false), !select(!vec2<bool>(true, var_3.b.c), vec2<bool>(false, var_1.c), var_1.c != false), !select(select(vec2<bool>(var_3.b.c, false), vec2<bool>(var_1.c, true), vec2<bool>(var_3.b.c, var_1.c)), select(vec2<bool>(var_1.c, var_3.c.c), vec2<bool>(var_3.b.c, false), vec2<bool>(var_1.c, var_1.c)), false));
    return Struct_1(var_3.b.b.a << (~var_1.a % vec2<u32>(32u)), var_0.x);
}

fn func_6(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> StorageBuffer {
    return StorageBuffer(firstTrailingBit(_wgslsmith_add_vec3_i32(u_input.a.zxy, _wgslsmith_clamp_vec3_i32(max(vec3<i32>(35921i, u_input.c, -2147483647i), vec3<i32>(global2.x, arg_2.a.x, arg_2.a.x)), u_input.a.zwy, ~global2.zxy))), vec4<i32>(20237i, -25160i, _wgslsmith_sub_i32(arg_2.a.x, func_1().a.x << (firstTrailingBit(global1.x) % 32u)), select(0i, ~_wgslsmith_sub_i32(1i, 0i), !(u_input.c <= 0i))), abs(vec4<u32>(u_input.b, ~10085u, ~62292u, firstLeadingBit(4294967295u))) ^ firstTrailingBit(vec4<u32>(global1.x, ~global1.x, _wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, global1.x, 80573u), vec3<u32>(1u, global1.x, 52640u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = func_6(vec4<bool>(var_0, !var_0 & (u_input.a.x < u_input.c), all(vec2<bool>(!var_0, var_0 & false)), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(998f, 862f, 1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-394f, 1704f, -160f) - vec3<f32>(763f, -282f, 1328f))))), func_1(), ~vec2<u32>(~_wgslsmith_clamp_u32(0u, u_input.b, global1.x), global1.x));
}

