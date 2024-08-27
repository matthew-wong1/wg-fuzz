struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false));

var<private> global1: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(-25585i, 1i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, 1846i));

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<f32>(473f, -1126f), vec3<i32>(-1i, 2147483647i, -20855i), vec3<f32>(-1013f, -1318f, -431f), vec2<bool>(false, false), 980f), Struct_1(vec2<f32>(-1000f, 402f), vec3<i32>(38420i, 29055i, 1i), vec3<f32>(-1394f, -2795f, 1285f), vec2<bool>(true, true), 1043f), Struct_1(vec2<f32>(-192f, 1324f), vec3<i32>(0i, -1i, 2147483647i), vec3<f32>(-1102f, -1073f, 1604f), vec2<bool>(false, true), -1366f), Struct_1(vec2<f32>(623f, -395f), vec3<i32>(-1i, -25026i, 46617i), vec3<f32>(1459f, -1287f, -770f), vec2<bool>(true, false), -731f), Struct_1(vec2<f32>(1008f, -1164f), vec3<i32>(18129i, 1i, i32(-2147483648)), vec3<f32>(764f, 275f, -342f), vec2<bool>(true, true), -713f), Struct_1(vec2<f32>(-1407f, 443f), vec3<i32>(-5705i, 2147483647i, 0i), vec3<f32>(-1604f, -1593f, -1000f), vec2<bool>(false, true), -624f), Struct_1(vec2<f32>(590f, 799f), vec3<i32>(2147483647i, -37603i, 2147483647i), vec3<f32>(699f, 1000f, -285f), vec2<bool>(false, false), 529f), Struct_1(vec2<f32>(-136f, 1165f), vec3<i32>(0i, 48050i, 18406i), vec3<f32>(752f, 819f, 1215f), vec2<bool>(true, false), 452f), Struct_1(vec2<f32>(1608f, -1206f), vec3<i32>(i32(-2147483648), -6169i, i32(-2147483648)), vec3<f32>(1000f, 1354f, -1402f), vec2<bool>(true, false), -1000f), Struct_1(vec2<f32>(545f, 1000f), vec3<i32>(13349i, 2147483647i, 0i), vec3<f32>(-324f, 1079f, -471f), vec2<bool>(true, false), -1598f), Struct_1(vec2<f32>(-659f, 800f), vec3<i32>(-908i, -9725i, -7104i), vec3<f32>(-709f, 837f, 976f), vec2<bool>(false, true), -1314f), Struct_1(vec2<f32>(2339f, 1000f), vec3<i32>(-25683i, 36214i, 38591i), vec3<f32>(-1000f, -915f, -1572f), vec2<bool>(false, true), 812f));

var<private> global3: array<vec4<i32>, 22>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    let var_0 = Struct_3(Struct_1(vec2<f32>(arg_0.x, 1313f), vec3<i32>(u_input.b, -_wgslsmith_mult_i32(u_input.b, u_input.b), 0i), vec3<f32>(_wgslsmith_f_op_f32(round(1110f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) - _wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x)), vec2<bool>(true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-522f, 320f, true))), 268f)));
    global1 = array<vec3<i32>, 2>();
    global2 = array<Struct_1, 12>();
    global3 = array<vec4<i32>, 22>();
    global0 = array<vec3<bool>, 9>();
    return ~select(4294967295u, u_input.c, !all(select(vec3<bool>(var_0.a.d.x, true, var_0.a.d.x), vec3<bool>(true, false, var_0.a.d.x), true)));
}

fn func_3() -> vec2<u32> {
    var var_0 = u_input.d.x;
    var var_1 = global2[_wgslsmith_index_u32(u_input.d.x, 12u)];
    var_0 = 0u;
    var var_2 = vec2<u32>(func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.e, 189f, -2115f)))))), max(4294967295u, 4294967295u));
    var_0 = ~u_input.d.x;
    return vec2<u32>(3495u, 59960u);
}

