struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(1i, 1i, -923i, 0i));

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), 37318i, 0i);

var<private> global2: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-417f, -426f, 543f, 775f), vec4<f32>(-1343f, 455f, 404f, -946f), vec4<f32>(-1172f, 1946f, 1000f, -1546f), vec4<f32>(245f, -1110f, -549f, 1786f), vec4<f32>(882f, 137f, 1398f, 275f), vec4<f32>(-411f, -1000f, 475f, -522f), vec4<f32>(162f, 1036f, 235f, -1215f), vec4<f32>(1000f, -301f, -1000f, 1315f), vec4<f32>(-1754f, 1366f, -921f, 340f), vec4<f32>(1235f, 1673f, 1050f, 931f), vec4<f32>(1857f, 2476f, 1245f, 1476f), vec4<f32>(945f, -106f, 440f, 814f), vec4<f32>(-399f, -366f, 227f, -1000f), vec4<f32>(-589f, 2688f, -355f, -630f), vec4<f32>(-894f, 215f, -407f, 2609f), vec4<f32>(-1026f, 1679f, 166f, -597f), vec4<f32>(1488f, -352f, -1596f, 879f), vec4<f32>(-1000f, 366f, -924f, 1079f), vec4<f32>(-993f, 1677f, 1291f, 402f), vec4<f32>(190f, 1475f, -143f, -1184f), vec4<f32>(-466f, 212f, -593f, -462f), vec4<f32>(-2253f, 847f, -571f, 1384f), vec4<f32>(-313f, -835f, -179f, 500f), vec4<f32>(529f, -200f, 222f, -510f), vec4<f32>(-1558f, 253f, 500f, 1000f), vec4<f32>(276f, 1123f, -1000f, 1007f));

var<private> global3: u32 = 24176u;

var<private> global4: array<Struct_1, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1747f, -1260f, -1389f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-473f, -192f, 831f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(674f, 1673f, 1356f), vec3<f32>(-1280f, -1148f, 1208f), vec3<bool>(false, false, false)))))), all(vec4<bool>(true, true, true, true)))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, -514f)) + var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(461f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = Struct_1(vec4<i32>(abs(_wgslsmith_add_i32(-63593i, ~(-2147483647i))), 24812i, arg_1.a.x, -13155i));
    let var_3 = select(vec2<bool>(-1i < (i32(-1i) * -global1.x), any(vec3<bool>(true, true, true))), vec2<bool>(false, any(vec3<bool>(true, true, true))), select(true, !(var_0.x != -1014f) && (any(vec3<bool>(false, true, false)) && true), 1i > (global0.a.x >> (~6331u % 32u))));
    global3 = u_input.a;
    return 1u;
}

fn func_2() -> Struct_1 {
    global0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~countOneBits(vec4<u32>(39310u, u_input.a, 13901u, 87315u)), vec4<u32>(u_input.a >> (55516u % 32u), abs(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(39391u, 19660u, u_input.b), vec3<u32>(u_input.a, 4294967295u, u_input.a)), u_input.b >> (u_input.b % 32u)), ~vec4<u32>(60430u, u_input.b, 16356u, 31292u) & ~vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.b)), vec4<u32>(~(u_input.b ^ 69072u), _wgslsmith_div_u32(~0u, func_3(global4[_wgslsmith_index_u32(4294967295u, 3u)], Struct_1(vec4<i32>(45277i, -2147483647i, -1i, global0.a.x)))), ~_wgslsmith_sub_u32(u_input.b, 1u), ~u_input.a >> (28618u % 32u))) ^ (u_input.a & 1u), 3u)];
    return global4[_wgslsmith_index_u32(4294967295u, 3u)];
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = max(func_2().a.xx, select(global0.a.zx, vec2<i32>(2147483647i, global1.x), true));
    let var_1 = u_input.a;
    let var_2 = Struct_1(select(global0.a, global0.a, !vec4<bool>(false, any(vec4<bool>(true, false, false, true)), true, all(vec2<bool>(true, true)))));
    var var_3 = select(vec3<bool>(true | all(vec2<bool>(false, false)), (~arg_0.a.x >> (~u_input.a % 32u)) >= select(abs(-1i), _wgslsmith_mult_i32(var_2.a.x, global0.a.x), any(vec4<bool>(true, false, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(253f))) < _wgslsmith_f_op_f32(ceil(1146f))), vec3<bool>(abs(1i) == (_wgslsmith_clamp_i32(global0.a.x, 1888i, 58853i) << (u_input.b % 32u)), any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), !all(vec3<bool>(true, true, true))), !select(vec3<bool>(true, -6699i < arg_0.a.x, false), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)));
    var var_4 = -1000f;
    return true;
}

