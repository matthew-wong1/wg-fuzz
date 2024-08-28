struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(-903f, -1423f, -741f), vec3<f32>(-1332f, -1000f, -703f), vec3<f32>(-1435f, -240f, -231f), vec3<f32>(255f, 415f, 637f), vec3<f32>(490f, -1000f, 151f), vec3<f32>(-1800f, 1000f, 1206f), vec3<f32>(706f, -451f, -1000f), vec3<f32>(702f, 640f, -738f), vec3<f32>(2925f, 1217f, -1673f), vec3<f32>(1000f, -1693f, 1733f), vec3<f32>(246f, -412f, -1000f), vec3<f32>(-631f, 1814f, -1000f), vec3<f32>(329f, 816f, -1592f), vec3<f32>(-353f, 966f, -939f), vec3<f32>(-251f, -877f, 600f), vec3<f32>(1893f, 1010f, -166f), vec3<f32>(1012f, -1169f, -889f), vec3<f32>(795f, 1582f, 947f), vec3<f32>(363f, 1000f, -621f), vec3<f32>(416f, -718f, 1314f), vec3<f32>(189f, 1760f, 2085f), vec3<f32>(-597f, -1462f, -945f), vec3<f32>(1259f, -1614f, 1000f));

var<private> global2: i32;

var<private> global3: array<u32, 15> = array<u32, 15>(9332u, 4294967295u, 3349u, 58494u, 7927u, 0u, 34844u, 0u, 0u, 70222u, 21817u, 1u, 1u, 88074u, 0u);

