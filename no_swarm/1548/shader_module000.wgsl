struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool = true;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec4<i32>(2147483647i, 0i, -3786i, 0i), Struct_1(vec3<u32>(2243u, 33469u, 8231u), 1i, vec2<f32>(-637f, 1522f), vec4<f32>(626f, -1242f, 1177f, 1839f), 1138f)), Struct_2(vec4<i32>(1i, 0i, 1i, 7141i), Struct_1(vec3<u32>(0u, 0u, 1u), 4002i, vec2<f32>(-599f, -701f), vec4<f32>(1352f, -709f, 536f, -447f), 474f)), Struct_2(vec4<i32>(2147483647i, 1i, -64587i, 2147483647i), Struct_1(vec3<u32>(4294967295u, 1u, 0u), -5196i, vec2<f32>(-248f, -1374f), vec4<f32>(941f, 835f, 610f, 1000f), 905f)), Struct_2(vec4<i32>(1i, 6319i, 0i, i32(-2147483648)), Struct_1(vec3<u32>(1u, 80502u, 28378u), 1i, vec2<f32>(-1187f, 774f), vec4<f32>(855f, -715f, 2003f, 1862f), 249f)), Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 54674i, -51751i), Struct_1(vec3<u32>(0u, 0u, 0u), 48823i, vec2<f32>(1463f, -2015f), vec4<f32>(1151f, -300f, -164f, -1000f), 206f)), Struct_2(vec4<i32>(-2582i, 0i, 85767i, 2147483647i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 47955u), -3051i, vec2<f32>(263f, 1000f), vec4<f32>(258f, 606f, -981f, 525f), 519f)), Struct_2(vec4<i32>(12876i, 21857i, -51623i, -1i), Struct_1(vec3<u32>(0u, 1u, 1u), 29394i, vec2<f32>(-1661f, -237f), vec4<f32>(2173f, -802f, -211f, 1396f), -1000f)), Struct_2(vec4<i32>(1i, 27859i, 1i, 1i), Struct_1(vec3<u32>(1u, 22520u, 4294967295u), -1i, vec2<f32>(-676f, -1404f), vec4<f32>(-385f, -1323f, 624f, 2017f), -1086f)), Struct_2(vec4<i32>(1361i, 2147483647i, -58509i, -1i), Struct_1(vec3<u32>(72990u, 0u, 4294967295u), -1i, vec2<f32>(996f, -388f), vec4<f32>(-763f, -1703f, 1270f, 1484f), -302f)), Struct_2(vec4<i32>(17866i, 0i, 0i, 1i), Struct_1(vec3<u32>(0u, 0u, 14588u), -34554i, vec2<f32>(321f, -202f), vec4<f32>(676f, -1000f, -840f, -1196f), 1086f)), Struct_2(vec4<i32>(7801i, -1i, -19098i, 2155i), Struct_1(vec3<u32>(15282u, 0u, 1u), -19545i, vec2<f32>(732f, 1699f), vec4<f32>(-111f, -685f, 2046f, 1511f), -1345f)), Struct_2(vec4<i32>(32498i, 9818i, 0i, i32(-2147483648)), Struct_1(vec3<u32>(18809u, 0u, 22343u), i32(-2147483648), vec2<f32>(-2109f, -1530f), vec4<f32>(-794f, -895f, -572f, -260f), 1229f)), Struct_2(vec4<i32>(0i, 23270i, 14036i, i32(-2147483648)), Struct_1(vec3<u32>(35031u, 0u, 9848u), 46795i, vec2<f32>(-1377f, -1155f), vec4<f32>(1414f, 1000f, -156f, -336f), -780f)), Struct_2(vec4<i32>(i32(-2147483648), -41275i, 0i, 2147483647i), Struct_1(vec3<u32>(3229u, 19236u, 1217u), 8168i, vec2<f32>(-1127f, -1247f), vec4<f32>(-1094f, 596f, -2036f, 801f), 151f)), Struct_2(vec4<i32>(2147483647i, -60603i, -1i, -29630i), Struct_1(vec3<u32>(65444u, 31655u, 1u), -1i, vec2<f32>(-1451f, 635f), vec4<f32>(1277f, 1000f, 1787f, 782f), -3327f)), Struct_2(vec4<i32>(-551i, -1i, 1i, -49656i), Struct_1(vec3<u32>(57340u, 0u, 4294967295u), 18552i, vec2<f32>(-1637f, -311f), vec4<f32>(-937f, -248f, 391f, -711f), -1000f)), Struct_2(vec4<i32>(1i, 1i, -46110i, -23105i), Struct_1(vec3<u32>(56007u, 0u, 25764u), 2147483647i, vec2<f32>(1505f, 1000f), vec4<f32>(1000f, 117f, -1000f, -2070f), 275f)), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, 0i, 0i), Struct_1(vec3<u32>(0u, 31243u, 4294967295u), 50347i, vec2<f32>(-229f, -425f), vec4<f32>(112f, 283f, 1150f, 250f), -862f)));

