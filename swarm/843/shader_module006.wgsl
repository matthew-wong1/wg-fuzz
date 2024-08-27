struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(0u, 1000f, 2147483647i, vec4<i32>(i32(-2147483648), i32(-2147483648), 52294i, -1i)), Struct_1(24369u, 256f, -5104i, vec4<i32>(2147483647i, -23204i, 0i, i32(-2147483648))), Struct_1(27278u, -106f, 7070i, vec4<i32>(2147483647i, 0i, 2147483647i, 1i)), Struct_1(1362u, -340f, -1i, vec4<i32>(i32(-2147483648), 0i, 1i, -1i)), Struct_1(1u, -664f, i32(-2147483648), vec4<i32>(-1i, 2147483647i, -19670i, 2147483647i)), Struct_1(115285u, 1000f, -5583i, vec4<i32>(2147483647i, -16248i, -39272i, i32(-2147483648))), Struct_1(4294967295u, 1874f, 1i, vec4<i32>(i32(-2147483648), -5560i, i32(-2147483648), 0i)), Struct_1(0u, 1182f, 46032i, vec4<i32>(7626i, -29490i, 29879i, 13980i)), Struct_1(0u, -1073f, 26510i, vec4<i32>(11532i, i32(-2147483648), i32(-2147483648), 10991i)), Struct_1(17849u, -535f, i32(-2147483648), vec4<i32>(-4597i, -1i, 1i, -14482i)), Struct_1(1u, -334f, i32(-2147483648), vec4<i32>(19269i, -1i, 1i, -72299i)), Struct_1(5059u, -1987f, -17689i, vec4<i32>(-1i, -19743i, -32820i, -1i)), Struct_1(0u, 517f, 12608i, vec4<i32>(2147483647i, i32(-2147483648), -1i, -32258i)), Struct_1(1u, 1000f, i32(-2147483648), vec4<i32>(36611i, 5841i, 2147483647i, 2147483647i)), Struct_1(4294967295u, 116f, -13764i, vec4<i32>(i32(-2147483648), 0i, 1i, -71589i)), Struct_1(4925u, 531f, 2147483647i, vec4<i32>(1i, 16111i, -2600i, -72910i)), Struct_1(4294967295u, -1022f, -6727i, vec4<i32>(i32(-2147483648), -14199i, -1i, -29175i)), Struct_1(1u, -761f, -34193i, vec4<i32>(48733i, 42864i, 0i, 0i)), Struct_1(1992u, 642f, 1i, vec4<i32>(1i, 13662i, -14646i, -15217i)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> u32 {
    global1 = all(select(vec2<bool>(!any(vec4<bool>(false, arg_0, arg_0, arg_0)), select(all(vec4<bool>(true, arg_0, arg_0, arg_0)), any(vec4<bool>(false, arg_0, false, arg_0)), false || arg_0)), !select(select(vec2<bool>(arg_0, false), vec2<bool>(false, true), false), vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0)), all(vec2<bool>(!arg_0, arg_0 | true))));
    var var_0 = Struct_4(_wgslsmith_sub_i32(26840i, arg_1.x), _wgslsmith_mod_vec2_u32(vec2<u32>(~0u, 4294967295u), ~global0.xy), ~_wgslsmith_sub_vec3_i32(u_input.a.xzx ^ _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, arg_1.x), arg_1.wyx), -(~u_input.a.xyw)), global2[_wgslsmith_index_u32(select(1u >> (~u_input.c % 32u), _wgslsmith_clamp_u32(1u, 15725u, _wgslsmith_div_u32(abs(4294967295u), 1u)), arg_0 && true), 19u)]);
    var_0 = Struct_4(firstLeadingBit(u_input.a.x), firstLeadingBit(global0.zy), -(~(-u_input.a.yzy | u_input.a.ywz)), var_0.d);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -237f) * _wgslsmith_f_op_f32(-var_0.d.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b)), _wgslsmith_f_op_f32(floor(var_0.d.b))) * vec4<f32>(315f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(884f * var_0.d.b)), 1570f, _wgslsmith_f_op_f32(f32(-1f) * -733f))));
    return max(_wgslsmith_sub_u32(~1u, ~firstTrailingBit(var_0.d.a)), select(_wgslsmith_div_u32(global0.x, _wgslsmith_div_u32(u_input.b, global0.x >> (u_input.c % 32u))), (_wgslsmith_mult_u32(1u, var_0.d.a) >> (~4294967295u % 32u)) >> (_wgslsmith_sub_u32(u_input.c, _wgslsmith_mod_u32(28972u, 51458u)) % 32u), arg_0));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> i32 {
    var var_0 = firstTrailingBit(~reverseBits(vec3<u32>(max(0u, arg_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.x, global0.x, 18941u), vec4<u32>(36996u, global0.x, u_input.d, 1u)), func_3(true, u_input.a))));
    let var_1 = global2[_wgslsmith_index_u32(u_input.c & ~(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.d, 4294967295u, arg_1.x)), ~vec3<u32>(1u, var_0.x, 0u))), 19u)];
    return ~var_1.c;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: u32, arg_3: f32) -> i32 {
    let var_0 = func_2(arg_3, max(vec2<u32>(u_input.d << (56214u % 32u), 22481u), ~global0.xx));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - _wgslsmith_f_op_f32(-arg_3)), 1137f, _wgslsmith_f_op_f32(trunc(arg_3)), _wgslsmith_div_f32(362f, arg_3)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, -1370f, -2362f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3, 1000f, -840f, -215f), vec4<f32>(-265f, 1279f, 1000f, arg_3))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, -1785f, arg_3)))))), false));
    var var_2 = ~arg_2 != (58318u ^ _wgslsmith_dot_vec3_u32(abs(vec3<u32>(global0.x, 4294967295u, u_input.d)), ~(~vec3<u32>(0u, u_input.b, 24182u))));
    global1 = true;
    var var_3 = Struct_4(~arg_0, vec2<u32>(~(~15257u & (global0.x & global0.x)), reverseBits(~81312u << (0u % 32u))), vec3<i32>(-u_input.a.x, arg_0, _wgslsmith_sub_i32(arg_1.x, -1i)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, u_input.d) >> (global0.x % 32u), u_input.d), 55455u), 19u)]);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a.x, u_input.a, _wgslsmith_mult_u32(~1u, u_input.b | ~39741u), -548f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -242f));
    let var_2 = ~_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, -10311i, u_input.a.x, -22458i), -vec4<i32>(0i, u_input.a.x, u_input.a.x, -35397i)), u_input.a.x), u_input.a.x);
    var var_3 = Struct_1(_wgslsmith_dot_vec2_u32(global0.yz, abs(_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, 4294967295u) ^ global0.zz, _wgslsmith_add_vec2_u32(global0.xz, vec2<u32>(u_input.d, u_input.b))))), 1f, min(_wgslsmith_mult_i32(1i, 1i), _wgslsmith_mod_i32(~firstTrailingBit(24695i), -2147483647i & (u_input.a.x >> (u_input.c % 32u)))), vec4<i32>(-16820i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_2), vec2<i32>(9153i, 33855i)) << (0u % 32u), 0i, i32(-1i) * -var_2));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1451f) * _wgslsmith_f_op_f32(ceil(659f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(global0.x, 0u, 4294967295u)) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, global0.x, global0.x), select(vec3<u32>(global0.x, u_input.d, u_input.c), vec3<u32>(var_3.a, 1u, 18314u), true)), ~(~vec3<u32>(0u, 4294967295u, 4294967295u) | ~vec3<u32>(var_3.a, u_input.c, 25811u))), firstTrailingBit(u_input.a), vec4<i32>(1i, _wgslsmith_div_i32(1i, _wgslsmith_mult_i32(-u_input.a.x, max(var_3.c, var_3.c))), min(-2147483647i, 0i), countOneBits(var_3.c)), global0.x);
}

