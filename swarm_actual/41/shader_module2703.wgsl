struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-6293i, 1716i, 1i, 2617i), vec4<i32>(1i, 0i, 0i, -26163i), vec4<i32>(-776i, -11606i, 1i, -25575i), vec4<i32>(i32(-2147483648), -22246i, 2147483647i, 70460i), vec4<i32>(-1i, 1i, 2147483647i, 1i), vec4<i32>(0i, -1i, 1i, -8160i), vec4<i32>(1i, i32(-2147483648), 27149i, -5581i), vec4<i32>(-81820i, 28730i, -1i, i32(-2147483648)), vec4<i32>(0i, -1i, 25539i, -77813i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-37427i, i32(-2147483648), 0i, -17389i), vec4<i32>(1i, 6590i, 57402i, 34202i), vec4<i32>(56159i, -19433i, 0i, 1i), vec4<i32>(1i, 8200i, -10011i, 2147483647i), vec4<i32>(1i, 29729i, 1i, 14972i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 82644i), vec4<i32>(2147483647i, 33867i, -4941i, 2147483647i), vec4<i32>(i32(-2147483648), 22987i, -43522i, 2147483647i), vec4<i32>(0i, 2147483647i, i32(-2147483648), 46874i), vec4<i32>(-1i, 16942i, i32(-2147483648), -1i), vec4<i32>(0i, -19964i, 0i, -1i));

var<private> global1: array<i32, 12>;

