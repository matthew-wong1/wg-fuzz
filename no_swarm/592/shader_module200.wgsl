struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: i32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
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

var<private> global0: Struct_4;

var<private> global1: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(Struct_3(Struct_1(-2186f, vec4<u32>(0u, 21764u, 4294967295u, 1u), vec2<f32>(-1023f, 634f)), -30347i, vec3<i32>(12615i, i32(-2147483648), 37358i), 1209f)), Struct_4(Struct_3(Struct_1(661f, vec4<u32>(4294967295u, 62523u, 0u, 0u), vec2<f32>(164f, -500f)), -26680i, vec3<i32>(-1133i, 1979i, -1i), 191f)), Struct_4(Struct_3(Struct_1(1000f, vec4<u32>(57224u, 1u, 3868u, 1u), vec2<f32>(-830f, -229f)), 2147483647i, vec3<i32>(1i, -6665i, 1i), -675f)), Struct_4(Struct_3(Struct_1(446f, vec4<u32>(80186u, 11662u, 4294967295u, 1u), vec2<f32>(-1842f, -1472f)), -40476i, vec3<i32>(i32(-2147483648), -17905i, -1i), -953f)), Struct_4(Struct_3(Struct_1(-1000f, vec4<u32>(14398u, 0u, 117032u, 34338u), vec2<f32>(-1000f, 836f)), -1256i, vec3<i32>(-73589i, i32(-2147483648), -8784i), -1795f)), Struct_4(Struct_3(Struct_1(-1000f, vec4<u32>(40576u, 0u, 0u, 4294967295u), vec2<f32>(1852f, 420f)), -42520i, vec3<i32>(2147483647i, -55578i, 19052i), 825f)), Struct_4(Struct_3(Struct_1(-1000f, vec4<u32>(11218u, 19824u, 101541u, 0u), vec2<f32>(261f, -1005f)), -28296i, vec3<i32>(-35943i, 31791i, -51526i), -644f)), Struct_4(Struct_3(Struct_1(2817f, vec4<u32>(4294967295u, 51588u, 54200u, 1u), vec2<f32>(670f, 208f)), -23528i, vec3<i32>(-46979i, 0i, -1i), 2295f)), Struct_4(Struct_3(Struct_1(-364f, vec4<u32>(0u, 0u, 12070u, 0u), vec2<f32>(1426f, 1507f)), -1177i, vec3<i32>(-10613i, -32497i, 2147483647i), -1903f)), Struct_4(Struct_3(Struct_1(287f, vec4<u32>(36603u, 0u, 88243u, 30398u), vec2<f32>(-338f, -138f)), -46800i, vec3<i32>(-34995i, -49237i, 2147483647i), -480f)), Struct_4(Struct_3(Struct_1(403f, vec4<u32>(1u, 4294967295u, 47724u, 4294967295u), vec2<f32>(279f, -1288f)), 28798i, vec3<i32>(62306i, 58810i, 1i), 128f)), Struct_4(Struct_3(Struct_1(-177f, vec4<u32>(34968u, 0u, 1u, 20937u), vec2<f32>(-574f, 2081f)), -487i, vec3<i32>(i32(-2147483648), 31476i, -1310i), 1784f)), Struct_4(Struct_3(Struct_1(418f, vec4<u32>(1u, 0u, 36615u, 1u), vec2<f32>(159f, -1082f)), 17041i, vec3<i32>(1i, 2147483647i, 2147483647i), -2627f)), Struct_4(Struct_3(Struct_1(-260f, vec4<u32>(12988u, 1u, 1u, 1u), vec2<f32>(-1827f, -316f)), -1i, vec3<i32>(2147483647i, i32(-2147483648), 66115i), -1258f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = global0.a.a;
    var var_1 = global0.a.a;
    global0 = global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(reverseBits(abs(vec4<u32>(43437u, global0.a.a.b.x, var_1.b.x, var_0.b.x))), var_1.b >> (global0.a.a.b % vec4<u32>(32u)))), 14u)];
    var var_2 = var_0.b.xyw & global0.a.a.b.zyy;
    var var_3 = firstLeadingBit(global0.a.c) ^ global0.a.c;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(84721u, countOneBits(0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(var_1.b.x), 24301u ^ var_1.b.x), ~vec2<u32>(var_1.b.x, var_2.x)), var_1.b.x), abs(abs(~reverseBits(vec3<u32>(1u, 0u, var_1.b.x)))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool) -> i32 {
    let var_0 = Struct_2(vec3<u32>(0u, ~(~(arg_0 | arg_1)), ~arg_0), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(1206f * 1000f), _wgslsmith_f_op_f32(round(global0.a.d)), _wgslsmith_f_op_f32(global0.a.a.a - global0.a.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.c.x, global0.a.a.a, global0.a.a.c.x) - vec3<f32>(global0.a.a.c.x, -147f, -398f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1801f, global0.a.a.a, 655f))))), global0.a.c);
    var var_1 = vec3<u32>(_wgslsmith_mult_u32(global0.a.a.b.x, ~var_0.a.x), func_3(true), ~var_0.a.x);
    let var_2 = _wgslsmith_f_op_f32(243f * _wgslsmith_f_op_f32(619f - var_0.b.x));
    var var_3 = Struct_4(global0.a);
    var var_4 = 2147483647i & _wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, u_input.a)), vec2<i32>(min(global0.a.b, var_0.c.x) ^ 8600i, 1i));
    return var_3.a.b >> (~global0.a.a.b.x % 32u);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = -414f;
    var var_1 = Struct_4(Struct_3(global0.a.a, arg_3.x, vec3<i32>(0i, ~max(56175i, -4598i), -func_2(u_input.d.x, u_input.c.x, arg_1)), global0.a.d));
    var_1 = Struct_4(Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.b.x, global0.a.a.c.x, true)), arg_0.b.x), var_1.a.a.b, _wgslsmith_f_op_vec2_f32(max(var_1.a.a.c, _wgslsmith_f_op_vec2_f32(step(global0.a.a.c, arg_0.b.xx))))), u_input.a, var_1.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1674f - 786f) - 1198f)));
    var_1 = global1[_wgslsmith_index_u32(global0.a.a.b.x, 14u)];
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d)));
    return Struct_2(vec3<u32>(reverseBits(~1u), ~32555u, 29615u), _wgslsmith_f_op_vec3_f32(exp2(arg_0.b)), select(vec3<i32>(arg_3.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(66687i, arg_0.c.x), vec2<i32>(21611i, arg_3.x)), max(~var_1.a.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-26403i, global0.a.b), vec2<i32>(-40886i, arg_3.x)))), vec3<i32>((-45158i ^ arg_3.x) & -2147483647i, ~(-15546i), ~u_input.b), !(!(!arg_2.wwz))));
}

