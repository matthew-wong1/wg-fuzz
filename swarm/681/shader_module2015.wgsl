struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(2147483647i, Struct_1(vec3<f32>(805f, -351f, -1969f), vec3<u32>(4294967295u, 4294967295u, 33227u), vec2<bool>(true, true), vec3<u32>(30992u, 4294967295u, 54618u), vec3<bool>(false, true, false)), true, vec4<u32>(50987u, 0u, 4294967295u, 19243u)), Struct_2(-63419i, Struct_1(vec3<f32>(-293f, -627f, 479f), vec3<u32>(22938u, 12562u, 45454u), vec2<bool>(false, true), vec3<u32>(40042u, 0u, 64788u), vec3<bool>(false, false, true)), false, vec4<u32>(17312u, 4294967295u, 1u, 0u)), Struct_2(-26360i, Struct_1(vec3<f32>(770f, -3193f, -1000f), vec3<u32>(4294967295u, 0u, 36165u), vec2<bool>(false, true), vec3<u32>(1u, 22209u, 12743u), vec3<bool>(true, true, false)), true, vec4<u32>(44550u, 7161u, 41857u, 58278u)), Struct_2(-41499i, Struct_1(vec3<f32>(863f, -523f, 648f), vec3<u32>(73257u, 11742u, 1u), vec2<bool>(true, false), vec3<u32>(4294967295u, 41338u, 118771u), vec3<bool>(false, false, false)), true, vec4<u32>(5403u, 13954u, 49279u, 31054u)), Struct_2(1i, Struct_1(vec3<f32>(-459f, 1799f, 518f), vec3<u32>(19909u, 4294967295u, 45776u), vec2<bool>(false, false), vec3<u32>(71530u, 28212u, 38938u), vec3<bool>(true, false, true)), true, vec4<u32>(0u, 0u, 53054u, 31899u)), Struct_2(i32(-2147483648), Struct_1(vec3<f32>(-130f, -857f, -1492f), vec3<u32>(6634u, 27679u, 55035u), vec2<bool>(true, false), vec3<u32>(63152u, 16063u, 0u), vec3<bool>(false, true, false)), true, vec4<u32>(0u, 19286u, 72378u, 54028u)), Struct_2(1i, Struct_1(vec3<f32>(-1146f, 703f, 2234f), vec3<u32>(0u, 64162u, 1u), vec2<bool>(true, false), vec3<u32>(4294967295u, 8588u, 69810u), vec3<bool>(true, true, false)), false, vec4<u32>(4294967295u, 1u, 16463u, 1u)), Struct_2(2147483647i, Struct_1(vec3<f32>(1688f, 196f, -1515f), vec3<u32>(23590u, 0u, 38702u), vec2<bool>(true, true), vec3<u32>(1u, 4294967295u, 0u), vec3<bool>(false, true, false)), true, vec4<u32>(6590u, 4686u, 73943u, 1u)), Struct_2(36024i, Struct_1(vec3<f32>(-979f, -113f, 1147f), vec3<u32>(4294967295u, 0u, 57359u), vec2<bool>(false, false), vec3<u32>(35147u, 0u, 67521u), vec3<bool>(true, true, false)), true, vec4<u32>(34878u, 53856u, 1u, 31039u)), Struct_2(48240i, Struct_1(vec3<f32>(945f, 555f, -1000f), vec3<u32>(4294967295u, 4294967295u, 43190u), vec2<bool>(true, false), vec3<u32>(0u, 39583u, 74395u), vec3<bool>(false, true, true)), true, vec4<u32>(74178u, 1u, 4294967295u, 45599u)), Struct_2(38132i, Struct_1(vec3<f32>(-432f, 165f, 601f), vec3<u32>(0u, 0u, 17792u), vec2<bool>(false, false), vec3<u32>(27991u, 40210u, 51611u), vec3<bool>(true, false, false)), true, vec4<u32>(13283u, 1u, 65007u, 0u)), Struct_2(i32(-2147483648), Struct_1(vec3<f32>(-754f, -136f, 1021f), vec3<u32>(41027u, 4294967295u, 23120u), vec2<bool>(true, true), vec3<u32>(9930u, 9870u, 4294967295u), vec3<bool>(true, true, false)), false, vec4<u32>(11155u, 42389u, 1u, 73779u)), Struct_2(2147483647i, Struct_1(vec3<f32>(-2043f, -289f, -317f), vec3<u32>(1u, 48157u, 10197u), vec2<bool>(false, true), vec3<u32>(1u, 39940u, 1u), vec3<bool>(false, false, true)), true, vec4<u32>(1u, 0u, 45688u, 70610u)), Struct_2(-11708i, Struct_1(vec3<f32>(-371f, 576f, 1092f), vec3<u32>(1u, 1u, 0u), vec2<bool>(false, true), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<bool>(false, false, false)), true, vec4<u32>(62367u, 45782u, 98094u, 14412u)));

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 1u, 1u);

