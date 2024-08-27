struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(21011u, 54422u, 4294967295u);

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<u32>(4294967295u, 50067u, 0u)), Struct_1(vec3<u32>(4294967295u, 1u, 15369u)), Struct_1(vec3<u32>(5595u, 11407u, 1u)), Struct_1(vec3<u32>(27779u, 32934u, 41553u)), Struct_1(vec3<u32>(1u, 4294967295u, 18794u)), Struct_1(vec3<u32>(115631u, 48409u, 1u)), Struct_1(vec3<u32>(4294967295u, 0u, 80287u)), Struct_1(vec3<u32>(259u, 4294967295u, 6554u)), Struct_1(vec3<u32>(1u, 24672u, 59469u)), Struct_1(vec3<u32>(0u, 1u, 68492u)), Struct_1(vec3<u32>(53361u, 50813u, 18970u)), Struct_1(vec3<u32>(6549u, 33015u, 1u)), Struct_1(vec3<u32>(35129u, 43087u, 84163u)), Struct_1(vec3<u32>(1u, 46748u, 0u)), Struct_1(vec3<u32>(0u, 52173u, 74617u)), Struct_1(vec3<u32>(1u, 28599u, 1u)), Struct_1(vec3<u32>(27633u, 9643u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 1u, 63573u)), Struct_1(vec3<u32>(81576u, 0u, 51761u)), Struct_1(vec3<u32>(92239u, 16385u, 0u)), Struct_1(vec3<u32>(4294967295u, 19751u, 425u)), Struct_1(vec3<u32>(40286u, 39905u, 4294967295u)), Struct_1(vec3<u32>(50074u, 2235u, 4294967295u)), Struct_1(vec3<u32>(22054u, 8717u, 10734u)), Struct_1(vec3<u32>(1u, 3305u, 1u)), Struct_1(vec3<u32>(0u, 51100u, 25863u)), Struct_1(vec3<u32>(0u, 38134u, 0u)), Struct_1(vec3<u32>(51432u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(76410u, 0u, 0u)), Struct_1(vec3<u32>(39002u, 32213u, 15896u)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(-917f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1407f + -507f)), -1394f))));
    var var_1 = -select(min(-u_input.a, -vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), -u_input.a, !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))) >> (select(vec3<u32>(global0.x, 1u, 1u), ~vec3<u32>(abs(global0.x), ~4294967295u, global0.x), vec3<bool>(true, select(true, false, false) || any(vec2<bool>(true, false)), true)) % vec3<u32>(32u));
    let var_2 = select(select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(false, true), true), ~global0.x <= countOneBits(19909u)), vec2<bool>(false, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !vec2<bool>(false, var_0.x > 847f), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec2<bool>(global0.x >= 35720u, true), true)), vec2<bool>(true, true));
    global0 = reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(~1u, 75074u, _wgslsmith_sub_u32(reverseBits(4294967295u), reverseBits(global0.x))), ~vec3<u32>(select(global0.x, global0.x, var_2.x), ~4294967295u, 0u >> (global0.x % 32u))));
    var var_3 = Struct_3(vec3<u32>(~_wgslsmith_mult_u32(~global0.x, 31358u), _wgslsmith_sub_u32(3691u, ~global0.x) ^ (~global0.x ^ ~global0.x), _wgslsmith_div_u32(global0.x, _wgslsmith_sub_u32(global0.x, firstLeadingBit(global0.x)))), Struct_2(_wgslsmith_mod_i32(u_input.a.x, -22634i), var_0.x, !(!select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(var_2.x, var_2.x, true, var_2.x), var_2.x)), _wgslsmith_f_op_f32(exp2(var_0.x))), vec2<i32>(firstTrailingBit(-2147483647i) ^ max(countOneBits(-21669i), select(var_1.x, 14534i, true)), _wgslsmith_add_i32(-2147483647i, _wgslsmith_clamp_i32(-var_1.x, _wgslsmith_mod_i32(u_input.a.x, 1i), u_input.a.x | -5349i))), vec4<i32>(~var_1.x, 30281i, u_input.a.x, var_1.x), vec3<i32>(50119i, u_input.a.x, ~(~reverseBits(8935i))));
    return min(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(u_input.a.x, -9744i)), -vec2<i32>(~u_input.a.x, u_input.a.x)), abs(vec2<i32>(u_input.a.x ^ u_input.a.x, -50426i & (-36651i & var_3.e.x))));
}