fn func_1(arg_0: Struct_5, arg_1: f32, arg_2: vec4<i32>) -> bool {
    let var_0 = func_4(Struct_2(vec3<u32>(arg_0.b.a.b.x, arg_0.b.a.b.x, _wgslsmith_mod_u32(arg_0.b.a.b.x << (u_input.d.x % 32u), ~27184u)), vec3<f32>(_wgslsmith_f_op_f32(-674f * _wgslsmith_f_op_f32(step(-978f, arg_1))), 781f, _wgslsmith_div_f32(arg_0.b.d, _wgslsmith_f_op_f32(-global0.a.d))), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.x, 1i, func_2(4294967295u, 24070u, arg_0.d)), arg_2.xwz)), !any(vec4<bool>(true, arg_0.d, arg_0.a, arg_0.d)) && all(vec3<bool>(false, true, true)), select(!select(select(vec4<bool>(arg_0.d, arg_0.d, false, false), vec4<bool>(arg_0.d, false, arg_0.d, false), vec4<bool>(arg_0.a, true, true, true)), !vec4<bool>(false, false, false, arg_0.d), !vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.d)), !vec4<bool>(!arg_0.a, arg_0.a, any(vec3<bool>(arg_0.a, true, arg_0.d)), true), arg_0.a), vec2<i32>(arg_0.b.c.x, -_wgslsmith_sub_i32(-2147483647i, arg_2.x)));
    let var_1 = arg_0.b;
    return true;
}

fn func_5(arg_0: bool) -> StorageBuffer {
    global0 = Struct_4(global0.a);
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u << (reverseBits(u_input.d.x) % 32u), 57455u), 14u)];
    var var_1 = !func_1(Struct_5(true, Struct_3(var_0.a.a, ~87857i, vec3<i32>(u_input.b, 1i, global0.a.c.x) | vec3<i32>(1i, -12185i, -22338i), _wgslsmith_f_op_f32(-global0.a.a.a)), _wgslsmith_mod_i32(-1i, -u_input.a), false, _wgslsmith_f_op_f32(-var_0.a.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global0.a.a.c.x, global0.a.a.c.x))))), select(_wgslsmith_mult_vec4_i32(~vec4<i32>(59264i, 1i, 3791i, global0.a.c.x), -vec4<i32>(2764i, var_0.a.c.x, 19380i, var_0.a.c.x)), -vec4<i32>(-2147483647i, 13857i, -1i, var_0.a.b), vec4<bool>(true, true, any(vec2<bool>(false, arg_0)), arg_0)));
    var_1 = arg_0;
    let var_2 = vec3<bool>(true, arg_0, !(!select(true, any(vec2<bool>(false, true)), false)));
    return StorageBuffer(vec4<u32>(7145u, _wgslsmith_mult_u32(func_4(func_4(Struct_2(vec3<u32>(u_input.c.x, global0.a.a.b.x, var_0.a.a.b.x), vec3<f32>(var_0.a.d, var_0.a.a.c.x, var_0.a.a.a), global0.a.c), true, vec4<bool>(false, var_2.x, true, arg_0), global0.a.c.xz), arg_0, vec4<bool>(arg_0, true, false, false), vec2<i32>(37557i, 1i) | vec2<i32>(var_0.a.b, u_input.a)).a.x, 1u), 4294967295u, ~func_4(Struct_2(var_0.a.a.b.xwy, vec3<f32>(global0.a.a.c.x, var_0.a.d, -788f), var_0.a.c), false, vec4<bool>(true, arg_0, arg_0, var_2.x), vec2<i32>(-2147483647i, 1i)).a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(((global0.a.c.x < u_input.e) != any(vec4<bool>(false, false, true, false))) || func_1(Struct_5(all(vec2<bool>(false, false)), global0.a, u_input.e, true, _wgslsmith_f_op_f32(floor(177f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.d) * _wgslsmith_f_op_f32(-global0.a.a.a)), min(~vec4<i32>(global0.a.c.x, global0.a.b, u_input.a, -77742i), countOneBits(vec4<i32>(2147483647i, -34934i, u_input.a, u_input.e)))));
}

