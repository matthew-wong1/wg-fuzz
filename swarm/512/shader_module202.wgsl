struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<i32, 16>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    return 40142i;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = select(vec4<i32>(func_3(), ~(~72202i), -60016i, min(global1[_wgslsmith_index_u32(arg_1, 16u)], countOneBits(arg_3.a))) >> (~(~vec4<u32>(arg_3.c.x, 1u, arg_3.b, arg_0.b)) % vec4<u32>(32u)), max(~(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a, -1i, arg_0.d, u_input.a), vec4<i32>(9061i, 1i, 2147483647i, global1[_wgslsmith_index_u32(1u, 16u)]))), -_wgslsmith_add_vec4_i32(vec4<i32>(11749i, arg_3.d, arg_3.d, arg_0.a) | vec4<i32>(arg_0.a, -5603i, 1i, -2147483647i), abs(vec4<i32>(arg_3.a, arg_3.d, u_input.a, global1[_wgslsmith_index_u32(arg_3.c.x, 16u)])))), !vec4<bool>(true, (2147483647i >> (0u % 32u)) <= arg_3.d, -31506i != arg_0.d, true));
    global1 = array<i32, 16>();
    global1 = array<i32, 16>();
    var var_1 = arg_0;
    global1 = array<i32, 16>();
    return countOneBits(~min(~firstTrailingBit(arg_1), _wgslsmith_add_u32(countOneBits(0u), _wgslsmith_clamp_u32(34450u, arg_1, 0u))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> bool {
    global0 = _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(max(arg_1.b, 0u), 0u) ^ (arg_2.c.x | ~arg_1.b), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, _wgslsmith_sub_u32(arg_2.b, 1u), 1u, firstTrailingBit(arg_1.b)), ~reverseBits(vec4<u32>(arg_1.b, arg_2.b, 72609u, 43196u)))), 20015u);
    var var_0 = abs(firstLeadingBit(vec4<i32>(arg_1.d, arg_2.a ^ ~1i, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.c.x >> (33014u % 32u), reverseBits(arg_1.b), 1709u), 16u)], 0i)));
    var var_1 = 4186i;
    var var_2 = Struct_1(-(~arg_1.a), ~arg_1.c.x, max(arg_1.c, arg_2.c), _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_div_i32(-62482i, arg_0), -1i, arg_0), var_0.zzy));
    var var_3 = firstLeadingBit(~(~var_2.c.xz) | arg_1.c.yy) | ~firstTrailingBit(~(vec2<u32>(39581u, 1u) >> (arg_1.c.yz % vec2<u32>(32u))));
    return true;
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: vec2<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, -270f, arg_3, -238f) + vec4<f32>(arg_3, arg_3, -923f, 959f)), vec4<f32>(_wgslsmith_div_f32(arg_3, 609f), arg_3, 276f, -1107f), select(vec4<bool>(arg_0, false, true, arg_1), vec4<bool>(false, true, arg_0, arg_1), true))))));
    global0 = 1u;
    global1 = array<i32, 16>();
    global1 = array<i32, 16>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-974f, _wgslsmith_div_f32(-3124f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3), 378f))), -344f, _wgslsmith_f_op_f32(arg_3 - arg_3)));
    return Struct_1(global1[_wgslsmith_index_u32(89324u, 16u)], ~min(~2350u >> (~4294967295u % 32u), ~48963u), countOneBits(vec3<u32>(_wgslsmith_mult_u32(0u, 46494u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 34383u), vec4<u32>(0u, 2479u, 54989u, 11402u)), 1u)) ^ ~(~vec3<u32>(1u, 1u, 1u)), 1i);
}

fn func_1() -> u32 {
    global1 = array<i32, 16>();
    let var_0 = func_5(func_4(-26709i, Struct_1(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), func_2(Struct_1(global1[_wgslsmith_index_u32(64802u, 16u)], 53942u, vec3<u32>(4294967295u, 0u, 71656u), u_input.a), 0u, vec3<f32>(-433f, -1109f, 1000f), Struct_1(global1[_wgslsmith_index_u32(3521u, 16u)], 34682u, vec3<u32>(65716u, 16849u, 1u), u_input.a)), vec3<u32>(4294967295u, 19866u, 30910u), 40662i), Struct_1(global1[_wgslsmith_index_u32(abs(1u), 16u)], 0u, ~vec3<u32>(38938u, 71284u, 70853u), -u_input.a), -1i) & (_wgslsmith_f_op_f32(-414f * _wgslsmith_f_op_f32(floor(-242f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-948f - -1000f))), true, firstLeadingBit(_wgslsmith_mod_vec2_i32(firstTrailingBit(~vec2<i32>(u_input.a, 0i)), countOneBits(vec2<i32>(-11407i, u_input.a) >> (vec2<u32>(4294967295u, 4126u) % vec2<u32>(32u))))), _wgslsmith_f_op_f32(ceil(-1393f)));
    let var_1 = Struct_2(func_5(all(vec4<bool>(true, true, true, true)), !(select(false, false, true) || true), max(~_wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_0.b, 16u)], -4164i), vec2<i32>(u_input.a, -2147483647i)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_0.b, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<i32>(-7465i, -2147483647i), vec2<i32>(-2147483647i, var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-744f))))), var_0, Struct_1(-(~(-1i >> (0u % 32u))), var_0.c.x, countOneBits(~vec3<u32>(28315u, var_0.b, var_0.b)), _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 16u)], u_input.a, -8830i)), vec4<i32>(_wgslsmith_clamp_i32(-61486i, 2147483647i, var_0.d), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1[_wgslsmith_index_u32(13670u, 16u)], -43079i), vec3<i32>(36374i, 2147483647i, var_0.a)), -1i, func_5(true, true, vec2<i32>(global1[_wgslsmith_index_u32(var_0.b, 16u)], var_0.a), -312f).d))));
    var var_2 = true;
    var_2 = false;
    return abs(var_1.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(func_1(), countOneBits(53277u)), select(vec2<u32>(4294967295u, 49231u), vec2<u32>(1u, 42465u), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), select(max(~vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(max(0u, 10445u), ~4294967295u, ~25180u), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), true)), u_input.a), func_5(!func_4(-13023i, func_5(false, true, vec2<i32>(1i, 2147483647i), 2098f), func_5(false, true, vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], -5155i), -1653f), -u_input.a), true, min(vec2<i32>(u_input.a, -global1[_wgslsmith_index_u32(17124u, 16u)]), _wgslsmith_clamp_vec2_i32(vec2<i32>(-33728i, u_input.a), abs(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], u_input.a)), vec2<i32>(-38312i, global1[_wgslsmith_index_u32(4294967295u, 16u)]))), _wgslsmith_f_op_f32(f32(-1f) * -1937f)), Struct_1(_wgslsmith_add_i32(-27790i, -3254i), func_5(false, true, vec2<i32>(global1[_wgslsmith_index_u32(27819u, 16u)] & global1[_wgslsmith_index_u32(4294967295u, 16u)], -4774i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-581f + -634f)))).b, _wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, 4294967295u, 4294967295u)), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(13757u, 0u, 11237u)), vec3<u32>(1u, 1u, 1u))), -1288i));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0.a.c.x ^ var_0.b.c.x), -var_0.a.a, -1453f);
}

