struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: Struct_4,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<vec2<u32>, 3>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = Struct_5(vec2<i32>(1883i, u_input.b), arg_1.d.b.wz, Struct_4(reverseBits(-(vec3<i32>(-14801i, 20898i, -13615i) ^ vec3<i32>(u_input.b, u_input.b, u_input.b))), arg_1), select(!vec3<bool>(all(vec4<bool>(arg_1.a.a, true, false, arg_1.a.a)), true, arg_1.d.a), !select(!vec3<bool>(arg_1.a.a, arg_1.d.a, false), !vec3<bool>(arg_1.a.a, true, arg_1.d.a), true), false), Struct_2(arg_1.d.c, Struct_1(true, vec4<u32>(~1u, u_input.c.x, _wgslsmith_sub_u32(4294967295u, 38528u), max(u_input.d, 52155u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d.d.x, -1397f, arg_1.d.d.x, arg_1.d.d.x), vec4<f32>(1000f, arg_1.d.c.x, 389f, arg_1.a.d.x)))), vec2<f32>(852f, _wgslsmith_f_op_f32(abs(arg_1.a.d.x))))));
    global1 = array<vec2<u32>, 3>();
    var var_1 = _wgslsmith_clamp_vec4_u32(select(arg_1.d.b, vec4<u32>(~arg_1.b.x, _wgslsmith_add_u32(arg_1.c, 15867u), arg_2.x & 30300u, arg_0.x) << (select(var_0.c.b.d.b, ~var_0.e.b.b, select(vec4<bool>(arg_1.a.a, var_0.c.b.d.a, arg_1.a.a, arg_1.d.a), vec4<bool>(arg_1.a.a, var_0.c.b.d.a, false, var_0.e.b.a), vec4<bool>(true, true, true, false))) % vec4<u32>(32u)), !select(!vec4<bool>(arg_1.d.a, var_0.d.x, var_0.c.b.a.a, arg_1.a.a), vec4<bool>(false, var_0.e.b.a, false, var_0.d.x), arg_1.a.a)), ~(~arg_1.d.b), max(var_0.c.b.a.b, firstTrailingBit(vec4<u32>(select(var_0.e.b.b.x, u_input.c.x, arg_1.a.a), ~1u, ~0u, 0u & global0[_wgslsmith_index_u32(1u, 5u)]))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(683f - var_0.e.a.x)))) - _wgslsmith_div_f32(arg_1.d.c.x, var_0.e.b.c.x)));
    var var_3 = Struct_3(Struct_1(true, select(min(arg_2, ~var_0.c.b.a.b), ~reverseBits(vec4<u32>(0u, u_input.c.x, u_input.a.x, var_0.b.x)), vec4<bool>(false, any(var_0.d), any(vec3<bool>(arg_1.a.a, var_0.e.b.a, arg_1.d.a)), !var_0.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, var_0.e.b.d.x, -641f, 1000f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-349f, 1362f, arg_1.d.c.x, var_0.e.a.x)))))), var_0.c.b.d.c.ww), vec2<u32>(4294967295u, 1u), var_1.x, var_0.e.b, ~19802u);
    return var_0.d;
}

