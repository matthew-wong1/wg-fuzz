struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<f32>(-651f, -277f), vec2<u32>(1u, 50735u), vec3<f32>(335f, 1850f, -1000f), vec2<i32>(2147483647i, 59725i), false), Struct_1(vec2<f32>(-361f, -954f), vec2<u32>(1u, 4294967295u), vec3<f32>(-1458f, -447f, -319f), vec2<i32>(-20917i, 2147483647i), false), Struct_1(vec2<f32>(-203f, -812f), vec2<u32>(63364u, 4294967295u), vec3<f32>(-934f, -325f, -289f), vec2<i32>(0i, -31289i), false), Struct_1(vec2<f32>(-365f, -1378f), vec2<u32>(1u, 4294967295u), vec3<f32>(-105f, -2276f, -858f), vec2<i32>(525i, -19347i), false), Struct_1(vec2<f32>(211f, -146f), vec2<u32>(1u, 0u), vec3<f32>(1000f, 186f, -1174f), vec2<i32>(1i, 2147483647i), false), Struct_1(vec2<f32>(-1426f, 971f), vec2<u32>(46718u, 45859u), vec3<f32>(-614f, 1589f, -543f), vec2<i32>(-8766i, 1i), true), Struct_1(vec2<f32>(785f, 2766f), vec2<u32>(0u, 1u), vec3<f32>(-663f, -1507f, -1172f), vec2<i32>(-1855i, -23466i), true));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(arg_0.a, vec2<u32>(arg_0.b.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0.b.x, 9564u, 43654u), 33823u), ~arg_0.b.x, ~_wgslsmith_add_u32(arg_0.b.x, arg_0.b.x))), _wgslsmith_f_op_vec3_f32(exp2(arg_0.c)), firstLeadingBit(u_input.a), any(!select(vec2<bool>(true, true), !vec2<bool>(arg_0.e, true), false)));
    var var_1 = _wgslsmith_mult_u32(~(countOneBits(_wgslsmith_dot_vec2_u32(arg_0.b, vec2<u32>(arg_0.b.x, 0u))) ^ ~var_0.b.x), var_0.b.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(417f - var_0.c.x)) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.c.x, var_0.c.x), var_0.c.xy))), firstTrailingBit(~vec2<u32>(1u, ~var_0.b.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.c * vec3<f32>(_wgslsmith_f_op_f32(878f - -393f), _wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(sign(arg_0.c.x)))), var_0.c, arg_0.e)), _wgslsmith_div_vec2_i32(var_0.d, -var_0.d), true || var_0.e);
    let var_3 = -_wgslsmith_add_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d.x, 24902i, var_0.d.x), _wgslsmith_add_vec3_i32(vec3<i32>(var_2.d.x, -70785i, -1i), vec3<i32>(0i, 1i, arg_0.d.x)))), vec3<i32>(_wgslsmith_clamp_i32(-arg_0.d.x, 1i, var_2.d.x ^ 46674i), -15982i, -15863i));
    let var_4 = countOneBits(abs(~(arg_0.d.x << (4218u % 32u))));
    return var_0.e;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 7u)];
    let var_1 = var_0.b.x;
    let var_2 = select(vec3<bool>(var_0.e, true, func_3(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 7u)]) | false), vec3<bool>(var_0.e, true, false), !(!select(select(vec3<bool>(false, true, var_0.e), vec3<bool>(var_0.e, var_0.e, var_0.e), var_0.e), !vec3<bool>(true, var_0.e, var_0.e), var_0.b.x != 7181u)));
    let var_3 = !var_2.yx;
    global0 = array<Struct_1, 7>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.c.xy), ~abs(_wgslsmith_div_vec2_u32(~var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)), ~vec2<i32>(u_input.b, var_0.d.x), !all(!var_2.zz));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1018f, arg_1.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x * 255f) + _wgslsmith_f_op_f32(-281f * -1000f)))), 360f));
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -998f) != arg_1.a.x, false, func_2(arg_1.c.x).e);
    var var_2 = global0[_wgslsmith_index_u32(30899u, 7u)];
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.x, 261f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -469f) * 1476f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(107f)), arg_1.a.x), _wgslsmith_f_op_f32(abs(arg_1.c.x)))));
    var var_3 = var_2.b.x;
    return vec2<u32>(var_2.b.x, ~arg_1.b.x);
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = Struct_1(arg_0.a, ~func_4(-vec4<i32>(0i, u_input.b, 2147483647i, 6597i) << (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.b.x, 101307u, 8604u), vec4<u32>(arg_0.b.x, arg_0.b.x, 12631u, arg_0.b.x)) % vec4<u32>(32u)), func_2(-382f), -30101i), vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_f_op_f32(-553f - 529f))), -701f), u_input.a << (countOneBits(~vec2<u32>(arg_0.b.x, 16126u)) % vec2<u32>(32u)), false);
    global0 = array<Struct_1, 7>();
    let var_1 = func_2(751f);
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -200f))));
    return _wgslsmith_div_vec2_u32(~arg_0.b, var_0.b | var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1522f), 1f), _wgslsmith_sub_vec2_u32(func_1(global0[_wgslsmith_index_u32(min(4294967295u, 8734u), 7u)]), select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(43326u, 4294967295u), false) >> (firstTrailingBit(vec2<u32>(0u, 0u)) % vec2<u32>(32u))) >> (vec2<u32>(1u, select(firstTrailingBit(0u), select(1u, 22242u, true), true)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1660f, -686f, 536f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-168f, -1436f, 1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-401f, 1085f, 1395f))))), vec2<i32>(u_input.a.x, u_input.a.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_0.c + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(step(-367f, 1334f)), _wgslsmith_div_f32(425f, 2170f)), vec3<f32>(_wgslsmith_div_f32(525f, var_0.a.x), _wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)), 1046f)))), select(~max(vec4<u32>(41449u, var_0.b.x, 56107u, 76064u), vec4<u32>(4294967295u, 0u, 17683u, 7385u)), vec4<u32>(~89833u, ~var_0.b.x, 56619u, ~68323u), select(vec4<bool>(var_0.e, true, false, true), !vec4<bool>(var_0.e, true, false, true), var_0.e && true)) ^ vec4<u32>(var_0.b.x, min(81420u, 11835u), 23544u, 15176u));
}

