struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(4294967295u, 0u, 1u, 51798u), -1i, -1i, 0i);

var<private> global2: Struct_2;

var<private> global3: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(472f, -864f), vec2<f32>(-1477f, 365f), vec2<f32>(2843f, -517f), vec2<f32>(-161f, 536f), vec2<f32>(-308f, 1000f), vec2<f32>(203f, 659f), vec2<f32>(-384f, -3351f), vec2<f32>(336f, -1488f), vec2<f32>(-274f, 899f), vec2<f32>(1391f, 263f), vec2<f32>(531f, -1806f), vec2<f32>(-471f, 1064f), vec2<f32>(185f, 1593f), vec2<f32>(1005f, 1879f), vec2<f32>(1000f, -1500f), vec2<f32>(1579f, -378f), vec2<f32>(-1796f, 442f), vec2<f32>(-436f, 1045f), vec2<f32>(326f, -361f), vec2<f32>(1000f, 1509f), vec2<f32>(-238f, -1609f), vec2<f32>(1090f, 1168f), vec2<f32>(-468f, 1639f), vec2<f32>(565f, 637f), vec2<f32>(831f, -268f), vec2<f32>(1739f, -1385f), vec2<f32>(1143f, 800f));

var<private> global4: array<vec3<i32>, 25>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = 63335u;
    var var_1 = global2.e.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-774f)))), -2287f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -475f)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2338f, 566f, 700f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1832f, -2246f, -458f)))))));
    global2 = Struct_2(global2.a, Struct_1(vec4<u32>(max(1u, 39922u), 87325u, ~_wgslsmith_sub_u32(u_input.d.x, global2.a.a.x), _wgslsmith_mod_u32(1u, max(4294967295u, 1u))), u_input.c, firstLeadingBit(_wgslsmith_dot_vec2_i32(-u_input.b, firstTrailingBit(global2.c.zy))), ~(-42228i)), global2.c, vec2<u32>(_wgslsmith_sub_u32(23939u, ~global1.a.x), ~1u), global2.e);
    global2 = Struct_2(global2.b, Struct_1(global1.a, select(-(u_input.b.x >> (u_input.d.x % 32u)), 9037i, !all(vec4<bool>(false, global2.e.x, false, global2.e.x))), _wgslsmith_dot_vec3_i32(abs(global4[_wgslsmith_index_u32(global1.a.x, 25u)]) ^ _wgslsmith_sub_vec3_i32(global4[_wgslsmith_index_u32(u_input.d.x, 25u)], global4[_wgslsmith_index_u32(global1.a.x, 25u)]), _wgslsmith_clamp_vec3_i32(global2.c.wyw, ~vec3<i32>(-2147483647i, u_input.b.x, -84775i), vec3<i32>(global2.a.c, 0i, global2.a.c))), firstTrailingBit(~1i)), firstTrailingBit(firstTrailingBit(global2.c ^ _wgslsmith_add_vec4_i32(vec4<i32>(-1i, global1.c, global2.c.x, global2.a.b), global2.c))), vec2<u32>(1u, global2.b.a.x), !select(vec2<bool>(global2.e.x, global2.d.x >= 13819u), select(!global2.e, select(global2.e, global2.e, global2.e), global2.e.x), (global2.d.x << (93463u % 32u)) == 33117u));
    return (max(_wgslsmith_add_i32(~(-45712i), global1.b), _wgslsmith_dot_vec4_i32(-vec4<i32>(-34784i, global1.b, global2.c.x, u_input.c), vec4<i32>(-1i, u_input.c, u_input.c, -2147483647i))) << (global1.a.x % 32u)) << ((~(~12955u << (countOneBits(u_input.d.x) % 32u)) ^ _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, global2.d.x >> (67707u % 32u)), abs(global2.d.x))) % 32u);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> vec2<u32> {
    var var_0 = 330f >= _wgslsmith_f_op_f32(-arg_1.b);
    global0 = firstLeadingBit(~arg_1.e.b.a.x) >> (1u % 32u);
    global3 = array<vec2<f32>, 27>();
    var var_1 = _wgslsmith_f_op_f32(max(arg_0.x, 2735f));
    global2 = arg_1.e;
    return vec2<u32>(_wgslsmith_dot_vec3_u32(abs(min(min(global1.a.wyx, vec3<u32>(97909u, 40906u, 4294967295u)), ~vec3<u32>(arg_1.e.a.a.x, 25397u, 4294967295u))), ~global2.a.a.wxx), 55216u);
}

