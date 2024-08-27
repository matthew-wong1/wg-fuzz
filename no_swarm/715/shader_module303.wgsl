struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    let var_0 = Struct_2(_wgslsmith_clamp_u32(~firstTrailingBit(4294967295u >> (0u % 32u)), 0u, ~(~countOneBits(0u))), (u_input.b >> (~(~1u) % 32u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(26091u, _wgslsmith_dot_vec4_u32(vec4<u32>(42172u, 51304u, 8766u, 0u), vec4<u32>(4294967295u, 0u, 32111u, 45767u)), min(0u, 1u)), reverseBits(vec3<u32>(1u, 1u, 1u))) % 32u));
    let var_1 = firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a, 78483u, ~var_0.a), vec3<u32>(var_0.a, var_0.a, var_0.a)));
    var var_2 = Struct_3(vec2<u32>(_wgslsmith_add_u32(var_0.a, var_1.x), var_1.x), Struct_1(!(!all(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 11480u), firstLeadingBit(min(vec2<u32>(var_1.x, var_0.a), vec2<u32>(47779u, 58211u)))), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), -20956i > var_0.b))), Struct_2(firstLeadingBit(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(57512u, 4294967295u, 11695u)), var_1 >> (var_1 % vec3<u32>(32u)))), 26694i), Struct_1(!(false || all(vec2<bool>(false, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1116f, 513f, 1000f, 724f) * vec4<f32>(-1219f, 534f, -1392f, -814f))), ~1u, select(vec4<bool>(false, false, all(vec3<bool>(true, false, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), true)));
    var var_3 = var_2.c.b;
    var var_4 = _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_2.c.b), vec2<i32>(~1i, -var_2.c.b << (~var_2.a.x % 32u))), _wgslsmith_sub_i32(~firstTrailingBit(-var_2.c.b), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, 2147483647i, u_input.b, u_input.a), vec4<i32>(0i, u_input.a, var_2.c.b, var_2.c.b), var_2.b.d.x), -vec4<i32>(var_0.b, 2147483647i, 1i, 36516i))));
    return var_2.b.a;
}

