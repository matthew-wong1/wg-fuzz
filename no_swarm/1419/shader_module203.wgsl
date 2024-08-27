struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
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

var<private> global0: array<vec3<bool>, 10>;

var<private> global1: Struct_1;

var<private> global2: vec3<u32> = vec3<u32>(91083u, 12413u, 6850u);

var<private> global3: array<Struct_1, 22>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec4<u32> {
    var var_0 = global3[_wgslsmith_index_u32(global2.x, 22u)];
    global1 = Struct_1(!any(vec4<bool>(true, true, true, true)));
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(1u, ~u_input.c.x), u_input.b >> (_wgslsmith_div_u32(_wgslsmith_mod_u32(322u, 29780u), _wgslsmith_add_u32(0u, global2.x)) % 32u)) >> (~abs(reverseBits(u_input.c.wz)) % vec2<u32>(32u));
    let var_2 = global3[_wgslsmith_index_u32(4294967295u, 22u)];
    let var_3 = Struct_1(true);
    return ~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(27879u, global2.x)), vec2<u32>(global2.x, 7141u)), u_input.c.x, 0u, ~16356u), _wgslsmith_div_vec4_u32(vec4<u32>(~61977u, ~1u, u_input.c.x >> (0u % 32u), ~33501u), ~(~vec4<u32>(40033u, var_1.x, 1u, 13760u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32, arg_3: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1724f, -1348f, arg_1.x) - vec3<f32>(arg_1.x, 1215f, 801f))))))));
    var var_1 = Struct_1(true);
    var var_2 = !global1.a;
    let var_3 = _wgslsmith_f_op_f32(floor(arg_1.x));
    return var_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = (vec4<i32>(~min(-35291i, 17973i), u_input.a, u_input.d, -(~u_input.d)) >> (u_input.c % vec4<u32>(32u))) & _wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.d, -1328i, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -54670i, u_input.d, u_input.d), vec4<i32>(u_input.d, u_input.a, 74885i, u_input.a))), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.a, u_input.d), vec4<i32>(u_input.a, u_input.d, u_input.d, 2147483647i)) | ~vec4<i32>(35805i, u_input.a, u_input.d, u_input.a), firstLeadingBit(-vec4<i32>(u_input.a, 84595i, u_input.a, u_input.a))));
    global3 = array<Struct_1, 22>();
    let var_1 = Struct_1(arg_3.a);
    global0 = array<vec3<bool>, 10>();
    var var_2 = Struct_1(false);
    return ~global2.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(firstTrailingBit(1u), _wgslsmith_add_u32(52367u, _wgslsmith_mod_u32(0u, arg_0))), 4294967295u, global2.x);
    var var_1 = u_input.d | u_input.a;
    let var_2 = vec4<u32>(~arg_0 & ~(~_wgslsmith_mod_u32(31870u, 82388u)), 4294967295u, _wgslsmith_div_u32(func_5(Struct_1(!global1.a), func_4(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, 31669u), 22u)], vec4<f32>(520f, -929f, 178f, 236f), 1i, func_3()), global3[_wgslsmith_index_u32(1u, 22u)], global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~arg_0, reverseBits(var_0.x), ~4294967295u), 22u)]), abs(_wgslsmith_add_u32(var_0.x, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(34500u, 37838u, 1u, arg_0))))), func_3().x);
    let var_3 = global3[_wgslsmith_index_u32(~418u, 22u)];
    global2 = var_0;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(696f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-732f, 1133f)), _wgslsmith_f_op_f32(ceil(102f))))) <= -189f);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> i32 {
    var var_0 = arg_0.a;
    var var_1 = ~vec2<u32>(abs(select(64362u, u_input.b, false)), global2.x) & abs(select(_wgslsmith_mod_vec2_u32(global2.yx, vec2<u32>(39064u, global2.x)), u_input.c.xz, false));
    let var_2 = Struct_1(any(!select(!vec2<bool>(arg_0.a, arg_0.a), select(vec2<bool>(true, arg_0.a), vec2<bool>(true, true), vec2<bool>(true, arg_0.a)), arg_0.a & true)));
    let var_3 = countOneBits(-2147483647i);
    var var_4 = abs(_wgslsmith_add_u32(u_input.b, 111937u) ^ var_1.x);
    return -36284i;
}

fn func_1() -> f32 {
    let var_0 = global1.a;
    global2 = vec3<u32>(global2.x, ~max(global2.x ^ ~u_input.c.x, 64890u), ~global2.x);
    let var_1 = global2.x;
    let var_2 = _wgslsmith_mod_i32(func_6(func_2(~(u_input.c.x >> (4294967295u % 32u))), countOneBits(vec4<i32>(-50069i, 1i, u_input.d, u_input.a) << (u_input.c % vec4<u32>(32u))) & -(~vec4<i32>(u_input.d, u_input.a, u_input.d, u_input.a)), 0i), _wgslsmith_dot_vec3_i32(reverseBits(~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.d, u_input.a), vec3<i32>(u_input.a, u_input.a, 0i))), vec3<i32>(u_input.d, firstLeadingBit(~0i), 2147483647i)));
    var var_3 = -reverseBits(-2147483647i);
    return 1180f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(66134u, 1u, 18773u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 13774u), vec3<u32>(global2.x, global2.x, 1u))));
    let var_1 = _wgslsmith_add_i32(min(23953i, -(-12206i << (global2.x % 32u)) | (-u_input.a | -1i)), -_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 1i, 0i), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 33769i, -1i), vec3<i32>(u_input.d, u_input.d, -40331i))), (vec3<i32>(-44293i, -55943i, u_input.a) >> (vec3<u32>(global2.x, global2.x, global2.x) % vec3<u32>(32u))) >> ((vec3<u32>(4294967295u, 0u, u_input.b) | vec3<u32>(57592u, 47824u, 26291u)) % vec3<u32>(32u))));
    global2 = u_input.c.zyw;
    let var_2 = Struct_1(0u <= (((19092u | var_0.x) >> (_wgslsmith_mod_u32(u_input.b, global2.x) % 32u)) >> (u_input.c.x % 32u)));
    global0 = array<vec3<bool>, 10>();
    let var_3 = global3[_wgslsmith_index_u32(global2.x, 22u)];
    global1 = var_2;
    let var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1213f, -784f, 121f, -574f))))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2274f - 794f), 166f), 233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(abs(1f))))));
    global2 = firstLeadingBit(vec3<u32>(u_input.c.x, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.b), vec2<u32>(u_input.c.x, u_input.b))), _wgslsmith_dot_vec4_u32(reverseBits(u_input.c), u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(-924f);
}

