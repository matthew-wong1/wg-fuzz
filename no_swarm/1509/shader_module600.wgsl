struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(-137f, -602f, -850f), 40976u, true);

var<private> global1: u32 = 26100u;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(274f, vec3<f32>(507f, -776f, -243f)), Struct_1(1000f, vec3<f32>(-1111f, -429f, 1502f)), Struct_1(-344f, vec3<f32>(715f, -1000f, 2045f)), Struct_1(941f, vec3<f32>(1516f, 1000f, -540f)), Struct_1(961f, vec3<f32>(-1316f, -538f, 1000f)), Struct_1(-977f, vec3<f32>(-1000f, 133f, 146f)), Struct_1(465f, vec3<f32>(644f, -105f, 293f)), Struct_1(-287f, vec3<f32>(-1697f, -175f, -842f)), Struct_1(830f, vec3<f32>(809f, 1371f, -1000f)), Struct_1(475f, vec3<f32>(-643f, 826f, 178f)), Struct_1(-303f, vec3<f32>(-167f, 407f, 823f)), Struct_1(1480f, vec3<f32>(736f, 432f, -1000f)), Struct_1(-1807f, vec3<f32>(2075f, -1605f, 460f)), Struct_1(-704f, vec3<f32>(-615f, -583f, -1417f)), Struct_1(-742f, vec3<f32>(466f, 1775f, 965f)), Struct_1(-808f, vec3<f32>(841f, 587f, -1272f)), Struct_1(-414f, vec3<f32>(-491f, 1635f, -1273f)), Struct_1(-487f, vec3<f32>(591f, -1684f, -2534f)), Struct_1(-499f, vec3<f32>(568f, 1481f, -1694f)), Struct_1(-1083f, vec3<f32>(-2122f, 542f, -781f)), Struct_1(-292f, vec3<f32>(121f, 1000f, -2177f)), Struct_1(1064f, vec3<f32>(873f, -593f, 215f)), Struct_1(491f, vec3<f32>(1000f, -1120f, 122f)), Struct_1(-760f, vec3<f32>(2356f, -1068f, 828f)), Struct_1(720f, vec3<f32>(1227f, -178f, 1425f)), Struct_1(1000f, vec3<f32>(1564f, -587f, -453f)));

var<private> global3: array<Struct_4, 25>;

var<private> global4: i32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_3 {
    global4 = ~_wgslsmith_sub_i32(11308i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-60378i, -1i, -48940i), vec3<i32>(-3692i, -9514i, 1i))) << (4301u % 32u);
    let var_0 = firstLeadingBit(abs(24557i));
    return Struct_3(_wgslsmith_f_op_vec3_f32(global0.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a))), 1u, global0.c);
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(1i >> (0u % 32u), 16904i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -47111i, 0i), vec3<i32>(-1i, -1i, -1i)), -28443i)), ~_wgslsmith_mult_vec4_i32(min(vec4<i32>(8876i, -1i, 0i, -886i), vec4<i32>(51620i, -9138i, 13717i, 2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 21090i, 59378i, -8981i), vec4<i32>(3281i, 0i, 1i, 0i))), true), vec4<i32>(42893i, _wgslsmith_mod_i32(select(_wgslsmith_dot_vec3_i32(vec3<i32>(55142i, -35409i, 0i), vec3<i32>(2147483647i, 5593i, 25523i)), ~29502i, all(vec2<bool>(true, global0.c))), -(~(-2188i))), select(_wgslsmith_div_i32(i32(-1i) * -27743i, ~(-25664i)), -56809i, true), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(1537i, -1i)), ~(-15225i)), vec2<i32>(-1i, firstTrailingBit(-16085i)))));
    var var_1 = -_wgslsmith_div_i32(~2856i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(35991i, var_0, -2147483647i, -1i), -vec4<i32>(35545i, 21813i, -66272i, 33205i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, var_0, 0i, -7450i), vec4<i32>(var_0, 45906i, var_0, -26276i), vec4<i32>(var_0, var_0, -1i, 0i))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), -909f, global0.a.x, -1202f)))));
    var var_3 = Struct_5(Struct_2(!vec2<bool>(select(global0.c, global0.c, true), true), global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), _wgslsmith_mult_u32(1u, ~4294967295u)), 26u)]), firstTrailingBit(i32(-1i) * -1i), global0.a.x, min(abs(~(-2147483647i)), i32(-1i) * -1i) << (_wgslsmith_mod_u32(29665u, _wgslsmith_dot_vec3_u32(~vec3<u32>(44462u, global0.b, u_input.a.x), _wgslsmith_add_vec3_u32(u_input.a.xwx, vec3<u32>(1u, u_input.a.x, 1u)))) % 32u));
    var var_4 = u_input.a.yw;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(157f + 502f))), 1114f, 944f);
}

fn func_1() -> Struct_2 {
    global0 = func_2();
    return Struct_2(!vec2<bool>(global0.c | !global0.c, global0.c), Struct_1(1490f, _wgslsmith_f_op_vec3_f32(-global0.a)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.x * global0.a.x))) * _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_vec3_f32(func_3())));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_1().a;
    var var_2 = func_2();
    global1 = reverseBits(_wgslsmith_add_u32(select(var_2.b, _wgslsmith_mod_u32(16982u, 1u), true) ^ _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 65966u, 1u, u_input.a.x)), ~u_input.a.x));
    var var_3 = func_1().b;
    var var_4 = Struct_5(Struct_2(var_1, func_1().c, func_1().b), -23698i, 152f, 0i);
    let var_5 = var_4.d;
    var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_4.a.c.b.x * var_4.a.b.b.x), var_3.a, 282f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.a, vec3<f32>(1000f, -413f, 395f))))), 7764u, !func_2().c);
    let x = u_input.a;
    s_output = StorageBuffer(max((vec2<i32>(2147483647i, var_4.d) >> (firstLeadingBit(vec2<u32>(global0.b, 4294967295u)) % vec2<u32>(32u))) | ~vec2<i32>(var_4.b, 2118i), vec2<i32>(53427i, -_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.b, var_4.b, var_4.b), vec3<i32>(var_4.d, -23875i, var_4.b)))));
}