var<private> global4: array<vec4<f32>, 22>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> vec2<i32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(arg_0.b.a)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a.x, arg_0.b.a.x, arg_1.b.a.x))), vec3<bool>(arg_1.b.b.x < 1u, !global0.e.x, -15876i > u_input.b))), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, arg_1.b.b.x, arg_0.d.x), vec3<u32>(global0.d.x, arg_0.d.x, 64608u)), vec2<bool>(true, true), firstTrailingBit(vec3<u32>(global0.d.x, 8646u, 49u)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.b.d.x, 0u, 50668u), global0.d) % vec3<u32>(32u)), !select(vec3<bool>(global2.x, arg_0.b.e.x, arg_0.c), !vec3<bool>(arg_0.c, true, arg_1.b.c.x), !arg_0.b.e)));
    global1 = array<Struct_2, 14>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-1703f)), _wgslsmith_f_op_f32(1000f + 494f), _wgslsmith_div_f32(-596f, -1000f))) - vec3<f32>(arg_0.b.a.x, _wgslsmith_f_op_f32(min(-653f, arg_0.b.a.x)), _wgslsmith_f_op_f32(-global0.a.x))));
    let var_2 = _wgslsmith_div_vec4_i32(reverseBits(-(~_wgslsmith_div_vec4_i32(vec4<i32>(2676i, 1i, 1i, 22590i), vec4<i32>(u_input.b, 2147483647i, -1i, -52817i)))), select(~(~_wgslsmith_add_vec4_i32(vec4<i32>(-48934i, 46601i, u_input.b, u_input.b), vec4<i32>(arg_0.a, arg_0.a, u_input.b, arg_0.a))), -select(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, 1i, 0i), vec4<i32>(-46768i, 2147483647i, u_input.b, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -45610i, arg_0.a, 37731i), vec4<i32>(u_input.b, arg_0.a, -9686i, -3088i)), true), !vec4<bool>(false, !arg_0.b.e.x, arg_0.b.c.x, var_0.a.c.x)));
    global1 = array<Struct_2, 14>();
    return abs(-vec2<i32>(-9786i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(var_2.x, arg_0.a), var_2.wx, true), select(var_2.yy, vec2<i32>(u_input.b, 69189i), var_0.a.c))));
}

