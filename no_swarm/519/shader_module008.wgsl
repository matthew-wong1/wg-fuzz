struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(768f, 214f, 1437f, -1443f, 1236f, -1154f, 909f, -752f, -1653f, -753f, -580f, -1000f, -1000f, 1308f, -906f, 102f, 2129f, -804f, -1301f, -1189f);

var<private> global1: array<Struct_4, 32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    global0 = array<f32, 20>();
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(23745i, -1i, ~abs(1i), _wgslsmith_mult_i32(1i, -abs(-66431i))), ~(-(~min(vec4<i32>(6783i, 2147483647i, 0i, 4963i), vec4<i32>(19380i, -2147483647i, -35154i, 1169i)))));
    return arg_1.c;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_2) -> Struct_2 {
    global0 = array<f32, 20>();
    var var_0 = Struct_3(-vec4<i32>(arg_0.x, arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0.x, -2147483647i, -6094i) | vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 46832i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 72255i), vec4<i32>(-8729i, arg_0.x, -20944i, arg_0.x))), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-11101i, -8100i), arg_0.yz))), ((~11623u ^ _wgslsmith_add_u32(1u, arg_3.a.x)) < _wgslsmith_clamp_u32(0u, u_input.b, _wgslsmith_mult_u32(arg_1.c, arg_1.b))) | (_wgslsmith_f_op_f32(sign(-3209f)) < -438f), 82208u, _wgslsmith_dot_vec3_i32(~arg_0, ~abs(_wgslsmith_mod_vec3_i32(arg_0, vec3<i32>(-7964i, 0i, 22573i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1028f, 1920f))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x | arg_2.b.c, 1u, abs(arg_2.b.b)), 20u)], true))));
    var_0 = Struct_3(countOneBits(-vec4<i32>(arg_0.x, countOneBits(arg_0.x), 1i, ~var_0.d)), arg_2.d.a.x, func_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1282f, -315f, var_0.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, global0[_wgslsmith_index_u32(26860u, 20u)], 291f))) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.e, -179f, -217f), vec3<f32>(918f, var_0.e, -183f))))), arg_1, arg_1.a.x), _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_mod_i32(-(~arg_0.x), 16043i), countOneBits(firstTrailingBit(-var_0.d))), -555f);
    global0 = array<f32, 20>();
    var var_1 = Struct_1(vec4<bool>(var_0.b, abs(_wgslsmith_dot_vec2_u32(arg_3.a.zz, vec2<u32>(arg_3.a.x, 39207u))) != (select(33657u, var_0.c, false) & 20204u), true, all(vec2<bool>(arg_1.a.x, var_0.b)) | true), ~firstLeadingBit(_wgslsmith_div_u32(var_0.c, 23317u)), select(_wgslsmith_sub_u32(19349u, _wgslsmith_mod_u32(~u_input.a.x, abs(arg_1.c))), arg_3.a.x, var_0.b));
    return Struct_2(abs(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, arg_3.a.x, 58819u, u_input.a.x) & vec4<u32>(1u, 0u, 0u, 0u), countOneBits(u_input.a))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(~(0u >> ((arg_0 | arg_0) % 32u)) << (u_input.b % 32u), 20u)] <= _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 20u)], _wgslsmith_f_op_f32(f32(-1f) * -1239f)));
    let var_1 = _wgslsmith_div_u32(max(17187u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.x, abs(1u), _wgslsmith_sub_u32(arg_2.a.x, arg_0)), arg_2.a.wwz)), 43277u);
    var var_2 = u_input.a.x;
    var_2 = firstTrailingBit(~1u);
    let var_3 = Struct_4(firstLeadingBit(_wgslsmith_mult_u32(arg_0, 1u)), Struct_1(!select(!vec4<bool>(var_0, false, false, true), !vec4<bool>(var_0, var_0, var_0, false), select(vec4<bool>(false, true, false, var_0), vec4<bool>(var_0, true, var_0, false), true)), 56438u, (_wgslsmith_add_u32(var_1, 4294967295u) >> (30108u % 32u)) >> (firstTrailingBit(0u) % 32u)), ~vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 19709u, 24931u, var_1) & u_input.a, vec4<u32>(6046u, arg_0, 1u, arg_2.a.x)), 39108u), Struct_1(select(!vec4<bool>(true, var_0, false, true), !select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(true, var_0, false, false), vec4<bool>(var_0, false, true, var_0)), any(select(vec4<bool>(false, true, var_0, var_0), vec4<bool>(false, false, var_0, true), vec4<bool>(true, true, true, false)))), 1u, var_1));
    return !select(var_0, var_0, select(select(true, false, !var_3.b.a.x), any(!vec2<bool>(var_3.b.a.x, false)), all(!var_3.d.a.xwy)));
}

