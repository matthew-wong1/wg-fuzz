struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 4>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> u32 {
    return firstLeadingBit(17184u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    var var_0 = abs(abs(arg_1.b));
    global0 = array<vec3<i32>, 4>();
    var_0 = min(_wgslsmith_mod_u32(arg_0.d.b << (_wgslsmith_div_u32(func_1(), 80744u) % 32u), 17459u), abs(_wgslsmith_add_u32(~(4294967295u & arg_1.b), arg_0.d.b)));
    var var_1 = Struct_1(firstTrailingBit(arg_2.x), arg_1.b);
    var_0 = _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1.b, 4294967295u), ~reverseBits(1u)) >> ((_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b, 43974u, 48030u, 36109u) | vec4<u32>(63334u, arg_0.d.b, var_1.b, 26296u), vec4<u32>(1u, arg_1.b, 0u, 0u)), abs(vec4<u32>(98369u, arg_1.b, arg_1.b, arg_0.d.b) | vec4<u32>(1u, 1u, 4294967295u, arg_1.b))) << (_wgslsmith_mult_u32(arg_1.b, (arg_1.b >> (var_1.b % 32u)) >> (var_1.b % 32u)) % 32u)) % 32u);
    return arg_0.a.x;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_4) -> vec2<u32> {
    var var_0 = ~arg_0.d.a >> ((abs(arg_0.d.a) | 15837u) % 32u);
    return abs(min(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a.e.b, 0u), ~vec2<u32>(arg_3.d.b, arg_3.d.b))), vec2<u32>(0u, _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.a.a, arg_0.a.e.b), ~arg_3.d.b))));
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    var var_0 = ~(~(vec2<u32>(arg_0.x, arg_0.x | arg_0.x) | arg_0.zz));
    var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_0.x, var_0.x), 7192u), func_4(Struct_3(Struct_2(~0u, _wgslsmith_f_op_f32(1000f + -1390f), vec4<f32>(-818f, -575f, 854f, -310f), true, Struct_1(-1i, 960u)), u_input.b, u_input.a, Struct_2(arg_0.x, -967f, _wgslsmith_div_vec4_f32(vec4<f32>(2321f, -1184f, -350f, 917f), vec4<f32>(1318f, -773f, 311f, -309f)), false, Struct_1(u_input.c.x, var_0.x))), 2147483647i, vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(vec2<f32>(-326f, -1831f), true, vec3<bool>(false, true, true), Struct_1(2147483647i, var_0.x)), Struct_1(u_input.a.x, 37342u), u_input.c)), 208f), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(round(-1540f)), -867f), true, !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), Struct_1(-2147483647i, firstLeadingBit(var_0.x)))));
    var_0 = min(_wgslsmith_sub_vec2_u32(arg_0.xy, vec2<u32>(~arg_0.x, ~(var_0.x << (var_0.x % 32u)))), ~arg_0.zy);
    let var_1 = any(vec3<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), select(!any(vec2<bool>(true, true)), true, true)));
    let var_2 = ~select(_wgslsmith_div_vec2_i32(u_input.a.yy, vec2<i32>(-u_input.d, 1i)), -_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(0i, 25135i)), vec2<i32>(u_input.a.x, -7274i)), var_1 && any(vec2<bool>(var_1, var_1)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-376f, 1000f), _wgslsmith_f_op_f32(-1000f * -709f))))), -1314f, true));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(60021u, arg_0, 37130u), vec3<u32>(11901u, 4294967295u, arg_1.e.b) | vec3<u32>(61814u, arg_1.a, 0u)) >> (select(_wgslsmith_clamp_vec3_u32(vec3<u32>(78460u, 113473u, arg_1.e.b), vec3<u32>(arg_0, 4480u, arg_1.a), vec3<u32>(80764u, 28133u, 22940u)), vec3<u32>(arg_1.a, 4294967295u, arg_1.e.b) << (vec3<u32>(1u, 1u, 83400u) % vec3<u32>(32u)), !vec3<bool>(arg_1.d, true, arg_1.d)) % vec3<u32>(32u)), ~vec3<u32>(63158u, arg_0, 0u) ^ ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, arg_0, arg_1.e.b), vec3<u32>(10232u, 82131u, arg_1.a))), vec3<u32>(select(~(arg_0 ^ 6030u), _wgslsmith_mult_u32(arg_0, abs(arg_1.e.b)), arg_1.d), 7491u, arg_1.a));
    global0 = array<vec3<i32>, 4>();
    var var_1 = Struct_4(vec2<f32>(arg_1.c.x, -1754f), false, select(select(!(!vec3<bool>(arg_1.d, arg_1.d, false)), select(!vec3<bool>(true, arg_1.d, arg_1.d), !vec3<bool>(arg_1.d, arg_1.d, false), false), select(vec3<bool>(arg_1.d, true, false), vec3<bool>(false, true, false), !vec3<bool>(arg_1.d, false, arg_1.d))), select(!(!vec3<bool>(arg_1.d, false, true)), vec3<bool>(any(vec2<bool>(arg_1.d, true)), false, false), vec3<bool>(true, all(vec4<bool>(arg_1.d, arg_1.d, false, arg_1.d)), false)), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, arg_1.d, arg_1.d), arg_1.d))), Struct_1(-1i, ~(~(~1u))));
    var_1 = Struct_4(arg_1.c.yx, true, vec3<bool>(!arg_1.d, arg_1.d, true), arg_1.e);
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(33761i, select(_wgslsmith_dot_vec2_i32(u_input.c, u_input.a.yy), abs(-27034i), true), var_1.d.a), vec3<i32>(-25662i, u_input.a.x, -_wgslsmith_div_i32(10938i, 2147483647i))) | min(vec3<i32>(-_wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(arg_1.e.a, 24756i)), ~u_input.b, -45525i), countOneBits(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -1i)));
    return ~(~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 34886u, 105855u, arg_0), vec4<u32>(0u, 16180u, 0u, var_1.d.b)))) << (reverseBits(min(select(vec4<u32>(arg_0, arg_0, 93022u, 47229u) >> (vec4<u32>(var_1.d.b, 4294967295u, var_1.d.b, arg_1.e.b) % vec4<u32>(32u)), ~vec4<u32>(91252u, arg_0, arg_0, 0u), true), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.e.b, 4294967295u, arg_1.e.b, 1u), vec4<u32>(arg_0, 27064u, 301u, var_1.d.b)))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5((30018u >> (1u % 32u)) >> (1u % 32u), Struct_2(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, ~4294967295u), _wgslsmith_mult_u32(func_1(), abs(1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-173f, _wgslsmith_f_op_f32(f32(-1f) * -509f), any(vec2<bool>(true, false))))), vec4<f32>(_wgslsmith_f_op_f32(-1822f - -655f), 1492f, _wgslsmith_f_op_f32(func_2(abs(vec4<u32>(4294967295u, 65686u, 1u, 86295u)))), -442f), true, Struct_1(_wgslsmith_mod_i32(~u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1806i, -18431i, u_input.b), u_input.a)), 85824u)));
    var var_1 = vec4<i32>(firstLeadingBit(-2147483647i), 0i, -6449i, _wgslsmith_add_i32(select(-2147483647i, ~firstLeadingBit(6660i), true), max(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), u_input.c), u_input.b)));
    let var_2 = Struct_2(~0u, -2530f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(291f, -1000f, -542f, 363f)))))), !(!(!all(vec4<bool>(true, true, true, false)))), Struct_1(5575i, 0u ^ ~(0u & var_0.x)));
    var var_3 = !var_2.d;
    var_3 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zx, _wgslsmith_sub_i32(abs(firstTrailingBit(abs(24920i))), 15738i));
}

