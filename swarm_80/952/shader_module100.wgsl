struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: u32 = 78187u;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<i32>(0i, 7393i), 2147483647i), Struct_1(vec2<i32>(19090i, 50501i), i32(-2147483648)), Struct_1(vec2<i32>(0i, 54649i), -23842i), Struct_1(vec2<i32>(i32(-2147483648), 1i), 31265i), Struct_1(vec2<i32>(-37248i, -1i), 1i), Struct_1(vec2<i32>(-30552i, 1i), 0i), Struct_1(vec2<i32>(2147483647i, 1457i), i32(-2147483648)), Struct_1(vec2<i32>(1i, 2147483647i), 1i), Struct_1(vec2<i32>(-45790i, 82381i), -39978i), Struct_1(vec2<i32>(-13754i, -12246i), -29580i), Struct_1(vec2<i32>(2147483647i, 1i), 16870i), Struct_1(vec2<i32>(0i, -10649i), 0i), Struct_1(vec2<i32>(-47222i, 12457i), 0i), Struct_1(vec2<i32>(10525i, -2452i), i32(-2147483648)), Struct_1(vec2<i32>(-14803i, 34259i), 1i), Struct_1(vec2<i32>(-12691i, 2147483647i), i32(-2147483648)), Struct_1(vec2<i32>(-62743i, 2147483647i), -1i), Struct_1(vec2<i32>(0i, 21789i), -8105i), Struct_1(vec2<i32>(41081i, 0i), 1i), Struct_1(vec2<i32>(-27781i, 45793i), 0i), Struct_1(vec2<i32>(-25093i, -25120i), -36839i), Struct_1(vec2<i32>(-7075i, 50111i), 0i), Struct_1(vec2<i32>(-32200i, -57566i), -24604i), Struct_1(vec2<i32>(-48533i, -1i), -10819i), Struct_1(vec2<i32>(26023i, -6257i), -10590i), Struct_1(vec2<i32>(i32(-2147483648), 27165i), -1i), Struct_1(vec2<i32>(68070i, 1i), 2147483647i), Struct_1(vec2<i32>(23563i, 2147483647i), i32(-2147483648)));

