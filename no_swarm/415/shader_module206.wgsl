struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>) -> vec3<f32> {
    let var_0 = !all(vec4<bool>(true, true, false, all(vec3<bool>(true, false, false)))) || select(true, false, true);
    let var_1 = -35216i;
    let var_2 = Struct_1(firstLeadingBit(~((u_input.b.zxz | vec3<u32>(u_input.b.x, 0u, u_input.b.x)) & vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x))), firstTrailingBit(~vec4<u32>(5040u, ~u_input.b.x, u_input.b.x, ~u_input.b.x)));
    let var_3 = 25720u;
    var var_4 = Struct_2(vec4<bool>(var_0, all(vec2<bool>(false & var_0, select(true, false, var_0))), true, any(vec2<bool>(true, true))), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, var_0), vec2<bool>(false, var_0), true), var_0), select(select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, var_0)), vec2<bool>(var_0, false), any(vec4<bool>(true, var_0, var_0, true))), !select(vec2<bool>(true, true), vec2<bool>(var_0, false), var_0)), var_2);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(860f, 152f, 2085f))))) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -711f), _wgslsmith_f_op_f32(1104f - _wgslsmith_f_op_f32(max(-1435f, -134f))), !all(var_4.b))), -622f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2, _wgslsmith_mult_i32(-31860i, ~_wgslsmith_mult_i32(7114i, u_input.c.x))), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(~arg_2, 1i)), _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(1i, arg_0.x)) ^ vec2<i32>(~u_input.c.x, 5676i)));
    let var_1 = ~(~countOneBits(vec4<i32>(arg_2, -62233i, 30203i, 0i)) ^ -(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i)));
    var var_2 = -412f;
    var_2 = 1808f;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(-var_1.yww)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-326f, -492f, -709f)), vec3<f32>(954f, -798f, 2471f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-499f, -1519f, -127f))))));
    return select(~u_input.b.x, 81341u, true);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: f32) -> Struct_2 {
    var var_0 = all(vec2<bool>(true, true));
    var var_1 = -arg_0;
    let var_2 = Struct_2(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), true), false), select(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), true), vec2<bool>(true, true), true), Struct_1(u_input.b.yyz, vec4<u32>(firstLeadingBit(arg_1), _wgslsmith_div_u32(81114u, 11964u) | (arg_1 & 32798u), ~_wgslsmith_div_u32(15338u, arg_1), ~(~4294967295u))));
    var var_3 = 1u;
    var var_4 = var_2;
    return Struct_2(!select(!select(var_4.a, vec4<bool>(true, var_4.a.x, var_4.a.x, var_4.b.x), true), var_2.a, false), !select(var_4.a.xz, select(var_4.b, vec2<bool>(var_2.b.x, true), any(vec4<bool>(var_4.b.x, var_4.b.x, false, var_2.a.x))), vec2<bool>(!var_2.a.x, true)), Struct_1(u_input.b.zzz, vec4<u32>(_wgslsmith_add_u32(17273u, var_2.c.a.x), 4294967295u, u_input.b.x, func_2(vec2<i32>(arg_0, 0i), Struct_1(vec3<u32>(var_4.c.b.x, 1u, 29191u), vec4<u32>(u_input.b.x, 1u, 672u, var_2.c.a.x)), -1i)) | vec4<u32>(4294967295u, ~u_input.b.x, u_input.b.x >> (17958u % 32u), 1u)));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    var var_0 = vec4<i32>(_wgslsmith_div_i32(1i, min(abs(-1i), u_input.a.x)), 0i, _wgslsmith_sub_i32(i32(-1i) * -65577i, i32(-1i) * -u_input.a.x) & _wgslsmith_dot_vec3_i32(firstLeadingBit(firstLeadingBit(vec3<i32>(2147483647i, -895i, -1i))), countOneBits(vec3<i32>(17078i, u_input.a.x, u_input.c.x))), max(0i, countOneBits(firstTrailingBit(_wgslsmith_mult_i32(u_input.a.x, u_input.c.x)))));
    var var_1 = Struct_2(vec4<bool>(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-628f))) > _wgslsmith_f_op_f32(step(-584f, _wgslsmith_f_op_f32(-797f * arg_0.x))), true, arg_0.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f) + arg_0.x)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.b.x < 56312u)), Struct_1(vec3<u32>(1u, _wgslsmith_sub_u32(u_input.b.x, ~u_input.b.x), 68070u), u_input.b));
    var_0 = max(-reverseBits(vec4<i32>(countOneBits(456i), _wgslsmith_sub_i32(1i, u_input.c.x), -45915i, 46426i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_0.x, 2147483647i, u_input.c.x, -2147483647i) << (u_input.b % vec4<u32>(32u)), ~vec4<i32>(i32(-1i) * -35660i, -2147483647i, 2147483647i, var_0.x)));
    var_1 = func_4(_wgslsmith_mult_i32(i32(-1i) * -32108i, _wgslsmith_clamp_i32(0i >> (~u_input.b.x % 32u), var_0.x, firstTrailingBit(u_input.c.x))), _wgslsmith_mod_u32(func_2(vec2<i32>(reverseBits(-10614i), -2147483647i), var_1.c, -min(var_0.x, u_input.c.x)), 31041u), 2307f);
    var_0 = -vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, ~1i), ~var_0.x), _wgslsmith_add_i32(u_input.c.x, 60271i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.c.x | 2147483647i, u_input.c.x), firstLeadingBit(-18524i | var_0.x), 31843i), _wgslsmith_div_i32(i32(-1i) * -22645i, firstTrailingBit(-34675i)) ^ var_0.x);
    return u_input.b.x & _wgslsmith_dot_vec4_u32(var_1.c.b, _wgslsmith_sub_vec4_u32(var_1.c.b, vec4<u32>(0u, u_input.b.x, ~var_1.c.a.x, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = !vec4<bool>(all(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, true, true))), any(select(vec2<bool>(var_0, true), vec2<bool>(true, false), vec2<bool>(var_0, var_0))) | true, true, false);
    var var_2 = var_1.x && !var_0;
    let var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 36443u, u_input.b.x), u_input.b)), vec3<u32>(~16130u, 8710u, u_input.b.x)), abs(vec3<u32>(u_input.b.x, u_input.b.x, 26192u))), _wgslsmith_dot_vec3_u32(u_input.b.zwz, ~(~vec3<u32>(1u, 1u, 4294967295u))) & 1u, ~(~8961u), _wgslsmith_div_u32(u_input.b.x, max(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2365f, -324f, -154f, 1286f))), 1u)));
    var var_4 = ~(~90116u);
    var_2 = !func_4(156i, u_input.b.x, -283f).a.x;
    let var_5 = func_2(~vec2<i32>(u_input.a.x, u_input.c.x), Struct_1(~countOneBits(~var_3.zwx), ~var_3), _wgslsmith_dot_vec3_i32(~(vec3<i32>(5313i, 1i, 34603i) | vec3<i32>(-2147483647i, u_input.c.x, u_input.a.x)) ^ -(vec3<i32>(2147483647i, u_input.c.x, 75737i) << (var_3.zyw % vec3<u32>(32u))), ~(~(vec3<i32>(-1i, u_input.a.x, u_input.a.x) | vec3<i32>(-74405i, u_input.a.x, -23360i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~var_3.x, var_5), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1534f + _wgslsmith_f_op_f32(trunc(-1036f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-703f + -610f), _wgslsmith_f_op_f32(floor(-123f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1152f, 999f)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(773f, 421f), vec2<f32>(-844f, 327f))))), vec3<f32>(-266f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(459f)))), -1008f)), _wgslsmith_f_op_f32(select(1433f, _wgslsmith_div_f32(-430f, -421f), all(select(vec2<bool>(var_0, true), var_1.xy, true))))), -283f, ~1u);
}

