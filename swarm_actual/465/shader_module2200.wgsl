struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec3<bool>, 18>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>) -> u32 {
    global0 = select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, ~(reverseBits(1u) | _wgslsmith_dot_vec2_u32(vec2<u32>(38807u, 4294967295u), vec2<u32>(4294967295u, 0u)))), 18u)], vec3<bool>(all(!vec4<bool>(false, arg_1.a, arg_1.a, true)), arg_0, !select(true, all(vec4<bool>(arg_0, true, arg_1.a, arg_0)), all(vec4<bool>(global0.x, arg_0, false, true)))), all(!select(!vec4<bool>(false, false, false, global0.x), select(vec4<bool>(global0.x, true, false, false), vec4<bool>(global0.x, false, true, arg_1.a), arg_0), !vec4<bool>(arg_1.a, arg_1.a, arg_0, arg_1.a))));
    var var_0 = ~(~vec4<u32>(1u, 1u, 1u, 1u));
    var_0 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~4294967295u, abs(var_0.x), ~var_0.x, var_0.x ^ var_0.x), vec4<u32>(1u, var_0.x, 1u, _wgslsmith_mult_u32(var_0.x, 1u))), ~vec4<u32>(~var_0.x, ~var_0.x, abs(var_0.x), var_0.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_2.ww, _wgslsmith_f_op_vec2_f32(select(arg_2.xy, vec2<f32>(arg_2.x, -1000f), all(vec4<bool>(true, true, true, false)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.wy - vec2<f32>(arg_2.x, arg_2.x)), arg_2.xw))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(arg_2.x * 1684f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2.x, -622f)))), vec2<f32>(-1658f, -696f), select(select(!vec2<bool>(false, global0.x), select(vec2<bool>(false, true), vec2<bool>(true, arg_1.a), global0.zx), global0.zz), select(vec2<bool>(global0.x, arg_0), select(vec2<bool>(arg_0, true), global0.xz, global0.xy), vec2<bool>(arg_0, true)), global0.zx))));
    var var_2 = ((abs(abs(vec4<i32>(-1i, 11865i, u_input.a, u_input.a))) << (firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 31325u), vec4<u32>(1203u, var_0.x, 29271u, 12303u))) % vec4<u32>(32u))) | (vec4<i32>(-1i) * -vec4<i32>(u_input.a, 62915i, 1i, 1i))) >> ((vec4<u32>(~_wgslsmith_div_u32(84224u, var_0.x), ~(1u & var_0.x), _wgslsmith_add_u32(4294967295u << (var_0.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.x), var_0.xx)), firstLeadingBit(29546u)) >> (~vec4<u32>(~4294967295u, var_0.x, var_0.x, 76475u) % vec4<u32>(32u))) % vec4<u32>(32u));
    return min(~(min(~var_0.x, var_0.x) | ~(~28070u)), ~select(var_0.x, max(41374u, var_0.x) & ~37809u, false));
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = true;
    var var_1 = Struct_3(vec4<u32>(arg_0.x, ~(~_wgslsmith_add_u32(arg_0.x, 4294967295u)), arg_0.x, 1u), !global1[_wgslsmith_index_u32(firstTrailingBit(arg_0.x), 18u)], 1u, _wgslsmith_clamp_u32(~func_3(false, Struct_2(false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(221f, -746f, 1000f, -623f))), arg_0.x, 41924u));
    let var_2 = ~_wgslsmith_dot_vec2_u32(firstTrailingBit(~var_1.a.wy | (vec2<u32>(0u, 4294967295u) ^ vec2<u32>(arg_0.x, 8619u))), reverseBits(vec2<u32>(var_1.c, 0u) | firstLeadingBit(vec2<u32>(arg_0.x, arg_0.x))));
    let var_3 = vec4<bool>(var_1.b.x, var_0, all(!(!vec2<bool>(true, var_0))), false);
    global1 = array<vec3<bool>, 18>();
    return Struct_3(~(~(~(~var_1.a))), vec3<bool>(any(vec4<bool>(var_0 && false, false, !var_3.x, true)), false, false), abs(1u), 0u);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    global1 = array<vec3<bool>, 18>();
    let var_0 = Struct_4(vec2<bool>(true, global0.x && true), Struct_2(!arg_1.a.x), i32(-1i) * -(19036i | u_input.a), 1u, arg_1);
    global0 = !(!vec3<bool>(true, var_0.a.x, true));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(436f, _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.e.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 422f), var_0.e.b.x)));
    var var_2 = ~arg_3.c & 1u;
    return func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.d, var_0.d, max(abs(4294967295u), var_0.d), _wgslsmith_mult_u32(func_2(vec4<u32>(31153u, 9937u, 37402u, arg_3.a.x)).d, 1u)), arg_3.a));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_4 {
    global1 = array<vec3<bool>, 18>();
    var var_0 = func_4(-1i, Struct_1(vec4<bool>(arg_2, false, u_input.a != countOneBits(20056i), _wgslsmith_dot_vec4_u32(vec4<u32>(100473u, 1u, 83875u, 4294967295u), vec4<u32>(1u, 41573u, 1u, 68755u)) != 1u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-976f + 1560f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(771f - 1643f) + 1025f))), all(select(select(global0.yz, global0.zz, global0.zz), select(global0.yx, vec2<bool>(true, arg_1), arg_1), global0.xx)) || true, func_2(vec4<u32>(0u, 2960u, ~abs(4294967295u), 1u)));
    var var_1 = ~var_0.a.yy;
    return Struct_4(global0.xy, Struct_2(arg_2), _wgslsmith_clamp_i32(2147483647i, 3855i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_clamp_i32(1i, -1i, u_input.a), ~u_input.a), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(1i, u_input.a, u_input.a) | vec3<i32>(-20390i, u_input.a, u_input.a)))), var_0.c, Struct_1(!vec4<bool>(func_4(11421i, Struct_1(vec4<bool>(arg_2, true, false, true), vec2<f32>(433f, -1689f)), arg_0.a, Struct_3(vec4<u32>(var_1.x, var_0.d, var_0.c, 41273u), vec3<bool>(var_0.b.x, true, true), 4158u, 52981u)).b.x, true, false, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2723f, -121f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-791f, -1505f))))));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: f32) -> vec3<bool> {
    global0 = arg_0.e.a.xzz;
    let var_0 = arg_0.b;
    global1 = array<vec3<bool>, 18>();
    global0 = vec3<bool>(true, true != func_1(Struct_2(true), !global0.x, func_2(vec4<u32>(arg_0.d, 34897u, 1u, arg_0.d)).b.x).e.a.x, true);
    let var_1 = Struct_3(_wgslsmith_mod_vec4_u32(~select(vec4<u32>(1u, arg_0.d, 88237u, 4294967295u), ~vec4<u32>(4294967295u, arg_1, 1u, 4294967295u), any(vec3<bool>(true, false, false))), select(firstLeadingBit(vec4<u32>(0u, 4294967295u, 37831u, arg_1)) >> (~vec4<u32>(4294967295u, arg_1, arg_0.d, arg_1) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(41313u, 96424u, arg_0.d, arg_1), vec4<u32>(23810u, arg_0.d, arg_1, 24893u), vec4<u32>(0u, 61150u, arg_1, arg_0.d)), !(!var_0.a))), vec3<bool>(false, any(vec2<bool>(true, true)), any(select(!vec2<bool>(false, var_0.a), vec2<bool>(true, global0.x), true))), ~arg_1, 65717u & ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 4294967295u, 12342u), vec3<u32>(arg_0.d, arg_1, arg_0.d))));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_1(Struct_2(true), all(!vec2<bool>(global0.x, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -517f) - _wgslsmith_f_op_f32(sign(951f))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1604f * -1717f)))), 4294967295u, 1580f);
    var var_0 = func_1(func_1(Struct_2(!select(global0.x, global0.x, global0.x)), global0.x, !global0.x).b, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1573f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(879f + 865f) + -1394f) * _wgslsmith_f_op_f32(-1f)));
    global0 = vec3<bool>(false, false, false);
    var var_1 = 6278i;
    let var_2 = var_0.b;
    var var_3 = ~(func_2(~(~vec4<u32>(var_0.d, var_0.d, 63488u, var_0.d))).a.xxz & func_2(~(~vec4<u32>(63554u, var_0.d, 0u, var_0.d))).a.yzw);
    var var_4 = Struct_2(false);
    var var_5 = select(_wgslsmith_mod_i32(-2147483647i, 58988i), -1i, !(!(!global0.x))) | var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.b.x, 472f, var_0.e.b.x, var_0.e.b.x))))), _wgslsmith_add_vec4_i32(abs(firstLeadingBit(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a))), ~_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, var_0.c, var_0.c, u_input.a), vec4<i32>(u_input.a, -1i, u_input.a, var_0.c))), firstLeadingBit(abs(~func_1(Struct_2(false), true, true).c)));
}