fn func_2() -> vec3<u32> {
    let var_0 = 1867u;
    var var_1 = !all(!vec4<bool>(all(vec3<bool>(true, false, false)), true, true, any(vec4<bool>(false, true, true, false))));
    let var_2 = _wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(var_0, ~_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], _wgslsmith_sub_u32(0u, var_0))));
    global1 = array<vec2<u32>, 3>();
    let var_3 = select(vec2<bool>(true, select(true, any(func_3(var_2, Struct_3(Struct_1(false, vec4<u32>(51776u, 4294967295u, var_2.x, 51949u), vec4<f32>(-530f, -597f, 1101f, 514f), vec2<f32>(527f, 739f)), var_2, 4294967295u, Struct_1(false, vec4<u32>(1u, 20647u, 86398u, 48869u), vec4<f32>(933f, 414f, 170f, -960f), vec2<f32>(744f, 766f)), 11436u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 5u)], 4294967295u, 6855u, 1u))), !any(vec4<bool>(true, true, false, false)))), func_3(global1[_wgslsmith_index_u32(4294967295u, 3u)], Struct_3(Struct_1(all(vec3<bool>(false, false, true)), vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 5u)], 1u, 4832u, global0[_wgslsmith_index_u32(4294967295u, 5u)]) << (vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(var_0, 5u)], 46652u, global0[_wgslsmith_index_u32(var_2.x, 5u)]) % vec4<u32>(32u)), _wgslsmith_div_vec4_f32(vec4<f32>(-1172f, -1000f, 1000f, -1329f), vec4<f32>(-1009f, 229f, -179f, -153f)), vec2<f32>(-1078f, 1000f)), var_2, ~4294967295u, Struct_1(false, vec4<u32>(global0[_wgslsmith_index_u32(var_2.x, 5u)], var_2.x, 56979u, 1u) & vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], global0[_wgslsmith_index_u32(19718u, 5u)], var_2.x, var_0), vec4<f32>(-282f, -521f, 487f, -1084f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-219f, 1000f) + vec2<f32>(240f, 726f))), firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 23400u))), vec4<u32>(abs(max(65418u, 796u)), var_2.x, var_2.x, select(~u_input.d, firstTrailingBit(1737u), true))).yz, true);
    return select(select(countOneBits(vec3<u32>(0u, 0u, 100129u)) ^ ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, 26934u, u_input.d), vec3<u32>(26790u, 73279u, 40976u), vec3<u32>(var_0, 4294967295u, 9246u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], 4294967295u, 53329u), vec3<u32>(16853u, 0u, 0u)), ~vec3<u32>(0u, var_0, u_input.c.x), ~vec3<u32>(0u, var_2.x, 24868u)) | ~min(vec3<u32>(27469u, global0[_wgslsmith_index_u32(55849u, 5u)], 48790u), vec3<u32>(u_input.a.x, var_0, 4294967295u)), !(!vec3<bool>(var_3.x, true, var_3.x))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~global0[_wgslsmith_index_u32(var_0, 5u)], abs(var_0), u_input.a.x), ~(vec3<u32>(0u, 1u, global0[_wgslsmith_index_u32(var_0, 5u)]) << (vec3<u32>(u_input.c.x, var_0, 0u) % vec3<u32>(32u))), select(select(vec3<u32>(0u, 1u, global0[_wgslsmith_index_u32(var_2.x, 5u)]), vec3<u32>(71904u, 6209u, 4294967295u), var_3.x), _wgslsmith_add_vec3_u32(vec3<u32>(15249u, 1u, 8687u), vec3<u32>(0u, var_2.x, var_2.x)), true)), select(vec3<bool>(true, all(vec3<bool>(true, true, true)), !(var_3.x & true)), !(!select(vec3<bool>(false, var_3.x, false), vec3<bool>(var_3.x, false, var_3.x), false)), true));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_5, arg_2: i32, arg_3: i32) -> vec4<i32> {
    global0 = array<u32, 5>();
    let var_0 = firstLeadingBit(select(func_2(), vec3<u32>(global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.d.b.x), 5u)], firstLeadingBit(~6988u), _wgslsmith_sub_u32(~arg_0.c, 0u)), false));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1183f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.c.b.a.d.x)) * _wgslsmith_f_op_f32(-1543f + arg_1.c.b.d.c.x)) + _wgslsmith_f_op_f32(f32(-1f) * -156f))), _wgslsmith_f_op_f32(f32(-1f) * -1084f));
    var var_2 = arg_1.e;
    var var_3 = vec2<u32>(4294967295u, ~_wgslsmith_mult_u32(abs(32436u), var_2.b.b.x)) | vec2<u32>(arg_1.b.x, u_input.a.x);
    return abs(vec4<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(8957i, -1i), vec2<i32>(-40609i, arg_1.c.a.x)), arg_1.a), 1i, _wgslsmith_dot_vec3_i32(arg_1.c.a, -(arg_1.c.a << (var_0 % vec3<u32>(32u)))), arg_2));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_3(arg_2.b, global1[_wgslsmith_index_u32(u_input.d, 3u)], arg_2.b.b.x, Struct_1(all(vec3<bool>(true, true, true)), _wgslsmith_div_vec4_u32(~arg_2.b.b, arg_2.b.b), vec4<f32>(-766f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x * arg_0.x) * 555f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.c.x))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_3, arg_2.a.x), arg_2.a.xx))), 0u);
    let var_1 = Struct_4(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.b, 0i, u_input.b)), vec3<i32>(u_input.b, 2147483647i, 27465i), -vec3<i32>(-1i, arg_1.x, 1i)) >> (~_wgslsmith_div_vec3_u32(arg_2.b.b.zxw, arg_2.b.b.yxx) % vec3<u32>(32u)), vec3<i32>(u_input.b, -(~arg_1.x), firstLeadingBit(-16144i)), ~_wgslsmith_mult_vec3_i32(arg_1.zzw, abs(vec3<i32>(u_input.b, -2147483647i, -2147483647i)))), Struct_3(Struct_1(true, _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2.b.b.x, u_input.c.x, u_input.c.x, arg_2.b.b.x), arg_2.b.b | var_0.d.b), _wgslsmith_f_op_vec4_f32(arg_2.b.c * var_0.d.c), vec2<f32>(_wgslsmith_div_f32(-330f, 1441f), arg_2.b.d.x)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35908u, 5u)], 5u)], u_input.a.x), vec2<u32>(var_0.d.b.x, u_input.c.x)) << (vec2<u32>(var_0.e ^ u_input.d, abs(51360u)) % vec2<u32>(32u)), countOneBits(_wgslsmith_sub_u32(~71966u, select(arg_2.b.b.x, u_input.a.x, arg_2.b.a))), var_0.a, firstLeadingBit(0u)));
    global0 = array<u32, 5>();
    let var_2 = func_3(vec2<u32>(10734u, _wgslsmith_mult_u32(abs(u_input.d), ~9784u)), Struct_3(Struct_1(~9527u == ~arg_2.b.b.x, firstLeadingBit(arg_2.b.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1370f, var_0.d.d.x, 352f, 343f))) * _wgslsmith_f_op_vec4_f32(abs(arg_2.a))), vec2<f32>(_wgslsmith_f_op_f32(abs(arg_3)), _wgslsmith_f_op_f32(abs(arg_2.a.x)))), _wgslsmith_mult_vec2_u32(u_input.c, vec2<u32>(var_0.d.b.x, 1u)) << (abs(_wgslsmith_div_vec2_u32(var_0.a.b.yx, global1[_wgslsmith_index_u32(var_1.b.b.x, 3u)])) % vec2<u32>(32u)), _wgslsmith_add_u32(var_1.b.d.b.x, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 5u)], 15040u, var_1.b.d.b.x), vec3<u32>(u_input.a.x, 1u, var_1.b.d.b.x)), 5u)]), var_1.b.d, 4294967295u), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(19910u, 5u)], 59875u, global0[_wgslsmith_index_u32(42843u, 5u)], 46834u), vec4<u32>(var_0.c, var_1.b.b.x, var_1.b.c, arg_2.b.b.x)), arg_2.b.b.x >> (u_input.d % 32u), 71811u, ~var_1.b.a.b.x), select(var_0.a.b, ~var_0.d.b, select(vec4<bool>(var_0.d.a, false, arg_2.b.a, var_1.b.a.a), vec4<bool>(arg_2.b.a, true, false, var_0.a.a), vec4<bool>(var_0.d.a, true, false, arg_2.b.a)))))).x;
    let var_3 = var_0.e;
    return var_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>) -> Struct_4 {
    global0 = array<u32, 5>();
    global1 = array<vec2<u32>, 3>();
    var var_0 = Struct_4(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-11358i, u_input.b, u_input.b), -vec3<i32>(-1i, 0i, u_input.b), vec3<i32>(-3256i, -78466i, -2147483647i) >> (arg_0.b.xxw % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(0i, -10976i), ~18873i, -1i), vec3<i32>(i32(-1i) * -1i, -51447i, u_input.b)) & -_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b, -23809i, u_input.b), vec3<i32>(-1i, 1i, -1i)), Struct_3(func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-249f, arg_2.x, 581f, 259f), arg_0.c))), vec4<i32>(-23528i, u_input.b, func_1(Struct_3(Struct_1(arg_0.a, vec4<u32>(global0[_wgslsmith_index_u32(13922u, 5u)], u_input.c.x, arg_0.b.x, arg_0.b.x), arg_0.c, vec2<f32>(1210f, 1269f)), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 5u)], 3u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], 5u)], arg_0, u_input.d), Struct_5(vec2<i32>(67801i, u_input.b), vec2<u32>(4294967295u, 0u), Struct_4(vec3<i32>(-38386i, u_input.b, u_input.b), Struct_3(arg_0, vec2<u32>(40203u, arg_0.b.x), 37085u, Struct_1(true, arg_0.b, arg_2, vec2<f32>(456f, 2138f)), arg_0.b.x)), vec3<bool>(true, arg_0.a, arg_0.a), Struct_2(arg_2, arg_0)), u_input.b, u_input.b).x, reverseBits(-21063i)), Struct_2(arg_2, func_4(vec4<f32>(arg_0.c.x, 2170f, arg_1, 759f), vec4<i32>(1i, 15213i, 45791i, u_input.b), Struct_2(arg_2, Struct_1(false, arg_0.b, arg_0.c, arg_2.xx)), 1000f)), arg_1), ~(vec2<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]) & arg_0.b.zx) | _wgslsmith_add_vec2_u32(max(u_input.a, global1[_wgslsmith_index_u32(1u, 3u)]), vec2<u32>(arg_0.b.x, 37272u)), ~(u_input.c.x & 16993u), arg_0, ~arg_0.b.x));
    global0 = array<u32, 5>();
    var var_1 = var_0.a;
    return Struct_4(var_0.a, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 5>();
    var var_0 = func_5(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(376f, 213f, -1799f, -1526f))), _wgslsmith_mult_vec4_i32(max(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.b, -2147483647i, -2147483647i), vec4<i32>(-50038i, 42971i, -15626i, u_input.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 16563i, 0i, u_input.b), vec4<i32>(u_input.b, 1i, -25203i, -43299i))), _wgslsmith_clamp_vec4_i32(func_1(Struct_3(Struct_1(true, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 5u)], 5u)], u_input.a.x, 47521u, u_input.d), vec4<f32>(1453f, -916f, 1191f, -1000f), vec2<f32>(919f, 1000f)), u_input.c, u_input.c.x, Struct_1(true, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], 1u, 44084u, 0u), vec4<f32>(-3312f, -727f, 368f, 856f), vec2<f32>(1000f, -516f)), u_input.d), Struct_5(vec2<i32>(u_input.b, 1i), u_input.a, Struct_4(vec3<i32>(-1357i, 46918i, 1i), Struct_3(Struct_1(false, vec4<u32>(111213u, global0[_wgslsmith_index_u32(u_input.d, 5u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)], 0u), vec4<f32>(181f, -929f, 1070f, -218f), vec2<f32>(659f, -171f)), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.d, 5u)]), global0[_wgslsmith_index_u32(u_input.d, 5u)], Struct_1(false, vec4<u32>(34819u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 1u), vec4<f32>(-1861f, -492f, -499f, 1997f), vec2<f32>(411f, 640f)), u_input.c.x)), vec3<bool>(false, false, true), Struct_2(vec4<f32>(429f, -2254f, -1365f, 2156f), Struct_1(true, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], u_input.c.x, u_input.a.x, 38524u), vec4<f32>(365f, -413f, 127f, -958f), vec2<f32>(-155f, -1051f)))), 0i, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, -2147483647i), vec4<i32>(-13431i, u_input.b, u_input.b, 0i)), ~vec4<i32>(-2147483647i, 6891i, u_input.b, 1i))), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-690f, -546f, 520f, 697f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 2984f, 1829f, -574f), vec4<f32>(-731f, -1701f, -626f, 831f)))), Struct_1(all(vec4<bool>(true, true, false, true)), firstTrailingBit(vec4<u32>(0u, global0[_wgslsmith_index_u32(59590u, 5u)], 6953u, 63132u)), vec4<f32>(549f, 330f, 1000f, 361f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-503f, -1530f))))), -1240f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(848f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -400f) + func_4(vec4<f32>(1463f, -142f, -253f, 829f), vec4<i32>(u_input.b, u_input.b, -1379i, u_input.b), Struct_2(vec4<f32>(-827f, -2228f, 364f, 838f), Struct_1(false, vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.d, 5u)], 44305u, 77584u), vec4<f32>(705f, -1939f, -1337f, 276f), vec2<f32>(-243f, 513f))), -335f).d.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-409f * -423f), _wgslsmith_f_op_f32(f32(-1f) * -548f))), -446f)), vec4<f32>(-154f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-360f * _wgslsmith_f_op_f32(f32(-1f) * -2030f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1837f, -449f, true)), -681f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1798f)))));
    let var_1 = Struct_5(vec2<i32>(-_wgslsmith_mult_i32(~1i, 1i), _wgslsmith_sub_i32(~1i, reverseBits(func_5(var_0.b.d, var_0.b.d.c.x, vec4<f32>(var_0.b.a.c.x, var_0.b.d.c.x, var_0.b.a.c.x, 1000f)).a.x))), (vec2<u32>(~17116u, u_input.c.x) << (_wgslsmith_mult_vec2_u32(var_0.b.a.b.xw, ~global1[_wgslsmith_index_u32(30757u, 3u)]) % vec2<u32>(32u))) | min(vec2<u32>(_wgslsmith_clamp_u32(var_0.b.c, 16984u, 4294967295u), 118722u), vec2<u32>(34818u, var_0.b.c) & ~u_input.a), func_5(Struct_1(true, vec4<u32>(select(1u, var_0.b.e, var_0.b.d.a), global0[_wgslsmith_index_u32(reverseBits(37869u), 5u)], 26975u, func_5(Struct_1(false, var_0.b.d.b, var_0.b.a.c, var_0.b.a.d), var_0.b.a.c.x, vec4<f32>(var_0.b.d.c.x, var_0.b.a.d.x, -331f, var_0.b.a.c.x)).b.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.b.d.c, var_0.b.a.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a.c.x, var_0.b.a.c.x)))), var_0.b.a.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.d.c.x, var_0.b.a.c.x, var_0.b.d.d.x, -1000f))) - vec4<f32>(var_0.b.d.c.x, _wgslsmith_f_op_f32(abs(var_0.b.d.d.x)), _wgslsmith_f_op_f32(var_0.b.d.c.x + var_0.b.d.d.x), 628f))), vec3<bool>(true, !all(select(vec2<bool>(true, var_0.b.d.a), vec2<bool>(var_0.b.d.a, false), var_0.b.d.a)), ((4294967295u >= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b.b.x, 5u)], 5u)]) && true) & var_0.b.d.a), Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.b.d.c), func_5(Struct_1(any(vec2<bool>(var_0.b.d.a, true)), reverseBits(vec4<u32>(12966u, u_input.c.x, u_input.d, 37511u)), _wgslsmith_div_vec4_f32(vec4<f32>(-2082f, var_0.b.d.c.x, 571f, var_0.b.d.d.x), var_0.b.d.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(566f, var_0.b.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(334f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.b.a.c)), var_0.b.d.c)).b.d));
    var var_2 = any(select(var_1.d.xx, vec2<bool>(!var_0.b.a.a, all(select(vec4<bool>(true, false, var_1.e.b.a, var_1.d.x), vec4<bool>(var_0.b.a.a, var_0.b.d.a, var_0.b.a.a, var_1.e.b.a), vec4<bool>(var_1.d.x, var_1.d.x, true, var_1.d.x)))), 880f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.b.a.c.x - 1000f))));
    var var_3 = func_5(var_0.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-858f, _wgslsmith_div_f32(var_1.e.a.x, var_1.e.b.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.c.b.d.c.x, 1864f, var_1.d.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.e.a, var_1.e.a) + _wgslsmith_f_op_vec4_f32(select(var_1.c.b.a.c, vec4<f32>(var_0.b.d.c.x, -667f, 323f, -132f), vec4<bool>(false, var_1.e.b.a, false, true)))) - vec4<f32>(_wgslsmith_f_op_f32(1127f * 1002f), var_0.b.a.d.x, _wgslsmith_f_op_f32(var_0.b.d.d.x + var_1.e.a.x), 593f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x >> (u_input.a.x % 32u));
}

