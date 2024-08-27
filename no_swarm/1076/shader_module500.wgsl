struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<u32, 22> = array<u32, 22>(13245u, 2495u, 18837u, 16728u, 4294967295u, 43351u, 1u, 113943u, 4294967295u, 26290u, 15026u, 48543u, 0u, 0u, 0u, 0u, 63009u, 0u, 0u, 7673u, 2254u, 27442u);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> u32 {
    global0 = u_input.b.wyy;
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(-(-vec4<i32>(13409i, 9685i, -1i, 48826i) ^ -vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c)), ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 10721i), vec4<i32>(5733i, u_input.c, u_input.c, 66635i)), _wgslsmith_div_i32(41987i, u_input.c), -9296i, ~(-1i))), vec2<u32>(_wgslsmith_add_u32(~select(global0.x, global0.x, arg_0.x), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], 22u)]), 3491u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1939f, 1675f, 579f), vec3<f32>(327f, -1000f, -493f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-151f, -1000f, -738f))))));
    let var_2 = Struct_1(countOneBits(_wgslsmith_div_i32(u_input.c, -12183i)), ~var_0.b);
    var var_3 = true == arg_0.x;
    return 1u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_u32(~(~(~u_input.b)), _wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u, _wgslsmith_add_u32(u_input.d, 1u), global1[_wgslsmith_index_u32(select(arg_1.b.x, 26203u, false), 22u)], 84640u >> (arg_1.b.x % 32u)), vec4<u32>(1u, ~19743u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(arg_1.b.x, global1[_wgslsmith_index_u32(58752u, 22u)], arg_1.b.x, 4294967295u)), u_input.d), !(!arg_2)), u_input.b & (~u_input.b >> (vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(global0.x, 22u)], arg_0.b.x, u_input.d) % vec4<u32>(32u)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -965f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1523f, -1793f)) + -587f))), _wgslsmith_f_op_f32(max(-244f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(296f, -1384f, true))))))), _wgslsmith_f_op_f32(trunc(-990f)));
    global1 = array<u32, 22>();
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32(-select(abs(vec2<i32>(-2147483647i, 1i)), max(vec2<i32>(arg_0.a, -5173i), vec2<i32>(0i, u_input.c)), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, false), false)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-38529i, u_input.c), vec2<i32>(29883i, arg_0.a)), vec2<i32>(u_input.c, u_input.c)), vec2<i32>(-23945i << (global0.x % 32u), u_input.c))), _wgslsmith_mult_vec2_u32(~(~(~vec2<u32>(12850u, global1[_wgslsmith_index_u32(0u, 22u)]))), ~(~_wgslsmith_sub_vec2_u32(global0.zx, u_input.a.xx))));
    var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-449f, _wgslsmith_f_op_f32(f32(-1f) * -508f)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(549f, var_1.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1356f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1234f))))))));
    return max(firstTrailingBit(arg_1.b.x), 1u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_clamp_u32(arg_1.b.x >> (_wgslsmith_add_u32(_wgslsmith_clamp_u32(reverseBits(4294967295u), 4294967295u, 17860u), ~global0.x) % 32u), u_input.d, ~(~(~(~41415u))));
    let var_1 = Struct_1(-(_wgslsmith_mult_i32(arg_1.a, -1i) ^ 32303i) & u_input.c, vec2<u32>(arg_1.b.x, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)));
    let var_2 = firstTrailingBit(-_wgslsmith_div_i32(1i, -33678i) >> (min(~28952u >> (u_input.a.x % 32u), max(u_input.a.x, func_3(Struct_1(2147483647i, vec2<u32>(var_1.b.x, arg_1.b.x)), arg_1, true))) % 32u));
    return firstTrailingBit(arg_0.x & ~abs(global1[_wgslsmith_index_u32(4294967295u, 22u)]));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> vec2<bool> {
    global0 = vec3<u32>(~func_4(vec4<u32>(func_2(arg_2.xx, global0.x), 25189u, min(arg_1.b.x, 4294967295u), func_3(arg_1, arg_1, false)), Struct_1(-2147483647i, select(vec2<u32>(1u, global0.x), u_input.a.xz, false))), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~abs(0u)), u_input.b.xy), global0.x);
    global1 = array<u32, 22>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-173f)), _wgslsmith_f_op_f32(f32(-1f) * -444f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - -165f)), -1546f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-172f - -1691f)) - 601f)));
    global0 = u_input.b.wyx;
    return !arg_2.yy;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a, u_input.c, -1i, arg_2.a), vec4<i32>(arg_1.a, arg_1.a, 16016i, arg_2.a)) | arg_1.a, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 14923i, -1i), vec3<i32>(-14766i, 2147483647i, 1i)), vec3<i32>(2147483647i, 1i, -2147483647i)), select(~vec3<i32>(-1i, arg_1.a, 35400i), vec3<i32>(2147483647i, 2296i, -1i), vec3<bool>(true, true, true)))), vec2<u32>(~_wgslsmith_add_u32(27274u, _wgslsmith_mod_u32(arg_1.b.x, arg_1.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(max(25631u, global1[_wgslsmith_index_u32(u_input.d, 22u)]), global1[_wgslsmith_index_u32(156171u, 22u)] | global0.x, firstTrailingBit(48250u), global1[_wgslsmith_index_u32(arg_2.b.x, 22u)] | 34117u), _wgslsmith_mod_vec4_u32(select(vec4<u32>(arg_2.b.x, arg_1.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.b.x, 22u)], 22u)], 100752u), u_input.b, true), vec4<u32>(global1[_wgslsmith_index_u32(arg_2.b.x, 22u)], 4294967295u, global1[_wgslsmith_index_u32(44756u, 22u)], arg_1.b.x)))));
    global0 = u_input.b.zzy;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(899f, arg_0, -601f, 153f)))))) + vec4<f32>(-174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-467f, 1370f))), _wgslsmith_f_op_f32(ceil(700f)), 193f)), vec3<i32>(i32(-1i) * -12617i, arg_2.a, abs(arg_2.a & u_input.c) >> ((_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u, 22u)], arg_2.b.x, global1[_wgslsmith_index_u32(1u, 22u)]) << ((1u >> (arg_2.b.x % 32u)) % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 22>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2123f * 384f)))))), -1187f);
    let x = u_input.a;
    s_output = func_5(var_0.x, Struct_1(_wgslsmith_sub_i32(u_input.c, u_input.c), select(u_input.a.yx, _wgslsmith_div_vec2_u32(abs(vec2<u32>(32596u, u_input.a.x)), vec2<u32>(global1[_wgslsmith_index_u32(52985u, 22u)], 34707u)), select(vec2<bool>(true, true), func_1(vec3<f32>(414f, -764f, var_0.x), Struct_1(u_input.c, global0.zz), vec3<bool>(false, false, false), Struct_1(10926i, vec2<u32>(99081u, 2139u))), vec2<bool>(false, true)))), Struct_1(-_wgslsmith_mult_i32(u_input.c, u_input.c << (53604u % 32u)), ~vec2<u32>(firstLeadingBit(4866u), 36126u)));
}

