struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<i32>(16913i, 2147483647i), vec3<f32>(682f, -1419f, 1428f)), Struct_1(vec2<i32>(12433i, -1i), vec3<f32>(868f, 1565f, 541f)), Struct_1(vec2<i32>(0i, -36147i), vec3<f32>(-1113f, 814f, -609f)), Struct_1(vec2<i32>(-66736i, i32(-2147483648)), vec3<f32>(276f, -242f, -1000f)), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec3<f32>(-1259f, 384f, -700f)), Struct_1(vec2<i32>(-45257i, i32(-2147483648)), vec3<f32>(1971f, 1865f, 711f)), Struct_1(vec2<i32>(i32(-2147483648), -39350i), vec3<f32>(992f, -844f, 857f)), Struct_1(vec2<i32>(-1i, 0i), vec3<f32>(-1865f, -1002f, 1051f)), Struct_1(vec2<i32>(-15347i, -36589i), vec3<f32>(-283f, -2355f, 386f)), Struct_1(vec2<i32>(0i, 0i), vec3<f32>(250f, -1239f, -1000f)), Struct_1(vec2<i32>(1i, 42326i), vec3<f32>(-2836f, 236f, 116f)), Struct_1(vec2<i32>(-11811i, 2147483647i), vec3<f32>(2583f, 521f, -383f)), Struct_1(vec2<i32>(-9767i, 1i), vec3<f32>(-1234f, 374f, -1560f)), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<f32>(-1929f, 272f, 659f)), Struct_1(vec2<i32>(-31275i, i32(-2147483648)), vec3<f32>(-159f, -1568f, 836f)), Struct_1(vec2<i32>(7806i, -1i), vec3<f32>(289f, 1978f, -430f)), Struct_1(vec2<i32>(10915i, -2716i), vec3<f32>(-1615f, 665f, -239f)), Struct_1(vec2<i32>(0i, -11974i), vec3<f32>(1097f, -667f, 426f)), Struct_1(vec2<i32>(1i, 1i), vec3<f32>(-1202f, 1591f, 1199f)), Struct_1(vec2<i32>(-1i, 2147483647i), vec3<f32>(-708f, 1588f, 557f)), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec3<f32>(-1111f, -836f, -1363f)), Struct_1(vec2<i32>(1i, 0i), vec3<f32>(-567f, 168f, 1149f)), Struct_1(vec2<i32>(-37724i, 26558i), vec3<f32>(-745f, 397f, -306f)), Struct_1(vec2<i32>(-20706i, 16772i), vec3<f32>(-1348f, 701f, 138f)), Struct_1(vec2<i32>(22433i, 1i), vec3<f32>(660f, -229f, 696f)), Struct_1(vec2<i32>(-33052i, -1i), vec3<f32>(-1494f, -360f, -398f)), Struct_1(vec2<i32>(-28494i, 7996i), vec3<f32>(-528f, -434f, -438f)), Struct_1(vec2<i32>(0i, 29485i), vec3<f32>(683f, 1783f, -535f)), Struct_1(vec2<i32>(-1i, 1i), vec3<f32>(-1686f, -178f, 1505f)), Struct_1(vec2<i32>(1i, 70301i), vec3<f32>(-1338f, 663f, -321f)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec3<f32>(-1512f, -2601f, 664f)), Struct_1(vec2<i32>(-12225i, 58642i), vec3<f32>(456f, -879f, 201f)));

var<private> global2: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false));

