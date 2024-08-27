struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<i32, 19> = array<i32, 19>(42570i, 28479i, i32(-2147483648), 23244i, 11753i, 1i, -1i, 2147483647i, i32(-2147483648), -19189i, 12957i, 2147483647i, -17984i, 16276i, 24742i, i32(-2147483648), -1i, 2147483647i, -1i);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>) -> vec4<i32> {
    var var_0 = Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(940f, _wgslsmith_f_op_f32(f32(-1f) * -366f), (-28695i & global1[_wgslsmith_index_u32(global0.x, 19u)]) == 1i)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-130f, -616f)), _wgslsmith_div_f32(-1848f, 695f)), -1192f))));
    var var_1 = ~vec3<i32>(-arg_0.x | _wgslsmith_mod_i32(38164i, global1[_wgslsmith_index_u32(4294967295u, 19u)]), -1i, -1i) & vec3<i32>(_wgslsmith_add_i32(select(global1[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_clamp_i32(54370i, -8952i, -36821i), -1764f <= var_0.b), ~54183i), reverseBits(60800i), ~global1[_wgslsmith_index_u32(u_input.c, 19u)]);
    var var_2 = 136f;
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * -1100f) - -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -582f)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(104f, -511f, -2247f, 1000f), vec4<f32>(var_0.b, var_0.b, var_0.b, 827f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-663f, 942f, 696f, var_0.b) + vec4<f32>(-172f, 279f, -397f, -246f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b, -1000f, var_0.b, var_0.b))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1158f, var_0.b, var_0.b, 1387f) + vec4<f32>(var_0.b, 398f, -1272f, 951f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(591f, var_0.b, var_0.b, var_0.b))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-160f, var_0.b, -298f, var_0.b), vec4<f32>(418f, var_0.b, -1069f, -1000f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(955f, var_0.b, var_0.b, var_0.b)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 684f, 1334f, var_0.b)), vec4<f32>(var_0.b, var_0.b, -111f, -357f))))));
    return ~(-(~vec4<i32>(-var_1.x, u_input.b.x, firstLeadingBit(var_1.x), i32(-1i) * -12350i)));
}

fn func_2() -> u32 {
    let var_0 = min(-func_3(vec3<i32>(u_input.b.x, u_input.b.x, 54006i) >> (vec3<u32>(1u, global0.x, 25613u) % vec3<u32>(32u))), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, 0i, 49808i, u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], u_input.b.x, u_input.b.x), vec4<i32>(32034i, 1i, 2147483647i, global1[_wgslsmith_index_u32(global0.x, 19u)])), ~vec4<i32>(0i, 41695i, 18932i, -17752i)))) ^ ~(-vec4<i32>(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(30629u, 19u)], 2147483647i, i32(-1i) * -1i));
    var var_1 = Struct_2(var_0, -2147483647i, false);
    let var_2 = vec2<bool>(true, !any(!select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(false, true), var_1.c)));
    let var_3 = var_1.c;
    let var_4 = Struct_3(2147483647i);
    return 0u;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    var var_0 = arg_0;
    let var_1 = vec3<i32>(arg_0.a, -11253i, (_wgslsmith_sub_i32(~2147483647i, 0i) & var_0.a) >> (_wgslsmith_mod_u32(~137565u, ~_wgslsmith_add_u32(u_input.c, 39127u)) % 32u));
    var_0 = arg_0;
    global0 = vec3<u32>(global0.x, 4294967295u, func_2());
    var var_2 = global0.yy | vec2<u32>(25132u & ~global0.x, ~(~44483u));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = select(select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(449u, 4294967295u), vec2<u32>(u_input.c, 0u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global0.xx, u_input.a), 102874u, global0.x), 4294967295u), vec3<u32>(0u, ~(~3988u), 4294967295u), var_0), vec3<u32>(13460u, ~(~func_1(Struct_3(-1i), Struct_2(vec4<i32>(u_input.b.x, global1[_wgslsmith_index_u32(1u, 19u)], 38145i, -1i), 32530i, var_0))), ~_wgslsmith_div_u32(1u, global0.x) << (30751u % 32u)), var_0);
    let var_2 = Struct_2(firstTrailingBit(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], -6689i, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, 2147483647i, global1[_wgslsmith_index_u32(var_1.x, 19u)], global1[_wgslsmith_index_u32(1u, 19u)]))) << (_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(var_1.x, 48706u, u_input.a.x, 0u)), vec4<u32>(var_1.x, u_input.a.x, 68103u, var_1.x)) % vec4<u32>(32u))), abs(u_input.b.x) >> (var_1.x % 32u), false);
    let var_3 = false;
    let var_4 = vec3<u32>(~4294967295u, ~_wgslsmith_mult_u32(select(abs(var_1.x), ~1u, var_0 || var_2.c), ~171057u), reverseBits(~(~_wgslsmith_div_u32(u_input.a.x, 49460u))));
    global0 = abs(~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global0.x, 15672u, 1u), vec3<u32>(40323u, 0u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_1.x, 4294967295u), vec3<u32>(7368u, 17319u, u_input.a.x) & var_4), max(vec3<u32>(var_4.x, u_input.a.x, 58020u), ~var_4)));
    global1 = array<i32, 19>();
    let var_5 = vec4<u32>(countOneBits(_wgslsmith_div_u32(~firstLeadingBit(9040u), _wgslsmith_mult_u32(var_1.x, global0.x))), 28773u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(func_1(Struct_3(1i), var_2), ~var_1.x), 34403u), abs(_wgslsmith_sub_u32(u_input.a.x, firstTrailingBit(_wgslsmith_div_u32(var_1.x, 4148u)))));
    global1 = array<i32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global1[_wgslsmith_index_u32((4294967295u | global0.x) >> (var_1.x % 32u), 19u)], var_2.b));
}

