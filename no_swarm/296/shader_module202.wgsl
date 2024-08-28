struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-204f, vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true, vec2<bool>(false, true)), Struct_1(-1673f, vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true, vec2<bool>(false, false)), 1147f, vec4<i32>(7031i, 3527i, 0i, -1i), vec4<f32>(1000f, 2355f, -1000f, 290f));

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(-401f, vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false, vec2<bool>(false, false)), Struct_1(-2164f, vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true, vec2<bool>(true, true)), 162f, vec4<i32>(i32(-2147483648), 1i, 1184i, 2147483647i), vec4<f32>(746f, 1000f, -290f, 196f)), Struct_2(Struct_1(1104f, vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true, vec2<bool>(true, true)), Struct_1(866f, vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true, vec2<bool>(false, false)), 2147f, vec4<i32>(-1i, -47669i, -25164i, 0i), vec4<f32>(-2528f, -141f, 1000f, -2557f)), Struct_2(Struct_1(417f, vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false, vec2<bool>(false, true)), Struct_1(-669f, vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false, vec2<bool>(false, true)), 357f, vec4<i32>(1i, 1i, -69021i, 2147483647i), vec4<f32>(938f, 1617f, -743f, -1400f)), Struct_2(Struct_1(-261f, vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true, vec2<bool>(true, false)), Struct_1(243f, vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false, vec2<bool>(true, true)), 1553f, vec4<i32>(-41866i, -1i, 25475i, -9177i), vec4<f32>(-1074f, -528f, 172f, 189f)), Struct_2(Struct_1(-541f, vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), true, vec2<bool>(true, true)), Struct_1(212f, vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true, vec2<bool>(false, true)), 1310f, vec4<i32>(39150i, -4491i, 13118i, 22472i), vec4<f32>(215f, -611f, -290f, -1683f)), Struct_2(Struct_1(1000f, vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false, vec2<bool>(false, false)), Struct_1(-646f, vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true, vec2<bool>(false, false)), -1099f, vec4<i32>(-1i, 0i, -31853i, 2147483647i), vec4<f32>(-1799f, 2147f, 154f, -1143f)), Struct_2(Struct_1(1054f, vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false, vec2<bool>(true, true)), Struct_1(-1216f, vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true, vec2<bool>(false, true)), 542f, vec4<i32>(-23423i, -21588i, i32(-2147483648), -1i), vec4<f32>(1148f, 1983f, 283f, -151f)), Struct_2(Struct_1(-1438f, vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true, vec2<bool>(false, false)), Struct_1(1242f, vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true, vec2<bool>(true, true)), -744f, vec4<i32>(0i, 535i, -1i, -72115i), vec4<f32>(685f, 1592f, -624f, -1000f)), Struct_2(Struct_1(269f, vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true, vec2<bool>(true, true)), Struct_1(252f, vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), true, vec2<bool>(false, true)), 1415f, vec4<i32>(-41500i, -12425i, 1i, 38677i), vec4<f32>(427f, 145f, 292f, 225f)), Struct_2(Struct_1(-1000f, vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), false, vec2<bool>(true, true)), Struct_1(-549f, vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true, vec2<bool>(true, false)), -688f, vec4<i32>(2147483647i, -1i, -1i, i32(-2147483648)), vec4<f32>(309f, -1497f, 956f, -711f)), Struct_2(Struct_1(-730f, vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false, vec2<bool>(false, false)), Struct_1(-809f, vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true, vec2<bool>(true, false)), 816f, vec4<i32>(-2027i, 34889i, i32(-2147483648), 53870i), vec4<f32>(1081f, 857f, 848f, -987f)), Struct_2(Struct_1(-1138f, vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false, vec2<bool>(false, false)), Struct_1(-273f, vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true, vec2<bool>(false, false)), -1000f, vec4<i32>(28028i, 25450i, -10043i, 2975i), vec4<f32>(-241f, 1007f, -508f, -1160f)), Struct_2(Struct_1(-1000f, vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false, vec2<bool>(false, false)), Struct_1(-577f, vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true, vec2<bool>(true, false)), -1445f, vec4<i32>(10729i, -12611i, 36313i, 0i), vec4<f32>(-1363f, -554f, -206f, -363f)), Struct_2(Struct_1(384f, vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true, vec2<bool>(false, false)), Struct_1(754f, vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), false, vec2<bool>(true, true)), -269f, vec4<i32>(2147483647i, -31892i, 12996i, i32(-2147483648)), vec4<f32>(-925f, 286f, -1058f, -1074f)), Struct_2(Struct_1(-714f, vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false, vec2<bool>(false, false)), Struct_1(362f, vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false, vec2<bool>(false, false)), -2421f, vec4<i32>(i32(-2147483648), 1i, 41744i, -30172i), vec4<f32>(2326f, -1673f, 1837f, 439f)), Struct_2(Struct_1(-722f, vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false, vec2<bool>(false, true)), Struct_1(-1814f, vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true, vec2<bool>(false, true)), -1575f, vec4<i32>(0i, i32(-2147483648), -24591i, -36535i), vec4<f32>(348f, 1467f, 581f, 1212f)));

