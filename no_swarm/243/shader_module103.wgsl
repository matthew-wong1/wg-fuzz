struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec4<i32>(-15887i, 6615i, 21976i, 1i), vec4<u32>(4294967295u, 37105u, 77687u, 0u), vec2<u32>(33945u, 0u), true, Struct_1(2147483647i, vec2<u32>(1u, 91354u), 56665u, vec4<f32>(1491f, -774f, 176f, 176f))), Struct_2(vec4<i32>(0i, -17753i, 13176i, 7640i), vec4<u32>(93487u, 0u, 26771u, 1u), vec2<u32>(40365u, 4294967295u), false, Struct_1(-20110i, vec2<u32>(11391u, 1u), 52110u, vec4<f32>(351f, -2012f, 551f, -890f))), Struct_2(vec4<i32>(-1i, 1i, 16137i, 2147483647i), vec4<u32>(36926u, 252u, 0u, 1u), vec2<u32>(1u, 60040u), true, Struct_1(35809i, vec2<u32>(1u, 1u), 55964u, vec4<f32>(-692f, 1553f, -1199f, 1000f))), Struct_2(vec4<i32>(-13873i, -29245i, -1186i, 13462i), vec4<u32>(0u, 0u, 4294967295u, 16192u), vec2<u32>(15381u, 25848u), false, Struct_1(-26802i, vec2<u32>(4294967295u, 107752u), 20066u, vec4<f32>(583f, 558f, 1271f, -1000f))), Struct_2(vec4<i32>(-17333i, -24350i, 2147483647i, 1i), vec4<u32>(42773u, 11411u, 82014u, 41224u), vec2<u32>(1u, 0u), true, Struct_1(i32(-2147483648), vec2<u32>(4294967295u, 0u), 0u, vec4<f32>(475f, -1156f, -1256f, -2309f))), Struct_2(vec4<i32>(-21532i, 0i, 2147483647i, i32(-2147483648)), vec4<u32>(4294967295u, 10503u, 18656u, 11128u), vec2<u32>(89220u, 30321u), true, Struct_1(12367i, vec2<u32>(0u, 0u), 1u, vec4<f32>(-1000f, 1421f, -418f, 1934f))), Struct_2(vec4<i32>(-37002i, 1i, 0i, 2147483647i), vec4<u32>(4294967295u, 10678u, 1u, 1u), vec2<u32>(29767u, 4294967295u), true, Struct_1(37290i, vec2<u32>(60195u, 0u), 4294967295u, vec4<f32>(-856f, 1000f, 645f, 434f))), Struct_2(vec4<i32>(-28579i, i32(-2147483648), -3411i, -1i), vec4<u32>(42452u, 66402u, 0u, 1u), vec2<u32>(2786u, 0u), false, Struct_1(0i, vec2<u32>(28770u, 183941u), 30169u, vec4<f32>(1475f, -1000f, -1424f, -592f))), Struct_2(vec4<i32>(7959i, -1i, 1i, -32861i), vec4<u32>(4294967295u, 13550u, 4294967295u, 1u), vec2<u32>(1u, 1u), false, Struct_1(-36084i, vec2<u32>(1u, 0u), 0u, vec4<f32>(-1084f, -1000f, -769f, -1281f))), Struct_2(vec4<i32>(44225i, -48032i, -18331i, i32(-2147483648)), vec4<u32>(4294967295u, 57441u, 41564u, 6670u), vec2<u32>(41470u, 31637u), false, Struct_1(1i, vec2<u32>(938u, 1u), 10642u, vec4<f32>(-543f, -1973f, -784f, 396f))));

var<private> global2: array<u32, 6>;

