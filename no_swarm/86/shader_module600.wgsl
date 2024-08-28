struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> f32 {
    var var_0 = ~vec4<u32>(4294967295u, arg_0.b.x, ~(1u << ((25600u << (arg_2.b.b.x % 32u)) % 32u)), max(45322u, 29380u));
    let var_1 = arg_1;
    var var_2 = arg_0;
    var_2 = arg_2.b;
    global0 = array<i32, 4>();
    return 464f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_2) -> f32 {
    var var_0 = arg_1.b.b.x;
    global0 = array<i32, 4>();
    let var_1 = Struct_1(2117f, ~abs(arg_1.b.b), arg_3.b.a);
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x))) + _wgslsmith_f_op_f32(340f + _wgslsmith_f_op_f32(-1195f - -561f)))), reverseBits(vec4<u32>(11557u, countOneBits(4294967295u), 54363u, _wgslsmith_sub_u32(select(106563u, 22585u, true), arg_3.d.b.x))), _wgslsmith_f_op_f32(min(arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.a * _wgslsmith_f_op_f32(func_1(arg_1.b, true, arg_3, arg_0.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_0.c)), -1596f))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_2)) + vec2<f32>(729f, -507f))) - arg_3.c) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.c - vec2<f32>(var_2.a, 1000f)), _wgslsmith_div_vec2_f32(arg_3.c, vec2<f32>(arg_3.b.c, var_2.a)))))));
    return arg_3.d.c;
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-862f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(841f * 175f) - -546f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1382f * 1019f) * _wgslsmith_f_op_f32(func_3(Struct_1(122f, vec4<u32>(16022u, 7653u, 6141u, 4294967295u), 1555f), Struct_2(u_input.a, Struct_1(-589f, vec4<u32>(21770u, 24015u, 85251u, 1u), 1168f), vec2<f32>(1655f, 556f), Struct_1(744f, vec4<u32>(86176u, 1u, 5204u, 36217u), -1000f)), vec2<f32>(-2264f, -1000f), Struct_2(vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 4u)]), Struct_1(-964f, vec4<u32>(93218u, 95438u, 32115u, 4294967295u), 1040f), vec2<f32>(-1779f, 245f), Struct_1(786f, vec4<u32>(1u, 1u, 26247u, 1u), -1149f)))))))));
    global0 = array<i32, 4>();
    var var_1 = max(2147483647i, reverseBits(reverseBits(min(-1i, 14308i))));
    var var_2 = arg_0;
    return ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, abs(8212u), _wgslsmith_mod_u32(1u, 31669u), ~0u));
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, abs(4294967295u), 4294967295u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(22868u, 4857u), arg_0.x, arg_0.x), vec3<u32>(arg_0.x | 25154u, 0u, ~arg_0.x)));
    global0 = array<i32, 4>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_div_f32(232f, -876f))), vec4<u32>(~var_0.x, abs(var_0.x), _wgslsmith_div_u32(var_0.x, 0u), arg_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -974f), _wgslsmith_f_op_f32(-547f - 1263f)))), true, Struct_2(select(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(62692u, 4u)]), _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(0i, 14896i)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), Struct_1(_wgslsmith_f_op_f32(-1664f - -339f), _wgslsmith_add_vec4_u32(arg_0, vec4<u32>(var_0.x, var_0.x, var_0.x, 96650u)), _wgslsmith_f_op_f32(f32(-1f) * -615f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(974f, 1474f)) - vec2<f32>(1f, 1f)), Struct_1(-1000f, vec4<u32>(1u, var_0.x, 114195u, var_0.x), _wgslsmith_f_op_f32(476f - -1063f))), var_0.x | (1u >> ((var_0.x | 58412u) % 32u)))), vec4<u32>(func_2(true), ~arg_0.x, arg_0.x, _wgslsmith_add_u32(max(var_0.x, 1u), ~var_0.x)) | vec4<u32>(~(~arg_0.x), var_0.x, var_0.x, ~(~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1601f, -1641f) + _wgslsmith_f_op_f32(select(-550f, -195f, true))))));
    return Struct_1(_wgslsmith_f_op_f32(step(1060f, var_1.c)), vec4<u32>(_wgslsmith_div_u32(~var_0.x, ~abs(var_1.b.x)), arg_0.x & countOneBits(6138u), 0u, 15981u), -411f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(797f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(Struct_1(290f, vec4<u32>(22019u, 0u, 116612u, 0u), 1906f), false, Struct_2(vec2<i32>(global0[_wgslsmith_index_u32(65873u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)]), Struct_1(-1897f, vec4<u32>(0u, 2318u, 4294967295u, 54667u), -1261f), vec2<f32>(-229f, -327f), Struct_1(1159f, vec4<u32>(66627u, 34842u, 48922u, 9957u), 1695f)), 4294967295u))))))), true));
    var var_1 = func_4(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~74557u, 1u, ~4294967295u, 39664u)), _wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(4858u), func_2(false), ~82449u, 1u), abs(vec4<u32>(0u, 4294967295u, 4294967295u, 0u)))));
    var_1 = Struct_1(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(sign(var_0))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.x, 20945u, var_1.b.x, 53245u), func_4(vec4<u32>(var_1.b.x, 27278u, var_1.b.x, 1u)).b) & vec4<u32>(func_2(false), abs(var_1.b.x), var_1.b.x, _wgslsmith_div_u32(abs(var_1.b.x), _wgslsmith_sub_u32(84447u, 1u))), var_1.c);
    var var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -(u_input.a ^ vec2<i32>(global0[_wgslsmith_index_u32(var_1.b.x, 4u)], global0[_wgslsmith_index_u32(var_1.b.x, 4u)])), u_input.a), ~abs(vec2<i32>(i32(-1i) * -220i, firstTrailingBit(u_input.b))));
    global0 = array<i32, 4>();
    let var_3 = Struct_2(~(~u_input.a), Struct_1(_wgslsmith_f_op_f32(1000f * 180f), vec4<u32>(_wgslsmith_clamp_u32(abs(6984u), 1u, 87570u), _wgslsmith_div_u32(var_1.b.x, ~var_1.b.x), _wgslsmith_sub_u32(~var_1.b.x, 53958u), 1u << (0u % 32u)), 1f), vec2<f32>(var_0, var_0), func_4(~var_1.b));
    var_2 = u_input.a;
    var_2 = ~select(-(~var_3.a << ((var_3.b.b.xy << (vec2<u32>(var_1.b.x, 13689u) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<i32>(var_2.x, ~(-35922i)), all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false)));
    var var_4 = func_4(vec4<u32>(20215u, 26277u, 42599u, var_3.b.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(select((vec3<i32>(u_input.b, -2147483647i, u_input.a.x) | (vec3<i32>(u_input.b, 0i, -2147483647i) >> (var_3.d.b.xyw % vec3<u32>(32u)))) & abs(-vec3<i32>(var_2.x, 0i, var_2.x)), abs(vec3<i32>(firstTrailingBit(1i), 1i, var_2.x)), vec3<bool>((u_input.b <= 22706i) || false, all(vec2<bool>(false, true)) && true, true)));
}