fn func_1() -> Struct_4 {
    global3 = array<vec4<i32>, 22>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1388f, _wgslsmith_f_op_f32(636f + _wgslsmith_f_op_f32(min(-410f, 419f))), 1189f, _wgslsmith_f_op_f32(f32(-1f) * -375f)))));
    let var_1 = select(vec2<u32>(u_input.a, func_2(var_0.xyx)), ~_wgslsmith_mod_vec2_u32(u_input.d << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), vec2<u32>(0u, u_input.a)) | (abs(func_3()) << (vec2<u32>(u_input.d.x, reverseBits(u_input.d.x)) % vec2<u32>(32u))), vec2<bool>((u_input.c >= ~12227u) & (u_input.b >= 19131i), (_wgslsmith_add_u32(u_input.c, u_input.a) == u_input.d.x) && any(vec4<bool>(true, true, true, true))));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(331f, _wgslsmith_f_op_f32(var_0.x * 1624f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-557f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1992f, 221f))), var_0.x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x))), -1256f));
    let var_2 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(7488u, var_1.x), 12u)]);
    return Struct_4(-_wgslsmith_mult_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, 1298i, u_input.b), vec4<i32>(-54750i, var_2.a.b.x, -1i, u_input.b))), -(~u_input.b)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(1496f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * var_2.a.a.x))))), ~reverseBits(~vec4<u32>(36282u, 33833u, var_1.x, 4294967295u)), Struct_2(min(vec3<u32>(~4294967295u, 41641u, var_1.x), min(firstTrailingBit(vec3<u32>(96300u, 12755u, var_1.x)), vec3<u32>(0u, 0u, var_1.x))), reverseBits(firstLeadingBit(abs(var_2.a.b.x))), all(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, 0u), 9u)]), var_1 ^ _wgslsmith_mult_vec2_u32(~vec2<u32>(40611u, 0u), vec2<u32>(u_input.a, 0u))));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    global0 = array<vec3<bool>, 9>();
    var var_0 = 1000f;
    let var_1 = countOneBits(min(_wgslsmith_div_vec3_u32(~select(vec3<u32>(1u, 21220u, 1u), arg_3.d.a, vec3<bool>(arg_2.d.c, arg_1.x, arg_1.x)), ~vec3<u32>(1u, arg_3.d.a.x, 20173u)), ~(~vec3<u32>(0u, arg_2.c.x, arg_3.c.x))));
    var var_2 = arg_3.b;
    var var_3 = Struct_4(-1i >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.c, 0u)), arg_3.d.d), var_1.x >> (1u % 32u), _wgslsmith_sub_u32(func_3().x, u_input.a)) % 32u), vec2<f32>(_wgslsmith_f_op_f32(abs(-2228f)), arg_0), _wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, arg_3.c.x, arg_3.d.a.x), var_1), u_input.d.x, ~var_1.x, select(var_1.x, arg_3.d.d.x, true)), select(vec4<u32>(arg_3.c.x, 10681u | arg_2.c.x, ~56496u, ~u_input.d.x), ~vec4<u32>(1u, arg_3.d.d.x, 21778u, arg_3.d.d.x), select(vec4<bool>(false, arg_1.x, true, false), vec4<bool>(true, arg_2.d.c, arg_2.d.c, arg_2.d.c), arg_2.d.c))), func_1().d);
    return global2[_wgslsmith_index_u32(0u, 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<i32>, 22>();
    global0 = array<vec3<bool>, 9>();
    var var_0 = _wgslsmith_f_op_f32(max(789f, -464f));
    let var_1 = Struct_3(func_4(211f, vec4<bool>(true, true, true, false), func_1(), func_1()));
    global3 = array<vec4<i32>, 22>();
    let var_2 = -vec4<i32>(var_1.a.b.x, -_wgslsmith_sub_i32(-28536i, 1i), u_input.b, _wgslsmith_div_i32(select(var_1.a.b.x, var_1.a.b.x, true), _wgslsmith_div_i32(-48444i, 39448i)) ^ (select(u_input.b, var_1.a.b.x, var_1.a.d.x) << (~0u % 32u)));
    global2 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(reverseBits(~u_input.a), u_input.c), abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.d.x, u_input.a, u_input.c), vec3<u32>(u_input.c, 1u, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 9u)]), ~vec3<u32>(u_input.c, 0u, 3611u)), u_input.d.x)));
}

