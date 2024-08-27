struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5>;

var<private> global1: array<f32, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(~abs(arg_0.x), 18u)];
    global0 = array<vec4<bool>, 5>();
    var var_1 = false;
    var var_2 = Struct_1(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true), !select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(true, true, true)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.x, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 41989u), u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(55553u, arg_0.x, 1u, arg_0.x), vec4<u32>(4006u, 11519u, u_input.b.x, arg_0.x))) | ~(~u_input.b.x), 18u)]), _wgslsmith_add_vec4_i32(~reverseBits(vec4<i32>(0i, u_input.c.x, 21857i, u_input.a.x)), vec4<i32>(u_input.c.x, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, 1i, u_input.d) | vec4<i32>(42071i, 2147483647i, -1i, 4938i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.d, -49234i, u_input.d), vec4<i32>(27130i, 2147483647i, -42548i, u_input.d))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 9417i), u_input.a.xx))), u_input.c.xy);
    global0 = array<vec4<bool>, 5>();
    return var_2.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(sign(-1014f));
    var_0 = any(arg_0.a);
    var var_2 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~1273u, u_input.b.x), arg_1.x, 32845u), vec3<u32>(arg_1.x, arg_1.x, firstLeadingBit(1u))), ~(~(~6914u)), min(arg_1.x, u_input.b.x << (0u % 32u)), u_input.b.x | _wgslsmith_clamp_u32(1u, firstLeadingBit(u_input.b.x), _wgslsmith_add_u32(1u, countOneBits(4294967295u))));
    let var_3 = vec4<u32>(firstLeadingBit(u_input.b.x & ~50618u) ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(121897u, arg_1.x, arg_1.x, 4294967295u), ~vec4<u32>(0u, 57969u, u_input.b.x, arg_1.x)), 4294967295u), ~firstTrailingBit(33640u), u_input.b.x, 1u);
    return arg_0.a.x;
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = 997f;
    var var_1 = Struct_1(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), func_2(u_input.b)), vec2<bool>(!func_3(Struct_1(vec2<bool>(false, false), global1[_wgslsmith_index_u32(u_input.b.x, 18u)], vec4<i32>(u_input.a.x, -14871i, -17495i, 1i), u_input.c.xx), u_input.b), true), ~_wgslsmith_mult_u32(0u, u_input.b.x) < 52053u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~0u, 18u)], _wgslsmith_f_op_f32(sign(-1010f))) + 1000f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(1u, 18u)]))))), ~min(vec4<i32>(26850i | u_input.a.x, 2147483647i, -20148i, min(u_input.a.x, u_input.d)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 1i, arg_0, arg_0), vec4<i32>(u_input.d, 61832i, arg_0, 2147483647i), vec4<i32>(-32542i, 1i, arg_0, u_input.a.x)), ~vec4<i32>(arg_0, 2147483647i, arg_0, u_input.c.x))), vec2<i32>(11498i | -_wgslsmith_dot_vec2_i32(u_input.c.zz, u_input.c.yx), firstLeadingBit(_wgslsmith_clamp_i32(min(arg_0, -21045i), _wgslsmith_clamp_i32(arg_0, arg_0, 0i), countOneBits(u_input.c.x)))));
    var var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(46734i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.x, 2147483647i), vec2<i32>(1i, u_input.c.x))), var_1.d.x << (53531u % 32u)), ~_wgslsmith_add_i32(13216i & u_input.a.x, 1i)), _wgslsmith_mod_vec2_i32(u_input.c.xy, _wgslsmith_mult_vec2_i32(-firstTrailingBit(vec2<i32>(-11519i, u_input.a.x)), var_1.c.wz)));
    let var_3 = Struct_2(Struct_1(!select(select(var_1.a, vec2<bool>(var_1.a.x, false), true), vec2<bool>(var_1.a.x, true), var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 18u)])), vec4<i32>(~max(-47697i, -2147483647i), i32(-1i) * -u_input.a.x, 41978i, arg_0), var_1.c.zz), Struct_1(var_1.a, 319f, -var_1.c, ~(~abs(var_1.c.wz))), -(reverseBits(_wgslsmith_mult_i32(var_2.x, var_2.x)) >> (0u % 32u)), vec4<u32>(~(~u_input.b.x), u_input.b.x, ~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 4294967295u, 1u)), 0u));
    var var_4 = -_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_sub_i32(-1i, u_input.d), 11788i >> (u_input.b.x % 32u), -1598i)), vec3<i32>(-12606i, var_1.d.x, _wgslsmith_mod_i32(-var_3.b.d.x, arg_0)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(101920i);
    let var_1 = select(vec4<bool>(all(select(!vec4<bool>(var_0.b.a.x, var_0.a.a.x, var_0.b.a.x, var_0.b.a.x), global0[_wgslsmith_index_u32(select(108882u, 0u, true), 5u)], all(global0[_wgslsmith_index_u32(58939u, 5u)]))), var_0.a.a.x, var_0.a.a.x, true), !(!select(!global0[_wgslsmith_index_u32(var_0.d.x, 5u)], !vec4<bool>(true, var_0.b.a.x, var_0.b.a.x, var_0.a.a.x), select(global0[_wgslsmith_index_u32(var_0.d.x, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], var_0.b.a.x))), var_0.a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(u_input.b.x, 18u)]);
}