fn func_2() -> Struct_2 {
    let var_0 = global2.e.x;
    global1 = global2.a;
    var var_1 = !global2.e.x;
    let var_2 = Struct_1(global2.b.a << (global2.b.a % vec4<u32>(32u)), reverseBits(2147483647i), global2.c.x, ~global2.b.c);
    let var_3 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1847f, -149f, 390f) - vec3<f32>(832f, -1436f, -261f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 2162f, 1052f), vec3<f32>(-208f, -706f, -458f))) * vec3<f32>(-1798f, 758f, 402f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(-1009f, -1549f), _wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(-2057f - 630f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-3196f, 149f, -771f))) * vec3<f32>(-1098f, 857f, 1230f))))), Struct_3(vec3<u32>(1u, var_2.a.x, _wgslsmith_mod_u32(24458u, ~1u)), -241f, !select(!vec3<bool>(global2.e.x, false, global2.e.x), !vec3<bool>(false, global2.e.x, false), !vec3<bool>(global2.e.x, global2.e.x, global2.e.x)), min(~1u, ~19092u), Struct_2(Struct_1(~vec4<u32>(4294967295u, 9792u, var_2.a.x, global2.d.x), global1.b ^ 2147483647i, global1.d, select(-2147483647i, var_2.c, false)), Struct_1(max(var_2.a, global2.b.a), global2.c.x, func_3(), func_3()), vec4<i32>(u_input.b.x, global2.a.d ^ 2147483647i, 30036i >> (var_2.a.x % 32u), 2147483647i), var_2.a.xy, global2.e)));
    return Struct_2(Struct_1(firstTrailingBit(reverseBits(~global2.b.a)), _wgslsmith_sub_i32(global2.c.x, -66386i), global2.c.x, abs(firstLeadingBit(1i))), global2.b, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, global2.c.x, -global1.c << (~0u % 32u), _wgslsmith_sub_i32(var_2.b, ~(-7153i))), ~(-vec4<i32>(-1i, -1i, 0i, 15021i) ^ -vec4<i32>(2101i, global1.c, u_input.c, -10806i))), vec2<u32>(firstTrailingBit(1u), ~_wgslsmith_div_u32(var_2.a.x, 1u)), select(global2.e, select(!global2.e, vec2<bool>(!global2.e.x, all(vec4<bool>(global2.e.x, false, global2.e.x, false))), vec2<bool>(!global2.e.x, select(global2.e.x, false, true))), select(!select(vec2<bool>(true, global2.e.x), vec2<bool>(global2.e.x, global2.e.x), global2.e.x), !select(vec2<bool>(true, global2.e.x), vec2<bool>(global2.e.x, global2.e.x), vec2<bool>(global2.e.x, global2.e.x)), select(!global2.e, select(global2.e, global2.e, false), global2.e.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    let var_1 = all(vec2<bool>(var_0.e.x, global2.e.x));
    global2 = func_2();
    let var_2 = func_2().a;
    global3 = array<vec2<f32>, 27>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(func_1(), Struct_1(~(~(global2.a.a & global2.b.a)), ~(-u_input.c), -global1.b, 1i), vec4<i32>(~_wgslsmith_add_i32(~2147483647i, abs(global1.b)), abs(-u_input.c), -_wgslsmith_div_i32(u_input.b.x, 7650i), 0i), _wgslsmith_sub_vec2_u32(select(vec2<u32>(func_4(vec3<f32>(-2337f, -202f, 203f), Struct_3(global2.a.a.wzw, 313f, vec3<bool>(global2.e.x, false, global2.e.x), global1.a.x, Struct_2(Struct_1(vec4<u32>(global1.a.x, global2.b.a.x, 22385u, u_input.a.x), 14072i, -4868i, global1.c), global2.a, vec4<i32>(-35160i, u_input.c, global2.b.b, u_input.c), vec2<u32>(18982u, 4294967295u), vec2<bool>(global2.e.x, false)))).x, min(0u, u_input.a.x)), ~vec2<u32>(global2.d.x, u_input.a.x) >> (global1.a.xx % vec2<u32>(32u)), !func_2().e), vec2<u32>(17083u, ~min(1u, global1.a.x))), vec2<bool>(global2.e.x, true));
    let var_0 = global1.a;
    let var_1 = _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(global1.a.wy, vec2<u32>(5536u, var_0.x) << (var_0.wz % vec2<u32>(32u))), vec2<u32>(1u, _wgslsmith_mod_u32(~(var_0.x ^ 4294967295u), abs(9215u))));
    global1 = func_2().a;
    let var_2 = Struct_1(firstLeadingBit(func_1().a), 27371i, global1.c, 1i);
    global0 = func_2().d.x;
    var var_3 = func_1();
    let var_4 = ~vec4<i32>(~(-3142i), -_wgslsmith_div_i32(39075i, ~global2.c.x), abs((-13654i << (var_3.a.x % 32u)) ^ _wgslsmith_mod_i32(var_2.d, 0i)), -1i);
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1000f)))), vec2<i32>(-min(-var_4.x, -1i), abs(global2.b.d ^ 3230i)));
}