var<private> global4: Struct_1 = Struct_1(4100u, vec2<i32>(-1i, i32(-2147483648)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> i32 {
    global4 = Struct_1(~(select(global4.a, abs(global4.a), all(vec3<bool>(true, true, true))) & reverseBits(4294967295u)), vec2<i32>(~(~min(0i, -1i)), -16214i));
    let var_0 = ~1u;
    var var_1 = arg_0;
    var var_2 = Struct_4(1u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.b.x, -743f, arg_0.b.x))) * global1[_wgslsmith_index_u32(arg_0.a.x, 23u)])))), var_1.a.yyw);
    global1 = array<vec3<f32>, 23>();
    return min(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.a, global0.b.x << (4294967295u % 32u), i32(-1i) * -1i, _wgslsmith_add_i32(global0.b.x, arg_1.x)), select(vec4<i32>(u_input.a, 2147483647i, -1i, global4.b.x), reverseBits(vec4<i32>(-16014i, global4.b.x, arg_1.x, global4.b.x)), true)), vec4<i32>(~_wgslsmith_mod_i32(-2147483647i, global4.b.x), select(-90835i, -22481i, true), ~arg_1.x, 2147483647i)), -global0.b.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * -116f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2126f))))));
    var var_1 = Struct_2(select(select(vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, global3[_wgslsmith_index_u32(0u, 15u)]), ~u_input.d, ~0u, 1u), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.d, 1u, global0.a, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(74149u, 20173u, 29924u, global3[_wgslsmith_index_u32(1u, 15u)]), vec4<u32>(56821u, u_input.d, u_input.c.x, 51684u), vec4<u32>(global4.a, 28007u, global4.a, global0.a))), true), (~vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 15u)], 97953u, 4294967295u, 9240u) & ~vec4<u32>(global4.a, global0.a, 4294967295u, u_input.c.x)) << ((_wgslsmith_clamp_vec4_u32(vec4<u32>(global4.a, global0.a, global0.a, u_input.b.x), vec4<u32>(global3[_wgslsmith_index_u32(17477u, 15u)], u_input.c.x, 1u, arg_1.a), vec4<u32>(14175u, arg_1.a, 43688u, global0.a)) | _wgslsmith_div_vec4_u32(vec4<u32>(global0.a, 17070u, global4.a, 0u), vec4<u32>(42624u, u_input.b.x, 4120u, 4294967295u))) % vec4<u32>(32u)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(106f * 233f), _wgslsmith_f_op_f32(294f * var_0))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1132f, _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 848f), vec2<f32>(var_0, var_0), vec2<bool>(true, true)))))));
    let var_2 = -670f;
    var var_3 = Struct_1(global0.a, vec2<i32>(u_input.a, global4.b.x));
    var var_4 = select(vec2<bool>(false, true), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), true));
    return func_3(Struct_2(_wgslsmith_mult_vec4_u32(var_1.a, vec4<u32>(~0u, 1u, global0.a >> (global4.a % 32u), 1u)), vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * 844f)))), vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, -2147483647i, arg_0.x), vec3<i32>(1i, arg_0.x, 34521i)), arg_1.b.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<f32>) -> vec4<f32> {
    let var_0 = ~(~_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(44551i, global0.b.x, arg_1, global0.b.x), vec4<i32>(arg_1, u_input.a, arg_1, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(global4.b.x, 27602i, -2147483647i, 1i), vec4<i32>(global0.b.x, 60990i, global4.b.x, 45516i))), ~(~vec4<i32>(arg_1, -38868i, global4.b.x, 1i))));
    global3 = array<u32, 15>();
    global0 = Struct_1(global0.a, var_0.xz);
    let var_1 = min(firstLeadingBit(-_wgslsmith_add_i32(~global0.b.x, func_2(var_0.wxw, Struct_1(1u, vec2<i32>(var_0.x, arg_1))))), -1i);
    let var_2 = vec4<i32>(var_0.x, global0.b.x >> (~_wgslsmith_dot_vec3_u32(arg_0.www, arg_0.xwz) % 32u), _wgslsmith_add_i32(func_2(-var_0.yzz, Struct_1(1u, vec2<i32>(0i, 34274i))), ~arg_1), -17234i) | _wgslsmith_div_vec4_i32(max(_wgslsmith_add_vec4_i32(var_0, var_0) << (countOneBits(arg_0) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(75209i, global0.b.x, var_0.x, 0i), -vec4<i32>(global4.b.x, -1i, global0.b.x, var_0.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_1, 1i, ~(-12532i)), var_0));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-520f, 292f, 2248f, 549f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(475f, -1181f, 272f, -1215f), vec4<f32>(1859f, 693f, 811f, 331f), false)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_1(vec4<u32>(20056u, u_input.b.x, 264u, 0u), global0.b.x, vec4<f32>(-1546f, -1101f, -397f, -501f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-122f, -574f, 193f, 1083f), vec4<f32>(-1787f, -410f, 1000f, 661f))))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -190f) + 605f), _wgslsmith_f_op_f32(f32(-1f) * -812f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1229f, -1096f)) + _wgslsmith_f_op_f32(942f - -1000f)), 1000f) - _wgslsmith_f_op_vec4_f32(func_1(min(vec4<u32>(71651u, global4.a, u_input.d, global0.a), vec4<u32>(49821u, global0.a, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25218u, 15u)], 15u)], 15u)], 1066u)) << (~vec4<u32>(global3[_wgslsmith_index_u32(0u, 15u)], 8943u, 1u, u_input.b.x) % vec4<u32>(32u)), select(_wgslsmith_div_i32(1i, global4.b.x), firstLeadingBit(-17739i), true), vec4<f32>(1000f, -1000f, 1f, -796f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-439f, var_0.x, 2274f, var_0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1385f, var_0.x, -105f, -2284f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, 580f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2301f, -175f, var_0.x, var_0.x)), false)))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(266f, var_0.x, 2455f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1900f, var_0.x, -987f, -541f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 278f, var_0.x, -1244f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1976f, var_0.x, var_0.x) * vec4<f32>(426f, -630f, var_0.x, var_0.x)))))));
    let var_1 = _wgslsmith_mult_i32(46532i, ~abs(abs(_wgslsmith_mult_i32(u_input.a, global0.b.x))));
    global1 = array<vec3<f32>, 23>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2130f);
    var var_3 = false;
    var var_4 = true;
    var var_5 = Struct_4(global4.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2098f, _wgslsmith_f_op_f32(f32(-1f) * -346f), _wgslsmith_f_op_f32(floor(var_2)))), select(vec3<u32>(max(0u, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global4.a, 15u)], 4294967295u)), ~(~41688u), _wgslsmith_add_u32(u_input.d, abs(u_input.d))), abs(vec3<u32>(36550u, u_input.b.x, global0.a)) >> (vec3<u32>(global3[_wgslsmith_index_u32(~14080u, 15u)], max(global0.a, 1u), 1u) % vec3<u32>(32u)), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true)));
    var var_6 = -8451i;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~1u) ^ 23279u, vec2<i32>(_wgslsmith_dot_vec2_i32(countOneBits(global4.b), _wgslsmith_mult_vec2_i32(global0.b, global0.b & vec2<i32>(-1i, var_1))), countOneBits(0i)), u_input.c.x);
}

