struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false));

var<private> global1: array<Struct_1, 14>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    var var_0 = true;
    var var_1 = global1[_wgslsmith_index_u32(~u_input.a.x, 14u)];
    global1 = array<Struct_1, 14>();
    var var_2 = 211f;
    let var_3 = u_input.c;
    return u_input.c;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = func_3(Struct_1(!any(vec2<bool>(true, true))), vec4<u32>(0u >> (_wgslsmith_sub_u32(arg_0.x >> (1u % 32u), u_input.d) % 32u), u_input.d << (~(arg_0.x | arg_0.x) % 32u), _wgslsmith_div_u32(~0u, ~arg_0.x), 1u));
    let var_1 = _wgslsmith_div_vec2_u32(reverseBits(countOneBits(vec2<u32>(59286u, 4294967295u))), u_input.a);
    var_0 = -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -77457i), reverseBits(vec2<i32>(-1789i, 1i))), u_input.b.zz);
    let var_2 = select(vec3<bool>(false, all(vec4<bool>(false, true, all(vec3<bool>(false, false, false)), true)), false), select(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, false), true), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), !any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)))));
    var_0 = ~abs(u_input.b.x);
    return global0[_wgslsmith_index_u32(50138u, 12u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_u32(arg_3, _wgslsmith_mod_vec4_u32(vec4<u32>(8130u, u_input.a.x, 1u, ~25810u), vec4<u32>(_wgslsmith_div_u32(u_input.d, ~1u), u_input.d >> ((42131u & arg_3.x) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, arg_3.x, 0u), arg_3), abs(select(arg_3.x, 35090u, false)))), ~(~arg_3));
    let var_1 = _wgslsmith_sub_vec2_u32(arg_3.xy, ~vec2<u32>(arg_3.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x, var_0.x, arg_3.x, 47250u), arg_3)) | vec2<u32>(68018u, 13546u));
    var var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(select(var_0.yzz, ~var_0.zxw, select(arg_1.a, true, true)), _wgslsmith_div_vec3_u32(~vec3<u32>(38131u, 1u, 3337u), vec3<u32>(u_input.a.x, 70133u, u_input.d)))) | _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_0, vec4<u32>(1u, var_1.x, arg_3.x, arg_3.x)), _wgslsmith_clamp_vec4_u32(arg_3, vec4<u32>(29478u, 1u, 527u, 4294967295u), vec4<u32>(u_input.d, var_0.x, 11025u, 24472u))), firstTrailingBit(127529u)), 12u)];
    let var_3 = func_2(~arg_3.xxz);
    var var_4 = _wgslsmith_sub_vec3_u32(arg_3.wwy & arg_3.zzw, firstTrailingBit(~vec3<u32>(~arg_3.x, _wgslsmith_add_u32(0u, u_input.a.x), reverseBits(var_0.x))));
    return func_2(arg_3.wxy);
}

fn func_1(arg_0: Struct_1) -> i32 {
    global0 = array<Struct_1, 12>();
    var var_0 = func_4(func_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.d), _wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.a.x, u_input.a.x, 54148u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), vec3<u32>(u_input.a.x, 0u, u_input.a.x)))), func_2(vec3<u32>(select(26740u, u_input.a.x, arg_0.a) >> (1u % 32u), firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, 6913u)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(129918u, 1u, u_input.d), u_input.d))), func_2(~_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(0u, 4294967295u, 1u)), vec3<u32>(72264u, 4294967295u, 0u), vec3<u32>(1u, u_input.a.x, 3831u))), ~(~(~vec4<u32>(u_input.a.x, 80500u, u_input.d, 0u) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.d, u_input.a.x, 7730u, 38513u)) % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(548f - 338f) + _wgslsmith_div_f32(-335f, 1283f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-329f + -1508f), 564f, true)))))));
    var_0 = Struct_1(true);
    let var_2 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(~u_input.d, select(4294967295u, u_input.a.x ^ u_input.a.x, false)), 32146u), 14u)], Struct_1(var_0.a), func_2(vec3<u32>(u_input.d, u_input.d, u_input.a.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(~1182u, 4294967295u, 0u, ~4294967295u), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, u_input.d, u_input.d, 2049u), vec4<u32>(0u, u_input.d, u_input.a.x, u_input.a.x))));
    return ~_wgslsmith_div_i32(countOneBits(_wgslsmith_mod_i32(1i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x))), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(u_input.a, (abs(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 0u))) << (reverseBits(vec2<u32>(1u, 21969u)) % vec2<u32>(32u))) >> ((u_input.a ^ vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, 6820u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.d)))) % vec2<u32>(32u)));
    let var_1 = min(firstTrailingBit(u_input.b), vec4<i32>(-u_input.c, -1i, ~u_input.b.x, abs(func_1(global0[_wgslsmith_index_u32(var_0.x, 12u)]))));
    let var_2 = var_1.xx << (var_0 % vec2<u32>(32u));
    var var_3 = true;
    let var_4 = vec3<u32>(var_0.x, var_0.x, var_0.x);
    let var_5 = false;
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(countOneBits(var_0.x), ~(~1u), ~firstLeadingBit(~4294967295u), ~23214u), vec2<u32>(~990u, 4294967295u), vec2<f32>(_wgslsmith_div_f32(717f, _wgslsmith_f_op_f32(157f + 1078f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1834f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1227f + 905f), -1064f))), var_1, ~max(select(vec2<u32>(1u, 4294967295u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(12753u, var_4.x)), true), u_input.a));
}

