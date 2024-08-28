struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 30>;

var<private> global2: vec3<i32> = vec3<i32>(-1i, -14096i, 1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> i32 {
    global1 = array<f32, 30>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -118f, 908f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0, vec3<f32>(global1[_wgslsmith_index_u32(global0.a.x, 30u)], global1[_wgslsmith_index_u32(global0.a.x, 30u)], arg_1), vec3<bool>(true, true, true))) * arg_0)));
    return abs(~(_wgslsmith_clamp_i32(arg_2, -2147483647i, 41690i) >> (_wgslsmith_dot_vec2_u32(global0.a.yx, global0.a.zy) % 32u)));
}

fn func_3() -> vec4<u32> {
    let var_0 = true;
    var var_1 = u_input.a;
    let var_2 = Struct_1(vec4<i32>(global2.x, ~global2.x, -16298i, 2147483647i), !vec4<bool>(var_0, true, all(vec4<bool>(var_0, var_0, false, var_0)) & var_0, var_0 | !var_0), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1[_wgslsmith_index_u32(global0.a.x, 30u)], global1[_wgslsmith_index_u32(global0.a.x, 30u)], -1142f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], 414f, 363f))))) * vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(9676u, 30u)], -1338f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.a.x, 30u)] + global1[_wgslsmith_index_u32(24819u, 30u)]), -210f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-187f + 262f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(20625u, 30u)] + -442f)), 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1319f, global1[_wgslsmith_index_u32(global0.a.x, 30u)]))))));
    let var_3 = -abs(var_2.a.xzz ^ _wgslsmith_sub_vec3_i32(vec3<i32>(-14242i, 1i, global2.x), vec3<i32>(-29288i, var_2.a.x, -1i))) ^ -(~var_2.a.yyw);
    let var_4 = _wgslsmith_f_op_f32(min(var_2.d.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(max(global0.a.x, 70585u) >> (_wgslsmith_div_u32(global0.a.x, 4294967295u) % 32u)), 30u)])));
    return vec4<u32>(firstTrailingBit(1u), 51093u, _wgslsmith_div_u32(82089u, ~5113u), ~_wgslsmith_sub_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 18233u, 72336u, 4294967295u), vec4<u32>(4294967295u, 30966u, 56920u, global0.a.x)), min(global0.a.x, 1u)), ~0u));
}

