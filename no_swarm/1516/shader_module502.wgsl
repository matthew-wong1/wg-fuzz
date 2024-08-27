struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 7>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: u32) -> bool {
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    let var_0 = Struct_4(191f, Struct_1(-countOneBits(-26846i), ~firstLeadingBit(vec2<i32>(1i, 1i)), -956i), arg_0);
    var var_1 = Struct_2(4294967295u, all(vec4<bool>(true, any(vec3<bool>(arg_1.x, false, arg_2.x)), !arg_2.x, true)) && select(any(arg_1.xx), true, select(arg_3 <= 0u, arg_1.x && arg_2.x, 19493i < var_0.b.c)), ~(~var_0.c.x), var_0.b.b.x);
    return arg_2.x;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: u32, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = ~vec4<i32>(1i, i32(-1i) * -13921i, 13646i, 1i) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, arg_0.x, _wgslsmith_dot_vec3_u32(u_input.b, u_input.a)), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(4294967295u, 16743u, arg_0.x, u_input.a.x), min(vec4<u32>(0u, 1u, 121513u, u_input.c), vec4<u32>(1u, u_input.a.x, 8400u, arg_3.x))), ~vec4<u32>(arg_2, 20399u, u_input.b.x, 56552u) ^ (vec4<u32>(1u, arg_3.x, 31886u, u_input.c) & vec4<u32>(4294967295u, arg_3.x, 0u, arg_2)), reverseBits(vec4<u32>(1u, 7214u, 116492u, u_input.c) >> (vec4<u32>(arg_3.x, 1u, arg_2, 65224u) % vec4<u32>(32u))))) % vec4<u32>(32u));
    let var_1 = select(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), any(vec2<bool>(false, true))), vec2<bool>(!(!any(vec3<bool>(true, true, false))), all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))))), select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, true, true, false))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true)));
    let var_2 = Struct_1(~1i, var_0.wx >> (_wgslsmith_mod_vec2_u32(arg_0, u_input.a.xy) % vec2<u32>(32u)), firstLeadingBit(-_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, var_0.x, -19722i, 1i), var_0), -var_0)));
    global0 = array<vec4<f32>, 7>();
    global0 = array<vec4<f32>, 7>();
    return !vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * -884f) >= 279f, func_2(vec2<u32>(min(arg_3.x, 0u), ~1u), vec4<bool>(!var_1.x, true, var_1.x, var_1.x), !select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(false, true, var_1.x, var_1.x)), ~(~arg_0.x)));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    var var_0 = vec3<bool>(false, false, func_2(firstLeadingBit(vec2<u32>(10532u, 4294967295u)), select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), !any(vec3<bool>(false, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(1u != u_input.c, true, false, all(vec3<bool>(false, false, false)))), 0u));
    var_0 = vec3<bool>(select(arg_0 > arg_0, all(select(select(vec2<bool>(var_0.x, var_0.x), var_0.xx, vec2<bool>(var_0.x, false)), func_3(vec2<u32>(1u, u_input.c), vec3<f32>(arg_0, 1628f, 886f), 4294967295u, u_input.b.xz), all(vec4<bool>(false, var_0.x, false, true)))), 32359u == max(u_input.c >> (4294967295u % 32u), u_input.b.x)), select(func_3(_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b.x, u_input.a.x)), ~vec2<u32>(65901u, u_input.b.x), reverseBits(u_input.a.yy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 718f, arg_0))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(2071u, u_input.b.x), ~32487u), ~countOneBits(u_input.b.zz)).x, var_0.x, !(!(var_0.x | var_0.x))), func_3(_wgslsmith_clamp_vec2_u32(u_input.a.zx, min(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.yx), abs(u_input.b.xy) | u_input.a.yx), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1000f))))), u_input.c, ~(~(~u_input.b.yz))).x);
    var var_1 = ~u_input.c;
    var var_2 = ~(~(-(~abs(-7141i))));
    var var_3 = Struct_3(select(any(!(!vec4<bool>(true, var_0.x, true, var_0.x))), true, _wgslsmith_add_u32(~4294967295u, u_input.a.x) > 18839u), select(0i, i32(-1i) * -1i, true), Struct_2(1u, var_0.x, select(firstTrailingBit(0u), 32287u, all(vec2<bool>(false, var_0.x))), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-32638i, 0i, -2147483647i, -1i), vec4<i32>(49695i, 9253i, -2147483647i, 60736i) << (vec4<u32>(0u, 84735u, 58576u, u_input.a.x) % vec4<u32>(32u))), firstLeadingBit(0i))), Struct_1(_wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(1i, 79195i, 0i), vec3<i32>(2147483647i, -31127i, 46926i)), vec3<i32>(24884i, -30840i, 30580i))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(7644i, 0i) >> (u_input.a.zy % vec2<u32>(32u)), vec2<i32>(1i, 1i)), (abs(2147483647i) ^ select(-1i, 2147483647i, var_0.x)) | 24812i), select(vec4<bool>(true, var_0.x, any(var_0.yx), var_0.x), !vec4<bool>(false | var_0.x, true, false, var_0.x & true), vec4<bool>(false, var_0.x, false, false || var_0.x)));
    return ~(~(vec4<u32>(~0u, _wgslsmith_mult_u32(var_3.c.c, var_3.c.a), _wgslsmith_clamp_u32(4294967295u, var_3.c.a, u_input.a.x), 963u) << (_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_3.c.a, 73318u, var_3.c.a) & vec4<u32>(33309u, u_input.b.x, 52869u, 4294967295u), vec4<u32>(40364u, 4294967295u, 1u, 68866u) >> (vec4<u32>(var_3.c.c, var_3.c.a, var_3.c.a, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 7>();
    var var_0 = ~_wgslsmith_div_vec4_u32(~(~reverseBits(vec4<u32>(116248u, u_input.c, 1u, 1859u))), func_1(1000f));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(-(firstTrailingBit(vec2<i32>(36378i, 2147483647i)) << (min(vec2<u32>(u_input.c, var_0.x), vec2<u32>(10230u, 11754u)) % vec2<u32>(32u))), vec2<i32>(firstTrailingBit(-2147483647i << (u_input.c % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-56863i, 1i), vec2<i32>(-2147483647i, 1i)), vec2<i32>(1i, 1i)))), vec2<i32>(~(-2147483647i), -51911i), _wgslsmith_mult_i32(abs(~1i), -2147483647i & -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -40501i, -6953i), vec3<i32>(44536i, -83984i, 15297i))));
    var_0 = vec4<u32>(~_wgslsmith_add_u32(~var_0.x, ~abs(4294967295u)), 0u, var_0.x, var_0.x);
    let var_2 = vec3<i32>(_wgslsmith_mod_i32(var_1.b.x, var_1.c ^ var_1.c), firstTrailingBit(var_1.c), -13198i);
    let var_3 = any(vec3<bool>(~_wgslsmith_dot_vec3_u32(var_0.zyz, var_0.zzw) < _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, u_input.b.x) | vec4<u32>(52510u, 1u, u_input.c, 1u), firstLeadingBit(vec4<u32>(u_input.b.x, 82380u, 16883u, 21830u))), all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), all(func_3(vec2<u32>(67569u, 14108u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-763f, -1596f, 432f)), func_1(1257f).x, vec2<u32>(128740u, 68003u) << (vec2<u32>(u_input.a.x, var_0.x) % vec2<u32>(32u))))));
    var var_4 = Struct_1(_wgslsmith_sub_i32(var_2.x, -20921i), var_1.b | reverseBits(var_1.b), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(13035u, var_0.x, u_input.c)), vec3<u32>(28053u, var_0.x, 0u))), 7u)], _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, ~1u), u_input.a.yz));
}

