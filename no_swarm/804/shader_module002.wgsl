struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, false), 45244i, vec2<i32>(-103983i, 1i));

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<bool>(true, false), -51059i, vec2<i32>(1i, 1i)), Struct_1(vec2<bool>(true, false), -11378i, vec2<i32>(-38825i, -58179i)), Struct_1(vec2<bool>(false, false), 1i, vec2<i32>(-62217i, 1i)), Struct_1(vec2<bool>(false, false), 27803i, vec2<i32>(1i, 2147483647i)), Struct_1(vec2<bool>(false, false), -1i, vec2<i32>(0i, -26033i)), Struct_1(vec2<bool>(true, true), -1i, vec2<i32>(-24248i, 0i)), Struct_1(vec2<bool>(false, false), 2147483647i, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec2<bool>(false, true), 1i, vec2<i32>(2147483647i, 76044i)), Struct_1(vec2<bool>(false, true), -1i, vec2<i32>(i32(-2147483648), 51286i)), Struct_1(vec2<bool>(true, false), -31571i, vec2<i32>(i32(-2147483648), -57938i)), Struct_1(vec2<bool>(false, false), 10675i, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<bool>(true, true), i32(-2147483648), vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<bool>(false, false), -1i, vec2<i32>(-1i, 1i)), Struct_1(vec2<bool>(true, true), -1i, vec2<i32>(30073i, 1i)), Struct_1(vec2<bool>(false, true), 1i, vec2<i32>(44736i, 2147483647i)), Struct_1(vec2<bool>(false, false), -55485i, vec2<i32>(2147483647i, -1i)), Struct_1(vec2<bool>(true, true), i32(-2147483648), vec2<i32>(-64908i, -1i)), Struct_1(vec2<bool>(true, true), 0i, vec2<i32>(2147483647i, -1i)), Struct_1(vec2<bool>(false, false), 0i, vec2<i32>(0i, 1476i)), Struct_1(vec2<bool>(false, false), 0i, vec2<i32>(13244i, -85200i)), Struct_1(vec2<bool>(false, false), i32(-2147483648), vec2<i32>(-25457i, -47989i)), Struct_1(vec2<bool>(false, false), -5458i, vec2<i32>(2147483647i, 0i)), Struct_1(vec2<bool>(false, true), 2147483647i, vec2<i32>(-24659i, 15250i)));

var<private> global3: array<vec2<f32>, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(0u, 23u)];
    let var_1 = Struct_1(global1.a, reverseBits(~countOneBits(global1.b)), abs(_wgslsmith_clamp_vec2_i32(global1.c, global1.c, vec2<i32>(~(-1i), -13225i))));
    var var_2 = _wgslsmith_sub_vec3_u32(~max(vec3<u32>(33050u, _wgslsmith_mult_u32(58123u, 0u), 0u), vec3<u32>(74954u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 5597u, 40287u), vec3<u32>(4294967295u, 57574u, 4294967295u)), _wgslsmith_clamp_u32(4294967295u, 0u, 1u))), reverseBits(_wgslsmith_mod_vec3_u32(min(vec3<u32>(3496u, 0u, 1u), firstTrailingBit(vec3<u32>(0u, 64057u, 4294967295u))), vec3<u32>(firstLeadingBit(0u), 77539u, 23900u))));
    let var_3 = _wgslsmith_mod_u32((_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_2.x, 0u), var_2.x) << (((var_2.x >> (var_2.x % 32u)) << (~65245u % 32u)) % 32u)) | _wgslsmith_mult_u32(var_2.x, var_2.x), 4294967295u ^ var_2.x);
    global3 = array<vec2<f32>, 9>();
    return var_3;
}

