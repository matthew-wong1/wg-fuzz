struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<f32>, 2>;

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec3<f32>(590f, -884f, -1272f), Struct_1(vec3<u32>(30313u, 1u, 0u), vec4<u32>(9868u, 1u, 1u, 4294967295u)), vec4<f32>(1128f, 1687f, -453f, 2364f), -1i), Struct_2(vec3<f32>(-235f, -358f, 461f), Struct_1(vec3<u32>(45987u, 0u, 4294967295u), vec4<u32>(0u, 29692u, 31850u, 110295u)), vec4<f32>(1000f, 195f, -1040f, 128f), 21758i), Struct_2(vec3<f32>(2029f, -1590f, -1386f), Struct_1(vec3<u32>(80429u, 1u, 4294967295u), vec4<u32>(0u, 41399u, 11305u, 4294967295u)), vec4<f32>(807f, -220f, -152f, 125f), -24403i), Struct_2(vec3<f32>(-194f, -487f, -2541f), Struct_1(vec3<u32>(1u, 65455u, 85763u), vec4<u32>(14759u, 0u, 68020u, 58313u)), vec4<f32>(2260f, 846f, 2288f, -353f), -1i), Struct_2(vec3<f32>(-744f, -724f, 259f), Struct_1(vec3<u32>(81373u, 1u, 80934u), vec4<u32>(2889u, 0u, 3483u, 4294967295u)), vec4<f32>(-832f, 1775f, 371f, 1000f), 0i), Struct_2(vec3<f32>(2245f, 2083f, 842f), Struct_1(vec3<u32>(1u, 1u, 118376u), vec4<u32>(0u, 0u, 4294967295u, 51257u)), vec4<f32>(-1000f, 531f, -435f, 1000f), i32(-2147483648)), Struct_2(vec3<f32>(1826f, -799f, 1745f), Struct_1(vec3<u32>(107428u, 0u, 16354u), vec4<u32>(1u, 0u, 45593u, 55985u)), vec4<f32>(1048f, 1000f, -1277f, -350f), 16767i), Struct_2(vec3<f32>(864f, 1999f, 2297f), Struct_1(vec3<u32>(13700u, 40923u, 1u), vec4<u32>(1u, 4294967295u, 1u, 0u)), vec4<f32>(-642f, -584f, 1301f, 705f), -82081i), Struct_2(vec3<f32>(457f, 1573f, 643f), Struct_1(vec3<u32>(35548u, 1u, 1u), vec4<u32>(35332u, 4294967295u, 11885u, 1u)), vec4<f32>(-488f, -141f, -1000f, -1379f), i32(-2147483648)), Struct_2(vec3<f32>(723f, -106f, 1720f), Struct_1(vec3<u32>(53383u, 0u, 1u), vec4<u32>(0u, 1u, 29087u, 71953u)), vec4<f32>(-259f, 266f, 1576f, -811f), -1i), Struct_2(vec3<f32>(1320f, -886f, -518f), Struct_1(vec3<u32>(69955u, 625u, 4294967295u), vec4<u32>(63451u, 91276u, 997u, 16397u)), vec4<f32>(238f, -851f, -113f, 1000f), -43068i), Struct_2(vec3<f32>(988f, -952f, -1000f), Struct_1(vec3<u32>(1u, 0u, 17137u), vec4<u32>(0u, 1u, 73219u, 0u)), vec4<f32>(-301f, 174f, -1000f, 710f), i32(-2147483648)), Struct_2(vec3<f32>(-806f, 1319f, 151f), Struct_1(vec3<u32>(29094u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 47426u, 4294967295u)), vec4<f32>(1030f, 548f, -358f, -1020f), -22857i), Struct_2(vec3<f32>(1402f, 327f, 247f), Struct_1(vec3<u32>(32793u, 4294967295u, 0u), vec4<u32>(45305u, 41156u, 23028u, 15749u)), vec4<f32>(215f, 608f, 170f, 1001f), -24842i), Struct_2(vec3<f32>(1606f, -153f, 1620f), Struct_1(vec3<u32>(134921u, 1u, 6273u), vec4<u32>(21225u, 15143u, 5584u, 0u)), vec4<f32>(-589f, 1159f, 1255f, 327f), 3407i), Struct_2(vec3<f32>(229f, 945f, 478f), Struct_1(vec3<u32>(13337u, 1379u, 10916u), vec4<u32>(4294967295u, 30103u, 1u, 1u)), vec4<f32>(627f, 276f, -955f, -116f), 2147483647i));

var<private> global3: f32 = -342f;