var<private> global3: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_add_vec2_i32(firstLeadingBit(-vec2<i32>(36112i, -7611i)), ~(-vec2<i32>(u_input.b, u_input.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_f32(f32(-1f) * -556f), arg_0)))));
    var var_1 = u_input.c <= firstLeadingBit(~u_input.c);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(112506u, 1u, u_input.c, 1u), vec4<u32>(22020u, u_input.c, 0u, u_input.c))), firstLeadingBit(4294967295u)), u_input.c), 32u)];
    return ~(~_wgslsmith_add_u32(u_input.c, reverseBits(1u)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> vec3<u32> {
    global0 = array<Struct_1, 12>();
    global1 = array<Struct_1, 32>();
    let var_0 = Struct_1(-vec2<i32>(-1i, 1473i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-403f, -180f, arg_1.b.x)) - vec3<f32>(-407f, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x + arg_2) - _wgslsmith_f_op_f32(arg_2 + 178f)))));
    global2 = array<vec4<bool>, 28>();
    global2 = array<vec4<bool>, 28>();
    return ~_wgslsmith_sub_vec3_u32((vec3<u32>(45180u, 10131u, arg_0) ^ vec3<u32>(arg_0, arg_0, arg_0)) & reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0, 0u), vec3<u32>(u_input.c, 758u, 0u))), vec3<u32>(~(u_input.c >> (17858u % 32u)), min(_wgslsmith_mult_u32(u_input.c, u_input.c), u_input.c | 52295u), func_3(1107f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> f32 {
    global0 = array<Struct_1, 12>();
    let var_0 = select(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, 30886u, 18829u), countOneBits(vec3<u32>(40087u, u_input.c, u_input.c))), vec3<u32>(0u, u_input.c, 0u)), _wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.c, 1u, 4294967295u), vec3<u32>(u_input.c, 3747u, 57217u), vec3<bool>(true, true, arg_2)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(11308u, 4294967295u, u_input.c), vec3<u32>(0u, u_input.c, u_input.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), select(vec3<u32>(0u, 0u, u_input.c), vec3<u32>(1u, u_input.c, u_input.c), arg_2))), vec3<u32>(~(~u_input.c), ~(~u_input.c), 20204u)), ~abs(func_2(u_input.c, global0[_wgslsmith_index_u32(u_input.c, 12u)], -322f, arg_2)) & ~(~vec3<u32>(1u, 25877u, 39083u) << (abs(vec3<u32>(28642u, u_input.c, u_input.c)) % vec3<u32>(32u))), select(select(!select(vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, arg_2, false), vec3<bool>(true, arg_2, arg_2)), !select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(true, false, arg_2), arg_2), true), select(select(select(vec3<bool>(true, true, false), vec3<bool>(arg_2, arg_2, false), arg_2), !vec3<bool>(false, arg_2, arg_2), !vec3<bool>(arg_2, arg_2, arg_2)), select(vec3<bool>(false, false, true), select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(true, false, false), arg_2), arg_2), !select(vec3<bool>(true, false, arg_2), vec3<bool>(false, true, arg_2), arg_2)), vec3<bool>(true, true, arg_2)));
    let var_1 = u_input.a;
    global3 = ~_wgslsmith_mod_u32(u_input.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, u_input.c), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, var_0.x) & var_0.xy, var_0.zz)));
    let var_2 = !vec4<bool>(true, true, false, arg_2);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1112f) * _wgslsmith_f_op_f32(abs(arg_1.b.x)));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    global3 = u_input.c & _wgslsmith_mult_u32(select(~u_input.c, 10877u, false), u_input.c >> (u_input.c % 32u));
    let var_0 = arg_1.x;
    global3 = ~func_3(-255f);
    var var_1 = global1[_wgslsmith_index_u32(max(u_input.c, ~24338u), 32u)];
    var var_2 = global0[_wgslsmith_index_u32(24953u, 12u)];
    return Struct_1(vec2<i32>(-2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, -94009i, 1681i, 48821i), -vec4<i32>(var_1.a.x, var_2.a.x, var_1.a.x, var_2.a.x))), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(260f + _wgslsmith_f_op_f32(-2526f + 2036f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1452f, -943f)) + 549f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1970f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(1151f, 421f, 1000f), global1[_wgslsmith_index_u32(u_input.c, 32u)], true)), -2321f)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -936f) * 2058f), -1000f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-425f * -304f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-545f, -1607f)))))))), any(vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), true, true, true)), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1557f, -1135f, -500f))) * vec3<f32>(-383f, -1297f, 1506f)), Struct_1(vec2<i32>(u_input.d.x, 23518i) << (vec2<u32>(37846u, 4294967295u) % vec2<u32>(32u)), vec3<f32>(1000f, -1090f, -252f)), true)) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(303f, -406f, 152f), Struct_1(u_input.d.zz, vec3<f32>(-133f, 670f, 563f)), true)) + _wgslsmith_div_f32(-238f, -934f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1158f))))));
    global3 = func_2(49252u, func_4(_wgslsmith_f_op_f32(-1000f - var_0.b.x), vec2<f32>(_wgslsmith_f_op_f32(select(var_0.b.x, 1273f, u_input.a == var_0.a.x)), _wgslsmith_f_op_f32(func_1(var_0.b, func_4(575f, vec2<f32>(-281f, 427f), false, false), true))), any(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), true), -927f, true).x;
    global1 = array<Struct_1, 32>();
    var var_1 = vec3<i32>(-1i) * -(~_wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(-15179i, u_input.d.x, var_0.a.x)) ^ u_input.d);
    var var_2 = Struct_1(select(u_input.d.zx, abs(abs(var_0.a)), vec2<bool>(true, (u_input.c | 1u) >= ~3965u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2094f), -189f, var_0.b.x));
    var_1 = u_input.d;
    global3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1404f, 1548f)))), vec4<i32>(2147483647i, u_input.d.x, func_4(_wgslsmith_f_op_f32(var_2.b.x * -871f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b.xy, vec2<f32>(171f, -291f)) * _wgslsmith_f_op_vec2_f32(var_0.b.xx * vec2<f32>(var_2.b.x, 499f))), true & all(vec3<bool>(true, false, false)), all(vec3<bool>(false, false, false))).a.x, abs(0i)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, var_2.b.x), 250f)), _wgslsmith_f_op_f32(-1341f + -333f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(250f)))), _wgslsmith_div_f32(466f, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(abs(-135f)), true)))));
}