var<private> global3: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    global0 = global3.b.x;
    var var_0 = u_input.d;
    global0 = -1i;
    let var_1 = countOneBits(~vec3<i32>(-35575i, ~37859i, global3.b.x) & abs(vec3<i32>(6127i, -global3.e.b, i32(-1i) * -26949i)));
    var_0 = _wgslsmith_clamp_u32(u_input.b.x, u_input.e, max(_wgslsmith_div_u32(countOneBits(~u_input.a.x), min(0u, u_input.d)), 1u));
    return _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(global3.b, var_1), firstTrailingBit(~(~var_1))) << ((~max(~vec3<u32>(110070u, 8536u, 23687u), countOneBits(vec3<u32>(69173u, u_input.a.x, 51578u))) | (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.e) >> (vec3<u32>(u_input.c, u_input.e, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(7679u, 82795u, u_input.e), vec3<u32>(30627u, u_input.b.x, 25167u))) << ((_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.d, 1u)) ^ ~vec3<u32>(u_input.c, 4294967295u, u_input.a.x)) % vec3<u32>(32u)))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec4<f32>) -> vec2<i32> {
    global2 = array<Struct_1, 28>();
    global3 = Struct_2(!(!any(!vec4<bool>(arg_0.x, true, true, false))), _wgslsmith_add_vec3_i32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)) - 808f)), global3.b), i32(-1i) * -24453i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-4701i, global3.c), -vec2<i32>(global3.c, global3.b.x), arg_1.xz), -countOneBits(global3.e.a)) <= ~(0i << (countOneBits(u_input.b.x) % 32u)), global3.e);
    let var_0 = ~u_input.d;
    let var_1 = Struct_2(arg_0.x, global3.b & ~_wgslsmith_add_vec3_i32(abs(global3.b), vec3<i32>(global3.c, -2147483647i, global3.b.x) | vec3<i32>(2552i, 44734i, global3.e.a.x)), reverseBits(countOneBits(global3.b.x >> (firstTrailingBit(4294967295u) % 32u))), true, global2[_wgslsmith_index_u32(var_0, 28u)]);
    global1 = _wgslsmith_dot_vec2_u32(~select(u_input.a, vec2<u32>(u_input.c, 0u), !arg_1.zz), u_input.b) << (40497u % 32u);
    return -vec2<i32>(~(-2147483647i), firstTrailingBit(min(var_1.b.x, -var_1.c)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~(-abs(select(vec4<i32>(2147483647i, arg_1.b, 0i, 1i), vec4<i32>(arg_1.a.x, arg_1.b, 2147483647i, global3.c), select(vec4<bool>(global3.a, global3.d, false, global3.a), vec4<bool>(false, global3.d, true, true), global3.a))));
    return Struct_1(_wgslsmith_div_vec2_i32(func_2(vec2<bool>(any(vec2<bool>(false, global3.d)), global3.d & false), !vec3<bool>(global3.a, true, true), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1009f)), 1138f, 2386f, _wgslsmith_f_op_f32(f32(-1f) * -908f))), _wgslsmith_sub_vec2_i32(func_3(1f).xy, vec2<i32>(reverseBits(global3.c), 2147483647i))), var_0.x << (firstTrailingBit(_wgslsmith_clamp_u32(19667u, u_input.c, firstLeadingBit(1u))) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = any(select(vec2<bool>(false, global3.d), vec2<bool>(-931f >= _wgslsmith_f_op_f32(ceil(-1549f)), all(vec3<bool>(true, global3.d, global3.a)) | (global3.a || global3.d)), any(vec3<bool>(global3.a | true, any(vec2<bool>(global3.d, global3.d)), global3.a))));
    let var_1 = Struct_2(!global3.d, vec3<i32>(arg_0.b, arg_1.x, -arg_1.x), 38567i, true, func_1(u_input.b | vec2<u32>(~75038u, u_input.d), global2[_wgslsmith_index_u32(39030u, 28u)]));
    let var_2 = Struct_2(all(!select(vec3<bool>(global3.d, var_1.a, var_1.a), !vec3<bool>(global3.a, global3.a, var_0), var_0 == true)), arg_1, global3.c, var_0, Struct_1(arg_1.xx, _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_div_i32(-45504i, 2147483647i)), 2147483647i)));
    let var_3 = vec4<i32>(-1i) * -firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-37260i, var_2.b.x, arg_1.x, arg_0.a.x), vec4<i32>(var_2.c, 0i, 2147483647i, var_1.b.x), vec4<i32>(4051i, global3.b.x, 3951i, arg_0.b)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b, 1i, 2147483647i, -30873i), vec4<i32>(1i, arg_1.x, var_2.c, 2147483647i))));
    var var_4 = Struct_2(select(select(i32(-1i) * -9687i, select(var_2.e.a.x, -2147483647i, var_1.d), global3.d) == ~var_2.b.x, (global3.a & true) || true, var_1.d), -(~vec3<i32>(i32(-1i) * -2147483647i, var_1.e.a.x, ~global3.c)), 0i, var_0, func_1(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, u_input.a.x), vec2<u32>(21472u, u_input.c)) & vec2<u32>(u_input.c >> (u_input.a.x % 32u), u_input.c), arg_0));
    return Struct_2(false, -_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.b >> (vec3<u32>(u_input.c, 0u, 105995u) % vec3<u32>(32u)), vec3<i32>(var_3.x, arg_0.b, 1i)), vec3<i32>(-1i ^ arg_1.x, -25874i, 15167i)), _wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, _wgslsmith_add_i32(arg_1.x, 2147483647i) << (u_input.d % 32u)), ~(-1i)), all(vec4<bool>(any(vec3<bool>(false, var_1.a, true)), !any(vec3<bool>(true, global3.a, var_1.a)), global3.a, var_0)), arg_0);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_2 {
    global0 = 1i;
    let var_0 = func_4(arg_2, -global3.b).e;
    let var_1 = ~abs(firstTrailingBit(vec4<i32>(2147483647i, arg_0.e.b, arg_0.b.x, arg_2.a.x))) << (_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(0u, 68422u, 1u, u_input.d) << (vec4<u32>(0u, u_input.d, u_input.a.x, 0u) % vec4<u32>(32u))) >> (abs(vec4<u32>(75372u, u_input.d, 84177u, 35720u)) % vec4<u32>(32u)), vec4<u32>(0u, _wgslsmith_add_u32(~30620u, ~u_input.d), ~(~2965u), select(_wgslsmith_mod_u32(14796u, u_input.b.x), ~31153u, global3.d))) % vec4<u32>(32u));
    global0 = global3.e.b;
    var var_2 = func_4(arg_2, firstLeadingBit(~global3.b));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~7688u;
    let var_1 = u_input.c >= firstTrailingBit(var_0);
    var var_2 = func_5(func_4(func_1(~(~vec2<u32>(u_input.d, u_input.d)), global3.e), vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-29198i, global3.e.b, -1i), global3.b), -func_1(u_input.a, global2[_wgslsmith_index_u32(u_input.e, 28u)]).b, -27927i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1151f, _wgslsmith_f_op_f32(f32(-1f) * -489f), _wgslsmith_f_op_f32(f32(-1f) * -551f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1014f, 144f, 1027f), vec3<f32>(-297f, -1000f, -2041f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-271f, -163f, 1323f)))))), func_1(firstLeadingBit(vec2<u32>(min(var_0, var_0), ~52416u)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, ~reverseBits(82604u)), 28u)]));
    var var_3 = func_5(func_4(func_1(~vec2<u32>(var_0, 1u), var_2.e), ~_wgslsmith_div_vec3_i32(~vec3<i32>(var_2.c, var_2.e.a.x, -2147483647i), -global3.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -269f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2499f + 158f))), -770f), vec3<f32>(-1089f, _wgslsmith_div_f32(295f, _wgslsmith_f_op_f32(976f - -349f)), _wgslsmith_f_op_f32(round(430f))), select(select(vec3<bool>(var_2.a, var_2.a, true), select(vec3<bool>(false, true, true), vec3<bool>(global3.a, global3.d, false), true), var_1 || var_2.d), select(select(vec3<bool>(true, var_2.d, global3.a), vec3<bool>(false, true, false), true), vec3<bool>(global3.d, false, global3.d), var_1), true))), Struct_1(func_3(-414f).xx, 37214i << (select(~1u, firstTrailingBit(4294967295u), true) % 32u)));
    var var_4 = func_5(func_4(var_3.e, select(~max(vec3<i32>(27132i, 26142i, -13490i), vec3<i32>(0i, global3.e.b, 1i)), vec3<i32>(countOneBits(-1i), ~global3.b.x, ~global3.b.x), vec3<bool>(global3.d, !var_1, var_1))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-142f, -952f, -1643f) + vec3<f32>(-190f, -374f, 576f))))))), Struct_1(vec2<i32>(var_2.b.x, _wgslsmith_mult_i32(var_3.c, abs(var_3.b.x))), -1i));
    let var_5 = var_3.e;
    var var_6 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(u_input.d) << (firstTrailingBit(16255u) % 32u), _wgslsmith_add_u32(39153u, _wgslsmith_mult_u32(u_input.d, u_input.c))), var_0, ~67626u, 21518u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1462f) - _wgslsmith_f_op_f32(select(-398f, 1778f, true)))), _wgslsmith_f_op_f32(trunc(-1761f))), global3.e.a, ~vec3<u32>(33238u, ~(~1u), u_input.b.x));
}

