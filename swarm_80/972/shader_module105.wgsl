struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(18929i, -1i, 349f), Struct_4(1i, -73713i, 653f), Struct_4(i32(-2147483648), 15764i, 1360f), Struct_4(-7881i, 0i, 359f), Struct_4(6173i, 11309i, 286f), Struct_4(2147483647i, 43948i, 595f), Struct_4(42742i, 2147483647i, 1000f), Struct_4(-8334i, 1i, 802f), Struct_4(i32(-2147483648), 0i, -828f), Struct_4(-1i, 2147483647i, 408f), Struct_4(15247i, i32(-2147483648), -1504f), Struct_4(-16241i, 18900i, -529f), Struct_4(29173i, 12516i, -1783f), Struct_4(0i, 0i, -453f), Struct_4(8362i, 1i, 676f), Struct_4(-1i, 404i, 1711f), Struct_4(-38518i, 0i, -1652f), Struct_4(3757i, -43358i, 1259f), Struct_4(2147483647i, 19438i, 433f), Struct_4(29207i, 0i, 338f), Struct_4(-16693i, 24308i, -778f), Struct_4(2147483647i, 7747i, -155f), Struct_4(2147483647i, 14785i, -391f), Struct_4(i32(-2147483648), i32(-2147483648), 446f), Struct_4(0i, 2147483647i, 1327f), Struct_4(-46143i, -18594i, 751f), Struct_4(-8543i, -9799i, -262f), Struct_4(-17817i, -1i, 356f), Struct_4(2147483647i, 23608i, 563f), Struct_4(-68135i, 31845i, 1830f), Struct_4(0i, 0i, 1773f));

var<private> global1: array<vec2<f32>, 31> = array<vec2<f32>, 31>(vec2<f32>(-580f, 1392f), vec2<f32>(1501f, 399f), vec2<f32>(-846f, 876f), vec2<f32>(2010f, 123f), vec2<f32>(1000f, 1643f), vec2<f32>(1122f, 537f), vec2<f32>(478f, 437f), vec2<f32>(-1580f, -1197f), vec2<f32>(1047f, -944f), vec2<f32>(399f, 2444f), vec2<f32>(580f, -1768f), vec2<f32>(988f, 197f), vec2<f32>(-460f, -911f), vec2<f32>(978f, -1000f), vec2<f32>(144f, -1426f), vec2<f32>(-1434f, 1454f), vec2<f32>(748f, -1038f), vec2<f32>(865f, 432f), vec2<f32>(-139f, -266f), vec2<f32>(-767f, -706f), vec2<f32>(-529f, 328f), vec2<f32>(1240f, -232f), vec2<f32>(539f, 331f), vec2<f32>(-330f, 828f), vec2<f32>(827f, 107f), vec2<f32>(1798f, 242f), vec2<f32>(178f, 1157f), vec2<f32>(265f, -706f), vec2<f32>(109f, -1000f), vec2<f32>(-1051f, 1812f), vec2<f32>(171f, -1852f));