fn func_3() -> vec2<bool> {
    global2 = array<Struct_1, 23>();
    global1 = global2[_wgslsmith_index_u32(~max(countOneBits(4294967295u), firstLeadingBit(_wgslsmith_dot_vec2_u32(~global0[_wgslsmith_index_u32(9823u, 22u)], ~global0[_wgslsmith_index_u32(17284u, 22u)]))), 23u)];
    var var_0 = -vec4<i32>(2147483647i, 1i, _wgslsmith_div_i32(-1i, max(-46380i, u_input.a)) & (global1.c.x >> (abs(40661u) % 32u)), -25868i);
    let var_1 = Struct_1(vec2<bool>(true, true), ~_wgslsmith_mod_i32(global1.c.x, (i32(-1i) * -2147483647i) ^ var_0.x), vec2<i32>(max(u_input.a, firstTrailingBit(abs(var_0.x))), ~global1.c.x));
    var_0 = select(vec4<i32>(u_input.a, -8476i, _wgslsmith_dot_vec3_i32(vec3<i32>(-11254i, u_input.a, var_0.x), -vec3<i32>(-14361i, global1.b, 2147483647i)), var_0.x) & (vec4<i32>(global1.c.x, var_0.x & var_0.x, _wgslsmith_add_i32(2147483647i, var_1.c.x), abs(var_1.b)) & ~vec4<i32>(-1i, var_1.c.x, u_input.a, global1.b)), ~_wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, -77937i, 32816i, var_0.x), abs(vec4<i32>(var_1.b, 2147483647i, global1.c.x, -2147483647i))) ^ vec4<i32>(_wgslsmith_div_i32(u_input.a, 1i), min(firstLeadingBit(var_1.b), -2147483647i), 2147483647i, _wgslsmith_div_i32(global1.b ^ 0i, -1i)), select(!select(select(vec4<bool>(true, var_1.a.x, true, true), vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x), vec4<bool>(false, var_1.a.x, true, global1.a.x)), !vec4<bool>(global1.a.x, false, global1.a.x, true), select(vec4<bool>(global1.a.x, true, global1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, false, true, global1.a.x), vec4<bool>(false, var_1.a.x, true, false))), !select(vec4<bool>(true, global1.a.x, global1.a.x, true), !vec4<bool>(true, false, var_1.a.x, true), select(vec4<bool>(false, false, false, var_1.a.x), vec4<bool>(false, false, false, false), vec4<bool>(true, global1.a.x, true, var_1.a.x))), vec4<bool>(1i < _wgslsmith_div_i32(u_input.a, 2147483647i), any(select(vec3<bool>(global1.a.x, global1.a.x, var_1.a.x), vec3<bool>(false, true, false), var_1.a.x)), true, !select(global1.a.x, true, true))));
    return !var_1.a;
}

fn func_1() -> f32 {
    let var_0 = vec4<u32>(1u, reverseBits(firstLeadingBit(1u) >> (1u % 32u)), ~(~func_2()), _wgslsmith_dot_vec2_u32(select(vec2<u32>(104679u, abs(40394u)), vec2<u32>(1u, 92470u), global1.a), ~vec2<u32>(~0u, 0u)));
    var var_1 = vec2<bool>(global1.a.x, all(!vec3<bool>(true, all(vec4<bool>(true, global1.a.x, global1.a.x, false)), true)));
    var var_2 = global2[_wgslsmith_index_u32(~var_0.x, 23u)];
    var var_3 = ~firstTrailingBit(var_0);
    var var_4 = !func_3();
    return _wgslsmith_f_op_f32(sign(-169f));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 9>();
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1277f, -819f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(991f + -1211f), _wgslsmith_f_op_f32(f32(-1f) * -167f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1031f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-209f + _wgslsmith_f_op_f32(func_1()))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 384f, -1268f))) - vec3<f32>(_wgslsmith_f_op_f32(-1838f - 1000f), -2651f, _wgslsmith_f_op_f32(1852f - 845f))))));
    var var_1 = vec2<bool>(false, true);
    let var_2 = ~abs(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(1u, 33730u, 1u)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(18362u, 1u, 84208u)), ~vec3<u32>(16621u, 4294967295u, 9978u)), reverseBits(max(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(45330u, 4294967295u, 38933u)))));
    let var_3 = _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-var_0.x)));
    let var_4 = _wgslsmith_f_op_f32(-var_3) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3, var_3))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 * -395f), var_3))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + 741f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -499f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - var_3))), 213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)))), abs(_wgslsmith_clamp_vec3_i32((vec3<i32>(global1.c.x, global1.c.x, -22249i) >> (vec3<u32>(var_2.x, 8918u, 15522u) % vec3<u32>(32u))) ^ select(vec3<i32>(u_input.a, global1.c.x, u_input.a), vec3<i32>(32680i, u_input.a, u_input.a), vec3<bool>(true, var_1.x, true)), vec3<i32>(u_input.a, min(2155i, global1.b), -20096i), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(-28380i, global1.b, u_input.a), vec3<i32>(1i, -1i, global1.b), false), vec3<i32>(u_input.a, -36825i, -45315i), countOneBits(vec3<i32>(global1.b, global1.c.x, global1.b))))));
}