fn func_2() -> i32 {
    var var_0 = Struct_1(func_3(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, -439f, -384f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(954f, 429f, -647f, -900f)))) - vec4<f32>(1f, 1f, 1f, 1f)), ~1u, vec4<bool>(func_3(), 1i >= ~(-u_input.a), all(vec4<bool>(true, true, true, true)), false));
    var var_1 = false & !var_0.d.x;
    return _wgslsmith_dot_vec2_i32(-min(~(-vec2<i32>(2147483647i, 0i)), ~(vec2<i32>(u_input.a, 0i) << (vec2<u32>(1u, var_0.c) % vec2<u32>(32u)))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.b, -1i), select(vec4<i32>(u_input.a, u_input.b, u_input.a, -35243i), vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.a), var_0.a)), ~1i) ^ select(reverseBits(vec2<i32>(-34686i, u_input.b)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 10776i), vec2<i32>(-12810i, 2147483647i)), var_0.d.xw));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> i32 {
    global0 = array<vec3<i32>, 23>();
    let var_0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.a, vec2<u32>(firstTrailingBit(arg_0.c.a), reverseBits(arg_0.d.c))), _wgslsmith_div_vec2_u32(select(~arg_0.a, arg_0.a, arg_1), vec2<u32>(4294967295u | arg_0.b.c, 21498u)));
    let var_1 = -select(vec4<i32>(~22304i, 2147483647i, arg_0.c.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, 12720i, -55578i), vec4<i32>(u_input.b, 1i, arg_0.c.b, arg_0.c.b))), -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 1i, u_input.b, 38084i), vec4<i32>(arg_0.c.b, u_input.a, arg_0.c.b, arg_0.c.b)), select(arg_0.b.a, true, arg_0.d.d.x)) >> ((max(~(~vec4<u32>(arg_0.b.c, var_0, 4142u, 24969u)), ~vec4<u32>(0u, arg_0.d.c, 13225u, 0u) & vec4<u32>(1u, 20849u, 1u, arg_0.d.c)) << (_wgslsmith_div_vec4_u32(vec4<u32>(41927u, 1u, 1u, _wgslsmith_div_u32(4294967295u, var_0)), ~vec4<u32>(37312u, 4294967295u, 0u, arg_0.a.x) >> (~vec4<u32>(26720u, 4294967295u, 70884u, var_0) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_2 = select(arg_0.b.d.xy, !select(!arg_0.b.d.xw, select(!arg_0.b.d.xw, vec2<bool>(arg_1, arg_0.d.d.x), vec2<bool>(arg_1, arg_1)), 0u < ~arg_0.b.c), false);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.b.x));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a, _wgslsmith_div_i32(func_1(Struct_3(vec2<u32>(1u, 1u), Struct_1(true, vec4<f32>(293f, 723f, -1286f, 724f), 0u, vec4<bool>(false, true, false, true)), Struct_2(4294967295u, u_input.a), Struct_1(true, vec4<f32>(495f, 1050f, 320f, 292f), 23136u, vec4<bool>(true, true, false, false))), true), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.b), global0[_wgslsmith_index_u32(4294967295u, 23u)]))), abs(-vec2<i32>(reverseBits(u_input.b), func_1(Struct_3(vec2<u32>(35437u, 0u), Struct_1(false, vec4<f32>(-677f, 1000f, 2142f, -939f), 0u, vec4<bool>(false, true, true, false)), Struct_2(48122u, u_input.a), Struct_1(true, vec4<f32>(1441f, 859f, -834f, -1160f), 1u, vec4<bool>(false, true, false, true))), true))));
    var var_1 = select(vec2<bool>(false, true), vec2<bool>(1u == _wgslsmith_clamp_u32(~1u, 19576u, 1u), func_3()), true);
    let var_2 = Struct_3(vec2<u32>(abs(~(~27041u)), max(1u, ~min(1u, 1u))), Struct_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(261f, -1146f, 717f, 1401f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(188f, -458f, -449f, -1321f) + vec4<f32>(-1387f, 1000f, -1000f, -908f)))), 22907u, select(vec4<bool>(true, true, select(var_1.x, false, true), var_1.x), !vec4<bool>(var_1.x, false, var_1.x, true), all(vec2<bool>(true, true)))), Struct_2(~select(~4294967295u, 4294967295u, false), -u_input.a), Struct_1(var_1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-427f, -826f, -280f, 1000f) + vec4<f32>(-346f, 1646f, 430f, 2003f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(996f, 234f, -1277f, -1479f) * vec4<f32>(-2231f, 463f, 1385f, 2597f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1391f, -226f, -1320f, -1725f) - vec4<f32>(116f, -363f, -1236f, -1462f))))), 41992u, select(vec4<bool>(var_1.x, true, any(vec3<bool>(false, var_1.x, true)), var_1.x), select(vec4<bool>(true, false, false, true), select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<bool>(!var_1.x, var_1.x & false, true, true))));
    var var_3 = _wgslsmith_sub_u32(var_2.b.c, 1u);
    var_0 = vec2<i32>(_wgslsmith_add_i32(-_wgslsmith_add_i32(u_input.b, 1i) >> (0u % 32u), 21821i), 2147483647i << (_wgslsmith_dot_vec2_u32(~(~var_2.a), vec2<u32>(56931u, ~var_2.c.a)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer((~(var_2.c.b | 34536i) | var_0.x) & min(u_input.b, -1i), _wgslsmith_f_op_vec3_f32(select(var_2.d.b.yxz, vec3<f32>(var_2.d.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.d.b.x - 997f), _wgslsmith_f_op_f32(max(102f, var_2.d.b.x)), var_1.x == var_1.x)), 916f), vec3<bool>(true, true, true))), _wgslsmith_mod_u32(_wgslsmith_div_u32(var_2.d.c, var_2.b.c), abs(~firstTrailingBit(42861u))));
}

