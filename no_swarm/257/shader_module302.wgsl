struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(55222u, 57560u, 4294967295u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<f32>) -> vec3<u32> {
    var var_0 = firstTrailingBit(firstTrailingBit(u_input.a));
    let var_1 = arg_0.yx;
    var var_2 = max(~(~(vec4<i32>(-1i, 11465i, 12107i, -2147483647i) << (select(vec4<u32>(global0.x, 31093u, global0.x, 36680u), vec4<u32>(u_input.a, u_input.a, 66067u, 1u), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)))), firstTrailingBit(vec4<i32>(1i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -23942i), vec2<i32>(-44974i, 1i) << (global0.yx % vec2<u32>(32u))), -_wgslsmith_dot_vec3_i32(vec3<i32>(29861i, -1i, -57928i), vec3<i32>(-24088i, -30434i, 0i)))));
    var_0 = _wgslsmith_mod_u32(~firstLeadingBit(u_input.a) & global0.x, 62613u);
    var_2 = vec4<i32>(~var_2.x, var_2.x, i32(-1i) * -reverseBits(reverseBits(var_2.x)), -2147483647i ^ var_2.x);
    return vec3<u32>(67650u, global0.x, abs(1u));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> vec3<u32> {
    global0 = ~max(~func_3(vec3<f32>(-123f, arg_1.x, arg_1.x)) | ~(vec3<u32>(1u, u_input.a, arg_0) & vec3<u32>(u_input.a, 12130u, arg_0)), vec3<u32>(4294967295u, 4294967295u, ~(19884u | global0.x)));
    var var_0 = ~firstLeadingBit(reverseBits(vec3<u32>(_wgslsmith_mod_u32(arg_0, global0.x), _wgslsmith_mod_u32(45794u, 4800u), arg_0)));
    let var_1 = Struct_1(firstLeadingBit(~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(global0.yx, global0.xz), ~vec2<u32>(arg_0, var_0.x))), arg_0, !select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0 == 0u, arg_1.x <= arg_1.x, true, any(vec4<bool>(false, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 23060u <= u_input.a)), (i32(-1i) * -(-1i >> (u_input.a % 32u))) | min(-64846i, -2147483647i), var_0.x);
    let var_2 = Struct_2(Struct_1(min(~vec2<u32>(45073u, 17912u), ~_wgslsmith_sub_vec2_u32(var_1.a, var_0.yz)), 3398u, var_1.c, abs(-1i), 0u));
    global0 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.a >> (u_input.a % 32u)), vec2<u32>(global0.x, 1u)), abs(~var_2.a.e), 0u);
    return _wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(67237u) & (var_2.a.b >> (143729u % 32u)), 4294967295u, var_0.x), select(~(vec3<u32>(38672u, var_0.x, var_1.e) ^ vec3<u32>(u_input.a, 1u, var_0.x)), vec3<u32>(min(arg_0, 0u), global0.x, min(var_2.a.e, arg_0)), var_1.c.wxy)) & countOneBits(abs(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 61183u, global0.x), vec3<u32>(45230u, var_1.a.x, 28854u)) << (func_3(vec3<f32>(-1422f, -728f, arg_1.x)) % vec3<u32>(32u))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>) -> i32 {
    global0 = ~(~func_2(27263u, vec3<f32>(-998f, 133f, arg_2.x)));
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~arg_0.a.d, _wgslsmith_clamp_i32(27101i, 24111i, arg_0.a.d), 1i, ~arg_0.a.d), arg_1.a, ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -45169i, arg_1.c.d, arg_0.a.d), arg_1.a)), vec4<i32>(~1i, -arg_0.a.d, -629i, arg_1.d.d)), -vec4<i32>(~abs(0i), ~(-23880i), abs(arg_0.a.d << (80766u % 32u)), arg_0.a.d));
    var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(-countOneBits(max(arg_0.a.d, -1i)), 3247i, arg_1.c.d, 1i), reverseBits(_wgslsmith_mod_vec4_i32(arg_1.a, ~(-vec4<i32>(var_0.x, 33886i, -15662i, -2147483647i)))));
    var var_1 = arg_2;
    var_0 = vec4<i32>(_wgslsmith_mult_i32(-2147483647i, (var_0.x ^ _wgslsmith_div_i32(var_0.x, 2147483647i)) & _wgslsmith_dot_vec3_i32(-vec3<i32>(-21364i, var_0.x, arg_1.a.x), vec3<i32>(arg_0.a.d, -39337i, arg_1.a.x))), _wgslsmith_clamp_i32(~arg_0.a.d, 1i, 0i), 39957i, _wgslsmith_sub_i32(-2147483647i, (var_0.x | arg_1.a.x) >> (_wgslsmith_div_u32(19234u, 37338u) % 32u)) & var_0.x);
    return reverseBits(-32591i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(-vec4<i32>(1i, 1i, 1i, 1i), ~(func_1(Struct_2(Struct_1(global0.xz, global0.x, vec4<bool>(true, true, true, true), 17140i, global0.x)), Struct_3(vec4<i32>(-29142i, 12842i, 14565i, 2147483647i), -2147483647i, Struct_1(global0.xx, u_input.a, vec4<bool>(false, true, true, false), -20021i, u_input.a), Struct_1(global0.xx, u_input.a, vec4<bool>(false, true, true, true), 2147483647i, 36340u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1125f, 1341f, -644f) - vec3<f32>(-838f, -1962f, 492f))) | _wgslsmith_mod_i32(-1i, -1i)), Struct_1(_wgslsmith_add_vec2_u32(max(global0.yz, global0.zy), vec2<u32>(33524u, ~global0.x)), _wgslsmith_mod_u32(~global0.x, ~0u) << (4294967295u % 32u), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true), -38661i, _wgslsmith_add_u32(~u_input.a, 4294967295u)), Struct_1(vec2<u32>(~_wgslsmith_sub_u32(0u, u_input.a), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, global0.x, 2532u), vec3<u32>(4294967295u, global0.x, global0.x)), ~vec3<u32>(67780u, 1u, 4294967295u))), u_input.a, select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false)), _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(-1i, 3365i, -58373i, 9640i)), vec4<i32>(firstLeadingBit(0i), _wgslsmith_mult_i32(11901i, -1i), 2147483647i, -2147483647i)), 4294967295u >> (global0.x % 32u)));
    global0 = ~(~(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, var_0.d.e), min(vec3<u32>(53583u, global0.x, var_0.d.a.x), vec3<u32>(67958u, var_0.d.e, 43117u))) << (vec3<u32>(~var_0.c.a.x, var_0.c.b, var_0.d.e << (2181u % 32u)) % vec3<u32>(32u))));
    global0 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(36995u, global0.x, 1u) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, var_0.c.a.x, 0u), vec3<u32>(u_input.a, 1u, global0.x), vec3<u32>(var_0.d.b, var_0.d.a.x, var_0.c.e)) % vec3<u32>(32u))), vec3<u32>(~min(u_input.a, u_input.a), _wgslsmith_mult_u32(~var_0.d.b, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.b, 1u), global0.zx)), ~(~u_input.a))), ~vec3<u32>(u_input.a, u_input.a, abs(u_input.a)));
    global0 = min(~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.a.x, u_input.a), vec2<u32>(39909u, 4294967295u)), 147089u), _wgslsmith_clamp_u32(var_0.c.b, ~63065u, ~9175u), ~(~global0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(global0.x, _wgslsmith_div_u32(~u_input.a, ~var_0.d.e), global0.x), vec3<u32>(u_input.a, global0.x >> (60835u % 32u), u_input.a) >> (~vec3<u32>(21811u, 66443u, 14752u) % vec3<u32>(32u))));
    let var_1 = Struct_2(Struct_1(var_0.c.a, 1u, select(var_0.d.c, var_0.c.c, var_0.c.c), abs(-2147483647i), ~_wgslsmith_div_u32(min(global0.x, global0.x), ~24875u)));
    var_0 = Struct_3(_wgslsmith_mod_vec4_i32(var_0.a, -(vec4<i32>(var_1.a.d, var_0.c.d, 45300i, -58348i) >> (vec4<u32>(2118u, 0u, 36616u, var_0.c.e) % vec4<u32>(32u)))), var_0.c.d << (~var_0.d.e % 32u), var_1.a, var_0.c);
    let var_2 = Struct_3(abs(vec4<i32>(var_0.c.d & var_0.a.x, _wgslsmith_clamp_i32(2147483647i, var_1.a.d, var_1.a.d), var_1.a.d, _wgslsmith_dot_vec4_i32(var_0.a, max(vec4<i32>(69758i, var_0.a.x, -25045i, var_0.a.x), var_0.a)))), _wgslsmith_mod_i32(var_0.c.d | var_1.a.d, _wgslsmith_add_i32(0i, _wgslsmith_div_i32(-48125i, -4939i))), var_0.d, Struct_1(select(vec2<u32>(_wgslsmith_clamp_u32(var_0.d.b, var_0.d.e, u_input.a), _wgslsmith_mult_u32(41624u, var_1.a.a.x)), global0.yz, var_1.a.c.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.a, 0u, global0.x)), ~vec3<u32>(var_0.d.b, var_0.c.a.x, u_input.a)), ~vec3<u32>(0u, var_1.a.e, var_0.d.a.x)), !select(vec4<bool>(var_1.a.c.x, var_0.d.c.x, var_0.d.c.x, true), !var_0.d.c, !vec4<bool>(var_0.d.c.x, false, var_0.d.c.x, true)), -31689i, 4294967295u));
    global0 = func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1023f, _wgslsmith_f_op_f32(f32(-1f) * -650f))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(639f, -265f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-964f, 248f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-263f)), -1000f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-361f, -677f), vec2<f32>(-1461f, 558f), var_1.a.c.xy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-576f, 184f)), false)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(441f, -1139f))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(614f, -589f))) - vec2<f32>(1f, 1f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_div_vec2_i32(var_0.a.wz << (var_2.d.a % vec2<u32>(32u)), var_0.a.xz), vec2<u32>(firstTrailingBit(43384u), var_1.a.e), var_3);
}