var<private> global4: array<Struct_3, 13>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(~countOneBits(u_input.b), arg_0.x) >> ((arg_0.x & ~abs(4294967295u)) % 32u), 1u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1738f) * _wgslsmith_f_op_f32(-1000f + -2087f)) + _wgslsmith_div_f32(1000f, -811f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -234f)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, all(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false))))), 666f, 994f, 554f);
    var var_3 = 19195i;
    var var_4 = _wgslsmith_f_op_vec2_f32(var_1 * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(var_1)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-264f * var_2.x)), _wgslsmith_f_op_f32(var_1.x - -622f)))));
    return true;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = arg_1.c.zz;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -686f))))), 1413f);
    let var_2 = Struct_3(var_0.x, vec4<bool>(func_3(arg_0), all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), true)), all(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), func_3(vec2<u32>(arg_1.b.b.x, 1u)))), true), ~0u, Struct_1(~select(arg_1.b.a, arg_1.b.a, true) ^ reverseBits(~arg_1.b.a), vec4<u32>(firstLeadingBit(4294967295u), ~arg_0.x, 34454u, u_input.a)), ~arg_1.b.b.zxw);
    let var_3 = all(vec4<bool>(var_2.b.x && true, true, all(select(vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x), var_2.b.wwy, var_2.b.x)), _wgslsmith_f_op_f32(arg_1.a.x * -761f) < _wgslsmith_f_op_f32(457f * var_0.x))) && var_2.b.x;
    let var_4 = Struct_5(_wgslsmith_f_op_f32(-arg_1.a.x), false, _wgslsmith_div_u32(4294967295u, 80906u), var_3);
    return select(!vec2<bool>((0i <= arg_1.d) && var_2.b.x, !(-1412f > var_1)), !(!(!(!vec2<bool>(var_3, var_3)))), func_3(vec2<u32>(firstLeadingBit(arg_1.b.b.x), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.x, arg_0.x), ~34849u, ~29259u))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(0u, 2u)]));
    var var_1 = select(vec4<bool>(select(true, true, any(vec2<bool>(true, false)) || true), any(func_2(vec2<u32>(1u, u_input.a), Struct_2(vec3<f32>(var_0.x, 2791f, var_0.x), Struct_1(vec3<u32>(u_input.b, u_input.e, u_input.e), vec4<u32>(39230u, 39378u, u_input.e, u_input.b)), vec4<f32>(var_0.x, -373f, 104f, var_0.x), 656i))), true, true), vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), all(vec3<bool>(true, true, true)), max(4294967295u, _wgslsmith_sub_u32(4294967295u, u_input.b)) >= select(1u, u_input.b, true), !any(vec2<bool>(true, false))), true);
    global0 = all(select(var_1.wwx, select(var_1.xww, vec3<bool>(var_1.x, var_1.x, var_1.x), true), var_1.wwy)) | var_1.x;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 985f, 689f, -1741f))))));
    let var_2 = select(-firstLeadingBit(vec3<i32>(u_input.c ^ u_input.c, ~0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(u_input.c, -1i)))), ~(~(vec3<i32>(-14606i, u_input.d.x, 18506i) ^ select(vec3<i32>(u_input.d.x, 2147483647i, 2147483647i), vec3<i32>(u_input.c, u_input.c, u_input.d.x), var_1.zxy))), !(!select(vec3<bool>(true, var_1.x, var_1.x), select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, true, false), var_1.x), !var_1.zyw)));
    return 297f;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(763f - arg_3);
    let var_1 = _wgslsmith_dot_vec2_u32(~(~((vec2<u32>(0u, u_input.a) ^ vec2<u32>(1u, 4294967295u)) >> ((vec2<u32>(u_input.e, u_input.b) & vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u)))), vec2<u32>(u_input.a, (u_input.a ^ ~35718u) ^ (~22452u << (_wgslsmith_sub_u32(4294967295u, u_input.b) % 32u))));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(trunc(arg_2.x)), all(vec3<bool>((u_input.a ^ 1u) < min(0u, var_1), true, all(vec4<bool>(true, true, true, true)))), ~var_1, true);
    global2 = array<Struct_2, 16>();
    global0 = arg_0.x >= (i32(-1i) * -firstLeadingBit(u_input.c));
    return StorageBuffer(min(~arg_1.yzx, _wgslsmith_clamp_vec3_i32(~firstTrailingBit(arg_1.wwz), ~_wgslsmith_sub_vec3_i32(vec3<i32>(7783i, arg_1.x, arg_1.x), vec3<i32>(arg_0.x, arg_0.x, u_input.c)), select(vec3<i32>(-21337i, u_input.d.x, arg_1.x), vec3<i32>(-1i, -2147483647i, arg_1.x), vec3<bool>(var_2.b, false, false)) << (vec3<u32>(3270u, var_1, 1u) % vec3<u32>(32u)))), ~(-arg_1.wz), ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(arg_0.x, u_input.c), _wgslsmith_clamp_i32(1i, -5929i, 2147483647i), ~u_input.c, arg_1.x), -vec4<i32>(-1i, -1i, -22148i, arg_1.x)), _wgslsmith_dot_vec3_i32(arg_1.xxy, arg_1.yww), select(~vec4<u32>(~67303u, ~0u, var_1, abs(var_2.c)), ~vec4<u32>(u_input.e, var_1, ~var_2.c, ~var_1), !vec4<bool>(var_2.b, true, any(vec3<bool>(var_2.d, var_2.b, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 16>();
    let var_0 = Struct_1(_wgslsmith_add_vec3_u32(~(~(~vec3<u32>(u_input.b, 2340u, u_input.a))), vec3<u32>(select(16715u, _wgslsmith_add_u32(u_input.e, u_input.e), true), 1u, _wgslsmith_div_u32(abs(1u), _wgslsmith_clamp_u32(u_input.b, u_input.a, u_input.b)))), vec4<u32>(16178u, 2510u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, 6805u, 1u), ~vec4<u32>(4294967295u, 31273u, 18169u, 18182u)), 1u));
    var var_1 = var_0;
    let x = u_input.a;
    s_output = func_4(-reverseBits(u_input.d) & ((u_input.d << (max(var_1.a.yx, var_0.a.xy) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(33105i, 22360i), ~vec2<i32>(1i, u_input.d.x))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(2147483647i, 1i), _wgslsmith_sub_i32(-u_input.c, _wgslsmith_div_i32(u_input.d.x, 15722i))), u_input.c, _wgslsmith_mod_i32(-22687i, ~u_input.c), countOneBits(4697i | _wgslsmith_div_i32(u_input.c, u_input.d.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, 2000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1340f, 554f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
}

