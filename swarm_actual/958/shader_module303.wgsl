struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_3,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, -1i), vec3<i32>(31994i, i32(-2147483648), 1i), vec3<i32>(56075i, 0i, -1i), vec3<i32>(i32(-2147483648), 21907i, -29392i));

var<private> global2: array<bool, 8>;

var<private> global3: array<bool, 32> = array<bool, 32>(true, true, false, true, true, true, false, true, false, false, false, false, false, false, true, false, true, true, true, false, false, false, true, true, false, false, false, false, false, false, false, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: f32) -> f32 {
    global0 = array<vec3<bool>, 24>();
    let var_0 = global2[_wgslsmith_index_u32(u_input.b, 8u)];
    global3 = array<bool, 32>();
    let var_1 = arg_2.x;
    return -1164f;
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> u32 {
    global3 = array<bool, 32>();
    var var_0 = select(global0[_wgslsmith_index_u32(abs(38458u), 24u)], global0[_wgslsmith_index_u32(abs(~arg_0.b.a.a) | 25530u, 24u)], all(!vec2<bool>(global3[_wgslsmith_index_u32(max(0u, 30380u), 32u)], all(global0[_wgslsmith_index_u32(u_input.a.x, 24u)]))));
    let var_1 = _wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.a.a, arg_0.b.a.a), u_input.a), 27899u, 19123u), max(vec3<u32>(0u, 38564u, 4294967295u), vec3<u32>(u_input.b, 75900u, u_input.a.x) ^ vec3<u32>(76205u, arg_0.b.a.a, 4294967295u))), vec3<u32>(42774u, ~u_input.b, 300u)), 8u)], arg_0.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.a.b, _wgslsmith_f_op_f32(sign(856f)), arg_0.a.x, -1823f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, arg_1, arg_0.b.a.b))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1026f, -1126f, 844f, 755f)) * vec4<f32>(arg_1, arg_0.b.a.b, arg_0.b.a.b, -1000f)))), -987f));
    let var_2 = arg_0.b.a;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(1108f * var_1), min(u_input.a, vec2<u32>(firstLeadingBit(93698u), u_input.a.x | u_input.a.x) & ~countOneBits(vec2<u32>(0u, u_input.a.x))));
    return reverseBits(firstTrailingBit(abs(1u)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<u32>) -> Struct_5 {
    var var_0 = Struct_1(firstTrailingBit(~0u), _wgslsmith_f_op_f32(-arg_2.x));
    global1 = array<vec3<i32>, 5>();
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2 - arg_2), arg_2) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 1428f)), vec2<f32>(var_0.b, -2164f)))))), Struct_2(Struct_1(countOneBits(func_3(Struct_4(vec2<f32>(486f, 1018f), Struct_2(Struct_1(var_0.a, -522f))), 1663f)), 1377f)));
    let var_2 = _wgslsmith_f_op_f32(-var_0.b);
    global2 = array<bool, 8>();
    return Struct_5(select(select(vec4<bool>(global3[_wgslsmith_index_u32(~44010u, 32u)], true, all(vec3<bool>(false, false, global3[_wgslsmith_index_u32(arg_3.x, 32u)])), true || global2[_wgslsmith_index_u32(61842u, 8u)]), !(!vec4<bool>(global2[_wgslsmith_index_u32(var_1.b.a.a, 8u)], false, false, false)), global2[_wgslsmith_index_u32(8420u, 8u)]), !(!(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(arg_3.x, 32u)]))), !global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a.x, var_1.b.a.a), vec3<u32>(u_input.a.x, 39650u, var_1.b.a.a)), 32u)]), Struct_2(Struct_1(~4294967295u, var_0.b)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-399f, 571f))), ~(~vec2<u32>(1u, 1u))), arg_3.zw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(var_1.b.a.a, 8u)], var_1.b.a, vec4<f32>(-480f, var_2, 1517f, var_1.b.a.b), 768f)), _wgslsmith_f_op_f32(trunc(-857f)), var_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2, var_1.a.x, 1157f), vec3<f32>(-591f, 487f, 1000f)))))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_2.x, 625f)))), -1241f, -1000f)));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: Struct_5) -> Struct_2 {
    return Struct_2(Struct_1(137845u, -656f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(vec4<bool>(_wgslsmith_f_op_f32(func_1(true | global2[_wgslsmith_index_u32(u_input.b, 8u)], Struct_1(25999u, -227f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(520f, -823f, -141f, -784f)), _wgslsmith_f_op_f32(-829f - 607f))) != _wgslsmith_f_op_f32(f32(-1f) * -1901f), true, global3[_wgslsmith_index_u32(0u, 32u)], true), func_4(func_2(u_input.c.x, ~37619i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1330f, -680f)))), ~vec4<u32>(u_input.b, 1u, 4294967295u, 58699u)), vec4<i32>(2147483647i, _wgslsmith_mult_i32(1i, u_input.c.x), select(-7237i, abs(0i), 1i != u_input.c.x), u_input.c.x), func_2(u_input.c.x >> (u_input.a.x % 32u), 2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(128f, 303f) - vec2<f32>(1258f, 808f))), max(~vec4<u32>(u_input.a.x, 114357u, u_input.b, u_input.b), ~vec4<u32>(0u, u_input.b, u_input.a.x, 4294967295u)))), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1506f * -527f), -1236f, any(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1679f))), vec2<u32>(u_input.b, ~1u)), vec2<u32>(48481u, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(445f, -771f, 1750f)) * vec3<f32>(715f, 615f, 624f)))));
    var var_1 = u_input.b;
    var var_2 = min(vec4<i32>(u_input.c.x, ~(-_wgslsmith_mod_i32(-1i, -11182i)), abs(_wgslsmith_dot_vec2_i32(u_input.c.yx, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(-28267i, -3752i)))), -u_input.c.x), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, -6313i, -66652i, u_input.c.x), vec4<i32>(abs(u_input.c.x), -1i ^ u_input.c.x, ~u_input.c.x, -17022i ^ u_input.c.x), any(global0[_wgslsmith_index_u32(u_input.a.x, 24u)]) | global3[_wgslsmith_index_u32(~u_input.b, 32u)]), vec4<i32>(-u_input.c.x, ~_wgslsmith_add_i32(-2147483647i, u_input.c.x), -2147483647i, -_wgslsmith_div_i32(-1i, 2147483647i)), _wgslsmith_sub_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i), vec4<i32>(0i, 13761i, 14814i, -2147483647i)), select(countOneBits(vec4<i32>(-2147483647i, -30637i, u_input.c.x, -68890i)), -vec4<i32>(u_input.c.x, u_input.c.x, 76i, -41959i), func_2(u_input.c.x, u_input.c.x, var_0.e.zz, vec4<u32>(18016u, 103709u, 10592u, 13615u)).a))));
    let var_3 = ~vec2<u32>(28158u, u_input.a.x);
    global1 = array<vec3<i32>, 5>();
    var_1 = ~var_0.b.a.a;
    var_0 = func_2(~(~(i32(-1i) * -var_2.x)), u_input.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.e.yx - vec2<f32>(-1737f, 1423f)))) * var_0.e.zx), select(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, var_3.x, var_3.x), vec4<u32>(25685u, 24450u, 4294967295u, u_input.a.x), vec4<u32>(var_0.b.a.a, 1u, var_0.c.b.x, 4294967295u)), ~vec4<u32>(var_0.c.b.x, u_input.a.x, 1u, var_0.c.b.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_3.x, var_0.d.x, 4294967295u, u_input.a.x), vec4<u32>(var_3.x, 20244u, 49586u, var_3.x)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(69672u, u_input.a.x, u_input.b, u_input.a.x), vec4<u32>(var_3.x, u_input.b, 1u, u_input.a.x)), !var_0.a.x || all(var_0.a.wy)) & (~(vec4<u32>(82259u, var_0.c.b.x, 4294967295u, 0u) << (vec4<u32>(var_3.x, 4294967295u, var_3.x, 1u) % vec4<u32>(32u))) | (vec4<u32>(var_3.x, var_3.x, 0u, u_input.a.x) | ~vec4<u32>(29521u, 4294967295u, 32135u, 12661u))));
    global0 = array<vec3<bool>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wxx, -630f, ~(~(~vec4<u32>(35843u, 23401u, 4294967295u, 70666u))) << (~(vec4<u32>(21291u, var_0.d.x, var_3.x, 38949u) | ~vec4<u32>(18737u, 1u, var_0.d.x, var_0.b.a.a)) % vec4<u32>(32u)), var_0.e.x);
}