var<private> global3: vec4<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_sub_i32(-2147483647i, -(~(~10027i)));
    var var_1 = true;
    var_1 = !(abs(0i) == _wgslsmith_div_i32(arg_1.x, _wgslsmith_div_i32(-2147483647i, -1i))) || !any(vec2<bool>(all(vec3<bool>(true, true, true)), true));
    let var_2 = global0[_wgslsmith_index_u32(select(firstLeadingBit(firstLeadingBit(~(global2[_wgslsmith_index_u32(u_input.d.x, 6u)] >> (u_input.a.x % 32u)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, u_input.a.x, u_input.c.x)), vec3<u32>(~global3.x, _wgslsmith_sub_u32(43791u, global2[_wgslsmith_index_u32(u_input.e, 6u)]), 1u)), u_input.a.x), any(vec3<bool>(false, true, true)) || select(true, !(var_0 < u_input.b), !(arg_1.x <= arg_1.x))), 16u)];
    var var_3 = Struct_1(~select(var_0, var_0, var_2.d), countOneBits(select(~select(u_input.a.xy, u_input.a.zx, true), _wgslsmith_sub_vec2_u32(~u_input.d.xy, vec2<u32>(1u, global2[_wgslsmith_index_u32(u_input.d.x, 6u)])), all(vec4<bool>(true, var_2.c.x, var_2.c.x, var_2.d)))), 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, -890f, var_2.b.x, var_2.b.x)), _wgslsmith_f_op_vec4_f32(var_2.b * var_2.b), vec4<bool>(true, true, true, true))))));
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(43387u, u_input.e, 6532u, 2966u)) | ~u_input.a, ~(u_input.a >> (u_input.a % vec4<u32>(32u)))) ^ firstTrailingBit(vec4<u32>(var_3.c, var_3.c << (global3.x % 32u), global3.x, ~4294967295u)), ~(~u_input.a) | _wgslsmith_mod_vec4_u32(u_input.a, max(vec4<u32>(53016u, 4294967295u, u_input.d.x, 0u), abs(vec4<u32>(0u, 1u, var_3.b.x, 35560u)))), ~min(u_input.a, reverseBits(vec4<u32>(global3.x, global2[_wgslsmith_index_u32(var_3.b.x, 6u)], global3.x, u_input.d.x))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: i32) -> vec2<i32> {
    global0 = array<Struct_4, 16>();
    global3 = vec4<u32>(global3.x, arg_1, _wgslsmith_sub_u32(arg_1, ~4294967295u ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1, 1u, 1u), u_input.a)), max(~global3.x, _wgslsmith_dot_vec4_u32(func_3(arg_3, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -53052i), vec2<i32>(u_input.b, 2147483647i))), u_input.a)));
    global2 = array<u32, 6>();
    let var_0 = -arg_3;
    let var_1 = Struct_4(!vec3<bool>(!select(arg_0, arg_0, true), arg_0, firstLeadingBit(arg_3) >= 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-723f, arg_2, 1793f, 1122f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 1000f, -209f, arg_2))))), !select(select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, arg_0, arg_0)), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, false, false), vec3<bool>(true, false, false)), true), !select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, false, arg_0)), all(vec4<bool>(false, true, arg_0, true))), all(vec3<bool>(all(vec2<bool>(true, arg_0)) | false, arg_0, arg_0)));
    return abs(~_wgslsmith_sub_vec2_i32(max(vec2<i32>(var_0, -21534i), vec2<i32>(1i, u_input.b)), -vec2<i32>(0i, var_0)));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    var var_0 = 1u;
    let var_1 = abs(func_2(false, global3.x, -325f, _wgslsmith_add_i32(0i, 28957i)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -649f) + vec2<f32>(arg_0, 751f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, 216f)))), _wgslsmith_div_i32(58040i, -1i) <= func_2(true, u_input.a.x, arg_0, var_1.x).x)))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1787f))))));
    global0 = array<Struct_4, 16>();
    global1 = array<Struct_2, 10>();
    return StorageBuffer(vec3<i32>(var_1.x, u_input.b, 7778i), abs((~global3.yw >> (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u))) | vec2<u32>(global2[_wgslsmith_index_u32(firstTrailingBit(global3.x), 6u)], 65255u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -630f) - -328f)))));
}

