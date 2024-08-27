struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 1u);

var<private> global1: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(1033f, 1284f), vec2<f32>(1298f, 534f), vec2<f32>(-222f, -1285f), vec2<f32>(-791f, 877f), vec2<f32>(-773f, 1722f), vec2<f32>(1419f, -2033f), vec2<f32>(1442f, 1664f), vec2<f32>(1202f, -1172f), vec2<f32>(643f, 118f), vec2<f32>(-981f, 131f), vec2<f32>(846f, -1928f), vec2<f32>(-873f, -683f), vec2<f32>(-841f, -775f), vec2<f32>(-1000f, -2535f), vec2<f32>(1141f, 1328f), vec2<f32>(1660f, 1095f), vec2<f32>(-1235f, 791f));

var<private> global2: u32;

var<private> global3: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(-44242i, 0i, -11740i), vec3<i32>(-39983i, 5593i, i32(-2147483648)), vec3<i32>(-3101i, 0i, 46751i), vec3<i32>(1i, -25341i, 1i), vec3<i32>(-72856i, i32(-2147483648), -6995i), vec3<i32>(0i, 1i, 30292i), vec3<i32>(-1i, -62026i, 29438i), vec3<i32>(-15389i, 2147483647i, 1i), vec3<i32>(-1i, -16049i, 1i), vec3<i32>(-22748i, i32(-2147483648), 0i), vec3<i32>(19389i, 2147483647i, 1i), vec3<i32>(-24106i, 0i, -1i), vec3<i32>(-56424i, 9969i, 2147483647i), vec3<i32>(1i, -25415i, 1i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> bool {
    global0 = vec2<u32>(arg_0.b.a, global0.x);
    return 0i != (arg_0.b.b.x & ~0i);
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_1(_wgslsmith_sub_u32(min(4294967295u, u_input.a.x) ^ 70453u, ~(~u_input.a.x)), _wgslsmith_clamp_vec2_i32(reverseBits(-vec2<i32>(arg_0, arg_0)), reverseBits(firstLeadingBit(~vec2<i32>(1i, arg_0))), vec2<i32>(arg_0, _wgslsmith_add_i32(-arg_0, arg_0))));
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(var_0.a, 1u), ~var_0.a, select(global0.x, 41228u, false))), firstLeadingBit(abs(~vec3<u32>(69699u, 41860u, 29655u)))), select(~var_0.b, var_0.b, select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
    let var_1 = select(firstTrailingBit(u_input.a), ~vec2<u32>(var_0.a, ~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), any(vec2<bool>(false, any(vec2<bool>(false, true)))));
    return true;
}

fn func_1(arg_0: vec2<f32>) -> vec3<u32> {
    global2 = 0u;
    var var_0 = !all(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), -510f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(min(-1507f, -811f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.x, 593f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(round(1402f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -173f) + vec4<f32>(197f, arg_0.x, arg_0.x, -1480f)))))));
    let var_2 = select(!vec2<bool>(!func_2(Struct_2(Struct_1(4294967295u, vec2<i32>(2147483647i, -63816i)), Struct_1(4294967295u, vec2<i32>(-24170i, -2147483647i)), Struct_1(91976u, vec2<i32>(50983i, -2147483647i)), vec3<u32>(global0.x, global0.x, u_input.a.x)), u_input.a), true), select(vec2<bool>(true, true && func_3(2147483647i)), vec2<bool>(true, true), true), true);
    global0 = u_input.a;
    return min(_wgslsmith_add_vec3_u32(vec3<u32>(firstLeadingBit(u_input.a.x), 63808u, global0.x), ~(~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))) & ((max(vec3<u32>(31257u, global0.x, 60838u), vec3<u32>(12734u, global0.x, 116219u)) >> (vec3<u32>(27u, global0.x, global0.x) % vec3<u32>(32u))) & (firstLeadingBit(vec3<u32>(global0.x, 4294967295u, 1u)) | vec3<u32>(1u, 16825u, 0u))), ~(~(~vec3<u32>(4294967295u, u_input.a.x, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(firstTrailingBit(~_wgslsmith_div_vec3_i32(vec3<i32>(25889i, 2147483647i, 40286i), global3[_wgslsmith_index_u32(global0.x, 15u)])), global3[_wgslsmith_index_u32(0u, 15u)]) >> (select(func_1(vec2<f32>(-106f, 246f)), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(297u, u_input.a.x, u_input.a.x)), vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(52212u, u_input.a.x, u_input.a.x), vec3<u32>(global0.x, 15835u, global0.x)), 42390u)), vec3<bool>(!any(vec3<bool>(false, false, true)), true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)))) % vec3<u32>(32u));
    var var_1 = Struct_2(Struct_1(~_wgslsmith_div_u32(~1u, ~0u), vec2<i32>(_wgslsmith_div_i32(~(-16343i), var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -1i, var_0.x), ~var_0))), Struct_1(abs(reverseBits(~u_input.a.x)), var_0.yy), Struct_1(global0.x, min(vec2<i32>(1i, var_0.x << (u_input.a.x % 32u)), _wgslsmith_sub_vec2_i32(var_0.zz, select(var_0.zy, var_0.yx, vec2<bool>(true, true))))), abs(vec3<u32>(~u_input.a.x & global0.x, countOneBits(_wgslsmith_clamp_u32(u_input.a.x, 67689u, 21038u)), ~(~u_input.a.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2416f, 427f, -2139f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(117f, -2357f, -599f) * vec3<f32>(1264f, 1000f, 704f)) + vec3<f32>(-103f, 103f, 610f)))) * vec3<f32>(-1575f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -173f))))));
    global3 = array<vec3<i32>, 15>();
    global1 = array<vec2<f32>, 17>();
    let var_3 = Struct_2(Struct_1((4294967295u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0.x, 1u, global0.x), vec4<u32>(u_input.a.x, 27443u, var_1.a.a, u_input.a.x)) % 32u)) << (~(~4294967295u) % 32u), _wgslsmith_div_vec2_i32(var_1.a.b, vec2<i32>(-var_1.c.b.x, -var_0.x))), var_1.a, var_1.a, firstLeadingBit(~firstTrailingBit(var_1.d)));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))) - var_2.x), var_2.x);
    var var_5 = Struct_1(abs(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global0.x, 60746u, 85032u, var_3.d.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(1615u, var_3.d.x, 1u, 14799u) << (vec4<u32>(3570u, var_1.d.x, u_input.a.x, var_1.b.a) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(59153u, var_3.c.a, var_1.d.x, 13058u), vec4<u32>(var_1.b.a, 4294967295u, 69396u, 11282u))))), firstTrailingBit(firstLeadingBit(vec2<i32>(1i, ~var_1.b.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mod_i32(-11917i, _wgslsmith_add_i32(var_5.b.x, 32501i)) | _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.b.x, var_1.c.b.x), var_3.a.b), _wgslsmith_div_i32(var_3.a.b.x, -1i)), ~((var_5.b.x >> (8737u % 32u)) | var_3.c.b.x), reverseBits(var_0.x), var_0.x), vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 35473u, var_1.b.a), vec3<u32>(34536u, var_1.b.a, 37494u), var_1.d), reverseBits(vec3<u32>(67811u, 4294967295u, 48860u)), true), (var_3.d ^ vec3<u32>(37088u, 1u, var_5.a)) & var_1.d), 3001u));
}

