struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec2<i32>(110487i, 8559i), false, false, Struct_2(Struct_1(-1i), Struct_1(0i), 570f)), Struct_3(vec2<i32>(-1i, -80559i), true, true, Struct_2(Struct_1(-1i), Struct_1(-81145i), 732f)), Struct_3(vec2<i32>(1i, -5588i), true, true, Struct_2(Struct_1(-1i), Struct_1(49098i), 2517f)), Struct_3(vec2<i32>(-24519i, -77714i), true, true, Struct_2(Struct_1(1i), Struct_1(-6603i), -1447f)), Struct_3(vec2<i32>(2147483647i, -1i), false, true, Struct_2(Struct_1(-8527i), Struct_1(-28667i), 636f)), Struct_3(vec2<i32>(0i, -28943i), false, false, Struct_2(Struct_1(i32(-2147483648)), Struct_1(-1i), -1282f)), Struct_3(vec2<i32>(-1i, 1i), true, true, Struct_2(Struct_1(-41741i), Struct_1(2147483647i), 521f)), Struct_3(vec2<i32>(-31706i, 27236i), false, false, Struct_2(Struct_1(1i), Struct_1(54878i), -2691f)), Struct_3(vec2<i32>(-1i, 0i), false, true, Struct_2(Struct_1(1i), Struct_1(-10302i), 692f)), Struct_3(vec2<i32>(1i, i32(-2147483648)), true, true, Struct_2(Struct_1(-31307i), Struct_1(1i), -1000f)), Struct_3(vec2<i32>(58222i, 1i), false, false, Struct_2(Struct_1(i32(-2147483648)), Struct_1(-2491i), -785f)), Struct_3(vec2<i32>(-2909i, 1i), false, true, Struct_2(Struct_1(1i), Struct_1(72885i), -136f)), Struct_3(vec2<i32>(-14411i, 21706i), true, false, Struct_2(Struct_1(0i), Struct_1(-1i), 1000f)), Struct_3(vec2<i32>(-4437i, 56431i), false, true, Struct_2(Struct_1(56542i), Struct_1(1i), -772f)), Struct_3(vec2<i32>(33927i, i32(-2147483648)), false, false, Struct_2(Struct_1(i32(-2147483648)), Struct_1(35850i), 1125f)), Struct_3(vec2<i32>(i32(-2147483648), -79312i), false, true, Struct_2(Struct_1(-11189i), Struct_1(-19827i), 1335f)), Struct_3(vec2<i32>(i32(-2147483648), -1i), true, true, Struct_2(Struct_1(24569i), Struct_1(1i), 1000f)), Struct_3(vec2<i32>(i32(-2147483648), 43833i), false, false, Struct_2(Struct_1(i32(-2147483648)), Struct_1(13533i), 692f)), Struct_3(vec2<i32>(-14049i, -39019i), true, true, Struct_2(Struct_1(i32(-2147483648)), Struct_1(15353i), 199f)), Struct_3(vec2<i32>(17698i, 1i), false, false, Struct_2(Struct_1(2147483647i), Struct_1(-1i), 377f)), Struct_3(vec2<i32>(19979i, 37329i), false, false, Struct_2(Struct_1(1i), Struct_1(0i), 438f)), Struct_3(vec2<i32>(-182i, 11876i), true, false, Struct_2(Struct_1(-66347i), Struct_1(37335i), 2091f)), Struct_3(vec2<i32>(1i, 6617i), false, false, Struct_2(Struct_1(6552i), Struct_1(4540i), -278f)), Struct_3(vec2<i32>(i32(-2147483648), 1i), true, false, Struct_2(Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), -1217f)), Struct_3(vec2<i32>(-55823i, 63720i), false, false, Struct_2(Struct_1(2147483647i), Struct_1(42370i), -723f)), Struct_3(vec2<i32>(i32(-2147483648), i32(-2147483648)), true, true, Struct_2(Struct_1(0i), Struct_1(-20868i), 870f)), Struct_3(vec2<i32>(-22509i, -9732i), false, false, Struct_2(Struct_1(-1583i), Struct_1(i32(-2147483648)), -2848f)), Struct_3(vec2<i32>(-50820i, -1i), false, false, Struct_2(Struct_1(-8875i), Struct_1(53347i), -400f)));