fn func_2() -> vec2<f32> {
    let var_0 = abs(func_3(Struct_2(1i, Struct_1(global0.a, _wgslsmith_add_vec3_u32(u_input.a.yxy, global0.d), vec2<bool>(false, global0.e.x), global0.d, select(vec3<bool>(global0.c.x, true, false), vec3<bool>(true, true, global2.x), true)), false, vec4<u32>(reverseBits(global3.x), u_input.a.x, 69671u, 42916u)), Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(global0.a.x, -303f, -1206f)), ~vec3<u32>(1u, 21166u, 97400u), !global2.zx, vec3<u32>(global0.d.x, global3.x, 45408u), select(global0.e, global0.e, global0.c.x)), Struct_1(global0.a, ~u_input.a.wxz, vec2<bool>(global0.e.x, false), ~global0.b, select(global0.e, global0.e, vec3<bool>(false, global0.e.x, global2.x))))));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a.x, global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -984f)))), firstTrailingBit(~global0.b & firstTrailingBit(global0.b)), vec2<bool>(true, true), vec3<u32>(12736u, global0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global3.x, global3.x, 31444u), u_input.a)) >> (firstLeadingBit(firstTrailingBit(vec3<u32>(0u, 10606u, 0u))) % vec3<u32>(32u)), vec3<bool>(true || (511f >= global0.a.x), all(global0.e.yy), !global2.x)));
    global1 = array<Struct_2, 14>();
    var var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-var_0.x, _wgslsmith_sub_i32(24037i, var_0.x), -var_0.x), select(abs(vec3<i32>(u_input.b, 2147483647i, u_input.b)), -vec3<i32>(-5912i, u_input.b, -58745i), global0.e) | -vec3<i32>(39244i, 29924i, -57664i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(~(vec3<i32>(var_0.x, 0i, 2147483647i) | vec3<i32>(30944i, u_input.b, -17705i)), abs(vec3<i32>(-35143i, var_0.x, -10898i)) >> (select(var_1.a.d, vec3<u32>(u_input.a.x, 82201u, var_1.a.b.x), true) % vec3<u32>(32u))), ~(-(vec3<i32>(2147483647i, 0i, 33159i) & vec3<i32>(33868i, -2147483647i, u_input.b))), ~_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 28225i, 28298i), vec3<i32>(1i, -18672i, var_0.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, var_0.x, 2147483647i), vec3<i32>(u_input.b, u_input.b, u_input.b)))), vec3<i32>(_wgslsmith_dot_vec3_i32(select(~vec3<i32>(u_input.b, 4469i, 1i), select(vec3<i32>(var_0.x, u_input.b, u_input.b), vec3<i32>(var_0.x, var_0.x, -9367i), true), vec3<bool>(var_1.a.c.x, var_1.a.e.x, false)), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(1i, var_0.x, -20579i))), -1i, u_input.b));
    var var_3 = _wgslsmith_div_vec3_f32(var_1.a.a, vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * _wgslsmith_f_op_f32(var_1.a.a.x * var_1.a.a.x)) + global0.a.x), _wgslsmith_f_op_f32(global0.a.x * 755f)));
    return _wgslsmith_f_op_vec2_f32(global0.a.xx + var_3.zy);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_4) -> Struct_4 {
    let var_0 = global4[_wgslsmith_index_u32(~(0u >> (arg_2.a.d.x % 32u)), 22u)];
    var var_1 = Struct_3(arg_2.b);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1490f, -1118f, -1678f), vec3<f32>(arg_2.b.a.x, -650f, arg_2.a.a.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, -524f) - arg_2.a.a), _wgslsmith_f_op_vec3_f32(abs(var_1.a.a)))), !all(vec4<bool>(true, global2.x, arg_0.x, global2.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.a.x, arg_2.b.a.x, arg_2.a.a.x) - _wgslsmith_f_op_vec3_f32(-arg_2.a.a)))))), ~(_wgslsmith_sub_vec3_u32(max(global0.d, global0.d), vec3<u32>(arg_2.b.b.x, 1u, u_input.a.x)) ^ (firstTrailingBit(var_1.a.b) >> (select(global0.d, u_input.a.zyx, arg_0.x) % vec3<u32>(32u)))), select(!(!vec2<bool>(false, global2.x)), select(vec2<bool>(true, true), global0.c, arg_2.a.c), vec2<bool>(arg_0.x, !var_1.a.e.x)), arg_2.b.b, select(select(vec3<bool>(var_1.a.e.x, arg_2.a.e.x, true), select(var_1.a.e, !global0.e, arg_2.b.e), vec3<bool>(false, true, global3.x != u_input.a.x)), select(vec3<bool>(any(arg_0), u_input.b > -1i, false & global2.x), !vec3<bool>(true, arg_0.x, global2.x), var_1.a.e), vec3<bool>(var_1.a.e.x, arg_2.a.c.x, true)));
    var_1 = Struct_3(arg_2.b);
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a.x, var_0.x, _wgslsmith_f_op_f32(exp2(var_1.a.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.a, vec3<f32>(-2943f, 163f, -545f))))), abs(~abs(vec3<u32>(global3.x, 57708u, 4294967295u))), select(vec2<bool>(select(var_2.c.x, true, arg_0.x), any(vec2<bool>(global2.x, arg_0.x))), vec2<bool>(var_1.a.e.x & false, !global2.x), global2.x), ~vec3<u32>(_wgslsmith_mod_u32(17337u, global0.d.x), 42293u << (arg_2.b.b.x % 32u), _wgslsmith_clamp_u32(4294967295u, arg_2.a.d.x, 4294967295u)), !select(!arg_2.a.e, var_1.a.e, select(vec3<bool>(true, true, true), global0.e, var_1.a.e.x))));
    return Struct_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1118f), _wgslsmith_f_op_f32(var_2.a.x + -844f), arg_2.b.a.x), max(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, var_2.d.x), ~vec3<u32>(arg_2.b.b.x, var_1.a.b.x, 1u)), vec3<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d.x, u_input.a.x, 6843u), vec3<u32>(1u, 1u, 987u)), ~1u)), var_2.c, reverseBits(vec3<u32>(11660u, _wgslsmith_sub_u32(global0.d.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(53765u, 115053u, var_2.d.x), arg_2.a.b))), select(vec3<bool>(all(vec3<bool>(arg_2.b.e.x, false, var_3.a.c.x)), arg_2.a.c.x, arg_0.x), select(!var_2.e, vec3<bool>(arg_2.b.e.x, var_2.c.x, arg_0.x), select(vec3<bool>(true, var_2.e.x, false), var_2.e, vec3<bool>(global0.e.x, global2.x, false))), var_2.e)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, -1000f, -134f) * vec3<f32>(129f, 210f, 503f)), var_3.a.a))), abs(~vec3<u32>(0u, global0.d.x, global0.b.x)), vec2<bool>(arg_2.b.c.x, var_2.e.x), vec3<u32>(4294967295u, 0u & _wgslsmith_clamp_u32(arg_2.b.d.x, var_2.b.x, 62711u), _wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, var_1.a.b.x) >> (var_1.a.d.xy % vec2<u32>(32u)), ~global3.xy)), vec3<bool>(global0.c.x, true & arg_0.x, !arg_2.b.e.x)));
}