var<private> global2: array<vec2<i32>, 23> = array<vec2<i32>, 23>(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-13260i, 22921i), vec2<i32>(71428i, 20007i), vec2<i32>(-4188i, 2147483647i), vec2<i32>(-15876i, -30186i), vec2<i32>(2147483647i, 42166i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 3270i), vec2<i32>(-43952i, -21496i), vec2<i32>(-28138i, 3112i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, 1i), vec2<i32>(5328i, 18179i), vec2<i32>(1i, -56771i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-1i, -23987i), vec2<i32>(0i, -1i), vec2<i32>(-37258i, 2147483647i), vec2<i32>(16136i, -38609i), vec2<i32>(i32(-2147483648), 12458i), vec2<i32>(-28300i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    var var_0 = 1u;
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -821f)), _wgslsmith_f_op_f32(step(-746f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -541f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(821f)) + 1038f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(1954f * 776f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1436f, _wgslsmith_f_op_f32(select(1000f, 855f, true)), _wgslsmith_f_op_f32(min(-202f, 605f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(392f, -1808f, -605f, -1545f) - vec4<f32>(1274f, -1027f, -773f, -2190f)))), select(!select(vec4<bool>(true, true, true, true), !vec4<bool>(var_1, true, var_1, var_1), true), select(!vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(any(vec4<bool>(true, var_1, var_1, false)), !var_1, true, false), !vec4<bool>(true, true, var_1, true)), any(select(select(vec2<bool>(true, true), vec2<bool>(var_1, true), var_1), !vec2<bool>(var_1, var_1), !vec2<bool>(true, var_1))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-231f))))), vec4<u32>(abs(29612u), _wgslsmith_div_u32(~_wgslsmith_div_u32(13214u, 63997u), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 20500u, 1u), vec3<u32>(1u, 1u, 0u)))), 1u, _wgslsmith_div_u32(firstTrailingBit(2890u), reverseBits(reverseBits(27445u)))), vec3<u32>(select(29878u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(104453u, 75997u, 25663u), vec3<u32>(0u, 0u, 19151u)), ~vec3<u32>(19071u, 47935u, 0u)), var_1), ~_wgslsmith_dot_vec3_u32(vec3<u32>(14030u, 0u, 7551u), vec3<u32>(1u, 1u, 1u)), abs(1u)), firstLeadingBit(u_input.a.x), 0u);
    var var_4 = any(vec4<bool>(var_1, var_1, var_1, false));
    return (var_3.b >> (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 8859u, 29583u, var_3.c.x), _wgslsmith_mod_vec4_u32(var_3.b, var_3.b)), vec4<u32>(_wgslsmith_clamp_u32(0u, var_3.c.x, 24974u), 4294967295u, 67579u, 11705u)) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(abs(var_3.b), abs(var_3.b)), vec4<u32>(0u, var_3.e, ~4721u, 4294967295u)) % vec4<u32>(32u));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(-991f, min(~func_3(), _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 8506u, 0u, 4294967295u), vec4<u32>(4294967295u, arg_0, arg_0, 42630u)), ~vec4<u32>(32322u, 4294967295u, 10854u, 9033u))), vec3<u32>(func_3().x, _wgslsmith_add_u32(arg_0, arg_0), ~(~abs(arg_0))), 2147483647i, ~(~(~4294967295u) & arg_0));
    let var_1 = _wgslsmith_dot_vec2_u32(~(var_0.b.zx ^ vec2<u32>(var_0.e, 49807u)) | ~abs(vec2<u32>(45722u, 1u)), ~var_0.c.zy);
    let var_2 = firstTrailingBit(-(~(abs(vec3<i32>(-706i, var_0.d, u_input.a.x)) ^ min(u_input.a, vec3<i32>(var_0.d, -25757i, -8342i)))));
    global1 = array<i32, 12>();
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - var_0.a) * _wgslsmith_f_op_f32(var_0.a * var_0.a)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a * var_0.a))))), vec4<u32>(~(~arg_0), ~0u, _wgslsmith_div_u32(arg_0, arg_0) ^ _wgslsmith_mod_u32(var_0.e, var_1), ~19242u), _wgslsmith_mult_vec3_u32(var_0.b.zyx, abs(abs(vec3<u32>(0u, arg_0, 1u)))) << (vec3<u32>(abs(1u), abs(firstLeadingBit(var_0.e)), ~(arg_0 >> (var_1 % 32u))) % vec3<u32>(32u)), -41474i, _wgslsmith_clamp_u32(abs(0u), ~(~arg_0 & var_1), arg_0));
    return Struct_1(1915f, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_3.c.zz, var_3.b.yz), _wgslsmith_mod_u32(var_3.e, arg_0)), func_3().x), ~(var_1 & reverseBits(1u)), _wgslsmith_sub_u32(var_3.b.x, _wgslsmith_mod_u32(~7360u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.e, var_0.c.x), var_3.c.yy))), 4294967295u), ~vec3<u32>(var_1, var_1, _wgslsmith_div_u32(var_0.c.x << (1u % 32u), select(4294967295u, var_0.e, false))), reverseBits(firstTrailingBit(_wgslsmith_dot_vec3_i32(var_2, var_2))) ^ -((u_input.a.x | var_2.x) & _wgslsmith_div_i32(var_3.d, 0i)), _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_1, arg_0), var_0.b.x), 16442u) | func_3().x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_2(arg_1.e);
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>((u_input.a.x >> (arg_1.b.x % 32u)) | ~4903i, arg_0.d, -21220i, -_wgslsmith_div_i32(arg_0.d, -13437i)), global0[_wgslsmith_index_u32(34135u, 21u)]) >> (~vec4<u32>(1u, arg_1.e, max(firstTrailingBit(var_0.c.x), 1u & arg_2.c.x), _wgslsmith_mod_u32(0u, 53432u)) % vec4<u32>(32u));
    let var_2 = vec2<bool>(all(!vec4<bool>(true, any(vec4<bool>(true, true, true, true)), select(false, true, true), true)), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), countOneBits(-38304i) >= _wgslsmith_sub_i32(-1i, arg_0.d))));
    var var_3 = Struct_1(arg_1.a, vec4<u32>(_wgslsmith_div_u32(min(1u, 1u), var_0.b.x ^ func_3().x), _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(arg_0.b, vec4<u32>(29337u, 2407u, var_0.e, arg_2.c.x)), ~arg_2.c.x), ~(~arg_2.b.x), var_0.b.x), arg_2.b.www, 1i, _wgslsmith_div_u32(~arg_0.e, arg_1.c.x));
    var var_4 = arg_1.b.www;
    return Struct_1(-557f, reverseBits(arg_0.b) & ~(~(~arg_1.b)), arg_0.c, arg_1.d, _wgslsmith_mult_u32(var_3.c.x, arg_2.e));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = 13598u;
    var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~1u, ~416u), _wgslsmith_mult_u32(abs(~50691u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(67240u, 0u, 1u), vec3<u32>(4294967295u, 70022u, 1u)))), 0u, _wgslsmith_clamp_u32(~17044u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 54651u, 4272u), vec3<u32>(82512u, 28222u, 65477u), false), select(vec3<u32>(95984u, 1u, 1u), vec3<u32>(1u, 105938u, 1u), vec3<bool>(true, false, true))), 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 69228u, 29542u, 4294967295u), vec4<u32>(42719u, 0u, 20894u, 4294967295u), vec4<u32>(68334u, 0u, 27833u, 13083u))), vec4<u32>(1u, 1u, 1u, 1u)));
    global2 = array<vec2<i32>, 23>();
    global0 = array<vec4<i32>, 21>();
    return func_4(func_2(~(~min(0u, 1u))), Struct_1(arg_2, select(vec4<u32>(1u, ~4294967295u, 1u, 0u), ~min(vec4<u32>(21651u, 1u, 44393u, 37219u), vec4<u32>(4294967295u, 0u, 4294967295u, 35693u)), !select(true, false, false)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 56747u, 1u), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(36432u, 20906u, 873u), vec3<u32>(597u, 9834u, 11049u)))), _wgslsmith_mult_i32(-(~31744i), select(func_2(59468u).d, 16040i, true)), 1u << (_wgslsmith_mod_u32(14290u, 1u) % 32u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2)) - arg_2), vec4<u32>(1u, 1u, 1u, 1u), ~vec3<u32>(~0u, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(6132u, 4294967295u, 16097u), vec3<u32>(0u, 0u, 0u))), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -global1[_wgslsmith_index_u32(3144u, 12u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], 2147483647i, 2147483647i, arg_0), global0[_wgslsmith_index_u32(0u, 21u)]), -1i), _wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 21u)], vec4<i32>(-1i, arg_1, -28693i, 2147483647i)) | vec4<i32>(-36151i, -1i, arg_1, -43145i)), _wgslsmith_clamp_u32(23150u, _wgslsmith_dot_vec2_u32(vec2<u32>(69637u, 3494u), vec2<u32>(94130u, 0u)), firstTrailingBit(~26439u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(148f + _wgslsmith_f_op_f32(f32(-1f) * -2277f))));
    global2 = array<vec2<i32>, 23>();
    let var_1 = func_1(~firstTrailingBit(global1[_wgslsmith_index_u32(0u, 12u)]), -_wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.a), ~vec3<i32>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)], -25643i) >> (abs(vec3<u32>(51100u, 4294967295u, 72603u)) % vec3<u32>(32u))), -1233f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(234f)) * var_1.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a))))) + _wgslsmith_f_op_f32(-var_1.a)));
    var var_3 = min(~1i, -((i32(-1i) * -var_1.d) | abs(var_1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), var_1.a, 860f))));
}

