struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14> = array<f32, 14>(286f, 418f, -1049f, 1365f, 158f, -1214f, -836f, -283f, 480f, -1101f, 747f, 1314f, 355f, 1186f);

var<private> global1: array<f32, 28>;

var<private> global2: array<f32, 14>;

var<private> global3: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> i32 {
    let var_0 = 364f;
    var var_1 = Struct_4(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(_wgslsmith_sub_u32(arg_1.x, u_input.c.x), arg_1.x ^ 0u)), 4294967295u, 68580u, ~_wgslsmith_dot_vec2_u32(min(u_input.b, u_input.c), ~vec2<u32>(1u, u_input.d))));
    var_1 = Struct_4(max(var_1.a, var_1.a));
    let var_2 = true;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-167f, 436f, global2[_wgslsmith_index_u32(arg_1.x, 14u)]) - vec3<f32>(global1[_wgslsmith_index_u32(0u, 28u)], 866f, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_1.x, 14u)], global2[_wgslsmith_index_u32(u_input.e, 14u)], 536f) - vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], var_0, global0[_wgslsmith_index_u32(arg_1.x, 14u)])))), countOneBits(vec2<i32>(4918i & -u_input.a.x, ~(-10576i))), min(var_1.a, var_1.a), Struct_1(~var_1.a, vec3<u32>(arg_1.x, ~(0u << (arg_1.x % 32u)), 1u)), vec4<i32>(max(_wgslsmith_mod_i32(abs(u_input.a.x), min(-3552i, -11652i)), ~(u_input.a.x | 0i)), firstTrailingBit(-reverseBits(45230i)), ~min(35266i, 2147483647i), -2147483647i));
    return countOneBits(abs(abs(~(-2147483647i)) >> (reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(69321u, 0u, 20716u, var_1.a.x), vec4<u32>(var_1.a.x, var_1.a.x, var_3.c.x, 56844u))) % 32u)));
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))))));
    global1 = array<f32, 28>();
    let var_1 = Struct_4(vec4<u32>(~firstTrailingBit(~6091u), firstLeadingBit(~(~arg_1.a.b.x)), 1u, arg_1.a.b.x));
    var var_2 = -23159i;
    var var_3 = _wgslsmith_mod_vec3_i32(-(~(~min(u_input.a, vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)))), u_input.a);
    return _wgslsmith_div_vec2_i32(var_3.zz, min(~vec2<i32>(-1i, -61139i), vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, ~(-1i)), -func_3(false, vec2<u32>(5836u, arg_1.a.b.x)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> vec4<i32> {
    global2 = array<f32, 14>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], 764f, 438f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 14u)], global0[_wgslsmith_index_u32(u_input.e, 14u)], global1[_wgslsmith_index_u32(u_input.d, 28u)]), vec3<f32>(765f, 1402f, -2326f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(630f, -1488f, 887f))))))), _wgslsmith_mod_vec2_i32(func_2(-2677f, Struct_3(Struct_1(vec4<u32>(4294967295u, 25291u, u_input.c.x, u_input.b.x), vec3<u32>(29463u, 4294967295u, 110509u)))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(78452u, 14u)], global1[_wgslsmith_index_u32(38818u, 28u)]))), Struct_3(Struct_1(vec4<u32>(u_input.d, u_input.c.x, 51594u, u_input.b.x), vec3<u32>(u_input.b.x, 0u, u_input.e))))), select(~reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.d)) | vec4<u32>(87233u, u_input.c.x | 44189u, u_input.e, 53509u), firstLeadingBit(vec4<u32>(1u, _wgslsmith_mod_u32(94147u, 4294967295u), u_input.b.x ^ u_input.b.x, min(68459u, u_input.b.x))), true), Struct_1(vec4<u32>(99395u << (~u_input.e % 32u), u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 85329u, u_input.d, u_input.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, u_input.d, 58392u), vec4<u32>(u_input.c.x, u_input.e, 15297u, 4294967295u), vec4<u32>(34719u, u_input.d, u_input.e, u_input.c.x))), 27263u), ~(~countOneBits(vec3<u32>(4294967295u, u_input.b.x, 1u)))), vec4<i32>(-arg_0.x, _wgslsmith_mod_i32(max(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, 14021i), vec3<i32>(1i, 13665i, -21191i)), ~(-19113i)), func_2(-1907f, Struct_3(Struct_1(vec4<u32>(u_input.e, u_input.b.x, 1u, 11940u), vec3<u32>(4294967295u, 106977u, 22287u)))).x), 0i, i32(-1i) * -59051i));
    let var_1 = Struct_1(~(~firstTrailingBit(vec4<u32>(u_input.e, var_0.d.b.x, 4294967295u, 65667u))) & var_0.c, min(vec3<u32>(1u, 1u, 1u), max(~var_0.d.a.xzx, var_0.d.a.zyz)));
    var var_2 = _wgslsmith_sub_vec3_i32(-abs(reverseBits(arg_0)), var_0.e.wyy);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(259f - -981f)), -741f, -807f, 901f)));
    return _wgslsmith_mult_vec4_i32(~(~((vec4<i32>(20145i, var_2.x, var_2.x, u_input.a.x) | vec4<i32>(u_input.a.x, 1i, u_input.a.x, 39136i)) << (var_1.a % vec4<u32>(32u)))), var_0.e);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>) -> u32 {
    var var_0 = u_input.c ^ (_wgslsmith_mod_vec2_u32(u_input.c, u_input.b) ^ vec2<u32>(~_wgslsmith_add_u32(u_input.b.x, u_input.e), ~_wgslsmith_add_u32(u_input.c.x, 0u)));
    var var_1 = Struct_4(~(~vec4<u32>(firstLeadingBit(0u), ~1u, 19019u, 18664u)));
    var_1 = Struct_4(_wgslsmith_mult_vec4_u32(var_1.a, _wgslsmith_mod_vec4_u32(var_1.a, var_1.a)) ^ vec4<u32>(1u, min(var_1.a.x, 1u), _wgslsmith_add_u32(firstTrailingBit(u_input.c.x), var_1.a.x), 15518u));
    let var_2 = Struct_3(Struct_1((var_1.a >> (~var_1.a % vec4<u32>(32u))) << (select(_wgslsmith_mult_vec4_u32(var_1.a, vec4<u32>(var_1.a.x, var_0.x, 20140u, 0u)), var_1.a, any(vec3<bool>(false, true, true))) % vec4<u32>(32u)), ~var_1.a.yxy >> (var_1.a.zxw % vec3<u32>(32u))));
    let var_3 = ~(~var_1.a.yz);
    return min(min(~(31825u ^ var_1.a.x), ~max(max(0u, var_1.a.x), ~976u)), var_2.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(abs(-2147483647i), countOneBits(u_input.a.x)) << (u_input.c % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 0i), max(vec2<i32>(-2059i, u_input.a.x), u_input.a.yy)));
    let var_1 = Struct_1(vec4<u32>(func_4(-abs(u_input.a.xz), func_1(~u_input.a, false)), ~u_input.d, 74097u, min(20194u, _wgslsmith_sub_u32(abs(u_input.b.x), u_input.c.x))), vec3<u32>(u_input.b.x, 53866u, 1u));
    global1 = array<f32, 28>();
    var var_2 = Struct_3(Struct_1(var_1.a, var_1.b));
    global0 = array<f32, 14>();
    let var_3 = Struct_3(Struct_1(var_1.a, ~vec3<u32>(49761u, ~0u, ~1u)));
    global2 = array<f32, 14>();
    var_2 = var_3;
    global1 = array<f32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~(-(i32(-1i) * -2147483647i)), firstLeadingBit(abs(max(var_0, var_0)))), u_input.a.zz, 550f, vec3<i32>(-1i) * -vec3<i32>(var_0, -1i, abs(u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2740f, -744f)) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 14u)] * 296f)))) * global2[_wgslsmith_index_u32(1u, 14u)]));
}

