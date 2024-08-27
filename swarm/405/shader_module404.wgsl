struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_3(Struct_1(-193f, -1i), vec4<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), !all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), false, false), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-158f, -363f))), u_input.b), vec4<bool>(true, true, true, true), Struct_1(569f, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, u_input.a.x, -1i, u_input.b)), firstLeadingBit(vec4<i32>(2147483647i, u_input.a.x, u_input.b, -6262i)))), Struct_1(1f, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(8293i, u_input.b, 0i), vec3<i32>(u_input.b, u_input.a.x, 0i)), ~vec3<i32>(-2147483647i, 49058i, u_input.b)))));
    let var_1 = var_0.a.a;
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(28573u) << (_wgslsmith_clamp_u32(1u, 36448u, 0u) % 32u), 1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(37967u, 0u, 63542u, 1u), vec4<u32>(4294967295u, 34412u, 1u, 0u)), 0u), 53562u) ^ ~vec4<u32>(11174u, ~4294967295u, firstTrailingBit(0u), _wgslsmith_mod_u32(23349u, 4938u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(~1u, 53333u, _wgslsmith_add_u32(51331u, 7475u), ~6015u), ~min(vec4<u32>(6718u, 46512u, 0u, 20999u), vec4<u32>(4294967295u, 1u, 48980u, 14213u))));
    var_2 = ~(~(~countOneBits(vec4<u32>(1u, 1u, var_2.x, 55175u))) & (vec4<u32>(~31946u, 101091u, ~37227u, 12734u) ^ ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 17397u, 4294967295u, 53617u), vec4<u32>(100521u, var_2.x, var_2.x, 4294967295u), vec4<u32>(1u, 46972u, 38788u, 1u))));
    let var_3 = vec4<u32>(~var_2.x, 8872u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_2.xzz | ~var_2.xyx, vec3<u32>(~var_2.x, var_2.x, 1u << (var_2.x % 32u))), 1u), _wgslsmith_mod_u32(var_2.x, 1u));
    return max(_wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.b, 1i, u_input.a.x, u_input.a.x), vec4<i32>(-35899i, 11715i, u_input.b, 2147483647i)) ^ vec4<i32>(u_input.a.x, -u_input.a.x, var_0.a.b & var_0.c.c.b, u_input.b), reverseBits(min(~vec4<i32>(u_input.b, 7552i, var_0.a.b, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.a.b, 36730i, u_input.b, -16343i), vec4<i32>(var_0.c.a.b, var_0.a.b, var_0.a.b, u_input.b))))), -firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(-4453i, -7919i), 1i, 17437i, var_0.c.a.b)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = 12622u;
    var var_1 = func_3();
    var var_2 = arg_0;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1362f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f)))), 13467i);
    return var_2.a;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = ~vec2<i32>(reverseBits(~_wgslsmith_mod_i32(u_input.a.x, arg_2.b)), 0i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(arg_2)), _wgslsmith_f_op_f32(func_2(arg_2)))))));
    let var_2 = Struct_3(arg_2, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false))), vec4<bool>(any(vec2<bool>(true, true)), false, true, arg_2.a >= arg_2.a)), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false))), true), Struct_2(Struct_1(1712f, u_input.b), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), -623f >= arg_2.a), Struct_1(arg_2.a, arg_1.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a - -1638f)), countOneBits(select(arg_1.x, -12252i, false)))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1055f);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -379f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-402f)), -513f)), -1348f);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(234f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-403f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1041f + -1954f) - _wgslsmith_div_f32(128f, -761f))))), -_wgslsmith_sub_i32(-u_input.a.x | (u_input.b ^ u_input.a.x), u_input.b));
    let var_1 = select(vec3<bool>(all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), any(vec2<bool>(all(vec4<bool>(false, true, false, false)), false)), all(vec2<bool>(false, true))), vec3<bool>(false, _wgslsmith_f_op_f32(var_0.a - -441f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a))), true), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(any(vec2<bool>(false, true)), true, true))));
    var_0 = func_1(~84986u, vec3<i32>(-63326i, select(-u_input.b & var_0.b, abs(_wgslsmith_mult_i32(-1i, var_0.b)), var_1.x), _wgslsmith_div_i32(min(~var_0.b, -var_0.b), 33335i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.a, 1709f), _wgslsmith_f_op_f32(-var_0.a))) - 1396f), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0.b, u_input.b, firstTrailingBit(u_input.b)), ~(~var_0.b))), select(firstLeadingBit(1u), 1u, (~var_0.b >> (58776u % 32u)) > _wgslsmith_mult_i32(1i, i32(-1i) * -11163i)));
    var_0 = Struct_1(var_0.a, _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_0.b, var_0.b), vec3<i32>(u_input.a.x, 49376i, u_input.b)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.b, 15806i, -1i), vec3<i32>(-7232i, 0i, -57663i))), select(vec3<i32>(u_input.b, -1i, 37545i), _wgslsmith_sub_vec3_i32(vec3<i32>(1987i, u_input.a.x, 0i), vec3<i32>(var_0.b, var_0.b, 1i)), var_0.b == u_input.b) & (~vec3<i32>(-1i, var_0.b, 0i) ^ vec3<i32>(u_input.a.x, 40130i, -1i))));
    var_0 = func_1(max(~_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, 58835u), 1u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(~33726u, 1u), 1u)), ~(firstLeadingBit(vec3<i32>(-42960i, u_input.a.x, -1i)) | (~vec3<i32>(u_input.a.x, var_0.b, var_0.b) ^ -vec3<i32>(u_input.a.x, var_0.b, u_input.a.x))), func_1(reverseBits(~countOneBits(94207u)), reverseBits(-vec3<i32>(2147483647i, 32241i, -25662i)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(33680u, 16479u, 57579u)) % vec3<u32>(32u)), func_1(1u, min(vec3<i32>(-16456i, -2206i, 49915i), vec3<i32>(28751i, 5641i, var_0.b) | vec3<i32>(var_0.b, var_0.b, 2147483647i)), Struct_1(_wgslsmith_f_op_f32(min(var_0.a, -908f)), u_input.b), _wgslsmith_sub_u32(1u, 1u)), _wgslsmith_mod_u32(reverseBits(reverseBits(4294967295u)), _wgslsmith_mult_u32(1u, ~5439u))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(41205u, 1u, 0u)), ~vec3<u32>(93612u, 24453u, 60718u)) | 1u, ~_wgslsmith_add_u32(select(65160u, 0u, var_1.x), 30321u)));
    let var_2 = Struct_4(_wgslsmith_add_i32(min(u_input.a.x, select(u_input.b, var_0.b, false)) | _wgslsmith_dot_vec2_i32(select(u_input.a, u_input.a, vec2<bool>(true, var_1.x)), _wgslsmith_mod_vec2_i32(u_input.a, u_input.a)), i32(-1i) * -u_input.a.x), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -981f)), _wgslsmith_sub_i32(~1i, _wgslsmith_div_i32(var_0.b, u_input.a.x))), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(false, var_1.x, false, true)), select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(true, false, var_1.x, var_1.x), true), var_1.x), vec4<bool>(var_1.x, !var_1.x, var_1.x, false), false), func_1(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, 0u), 16360u, ~1u), vec3<i32>(func_3().x, u_input.a.x, u_input.a.x), Struct_1(1335f, 5767i), ~(~19971u)), func_1(~(~0u), vec3<i32>(firstLeadingBit(u_input.b), ~var_0.b, u_input.b), Struct_1(-1755f, abs(65502i)), ~min(4294967295u, 4294967295u))));
    let var_3 = var_2;
    var_0 = var_2.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(658f - 1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -547f), 1591f)))), var_3.b.a.a, var_2.b.d.a);
}

