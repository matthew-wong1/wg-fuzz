struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: i32 = 1i;

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec3<f32>(297f, -252f, 814f), vec4<u32>(4294967295u, 30867u, 0u, 45442u), 12604u));

var<private> global3: i32;

var<private> global4: vec2<i32> = vec2<i32>(-19070i, i32(-2147483648));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> f32 {
    global3 = global4.x >> (_wgslsmith_div_u32(~1u, u_input.a.x) % 32u);
    global2 = array<Struct_2, 1>();
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(global4.x, firstLeadingBit(14701i), -41592i, -1i), firstTrailingBit(-u_input.b)) ^ abs(u_input.b);
    global1 = u_input.b.x >> (u_input.a.x % 32u);
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 23u)];
    return var_1.a.x;
}

fn func_3() -> bool {
    global4 = _wgslsmith_clamp_vec2_i32(max(min(u_input.b.yw, ~vec2<i32>(14103i, 2147483647i)), _wgslsmith_mult_vec2_i32(~u_input.b.yz ^ ~vec2<i32>(2147483647i, -2147483647i), ~(u_input.b.wz | vec2<i32>(-31269i, -62385i)))), u_input.b.yz, u_input.b.zx);
    let var_0 = u_input.b.wz;
    var var_1 = global2[_wgslsmith_index_u32(~4294967295u, 1u)];
    let var_2 = Struct_1(1f, 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1.a)) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), -213f, -185f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a + vec3<f32>(-189f, var_1.a.x, 169f))))), all(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, true, true))), vec2<bool>(true, true));
    let var_3 = Struct_3(var_2, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, ~u_input.b.x, -14316i, global4.x), vec4<i32>(~(-5721i), firstLeadingBit(~(-2147483647i)), _wgslsmith_add_i32(global4.x, abs(40218i)), var_0.x)), select(select(!vec3<bool>(true, false, var_2.e.x), !select(vec3<bool>(var_2.d, var_2.e.x, false), vec3<bool>(var_2.e.x, true, true), false), ~var_2.b <= var_2.b), !(!vec3<bool>(var_2.e.x, false, true)), true), var_2, var_2);
    return _wgslsmith_f_op_f32(f32(-1f) * -1133f) == var_1.a.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-649f, 1f, _wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(367f, -1000f, 1707f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1304f, 499f, -628f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-873f, -384f, 213f), vec3<f32>(969f, 1617f, 1258f)))))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 100440u, ~59051u), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(19494u, 0u, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 11568u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, 0u, 0u, 4294967295u)) ^ (~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x) | (vec4<u32>(u_input.a.x, 40319u, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, 34623u, u_input.a.x, u_input.a.x)))), _wgslsmith_add_u32(u_input.a.x, ~_wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, 1u)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.x))) * _wgslsmith_f_op_f32(-1f));
    var var_2 = u_input.a.x;
    var var_3 = 401f;
    var var_4 = Struct_3(Struct_1(-797f, u_input.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-848f, -1000f, var_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a - var_0.a))), all(vec4<bool>(true, true, true, false)), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), !select(vec2<bool>(false, true), vec2<bool>(true, false), false))), 36353i, vec3<bool>(!func_3(), all(vec3<bool>(true, true, true)), !(var_1 != 1419f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1255f, var_1)))), ~var_0.b.x, _wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(var_0.a, vec3<f32>(992f, var_1, -1440f)))))), all(vec3<bool>(func_3(), true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec2<bool>(true, false)))), Struct_1(var_1, select(~u_input.a.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.b.x, 7551u, var_0.c), var_0.b.yyw, true), select(vec3<u32>(u_input.a.x, var_0.c, 14915u), var_0.b.wyy, vec3<bool>(true, true, false))), all(vec4<bool>(true, false, true, false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-740f + 724f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(633f, var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x - -465f))), _wgslsmith_div_f32(-1771f, _wgslsmith_f_op_f32(-var_1))), false, vec2<bool>(false, (783f > var_0.a.x) & all(vec4<bool>(false, false, false, true)))));
    return abs(u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-526f - _wgslsmith_f_op_f32(f32(-1f) * -340f)) - 176f), 4294967295u, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-714f)))), _wgslsmith_f_op_f32(1214f * _wgslsmith_div_f32(1085f, -1379f)), -555f), ~(~4294967295u) < ~func_1(u_input.b, vec4<i32>(129i, u_input.b.x, global4.x, -52004i)), select(vec2<bool>(true, any(vec3<bool>(true, true, false))), vec2<bool>(true, true), true)), -1i, vec3<bool>(~(-51534i) <= ~max(22423i, u_input.b.x), abs(abs(u_input.a.x)) > u_input.a.x, all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -878f)), u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1156f, 596f, 1401f)))), true, vec2<bool>(true, func_3())), Struct_1(-1593f, u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1813f, -1065f, 935f) * vec3<f32>(1116f, -1541f, -1795f)) * vec3<f32>(1f, 1f, 1f)), (any(vec3<bool>(false, true, true)) | true) | true, !select(vec2<bool>(true, true), vec2<bool>(false, true), false)));
    let var_1 = var_0.d;
    let var_2 = 2147483647i;
    let var_3 = Struct_1(1f, _wgslsmith_clamp_u32(52335u, 34216u, firstLeadingBit(firstLeadingBit(var_1.b))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.a.c)) - _wgslsmith_f_op_vec3_f32(var_0.d.c * var_1.c)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a, var_1.a, var_0.e.a))))))), var_1.c.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.a * var_1.c.x) - _wgslsmith_div_f32(var_0.d.a, var_1.c.x))), select(vec2<bool>(false && var_1.e.x, true), vec2<bool>(any(vec3<bool>(false, false, true)) | true, var_0.a.e.x && true), var_1.d));
    let var_4 = vec4<i32>(-27181i, 29516i, var_0.b, reverseBits(-global4.x));
    var var_5 = ~(var_0.e.b << (max(func_1(vec4<i32>(0i, 2147483647i, 2147483647i, var_0.b), u_input.b << (vec4<u32>(var_1.b, u_input.a.x, var_1.b, u_input.a.x) % vec4<u32>(32u))), 4294967295u) % 32u));
    var var_6 = select(select(select(!(!var_1.e), var_1.e, select(vec2<bool>(var_1.d, false), !var_0.c.xx, var_0.c.x)), vec2<bool>(var_1.e.x, false), vec2<bool>(var_0.c.x, all(vec2<bool>(var_0.a.e.x, var_1.d)))), select(select(vec2<bool>(var_3.e.x | var_3.d, true), vec2<bool>(var_0.a.e.x, var_1.e.x || true), false), select(vec2<bool>(all(var_0.c), !var_1.e.x), vec2<bool>(var_0.d.e.x, !var_3.d), true), false & (_wgslsmith_f_op_f32(ceil(var_1.c.x)) > var_0.e.a)), !select(vec2<bool>(var_3.e.x, var_3.e.x), !select(vec2<bool>(true, true), vec2<bool>(var_0.e.e.x, true), var_3.e), vec2<bool>(var_0.a.d, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), vec3<i32>(1i, 1i, 1i)), firstTrailingBit(u_input.b.yww)), vec3<i32>(-3865i, ~_wgslsmith_sub_i32(var_4.x, select(global4.x, var_4.x, true)), _wgslsmith_sub_i32(abs(_wgslsmith_add_i32(-1i, var_2)), _wgslsmith_dot_vec3_i32(vec3<i32>(42914i, u_input.b.x, -2147483647i), firstLeadingBit(vec3<i32>(u_input.b.x, 35158i, -1i))))));
}