var<private> global4: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = Struct_1(global2.b.a, firstLeadingBit(1i) | firstLeadingBit(~(u_input.c & global2.a.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global2.b.d.xw * _wgslsmith_f_op_vec2_f32(global2.b.d.yx * global2.b.c)), global2.b.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-243f, 1363f, _wgslsmith_f_op_f32(-global2.b.e), global2.b.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2.b.e)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.b.c.x), -457f))))));
    var var_1 = global2.a;
    var var_2 = Struct_3(countOneBits(var_1.zw), false, Struct_1(_wgslsmith_mult_vec3_u32(global2.b.a, firstLeadingBit(vec3<u32>(1u, u_input.a, global2.b.a.x)) ^ global2.b.a), -79483i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -514f), global2.b.c.x), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.b.c.x))), var_0.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global2.b.d.x, -1469f)))), global2.b.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -747f)))));
    global0 = ~(~abs(u_input.b ^ ~var_0.a.x));
    var var_3 = 4294967295u;
    return arg_0;
}

fn func_2() -> u32 {
    global2 = Struct_2(firstTrailingBit(global2.a), Struct_1(vec3<u32>(reverseBits(u_input.b), 0u, func_3(global2.b.a.x)) ^ ~_wgslsmith_sub_vec3_u32(vec3<u32>(76391u, u_input.a, global2.b.a.x), vec3<u32>(34419u, u_input.b, 1u)), _wgslsmith_div_i32(-global2.a.x, abs(0i)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.b.e, global2.b.d.x), vec2<f32>(-1397f, global2.b.d.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global2.b.d)) + _wgslsmith_f_op_vec4_f32(global2.b.d - global2.b.d)))), _wgslsmith_div_f32(251f, _wgslsmith_f_op_f32(394f - _wgslsmith_f_op_f32(round(-188f))))));
    var var_0 = Struct_2(global2.a, Struct_1(vec3<u32>(reverseBits(func_3(global2.b.a.x)), ~(~u_input.b), global2.b.a.x), ~55640i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1241f, -346f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1152f, global2.b.d.x)))), global2.b.d, -290f));
    return var_0.b.a.x;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: i32) -> vec3<u32> {
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~76717u, _wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, func_2(), u_input.b, func_2()), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, global2.b.a.x, arg_1, arg_1), vec4<u32>(global2.b.a.x, u_input.a, 0u, global2.b.a.x))) << (10290u % 32u)), 18u)];
    global1 = arg_0;
    var var_0 = Struct_4(global2.b.a, firstLeadingBit(global2.b.a.xz) >> (~vec2<u32>(~34452u, arg_1) % vec2<u32>(32u)), select(select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(arg_0, false), vec2<bool>(false, arg_0)), true), vec2<bool>(arg_0, true), false), !(!select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), vec2<bool>(false, false))), vec2<bool>(false, arg_0)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.c.x, 901f, global2.b.c.x, -409f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.e, global2.b.e, -2118f, -140f))))));
    var var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, global2.b.a.x | var_0.a.x, 51051u, arg_1), ~(~vec4<u32>(global2.b.a.x, 25070u, u_input.a, 0u))), vec4<u32>(max(u_input.a, arg_1), arg_1 << (0u % 32u), 61552u, 69452u) & vec4<u32>(abs(global2.b.a.x), 4294967295u, global2.b.a.x, var_0.a.x)) ^ vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(23314u, min(arg_1, var_0.b.x)), _wgslsmith_div_u32(25421u, ~var_0.a.x)), min(var_0.a.x, firstLeadingBit(arg_1)), ~0u, u_input.b);
    return countOneBits(vec3<u32>(_wgslsmith_div_u32(u_input.a & (u_input.a ^ u_input.b), 4238u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.a.x, 37627u), vec2<u32>(17790u, global2.b.a.x)) % 32u)), var_2.x, ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~reverseBits(5559u), u_input.b, ~_wgslsmith_div_u32(~4294967295u, u_input.b));
    let var_1 = global3[_wgslsmith_index_u32(min(u_input.a, u_input.a), 18u)];
    global0 = global2.b.a.x;
    global0 = min(var_0.x, ~u_input.a & select(~global2.b.a.x, 63691u, true)) ^ _wgslsmith_sub_u32(~39672u, ~global2.b.a.x);
    var var_2 = ~abs(vec2<u32>(~1u >> (var_1.b.a.x % 32u), var_0.x));
    let var_3 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(select(global2.b.a << (vec3<u32>(global2.b.a.x, u_input.b, global2.b.a.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(abs(var_1.b.a), ~vec3<u32>(1u, u_input.b, global2.b.a.x)), vec3<bool>(false, true, any(vec3<bool>(false, false, true)))), firstLeadingBit(~vec3<u32>(1u, 1u, var_1.b.a.x))), select(abs(_wgslsmith_mod_vec3_u32(func_1(false, var_2.x, 1000f, -1i), _wgslsmith_div_vec3_u32(global2.b.a, vec3<u32>(var_0.x, var_2.x, u_input.a)))), ~(~var_1.b.a), any(vec4<bool>(true, true, all(vec3<bool>(true, true, false)), any(vec3<bool>(true, false, true))))));
    var var_4 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(vec3<i32>(global2.b.b, -1i, u_input.c)) & vec3<i32>(u_input.c << (var_3.x % 32u), ~global2.a.x, abs(u_input.c))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.b.d.x, 912f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(745f, global2.b.d.x)), u_input.c < 65874i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1291f, var_1.b.d.x) - var_1.b.c)))), global2.b.b);
}