fn func_2() -> Struct_3 {
    global0 = vec3<u32>(global0.x, countOneBits(1u), global0.x);
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    let var_0 = (~countOneBits(-u_input.a.xy) | _wgslsmith_clamp_vec2_i32(vec2<i32>(max(2147483647i, u_input.a.x), ~u_input.a.x), -(~u_input.a.zz), ~func_3())) & u_input.a.xy;
    var var_1 = Struct_3(firstTrailingBit(reverseBits(vec3<u32>(global0.x, 1u, ~global0.x))), Struct_2(33256i, -1911f, vec4<bool>(all(vec4<bool>(true, true, true, true)), true || any(vec4<bool>(true, true, false, false)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))), true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -857f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1044f, -1499f), _wgslsmith_f_op_f32(round(1870f)), true)), true))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), reverseBits(_wgslsmith_sub_vec2_i32(var_0, abs(vec2<i32>(-22982i, -49097i))))), vec4<i32>(-1i) * -(countOneBits(vec4<i32>(var_0.x, 14096i, var_0.x, var_0.x)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, global0.x, 1u), vec4<u32>(37070u, global0.x, global0.x, global0.x)) % vec4<u32>(32u))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a.x, var_0.x, -2147483647i) & vec3<i32>(abs(-2147483647i), 1i | u_input.a.x, 1i), ~vec3<i32>(u_input.a.x, 15011i, firstTrailingBit(u_input.a.x)), -_wgslsmith_mod_vec3_i32(vec3<i32>(-7298i, 2147483647i, -10218i), vec3<i32>(-2147483647i, 57021i, u_input.a.x))));
    return Struct_3(abs(~firstLeadingBit(var_1.a) ^ var_1.a), Struct_2(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.d), -1000f) - _wgslsmith_f_op_f32(var_1.b.b + _wgslsmith_f_op_f32(var_1.b.d - 1945f))), vec4<bool>(false, false, !(var_1.a.x < 8628u), abs(var_1.a.x) <= 104901u), _wgslsmith_f_op_f32(-var_1.b.d)), -(~vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), ~4076i)), var_1.d, u_input.a);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>) -> i32 {
    global1 = array<Struct_1, 30>();
    let var_0 = func_2();
    let var_1 = Struct_4(Struct_2(firstLeadingBit(-(i32(-1i) * -27450i)), -597f, !var_0.b.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x)))));
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(47840u, _wgslsmith_div_u32(_wgslsmith_div_u32(0u, arg_1.x), arg_1.x)) >> (~select(func_2().a.xx, ~var_0.a.zz, vec2<bool>(var_1.a.c.x, var_0.b.c.x)) % vec2<u32>(32u)), abs(global0.yz));
    global0 = var_0.a;
    return ~(-14141i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(func_1(vec3<f32>(436f, 1229f, _wgslsmith_f_op_f32(floor(-523f))), select(min(global0.zz, global0.zy), global0.xx, select(vec2<bool>(true, false), vec2<bool>(false, false), true))), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(7604i, u_input.a.x, u_input.a.x, -16720i), vec4<i32>(24017i, 34450i, u_input.a.x, 1i)))) | u_input.a.xz;
    let var_1 = func_2().b;
    var var_2 = ~(~(~vec4<u32>(global0.x, 0u, 1u, 4294967295u)) & (~_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global0.x, 93830u, 5440u), vec4<u32>(global0.x, 4294967295u, global0.x, global0.x)) << (vec4<u32>(~0u, 10792u, _wgslsmith_mod_u32(global0.x, global0.x), 1u) % vec4<u32>(32u))));
    var var_3 = Struct_3(abs(~(var_2.xzy << (_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 1u, 6461u), vec3<u32>(global0.x, var_2.x, 67280u)) % vec3<u32>(32u)))), Struct_2(-(~(-1i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1208f * 333f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -984f) - _wgslsmith_f_op_f32(f32(-1f) * -689f))), vec4<bool>(true, func_2().b.c.x, true, var_1.c.x), 1f), vec2<i32>(u_input.a.x, var_1.a), ~(~vec4<i32>(_wgslsmith_clamp_i32(15027i, -1i, var_1.a), u_input.a.x & 2147483647i, ~u_input.a.x, var_1.a)), vec3<i32>(2147483647i, select(-1i, -2147483647i, false), 41124i));
    var_2 = vec4<u32>(_wgslsmith_add_u32(abs(~(~var_3.a.x)), ~(4294967295u ^ var_3.a.x) ^ 1u), _wgslsmith_add_u32(_wgslsmith_mult_u32(48565u, _wgslsmith_sub_u32(_wgslsmith_add_u32(global0.x, 6424u), global0.x)), _wgslsmith_sub_u32(~var_2.x >> (~23274u % 32u), min(3509u, global0.x) << (abs(0u) % 32u))), ~(global0.x >> (0u % 32u)), var_2.x);
    let var_4 = _wgslsmith_f_op_f32(-var_1.b);
    let var_5 = countOneBits(-38039i);
    var var_6 = -((-var_3.c.x ^ countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -27290i, u_input.a.x), vec3<i32>(var_1.a, 688i, var_1.a)))) << (global0.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec3<u32>(firstLeadingBit(var_2.x), var_2.x, 1u)), func_3().x);
}

