struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(vec3<u32>(52773u, 0u, 38459u)), Struct_4(vec3<u32>(6982u, 0u, 1u)), Struct_4(vec3<u32>(1u, 64961u, 0u)), Struct_4(vec3<u32>(27163u, 4294967295u, 107604u)), Struct_4(vec3<u32>(4294967295u, 4206u, 1u)), Struct_4(vec3<u32>(35926u, 0u, 29452u)), Struct_4(vec3<u32>(4294967295u, 61233u, 9325u)), Struct_4(vec3<u32>(43180u, 1u, 45814u)), Struct_4(vec3<u32>(1u, 4294967295u, 62277u)), Struct_4(vec3<u32>(27428u, 1u, 8138u)), Struct_4(vec3<u32>(1u, 2013u, 4294967295u)), Struct_4(vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_4(vec3<u32>(4294967295u, 28491u, 36717u)), Struct_4(vec3<u32>(48328u, 1u, 44429u)), Struct_4(vec3<u32>(0u, 1u, 41758u)), Struct_4(vec3<u32>(4294967295u, 1u, 0u)));

var<private> global1: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(1u, 78719u, 13351u, 1u), vec4<u32>(12664u, 7101u, 26060u, 1u), vec4<u32>(40361u, 4294967295u, 8609u, 4294967295u), vec4<u32>(0u, 21715u, 4294967295u, 4198u), vec4<u32>(1u, 48255u, 1u, 1u), vec4<u32>(104736u, 52728u, 0u, 1u), vec4<u32>(1u, 0u, 1u, 72290u), vec4<u32>(65793u, 4294967295u, 13131u, 1u), vec4<u32>(4294967295u, 1932u, 0u, 0u), vec4<u32>(27142u, 1u, 4294967295u, 104453u), vec4<u32>(14207u, 0u, 3192u, 76670u), vec4<u32>(0u, 900u, 1u, 64466u), vec4<u32>(39289u, 1u, 0u, 4294967295u), vec4<u32>(7612u, 59466u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(67122u, 1u, 0u, 0u), vec4<u32>(95251u, 4507u, 29888u, 24288u), vec4<u32>(5925u, 0u, 8878u, 5415u), vec4<u32>(0u, 1u, 11350u, 1u), vec4<u32>(8515u, 0u, 68415u, 1u), vec4<u32>(2983u, 22479u, 4294967295u, 70448u), vec4<u32>(6738u, 26213u, 1u, 10016u), vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<u32>(18833u, 61664u, 61833u, 82924u));

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global3: vec2<f32> = vec2<f32>(1527f, -604f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> i32 {
    let var_0 = vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.a.x, 0i, -1i, u_input.b.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b.x)), vec4<i32>(1i, u_input.b.x, -2147483647i, 25765i) | vec4<i32>(u_input.b.x, 1i, u_input.a.x, 824i)), max(vec4<i32>(u_input.b.x, 37196i, -38740i, -21358i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 1671i, u_input.b.x, 2147483647i), vec4<i32>(-32129i, -2147483647i, u_input.b.x, -41875i))));
    return abs(abs(-u_input.b.x));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    global2 = select(select(vec4<bool>(arg_1.b.x == -1i, true, arg_0.a.a, false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2.b.a, false, true, arg_0.a.a), all(vec4<bool>(global2.x, false, arg_2.a.a, true))), vec4<bool>(false, arg_2.b.a, arg_1.c.x, arg_1.c.x && true), select(select(vec4<bool>(true, arg_1.c.x, global2.x, arg_0.a.a), vec4<bool>(false, arg_2.a.a, true, arg_2.a.a), arg_2.a.a), select(vec4<bool>(false, true, false, arg_2.a.a), vec4<bool>(true, arg_0.a.a, arg_1.c.x, arg_0.b.a), false), !vec4<bool>(false, true, arg_2.b.a, global2.x))), vec4<bool>(false == !arg_0.b.a, true, !arg_0.b.a, true)), vec4<bool>(!(!global2.x), true, !(arg_1.a.b <= 1u), arg_1.a.a), !select(select(!vec4<bool>(arg_1.a.a, arg_0.b.a, global2.x, true), !vec4<bool>(true, true, true, global2.x), false), vec4<bool>(all(vec4<bool>(global2.x, arg_1.c.x, global2.x, false)), true, global3.x <= arg_0.b.e.x, any(global2.xyy)), !arg_1.c.x | arg_2.b.a));
    let var_0 = arg_0;
    let var_1 = arg_1;
    let var_2 = Struct_3(Struct_1(global2.x, ~var_1.a.b, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.c.x >> (var_1.a.b % 32u), 1i, ~var_1.b.x, arg_0.a.c.x), arg_1.b), ~(-2147483647i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_2.a.e))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -1000f, -141f, -348f)))))), ~(~arg_0.a.c), select(vec2<bool>(any(vec2<bool>(true, false)), var_0.a.a), !var_1.c, vec2<bool>(all(vec3<bool>(true, arg_0.b.a, var_0.a.a)), false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + -910f)) - _wgslsmith_f_op_f32(min(var_0.b.e.x, _wgslsmith_f_op_f32(arg_1.d * _wgslsmith_f_op_f32(f32(-1f) * -1786f))))));
    let var_3 = max(var_1.a.b >> (~45030u % 32u), ~0u);
    return var_2.a.b;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = ~func_3(Struct_2(Struct_1(any(vec4<bool>(arg_1.x, global2.x, arg_1.x, true)), ~55913u, vec4<i32>(1i, 1i, 1i, 1i), -8559i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(254f, -255f, arg_0.x, arg_0.x))), Struct_1(global2.x, 33004u << (0u % 32u), ~vec4<i32>(u_input.b.x, -2147483647i, 0i, u_input.a.x), -1i, _wgslsmith_f_op_vec4_f32(-arg_0))), Struct_3(Struct_1(true, ~41743u, _wgslsmith_div_vec4_i32(vec4<i32>(-26718i, 7261i, 1i, -59256i), vec4<i32>(u_input.b.x, -11139i, 60707i, u_input.a.x)), -u_input.b.x, vec4<f32>(arg_0.x, -1691f, global3.x, arg_0.x)), vec4<i32>(abs(0i), -3693i, 1i, 1895i), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), Struct_2(Struct_1(false, 1u, firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, 888i, -2147483647i)), 43671i, vec4<f32>(global3.x, 341f, arg_0.x, arg_0.x)), Struct_1(global2.x, ~4294967295u, ~vec4<i32>(-1i, u_input.b.x, u_input.a.x, u_input.b.x), firstLeadingBit(u_input.b.x), _wgslsmith_div_vec4_f32(arg_0, vec4<f32>(arg_0.x, arg_0.x, -1755f, -758f)))));
    var var_1 = Struct_3(Struct_1(global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(0u, 94302u), min(1u, 37867u)), ~(~vec2<u32>(0u, 1u))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 1i, i32(-1i) * -7709i, u_input.a.x), -_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, 2147483647i, -29634i), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))), -select(_wgslsmith_add_i32(0i, 12674i), -u_input.a.x, false), _wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(_wgslsmith_f_op_f32(abs(global3.x)), arg_0.x, _wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(select(global3.x, global3.x, false))))), vec4<i32>(i32(-1i) * -(~u_input.a.x), _wgslsmith_mult_i32(2147483647i, _wgslsmith_mult_i32(~12790i, _wgslsmith_sub_i32(u_input.a.x, 30143i))), 31431i, _wgslsmith_div_i32(u_input.b.x, 16559i)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))));
    let var_2 = Struct_4(abs(vec3<u32>(4294967295u, var_1.a.b, 0u) ^ vec3<u32>(var_1.a.b, var_1.a.b, var_1.a.b)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(81925u, var_1.a.b), 4294967295u, _wgslsmith_mult_u32(var_1.a.b, var_1.a.b)), firstTrailingBit(vec3<u32>(var_1.a.b, 11191u, var_1.a.b)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_1.a.b, var_1.a.b), vec3<u32>(61201u, 0u, var_1.a.b)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_3 = var_1.a;
    global0 = array<Struct_4, 16>();
    return Struct_1(var_1.c.x, _wgslsmith_sub_u32(var_3.b, ~(var_2.a.x | firstLeadingBit(var_3.b))), ~(~firstLeadingBit(-vec4<i32>(u_input.b.x, 1i, -24498i, var_1.b.x))), _wgslsmith_clamp_i32(-u_input.a.x, -1i | var_3.d, -u_input.b.x), var_3.e);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = arg_1.b;
    let var_1 = (((~arg_1.c | -vec4<i32>(arg_0.a.c.x, -2147483647i, arg_1.d, arg_0.a.d)) & firstTrailingBit(vec4<i32>(arg_0.b.d, arg_1.c.x, 0i, arg_1.c.x))) ^ vec4<i32>(_wgslsmith_clamp_i32(arg_1.c.x, arg_0.b.c.x, countOneBits(arg_1.c.x)), arg_0.a.d, arg_1.d, -1i)) >> (vec4<u32>((4310u << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, arg_1.b, 34849u, var_0), vec4<u32>(8499u, 5040u, 28471u, arg_1.b)) % 32u)) << (4294967295u % 32u), arg_0.b.b, arg_2, arg_0.a.b) % vec4<u32>(32u));
    global0 = array<Struct_4, 16>();
    global3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(arg_0.b.e.wx)), arg_1.e.xx));
    global2 = vec4<bool>(all(!select(vec3<bool>(arg_3.x, arg_1.a, true), global2.xxy, global2.xxz)) | select(true, arg_3.x, arg_0.b.a), any(global2.xxy), false, arg_0.b.e.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2107f, -683f))));
    return Struct_1(select(false, true, !global2.x), 13883u, _wgslsmith_mod_vec4_i32(arg_1.c, var_1), arg_1.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -171f)), 706f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1000f)))), global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = 1u;
    global3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(770f, global3.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-154f, 3031f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) * vec2<f32>(global3.x, -946f)))))));
    let var_2 = !(!var_0);
    let var_3 = Struct_2(Struct_1(var_0, ~4294967295u, vec4<i32>(func_1(), -u_input.a.x, 2147483647i, -2147483647i), u_input.b.x ^ u_input.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1374f), -830f, _wgslsmith_f_op_f32(-global3.x), 1000f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-644f, global3.x, global3.x, global3.x)), vec4<f32>(global3.x, 416f, 1938f, -621f)))), func_4(Struct_2(func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.x, 190f, global3.x, global3.x))), vec2<bool>(true, true)), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 729f, global3.x, 1000f) + vec4<f32>(global3.x, 232f, 624f, 1395f)), !global2.zw)), Struct_1(global2.x, ~select(0u, 4294967295u, true), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 21307i, 2147483647i, u_input.b.x)) ^ (vec4<i32>(2147483647i, 1i, 2147483647i, u_input.b.x) & vec4<i32>(-7792i, -16036i, -2147483647i, u_input.b.x)), _wgslsmith_sub_i32(~u_input.a.x, ~2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1054f, global3.x, 1757f, global3.x))))), 1u, !select(!global2.zx, select(vec2<bool>(var_2, var_2), global2.xy, global2.ww), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-func_2(var_3.a.e, vec2<bool>(func_4(Struct_2(var_3.a, var_3.a), var_3.b, var_3.a.b, global2.wx).a, false || global2.x)).e.www), ~min(_wgslsmith_clamp_u32(countOneBits(var_3.a.b), 1u, func_3(Struct_2(Struct_1(false, var_3.a.b, vec4<i32>(u_input.a.x, u_input.a.x, 37175i, 2147483647i), -2147483647i, vec4<f32>(196f, global3.x, -311f, global3.x)), Struct_1(var_0, 74464u, vec4<i32>(u_input.a.x, var_3.a.c.x, var_3.a.d, 2147483647i), u_input.a.x, vec4<f32>(-1870f, global3.x, -1000f, global3.x))), Struct_3(Struct_1(var_2, 1u, vec4<i32>(2147483647i, var_3.a.d, 5582i, 2611i), 29761i, var_3.b.e), var_3.a.c, vec2<bool>(var_0, var_3.a.a), global3.x), var_3)), 1u), global3.x);
}