fn func_1(arg_0: bool) -> Struct_4 {
    var var_0 = vec3<u32>(99796u, ~min(~(13198u >> (u_input.a.x % 32u)), 0u), countOneBits(countOneBits(reverseBits(u_input.a.x))) ^ u_input.b);
    var_0 = select(vec3<u32>(_wgslsmith_sub_u32(countOneBits(u_input.a.x), ~36740u), reverseBits(~u_input.b), 61017u), ~_wgslsmith_add_vec3_u32(vec3<u32>(34995u, 1u, u_input.a.x), vec3<u32>(1u, 0u, var_0.x) << (u_input.a.xzw % vec3<u32>(32u))), select(!(!vec3<bool>(false, arg_0, arg_0)), vec3<bool>(arg_0, var_0.x > 33482u, true), func_4(_wgslsmith_div_u32(var_0.x, u_input.b), -14889i, func_2(vec3<i32>(1i, -2147483647i, 1i), Struct_1(vec4<bool>(false, false, true, false), u_input.b, var_0.x), global1[_wgslsmith_index_u32(4294967295u, 32u)], Struct_2(u_input.a))))) ^ vec3<u32>(18183u, 1u, firstTrailingBit(~u_input.b));
    return Struct_4(var_0.x, Struct_1(select(vec4<bool>(true, true, arg_0 || true, true), vec4<bool>(arg_0 && arg_0, arg_0, arg_0 | true, false), select(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, false)), !vec4<bool>(true, false, arg_0, arg_0), func_4(1u, 1i, Struct_2(vec4<u32>(35443u, var_0.x, u_input.a.x, u_input.b))))), countOneBits(4294967295u), ~u_input.a.x), func_2(vec3<i32>(1i, 1i, 1i), Struct_1(vec4<bool>(arg_0 == arg_0, var_0.x < u_input.b, arg_0 || arg_0, false), 18544u, firstLeadingBit(func_2(vec3<i32>(-17879i, 0i, 40915i), Struct_1(vec4<bool>(arg_0, true, false, arg_0), 0u, 36542u), global1[_wgslsmith_index_u32(0u, 32u)], Struct_2(u_input.a)).a.x)), global1[_wgslsmith_index_u32(1u, 32u)], Struct_2(_wgslsmith_mult_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.b, 4294967295u, 1u), u_input.a)))).a.xzz, Struct_1(vec4<bool>(any(vec2<bool>(arg_0, false)), arg_0 || false, false, arg_0), 47476u, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 20>();
    var var_0 = -select(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(0i, 1i, -49120i, 16053i), vec4<i32>(2147483647i, -6523i, -4704i, 32120i)), ~(vec4<i32>(-1i, 2147483647i, 1i, -32580i) >> (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), false);
    var var_1 = func_1(true);
    var var_2 = Struct_4(_wgslsmith_sub_u32(~(~90490u), ~func_2(var_0.yzz, var_1.d, func_1(false), Struct_2(vec4<u32>(var_1.a, var_1.b.b, u_input.b, u_input.b))).a.x), var_1.b, vec3<u32>(~(~abs(0u)), func_2(firstTrailingBit(vec3<i32>(-2147483647i, var_0.x, 4228i)), func_1(false).b, func_1(all(var_1.d.a.wzy)), Struct_2(func_2(var_0.xxx, Struct_1(var_1.d.a, var_1.a, 120181u), global1[_wgslsmith_index_u32(var_1.a, 32u)], Struct_2(u_input.a)).a)).a.x, 4294967295u), func_1(false).b);
    var var_3 = 5868u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(16574u, reverseBits(1u), min(~(var_2.c.x ^ 4294967295u), min(0u, _wgslsmith_clamp_u32(4294967295u, var_2.c.x, 1u))), ~u_input.a.x | func_1(var_1.d.c <= u_input.b).d.c), var_0.x);
}

