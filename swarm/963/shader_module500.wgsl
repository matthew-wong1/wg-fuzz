struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(4294967295u, 35766u), vec2<u32>(4294967295u, 30722u), vec2<u32>(21873u, 32806u), vec2<u32>(55974u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(93350u, 0u), vec2<u32>(53919u, 1u), vec2<u32>(14942u, 0u), vec2<u32>(1u, 6898u), vec2<u32>(1u, 6238u), vec2<u32>(23608u, 1u), vec2<u32>(12760u, 1u), vec2<u32>(355u, 22834u), vec2<u32>(32062u, 4294967295u), vec2<u32>(0u, 68572u), vec2<u32>(1u, 1u), vec2<u32>(103746u, 70361u), vec2<u32>(4294967295u, 7046u), vec2<u32>(4294967295u, 20987u));

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(27117u, 26662u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(26921u, 612u), vec2<u32>(59241u, 26053u), vec2<u32>(57823u, 15431u), vec2<u32>(41022u, 39046u), vec2<u32>(26883u, 38547u), vec2<u32>(36867u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(45929u, 60902u), vec2<u32>(50107u, 18916u), vec2<u32>(2906u, 4294967295u), vec2<u32>(4294967295u, 37672u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(12893u, 39725u), vec2<u32>(15398u, 4294967295u), vec2<u32>(33945u, 4294967295u), vec2<u32>(4294967295u, 60364u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_u32(1u, max(u_input.b, 56555u)), vec3<i32>(-1i, _wgslsmith_mod_i32(u_input.a << (u_input.b % 32u), -2147483647i), 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.a, _wgslsmith_sub_i32(u_input.c.x, -1i), _wgslsmith_mod_i32(u_input.c.x, 32832i), -20683i), abs(vec4<i32>(u_input.a, u_input.c.x, u_input.a, u_input.a)), firstLeadingBit(vec4<i32>(1099i, 18762i, u_input.a, -1i) | vec4<i32>(u_input.a, -24630i, -14273i, -10200i))), _wgslsmith_dot_vec2_i32(u_input.c.xx, _wgslsmith_mult_vec2_i32(min(u_input.c.yy, vec2<i32>(u_input.a, u_input.a)), u_input.c.xz | vec2<i32>(-1i, 2147483647i)))), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(1u, 1u)), 19u)], ~vec2<u32>(u_input.b, 1u)) << (u_input.b % 32u), Struct_1(~(~(~u_input.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -u_input.c, vec3<i32>(firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.c.xx), 2147483647i), ~countOneBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), -_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -33798i, -2147483647i, 1i), abs(vec4<i32>(0i, u_input.a, u_input.a, u_input.c.x))), u_input.c.x), vec3<u32>(40260u, 4294967295u, _wgslsmith_div_u32(~u_input.b, u_input.b)));
    global1 = any(select(vec3<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true)), !all(vec2<bool>(true, false)), var_0.c.a < _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 12546u, 4294967295u, var_0.a.a), vec4<u32>(u_input.b, 1u, u_input.b, 4468u))), select(vec3<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(false, false, true, true)), true), vec3<bool>(false, true, true), _wgslsmith_add_u32(var_0.a.a, 52767u) == var_0.c.a), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false))))));
    var var_1 = ~1i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -903f))), _wgslsmith_f_op_f32(f32(-1f) * -672f)), _wgslsmith_f_op_f32(1614f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(204f, -1000f)), _wgslsmith_f_op_f32(255f * -827f)))))));
    var_0 = Struct_2(Struct_1(reverseBits(4294967295u), var_0.c.b, _wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a, -5903i, u_input.c.x, var_0.a.d), min(reverseBits(var_0.c.c), vec4<i32>(u_input.c.x, 35103i, u_input.c.x, 2147483647i))), 2147483647i), ~(~(~_wgslsmith_dot_vec2_u32(var_0.d.xy, vec2<u32>(var_0.d.x, var_0.c.a)))), var_0.c, max(~(var_0.d ^ ~vec3<u32>(var_0.a.a, 42513u, u_input.b)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.d.x), vec2<u32>(2457u, 18702u)), var_0.b ^ abs(18334u), ~_wgslsmith_mod_u32(0u, 65882u))));
    return select(select(!select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, (var_0.c.d != var_0.c.c.x) & (1u < var_0.c.a), true, true), all(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, true)))), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true)), vec4<bool>(true, false, u_input.b >= 39615u, 433f <= var_2), vec4<bool>(true, true, true, true)), vec4<bool>(!any(vec3<bool>(true, true, true)), select(61667u >= var_0.c.a, true, true), true, true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = func_3();
    var var_1 = Struct_2(arg_0, 1u, arg_1, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(max(firstTrailingBit(vec3<u32>(43193u, 1u, 31833u)), reverseBits(vec3<u32>(4294967295u, u_input.b, arg_1.a))), vec3<u32>(arg_1.a, firstTrailingBit(arg_1.a), arg_0.a)), reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(30127u, u_input.b, 4294967295u), vec3<u32>(51766u, arg_0.a, arg_1.a)), ~vec3<u32>(u_input.b, 13926u, u_input.b)))));
    var var_2 = Struct_2(arg_0, 27668u, var_1.c, abs(var_1.d));
    return var_2.d;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1333f, _wgslsmith_f_op_f32(-1728f + 1152f)))) + _wgslsmith_f_op_f32(max(-181f, 1f)))));
    let var_1 = select(_wgslsmith_dot_vec3_u32(reverseBits(countOneBits(~vec3<u32>(u_input.b, 27099u, u_input.b))), func_2(Struct_1(4294967295u, u_input.c, vec4<i32>(u_input.c.x, 15226i, -1i, u_input.c.x), u_input.c.x), Struct_1(1u, vec3<i32>(u_input.a, -21844i, 15227i), vec4<i32>(u_input.c.x, -42144i, u_input.a, 2147483647i), 0i)) & _wgslsmith_sub_vec3_u32(vec3<u32>(11707u, 4294967295u, u_input.b) << (vec3<u32>(1u, u_input.b, u_input.b) % vec3<u32>(32u)), vec3<u32>(44702u, u_input.b, 22645u))), ~1u, true);
    let var_2 = _wgslsmith_clamp_u32(11424u, ~var_1, _wgslsmith_sub_u32(select(u_input.b, u_input.b, !(u_input.a <= 2147483647i)), var_1));
    global0 = array<vec2<u32>, 19>();
    let var_3 = Struct_1(~var_2, -vec3<i32>(countOneBits(~u_input.c.x), _wgslsmith_mod_i32(select(u_input.a, u_input.c.x, true), -2147483647i), u_input.a), vec4<i32>(i32(-1i) * -58216i, u_input.c.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.c.x, 1i)), u_input.c.x), firstLeadingBit(~_wgslsmith_sub_i32(u_input.c.x, u_input.c.x))), countOneBits(-2147483647i));
    return Struct_1(abs(abs(var_1)), vec3<i32>(firstTrailingBit((u_input.c.x >> (17734u % 32u)) & var_3.c.x), 17317i << (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1, 51393u, u_input.b), ~vec3<u32>(var_2, var_3.a, 28167u)) % 32u), -2147483647i), ~(~(~vec4<i32>(var_3.c.x, u_input.a, -1i, 0i))), _wgslsmith_dot_vec4_i32(firstTrailingBit(-_wgslsmith_div_vec4_i32(vec4<i32>(14074i, u_input.c.x, -41399i, -1374i), vec4<i32>(-23561i, var_3.c.x, -68436i, u_input.c.x))), abs(~vec4<i32>(u_input.a, var_3.c.x, -264i, 66213i)) | _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.c.x, -73713i), vec4<i32>(21883i, 1i, 2147483647i, var_3.b.x)), var_3.c & var_3.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 19>();
    global2 = array<vec2<u32>, 19>();
    global2 = array<vec2<u32>, 19>();
    var var_0 = func_1();
    let var_1 = -vec2<i32>(2147483647i, u_input.a);
    global0 = array<vec2<u32>, 19>();
    global2 = array<vec2<u32>, 19>();
    var_0 = func_1();
    var var_2 = Struct_2(func_1(), countOneBits(75782u), func_1(), ~vec3<u32>(u_input.b, ~_wgslsmith_add_u32(u_input.b, 0u), countOneBits(var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(623f, _wgslsmith_f_op_f32(sign(1155f)))) + _wgslsmith_f_op_f32(-1114f - -224f)), 26757u);
}