fn func_1() -> u32 {
    global3 = select(u_input.a, u_input.a, func_4(func_2()));
    global0 = Struct_1(~(~_wgslsmith_div_vec4_i32(global0.a, vec4<i32>(global0.a.x, 48315i, global1.x, 40424i)) >> ((min(vec4<u32>(39085u, 4294967295u, 11515u, 27549u), vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.b)) & ~vec4<u32>(70817u, 1u, 19289u, u_input.b)) % vec4<u32>(32u))));
    var var_0 = 409f;
    global0 = Struct_1(func_2().a);
    var var_1 = select(vec3<bool>(true, true, true), !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))), func_4(Struct_1(-vec4<i32>(global1.x, -6610i, -15912i, global1.x))));
    return 21685u;
}

fn func_5(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<u32>) -> Struct_1 {
    global3 = u_input.b;
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(arg_0, 1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, global1.x, global1.x), -global0.a), abs(~countOneBits(global1.x)), arg_0));
    var var_1 = _wgslsmith_mult_vec4_i32(global0.a, -vec4<i32>(-2147483647i, max(14096i, arg_0), firstLeadingBit(global0.a.x), 1i)) ^ _wgslsmith_sub_vec4_i32(countOneBits(-vec4<i32>(global1.x, 2147483647i, 1i, 0i)) | vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -67576i, -2072i), vec3<i32>(-42253i, -2147483647i, -2147483647i)), _wgslsmith_clamp_i32(global1.x, global1.x, var_0.a.x), 1i << (u_input.b % 32u), global0.a.x), -vec4<i32>(-48060i, 9372i, 2147483647i, 24033i) & var_0.a);
    var var_2 = arg_2;
    var var_3 = Struct_1(-firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, global0.a.x, global1.x), global1.x, var_1.x, 2147483647i)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(max(firstLeadingBit(~(-1i)) << (u_input.b % 32u), ~(~global0.a.x) << ((abs(u_input.a) ^ ~26993u) % 32u)), global2[_wgslsmith_index_u32(~min(u_input.b, 21056u), 26u)], vec3<u32>(~func_1(), 66712u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(10615u, 0u), vec2<u32>(63994u, u_input.a)) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(10807u, 1u), vec2<u32>(16553u, 76357u)) >> (vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u)))));
    let var_0 = ~u_input.a;
    global3 = firstTrailingBit(1u << (func_1() % 32u));
    let var_1 = select(vec2<bool>(!(!any(vec3<bool>(false, true, false))), false), vec2<bool>(!(true & all(vec3<bool>(false, true, false))), true), vec2<bool>(global1.x >= _wgslsmith_add_i32(0i, _wgslsmith_sub_i32(1i, global1.x)), true & (_wgslsmith_f_op_f32(f32(-1f) * -1000f) < _wgslsmith_f_op_f32(ceil(298f)))));
    var var_2 = global4[_wgslsmith_index_u32(28268u, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1419f)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-433f, -1301f), -2361f))), vec2<f32>(1f, 1f)), global0.a.x);
}