fn func_2() -> vec3<i32> {
    let var_0 = ~vec4<u32>(~4294967295u, ~_wgslsmith_sub_u32(global0.a.x, reverseBits(global0.a.x)), 1u, ~abs(~global0.a.x));
    let var_1 = ~(((~global0.a.wwy ^ vec3<u32>(23237u, var_0.x, global0.a.x)) & global0.a.xxy) ^ _wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(var_0.yzz, global0.a.ywz, vec3<u32>(global0.a.x, 63613u, 25034u)), ~(~vec3<u32>(global0.a.x, global0.a.x, 1u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1886f, 1000f) + vec2<f32>(global1[_wgslsmith_index_u32(1u, 30u)], 796f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1362f, -1280f) + vec2<f32>(global1[_wgslsmith_index_u32(22466u, 30u)], global1[_wgslsmith_index_u32(var_1.x, 30u)])), true))))));
    global0 = Struct_3(((func_3() >> (~vec4<u32>(var_1.x, 31411u, 54525u, var_0.x) % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_dot_vec3_u32(var_0.ywy, vec3<u32>(0u, 0u, 4294967295u)), _wgslsmith_mod_u32(global0.a.x, var_0.x), reverseBits(var_0.x), 25202u)) ^ vec4<u32>(~(global0.a.x ^ 14564u), _wgslsmith_dot_vec3_u32(~global0.a.zzy, vec3<u32>(global0.a.x, var_0.x, 0u)), _wgslsmith_dot_vec4_u32(var_0, global0.a) << (~var_1.x % 32u), var_1.x));
    global0 = Struct_3(max(~vec4<u32>(_wgslsmith_div_u32(global0.a.x, global0.a.x), abs(105485u), 1u, 4347u), ~_wgslsmith_add_vec4_u32(vec4<u32>(4424u, var_1.x, var_0.x, 21684u), var_0)));
    return vec3<i32>(abs(_wgslsmith_sub_i32(global2.x, -1i)), ~(~u_input.a), _wgslsmith_mod_i32(1i, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 30>();
    var var_0 = (1u & global0.a.x) << ((global0.a.x >> (4294967295u % 32u)) % 32u);
    global2 = -(vec3<i32>(-u_input.a, 1i & func_1(vec3<f32>(global1[_wgslsmith_index_u32(global0.a.x, 30u)], 1511f, 1100f), global1[_wgslsmith_index_u32(1u, 30u)], u_input.a), _wgslsmith_mod_i32(-1i, abs(u_input.a))) >> (global0.a.zyx % vec3<u32>(32u)));
    global2 = select(select(vec3<i32>(-_wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_mult_i32(1i, 2147483647i), global2.x ^ global2.x), vec3<i32>(~_wgslsmith_clamp_i32(u_input.a, global2.x, -14595i), 2147483647i, -u_input.a), select(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), true, !(81215u < global0.a.x))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(0i, 14389i, global2.x), firstTrailingBit(vec3<i32>(-2147483647i, 1i, global2.x))), -(~vec3<i32>(29300i, 0i, u_input.a)), vec3<i32>(-15432i, u_input.a, global2.x) >> (vec3<u32>(global0.a.x, global0.a.x, 1u) % vec3<u32>(32u))), func_2()), select(!vec3<bool>(all(vec4<bool>(false, false, true, true)), true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(_wgslsmith_div_f32(223f, global1[_wgslsmith_index_u32(4294967295u, 30u)]) < 942f, true, !all(vec4<bool>(false, false, true, false)))));
    global0 = Struct_3(global0.a);
    let var_1 = _wgslsmith_mod_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(-34073i, 2147483647i, 6454i, -48260i) | vec4<i32>(2147483647i, u_input.a, u_input.a, -22162i), vec4<i32>(global2.x, global2.x, 17006i, u_input.a)) ^ -vec4<i32>(~16846i, -2147483647i, 2147483647i, func_2().x), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, u_input.a, 0i, u_input.a), vec4<i32>(1i, u_input.a, global2.x, 29219i), vec4<i32>(u_input.a, 2147483647i, global2.x, 2147483647i)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, global2.x, u_input.a, u_input.a), vec4<i32>(0i, -73663i, 39678i, u_input.a)), -vec4<i32>(-30222i, u_input.a, u_input.a, -2147483647i), all(vec3<bool>(false, true, true)))), vec4<i32>(global2.x, 2147483647i, -u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-18260i, u_input.a), global2.zy), _wgslsmith_mod_vec2_i32(global2.zy, vec2<i32>(532i, global2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(48142u, 0u, global0.a.x, 10433u), global0.a), global0.a, countOneBits(global0.a)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, 69195u, 1u), vec4<u32>(global0.a.x, 0u, 0u, global0.a.x), vec4<u32>(1u, global0.a.x, 25267u, 4294967295u))), global0.a.x), -(~(-36387i)), vec3<i32>(_wgslsmith_div_i32(u_input.a & u_input.a, 2147483647i), abs(15152i), global2.x) >> (_wgslsmith_div_vec3_u32(min(abs(global0.a.wxx), firstLeadingBit(global0.a.zzz)), vec3<u32>(global0.a.x, ~global0.a.x, ~4294967295u)) % vec3<u32>(32u)), vec4<u32>(~global0.a.x << ((global0.a.x >> (global0.a.x % 32u)) % 32u), max(~1u, 15020u), countOneBits(_wgslsmith_sub_u32(1u, global0.a.x)), global0.a.x));
}