var<private> global2: array<f32, 8>;

var<private> global3: u32;

var<private> global4: array<bool, 1>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_2(global0.b, global0.b, _wgslsmith_f_op_f32(f32(-1f) * -167f), global0.d, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a, global0.b.a, global2[_wgslsmith_index_u32(arg_0.x, 8u)], -520f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.e)) * vec4<f32>(-441f, _wgslsmith_div_f32(906f, -1000f), global2[_wgslsmith_index_u32(reverseBits(arg_0.x), 8u)], global2[_wgslsmith_index_u32(~0u, 8u)])), select(!select(global0.b.b, vec4<bool>(global4[_wgslsmith_index_u32(arg_0.x, 1u)], false, global0.a.b.x, global4[_wgslsmith_index_u32(arg_0.x, 1u)]), vec4<bool>(true, global4[_wgslsmith_index_u32(3763u, 1u)], global0.a.c.x, false)), !(!vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 1u)], true, global0.a.e.x, true)), global4[_wgslsmith_index_u32(arg_0.x, 1u)]))));
    global0 = global1[_wgslsmith_index_u32(~1u, 16u)];
    return _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(max(arg_0, ~_wgslsmith_add_vec4_u32(arg_0, vec4<u32>(arg_0.x, 59043u, 4294967295u, 1u))), vec4<u32>(countOneBits(_wgslsmith_mod_u32(22542u, 94807u)), ~arg_0.x, 5014u | _wgslsmith_clamp_u32(2171u, 20048u, 1u), abs(~arg_0.x))), arg_0);
}