var<private> global2: array<Struct_3, 20>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    global0 = array<Struct_4, 31>();
    var var_0 = vec4<bool>(false, true, false, any(select(vec4<bool>(true, true, select(false, true, true), false), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), false)));
    var var_1 = _wgslsmith_mult_vec3_u32(select(select(vec3<u32>(_wgslsmith_div_u32(1u, 41997u), 1u, _wgslsmith_div_u32(4294967295u, 11877u)), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 33871u, 0u), vec3<u32>(4294967295u, 68710u, 1u))), vec3<bool>(true, all(var_0.wy), false)), ~vec3<u32>(firstLeadingBit(31352u), _wgslsmith_dot_vec4_u32(vec4<u32>(36808u, 0u, 4294967295u, 89324u), vec4<u32>(34624u, 0u, 8405u, 83230u)), _wgslsmith_add_u32(4294967295u, 0u)), !select(var_0.x || var_0.x, true, all(vec3<bool>(var_0.x, var_0.x, var_0.x)))), select(~abs(vec3<u32>(64748u, 1u, 1u)), countOneBits(vec3<u32>(4294967295u, 4294967295u, 20558u)), !(!var_0.yxw)) << (_wgslsmith_mult_vec3_u32(~(~vec3<u32>(36416u, 1u, 1u)), abs(vec3<u32>(1u, 1u, 1u))) % vec3<u32>(32u)));
    let var_2 = Struct_4(_wgslsmith_add_i32(1i, 1i), ~0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1331f)) - _wgslsmith_f_op_f32(abs(-120f))));
    global0 = array<Struct_4, 31>();
    return !all(select(select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, var_0.x, false), var_0.zyy), vec3<bool>(false, var_0.x, false), !var_0.x)) || false;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(!all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)) == !func_3(Struct_1(vec3<i32>(-16952i, u_input.b, 0i), vec2<i32>(-30327i, 56145i)), global2[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(abs(36658u), _wgslsmith_dot_vec2_u32(vec2<u32>(73949u, 50559u), vec2<u32>(4294967295u, 0u)), 4294967295u), abs(vec3<u32>(1395u, 33315u, 4294967295u))), ~(~firstTrailingBit(vec3<u32>(130515u, 53378u, 1760u)))));
    let var_1 = ~vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, arg_0.a, 0i)), ~arg_1.a), firstLeadingBit(firstLeadingBit(arg_1.a))), arg_1.b.x, arg_1.a.x << (~select(var_0.b.x, var_0.b.x, false) % 32u));
    var var_2 = Struct_1(abs(firstLeadingBit(select(~vec3<i32>(-1i, 18218i, arg_1.a.x), arg_1.a, any(vec3<bool>(false, var_0.a, true))))), vec2<i32>(-arg_0.b, select(~u_input.b, 0i, arg_0.c >= arg_0.c) & arg_0.b));
    var var_3 = Struct_3(arg_1);
    var var_4 = var_0.b;
    return Struct_2(true, vec3<u32>(1u >> (_wgslsmith_sub_u32(var_0.b.x, ~var_0.b.x) % 32u), ~var_4.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4728u) | ~vec2<u32>(0u, var_0.b.x), firstTrailingBit(vec2<u32>(var_4.x, var_4.x)))));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_1(arg_0.a, arg_0.a.yy);
    var var_1 = func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, ~(~1u) ^ ~select(4294967295u, 90625u, false)), 31u)], Struct_1(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(-38671i, arg_0.a.x, u_input.b) << (vec3<u32>(17294u, 22348u, 38926u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(arg_0.a, var_0.a))), -var_0.b));
    var var_2 = arg_0;
    let var_3 = global2[_wgslsmith_index_u32(4294967295u, 20u)];
    let var_4 = Struct_3(Struct_1(var_2.a, vec2<i32>(_wgslsmith_dot_vec2_i32(reverseBits(var_0.a.yz), var_3.a.a.zx), -_wgslsmith_sub_i32(u_input.b, var_0.a.x))));
    return global2[_wgslsmith_index_u32(~(var_1.b.x | _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, var_1.b.x), vec2<u32>(var_1.b.x, _wgslsmith_sub_u32(4294967295u, 36637u)))), 20u)];
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    let var_0 = u_input.b;
    global2 = array<Struct_3, 20>();
    var var_1 = _wgslsmith_sub_i32(u_input.b, -17834i);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-347f - 1f)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(129f, var_2, var_2, 1320f) - vec4<f32>(-1505f, var_2, var_2, -196f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_2, -1645f, 110f, -278f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1549f, 1000f, var_2))))) + vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 * 588f) * -1000f))), 783f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1099f, 942f), _wgslsmith_f_op_f32(-var_2)))), 1145f));
    return func_2(Struct_4(abs(-countOneBits(14538i)), -7984i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_3.x, -373f)), _wgslsmith_f_op_f32(-1614f + var_3.x), true))))), func_1(Struct_1(~(~vec3<i32>(-843i, 2147483647i, arg_0.a.a.x)), (vec2<i32>(var_0, -30080i) & vec2<i32>(-2147483647i, -47608i)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 38623u), vec2<u32>(0u, 50840u), vec2<u32>(3618u, 12173u)) % vec2<u32>(32u)))).a);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> StorageBuffer {
    global0 = array<Struct_4, 31>();
    global0 = array<Struct_4, 31>();
    var var_0 = arg_0.a;
    global0 = array<Struct_4, 31>();
    var var_1 = vec4<f32>(652f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-940f, 1597f)) - _wgslsmith_f_op_f32(abs(-1237f))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-246f + -1000f), _wgslsmith_f_op_f32(max(909f, -1877f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(-248f, 1365f))))), 613f, -959f);
    return StorageBuffer(arg_0.b.x << (1u % 32u), 23437u, reverseBits(arg_0.b), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1323f), -1351f), arg_0.b.xz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 31>();
    let var_0 = 0i;
    let var_1 = true;
    global0 = array<Struct_4, 31>();
    global1 = array<vec2<f32>, 31>();
    global1 = array<vec2<f32>, 31>();
    let x = u_input.a;
    s_output = func_5(func_4(func_1(Struct_1(abs(vec3<i32>(var_0, 2147483647i, var_0)), -vec2<i32>(28886i, u_input.b))), var_0), func_1(Struct_1(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(39893i, u_input.b, var_0)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, var_0, u_input.a), vec3<i32>(-21456i, -21717i, -18732i))), ~(-vec2<i32>(var_0, -1i)))).a, ~(-15519i), global2[_wgslsmith_index_u32(39375u, 20u)]);
}