fn func_1() -> Struct_3 {
    var var_0 = !select(select(!(!global0.e), global0.e, global0.c.x), global0.e, global0.c.x);
    global4 = array<vec4<f32>, 22>();
    global2 = global0.e;
    let var_1 = func_4(global0.e.zy, _wgslsmith_f_op_vec2_f32(func_2()), Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.a, vec3<f32>(358f, global0.a.x, -599f)) + vec3<f32>(1405f, 416f, global0.a.x)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.xyx, vec3<u32>(65872u, global3.x, 1568u)), ~global0.d), vec2<bool>(true, global0.e.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 10487u, 51065u), firstLeadingBit(global0.b), u_input.a.yyy), vec3<bool>(u_input.b <= u_input.b, any(vec4<bool>(global2.x, var_0.x, global0.e.x, true)), true)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, 1447f) * _wgslsmith_f_op_vec3_f32(step(global0.a, vec3<f32>(global0.a.x, global0.a.x, global0.a.x)))), ~(~vec3<u32>(4294967295u, global0.b.x, 0u)), global0.e.zz, u_input.a.xxy, vec3<bool>(true, global0.e.x, var_0.x))));
    var var_2 = var_1.b;
    return Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, -417f) * vec3<f32>(var_1.b.a.x, -660f, -244f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.a.x, 281f, var_2.a.x), global0.a)), global0.d, vec2<bool>(false, true), ~u_input.a.wxw, func_4(!func_4(var_0.xx, vec2<f32>(global0.a.x, 1372f), var_1).a.c, var_1.b.a.zy, var_1).a.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 863f;
    let var_1 = _wgslsmith_f_op_vec3_f32(-global0.a);
    var var_2 = func_1();
    global3 = var_2.a.b;
    var var_3 = Struct_3(var_2.a);
    var var_4 = func_4(func_4(func_4(vec2<bool>(all(var_3.a.e), func_1().a.c.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.a.x, 619f)))), func_4(vec2<bool>(true, true), var_1.xy, func_4(vec2<bool>(global0.e.x, var_2.a.c.x), var_1.zy, Struct_4(Struct_1(var_1, var_3.a.d, global2.zy, vec3<u32>(1u, var_2.a.b.x, 1u), vec3<bool>(false, global2.x, var_2.a.e.x)), Struct_1(var_1, vec3<u32>(119473u, u_input.a.x, global3.x), var_2.a.e.zy, var_3.a.d, vec3<bool>(var_2.a.e.x, var_2.a.c.x, true)))))).b.e.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 1215f) * vec2<f32>(var_1.x, 1207f)), _wgslsmith_f_op_vec2_f32(abs(global0.a.xy)), var_2.a.c))), func_4(select(select(vec2<bool>(global0.e.x, true), global0.c, vec2<bool>(false, global2.x)), !global2.yx, vec2<bool>(true, var_2.a.c.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.a.x), var_2.a.a.x), func_4(func_1().a.e.xz, _wgslsmith_f_op_vec2_f32(ceil(var_1.xy)), func_4(global2.xx, vec2<f32>(-675f, global0.a.x), Struct_4(Struct_1(vec3<f32>(var_3.a.a.x, -926f, -201f), u_input.a.xyz, var_2.a.e.xy, var_2.a.b, var_2.a.e), var_2.a))))).a.c, var_2.a.a.zx, func_4(var_2.a.c, var_2.a.a.xz, Struct_4(func_1().a, Struct_1(_wgslsmith_f_op_vec3_f32(var_3.a.a * vec3<f32>(global0.a.x, var_3.a.a.x, var_0)), var_2.a.b << (global0.b % vec3<u32>(32u)), var_3.a.e.zx, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 40859u, var_3.a.b.x), vec3<u32>(u_input.a.x, 34295u, global3.x)), select(vec3<bool>(var_2.a.e.x, global0.e.x, global0.c.x), global0.e, global0.e)))));
    let var_5 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, firstTrailingBit(vec3<u32>(countOneBits(abs(4294967295u)), _wgslsmith_add_u32(_wgslsmith_mult_u32(var_4.a.d.x, var_2.a.b.x), global0.d.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_3.a.b.x, 4294967295u, 61389u), ~var_4.b.b))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(~19659u, ~65717u, ~11363u), _wgslsmith_sub_vec3_u32(abs(var_3.a.d), ~u_input.a.yzw)), var_2.a.b);
}