fn func_2() -> u32 {
    var var_0 = global0.d.x;
    var var_1 = max(reverseBits(abs(vec4<u32>(_wgslsmith_div_u32(0u, 1u), ~33722u, ~1u, _wgslsmith_sub_u32(4294967295u, 3750u)))), vec4<u32>(4294967295u, 1u, 0u, ~4294967295u) | _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(func_3(vec4<u32>(22175u, 1u, 0u, 30157u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(1u, 62719u, 4294967295u, 77589u))), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), func_3(vec4<u32>(88u, 38073u, 5450u, 15325u)))));
    var var_2 = Struct_3(global0.b, vec4<bool>(var_1.x < var_1.x, global0.b.b.x, !global4[_wgslsmith_index_u32(var_1.x, 1u)], true), Struct_1(473f, select(select(!global0.b.b, select(vec4<bool>(true, global0.a.b.x, false, false), global0.a.b, global0.b.e.x), true), select(global0.b.c, select(global0.a.b, vec4<bool>(global4[_wgslsmith_index_u32(var_1.x, 1u)], false, global4[_wgslsmith_index_u32(1u, 1u)], global4[_wgslsmith_index_u32(1u, 1u)]), global0.a.c), all(global0.a.b.xyz)), global0.a.c), vec4<bool>(all(select(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 1u)], global4[_wgslsmith_index_u32(var_1.x, 1u)], global4[_wgslsmith_index_u32(var_1.x, 1u)]), global0.b.c.wwx, global0.b.c.wyw)), !(global0.d.x >= u_input.a.x), global4[_wgslsmith_index_u32(4294967295u, 1u)], !(global0.b.c.x && global0.b.c.x)), any(!(!global0.a.b.zyx)), global0.b.b.wx));
    var var_3 = global1[_wgslsmith_index_u32(4294967295u ^ _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 11546u, var_1.x, var_1.x), vec4<u32>(var_1.x, var_1.x, var_1.x, 42310u)), ~vec4<u32>(1u, 4294967295u, var_1.x, 25513u), var_2.a.c), firstTrailingBit(abs(vec4<u32>(var_1.x, 4294967295u, 34271u, var_1.x))), countOneBits(vec4<u32>(var_1.x, var_1.x, 0u, 32663u)) << (~vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 13673u, var_1.x, var_1.x), vec4<u32>(var_1.x, 57971u, var_1.x, var_1.x)) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 30680u), vec4<u32>(4294967295u, 48651u, var_1.x, var_1.x)), vec4<u32>(41794u, 12997u, var_1.x, 60781u))), 16u)];
    var_3 = Struct_2(global0.a, Struct_1(global2[_wgslsmith_index_u32(func_3(~vec4<u32>(69071u, 13553u, 46852u, 1u)).x, 8u)], select(select(var_3.b.b, vec4<bool>(var_3.b.c.x, var_3.a.d, true, false), false), vec4<bool>(any(var_2.a.b.zxw), true, any(var_3.a.c), global0.b.b.x), vec4<bool>(global4[_wgslsmith_index_u32(45275u, 1u)], !var_2.b.x, all(vec2<bool>(true, var_3.b.c.x)), all(vec3<bool>(true, var_2.a.e.x, global0.a.d)))), !vec4<bool>(!global4[_wgslsmith_index_u32(var_1.x, 1u)], global0.b.d | var_3.a.d, !global4[_wgslsmith_index_u32(var_1.x, 1u)], !var_2.c.b.x), true, vec2<bool>(!(global0.a.b.x || false), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.x, 8u)] - -1309f) <= _wgslsmith_f_op_f32(step(var_2.a.a, global0.b.a)))), _wgslsmith_f_op_f32(round(global0.b.a)), -(-var_3.d ^ ~vec4<i32>(-29537i, 119740i, 0i, global0.d.x)), global0.e);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(min(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x), func_3(vec4<u32>(0u, 15580u, var_1.x, var_1.x))), ~vec4<u32>(1u, 43817u, 1u, 1u)), _wgslsmith_add_vec4_u32(~vec4<u32>(var_1.x, 53838u, 44636u, var_1.x), vec4<u32>(var_1.x << (var_1.x % 32u), max(55888u, var_1.x), var_1.x, 4294967295u)), vec4<u32>(0u ^ _wgslsmith_add_u32(4294967295u, var_1.x), var_1.x, 4294967295u, _wgslsmith_clamp_u32(var_1.x, var_1.x, var_1.x) << (abs(1u) % 32u))), vec4<u32>(1u, ~var_1.x ^ _wgslsmith_mult_u32(var_1.x, 0u), var_1.x, ~reverseBits(var_1.x)) << (select(vec4<u32>(~var_1.x, _wgslsmith_mod_u32(12178u, 4294967295u), 1u, var_1.x ^ var_1.x), vec4<u32>(var_1.x, var_1.x, 4294967295u, ~2733u), !(-27745i == var_3.d.x)) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_1 {
    global2 = array<f32, 8>();
    var var_0 = global1[_wgslsmith_index_u32(~arg_0.x, 16u)];
    let var_1 = select(_wgslsmith_add_vec4_u32(vec4<u32>(23643u, arg_0.x, 0u << (_wgslsmith_div_u32(arg_0.x, arg_0.x) % 32u), ~arg_0.x & arg_0.x), vec4<u32>(~(~0u), _wgslsmith_dot_vec2_u32(arg_0.yz, vec2<u32>(9422u, arg_0.x)), _wgslsmith_sub_u32(func_2(), arg_0.x), _wgslsmith_sub_u32(4294967295u << (arg_0.x % 32u), _wgslsmith_add_u32(arg_0.x, 0u)))), countOneBits(vec4<u32>(23366u, func_3(min(vec4<u32>(11995u, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 41360u, arg_0.x, 741u))).x, _wgslsmith_mod_u32(arg_0.x | 87845u, ~4294967295u), firstLeadingBit(51822u >> (arg_0.x % 32u)))), min(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, -18264i), ~u_input.a.x), 2147483647i) <= _wgslsmith_mult_i32(firstTrailingBit(1i), firstLeadingBit(2147483647i >> (arg_0.x % 32u))));
    var var_2 = Struct_3(var_0.b, var_0.b.b, Struct_1(_wgslsmith_f_op_f32(max(global0.e.x, -543f)), var_0.b.c, !var_0.b.b, global0.a.d, select(select(!vec2<bool>(var_0.a.d, false), select(global0.b.b.wx, var_0.a.b.ww, global0.b.d), var_0.b.e.x), global0.a.b.zw, vec2<bool>(true, false))));
    global1 = array<Struct_2, 16>();
    return Struct_1(var_2.a.a, vec4<bool>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, var_1.x), var_1.yzw) << (firstTrailingBit(arg_0.x) % 32u), 1u)], !(!var_2.c.b.x), global4[_wgslsmith_index_u32(arg_0.x, 1u)], false), select(!var_0.b.c, !select(vec4<bool>(global0.b.c.x, false, global4[_wgslsmith_index_u32(arg_0.x, 1u)], true), !var_2.b, var_2.a.b), false), !var_2.a.e.x, !vec2<bool>(!(!var_0.a.c.x), !global4[_wgslsmith_index_u32(~1u, 1u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_1(~vec3<u32>(_wgslsmith_div_u32(29543u, 4294967295u), 13973u, _wgslsmith_add_u32(63191u, 69569u)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, firstLeadingBit(global0.d)), countOneBits(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a)))), Struct_1(_wgslsmith_f_op_f32(round(-1625f)), vec4<bool>(global0.b.c.x, any(vec4<bool>(true, false, global4[_wgslsmith_index_u32(44564u, 1u)], global0.b.b.x)), false, any(global0.a.b.zyy)), select(!global0.a.c, select(select(global0.b.c, global0.b.c, global0.a.b.x), vec4<bool>(true, global0.b.c.x, global0.b.d, false), true), global0.a.c), true, vec2<bool>(true, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, 1u), 1u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-229f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(232f + global0.b.a))))), u_input.a, vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(11286u, abs(1u))), 8u)], _wgslsmith_f_op_f32(598f + global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~2729u, 1u, 1u), 8u)]), _wgslsmith_f_op_f32(ceil(-192f)), _wgslsmith_f_op_f32(global0.e.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 8u)] + global2[_wgslsmith_index_u32(4294967295u, 8u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(global0.e.xw)));
}