var<private> global2: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(75362u, 44257u, 0u), vec3<u32>(40423u, 0u, 0u), vec3<u32>(0u, 8098u, 21283u), vec3<u32>(10413u, 4294967295u, 0u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_5) -> vec4<u32> {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.c, arg_2.b.x ^ _wgslsmith_sub_u32(0u, u_input.b), arg_2.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(40346u, arg_2.a.x, ~1u, firstTrailingBit(1u & u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(~arg_2.a.x, arg_2.b.x, min(u_input.c, u_input.a), ~4294967295u), vec4<u32>(select(0u, u_input.a, arg_1), _wgslsmith_dot_vec3_u32(vec3<u32>(7997u, 60667u, 0u), arg_2.b), abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, 74754u, u_input.b, u_input.a), vec4<u32>(0u, 4294967295u, 36534u, arg_2.b.x))))));
    global2 = array<vec3<u32>, 4>();
    global1 = array<Struct_3, 28>();
    let var_1 = Struct_5(arg_2.b.zx, global2[_wgslsmith_index_u32(21266u, 4u)] >> (_wgslsmith_clamp_vec3_u32(arg_2.b, vec3<u32>(~40813u, 2931u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_2.a.x, 1u, arg_2.a.x), vec4<u32>(32593u, arg_2.a.x, arg_2.b.x, arg_2.a.x))), vec3<u32>(arg_2.a.x & arg_2.b.x, 780u, 37564u)) % vec3<u32>(32u)), vec4<f32>(1000f, arg_2.d.x, arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1367f - 1000f)), -784f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -618f), _wgslsmith_f_op_f32(min(-524f, 1201f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1926f)))));
    var_0 = 1u;
    return vec4<u32>(~(~arg_2.a.x), 63382u, arg_2.b.x, 0u);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<bool>) -> vec4<bool> {
    var var_0 = select(select(!vec3<bool>(true, arg_2.x, arg_1.x < arg_1.x), arg_2, true), !select(vec3<bool>(!arg_2.x, any(vec2<bool>(arg_2.x, false)), !arg_2.x), vec3<bool>(arg_2.x & false, true, true), true), vec3<bool>(arg_2.x, true || arg_2.x, (u_input.a >= u_input.c) != arg_2.x));
    var var_1 = countOneBits(reverseBits(arg_1.wxx));
    let var_2 = 1000f;
    var var_3 = func_3(-(~min(i32(-1i) * -1i, arg_1.x)), any(vec4<bool>(var_0.x, all(select(vec4<bool>(false, var_0.x, arg_2.x, false), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(arg_2.x, var_0.x, false, var_0.x))), true, !(-583f < var_2))), Struct_5(min(vec2<u32>(4294967295u, u_input.a), firstTrailingBit(vec2<u32>(0u, u_input.c))) >> (vec2<u32>(40794u, u_input.a) % vec2<u32>(32u)), vec3<u32>(~22338u, u_input.c, 0u) & vec3<u32>(u_input.a, ~27041u, ~u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_2, -1000f, var_2))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, -1105f) - vec4<f32>(var_2, var_2, var_2, var_2)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, var_2, var_2), vec3<f32>(var_2, -772f, var_2), arg_2)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 1273f, 238f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-122f, var_2, 501f) - vec3<f32>(461f, var_2, var_2)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1414f, 1000f, -544f) + vec3<f32>(-238f, 469f, -320f)))))));
    var var_4 = Struct_4(global1[_wgslsmith_index_u32(58636u, 28u)]);
    return !(!vec4<bool>(_wgslsmith_dot_vec2_u32(var_3.xx, vec2<u32>(22497u, 29929u)) > var_3.x, 46529i <= abs(var_4.a.d.a.a), true, arg_2.x));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<bool>) -> u32 {
    let var_0 = vec2<i32>(countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(0i, 45923i, 9646i, -1i)), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(1i, 1i, 1i, 1i))), -1i);
    var var_1 = Struct_1(max(0i, -1i));
    return 0u;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(35034i);
    global0 = _wgslsmith_f_op_f32(ceil(1011f));
    let var_1 = Struct_3(vec2<i32>(-1i) * -abs(abs(vec2<i32>(-42788i, -18356i))), func_4(true, firstLeadingBit(min(vec4<u32>(u_input.b, u_input.c, 4294967295u, u_input.b), vec4<u32>(u_input.b, u_input.a, u_input.c, 39783u))), func_2(_wgslsmith_clamp_i32(-18533i, -18205i, var_0.a), -vec4<i32>(-1i, 31525i, var_0.a, -66883i), vec3<bool>(true, false, false))) <= (firstLeadingBit(abs(u_input.c)) ^ 0u), true, Struct_2(Struct_1(~min(var_0.a, var_0.a)), Struct_1(_wgslsmith_add_i32(abs(33325i), _wgslsmith_add_i32(0i, 1i))), _wgslsmith_f_op_f32(ceil(-1433f))));
    var var_2 = _wgslsmith_f_op_f32(167f + _wgslsmith_f_op_f32(var_1.d.c + _wgslsmith_f_op_f32(428f - var_1.d.c)));
    global1 = array<Struct_3, 28>();
    return 989f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(~u_input.a, u_input.b, ~(~u_input.b | max(u_input.c, 2992u)));
    let var_1 = select(_wgslsmith_sub_vec2_i32(select(min(vec2<i32>(-1i, -2147483647i) >> (var_0.yy % vec2<u32>(32u)), -vec2<i32>(2147483647i, 2147483647i)), vec2<i32>(-1i) * -vec2<i32>(-38574i, 54095i), vec2<bool>(true, true)), abs(vec2<i32>(-46891i, ~(-42051i)))), ~(~(vec2<i32>(1032i, 27235i) ^ (vec2<i32>(296i, -3981i) >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))))), vec2<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), 453f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(873f)) - _wgslsmith_f_op_f32(584f - -1000f))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_f32(min(1175f, -514f)))) * -553f);
    var var_2 = vec3<i32>(reverseBits(-8916i), -2147483647i, -6615i);
    var var_3 = vec3<f32>(-726f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1063f, -1024f))))), -156f);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_div_f32(-241f, -1425f), _wgslsmith_f_op_f32(-887f * _wgslsmith_f_op_f32(floor(var_3.x))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-756f, var_3.x, var_3.x), vec3<f32>(1839f, 871f, -155f), vec3<bool>(true, true, true))))), vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -578f))));
    let x = u_input.a;
    s_output = StorageBuffer(-37752i, -28211i, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_add_i32(1i, var_2.x));
}

