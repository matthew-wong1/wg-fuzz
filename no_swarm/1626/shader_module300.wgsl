struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(0u), Struct_1(4294967295u), Struct_1(1u), Struct_1(1310u), Struct_1(0u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(53603u), Struct_1(0u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(37887u), Struct_1(0u), Struct_1(4294967295u), Struct_1(17655u), Struct_1(0u), Struct_1(0u), Struct_1(4294967295u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.a, 10085u, 1u), 18u)];
    global1 = array<Struct_1, 18>();
    var var_1 = global0.x;
    var_1 = i32(-1i) * -18743i;
    var var_2 = _wgslsmith_mod_i32(global0.x, 6795i);
    return _wgslsmith_dot_vec2_u32(select(~vec2<u32>(4867u | u_input.a, ~var_0.a), ~vec2<u32>(1u, 87454u), select(!(!arg_0), vec2<bool>(true, false), true)), _wgslsmith_sub_vec2_u32(firstTrailingBit(~(vec2<u32>(11672u, var_0.a) << (vec2<u32>(1u, 0u) % vec2<u32>(32u)))), ~(~(~vec2<u32>(u_input.a, u_input.a)))));
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_1(~(~_wgslsmith_div_u32(22607u, 91567u) | (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 51262u)) | _wgslsmith_sub_u32(1u, u_input.a))));
    var var_1 = Struct_1(func_3(vec2<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true))), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), true)))));
    let var_2 = Struct_1(0u);
    var var_3 = var_2.a & 21393u;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-954f, 746f) + vec2<f32>(-1000f, 731f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2011f, 608f) * vec2<f32>(814f, -913f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1463f, -907f))), true))))) * vec2<f32>(1f, 1f));
    return ~_wgslsmith_sub_vec4_u32(~(vec4<u32>(u_input.a, var_1.a, var_0.a, 0u) ^ (vec4<u32>(4294967295u, 46427u, var_1.a, 13160u) & vec4<u32>(113572u, 0u, var_1.a, 878u))), ~reverseBits(select(vec4<u32>(u_input.a, u_input.a, var_1.a, var_0.a), vec4<u32>(0u, 0u, 9718u, u_input.a), vec4<bool>(false, true, false, true))));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    var var_0 = !(!(!select(select(vec4<bool>(false, arg_2, true, true), vec4<bool>(false, true, false, arg_0), arg_2), !vec4<bool>(true, false, true, arg_2), vec4<bool>(false, arg_0, true, arg_2))));
    let var_1 = _wgslsmith_f_op_f32(floor(-195f));
    let var_2 = 1008f;
    var var_3 = ~vec4<u32>(_wgslsmith_div_u32(~arg_1.x, 74888u), u_input.a, countOneBits(~(~934u)), _wgslsmith_add_u32(1u, u_input.a));
    var var_4 = select(arg_1.zy, ~vec2<u32>(~(u_input.a >> (arg_1.x % 32u)), 48068u), arg_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1247f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: i32) -> Struct_1 {
    global1 = array<Struct_1, 18>();
    global1 = array<Struct_1, 18>();
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -341f) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - arg_0.x)))), _wgslsmith_mod_vec4_u32((abs(vec4<u32>(u_input.a, 1u, 54571u, 1u)) | vec4<u32>(u_input.a, 999u, u_input.a, 23242u)) >> (vec4<u32>(u_input.a << (8749u % 32u), u_input.a, countOneBits(u_input.a), _wgslsmith_mult_u32(u_input.a, u_input.a)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~func_2(), _wgslsmith_div_vec4_u32(vec4<u32>(26121u, 54850u, u_input.a, 1u), vec4<u32>(14331u, u_input.a, u_input.a, 0u)) & (vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) << (vec4<u32>(u_input.a, 1u, 92148u, u_input.a) % vec4<u32>(32u))))), true));
    global1 = array<Struct_1, 18>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0, vec2<f32>(arg_1, arg_1)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0)))));
    return global1[_wgslsmith_index_u32(4294967295u, 18u)];
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> i32 {
    return select(firstLeadingBit(global0.x), ~(-9748i), any(vec2<bool>(true, true)) | !all(vec4<bool>(true, false, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(2147483647i, ~(~func_5(func_1(vec2<f32>(-339f, -746f), -964f, global0.x), _wgslsmith_f_op_f32(step(-993f, -889f)), global1[_wgslsmith_index_u32(u_input.a, 18u)])), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(firstTrailingBit(select(vec4<i32>(global0.x, global0.x, global0.x, 40046i), vec4<i32>(global0.x, -1i, global0.x, 18470i), vec4<bool>(true, false, true, false))), firstLeadingBit(vec4<i32>(-1i, -1i, global0.x, 67424i) << (vec4<u32>(115049u, 74395u, u_input.a, 1u) % vec4<u32>(32u)))), ((vec4<i32>(global0.x, 44373i, 324i, 22459i) & vec4<i32>(global0.x, -28720i, 1i, global0.x)) | countOneBits(vec4<i32>(-30556i, global0.x, global0.x, 0i))) & select(vec4<i32>(global0.x, -12609i, global0.x, global0.x) | vec4<i32>(-12452i, 53217i, global0.x, global0.x), ~vec4<i32>(global0.x, global0.x, 0i, global0.x), any(vec2<bool>(true, false)))), -firstLeadingBit(reverseBits(1i)) | _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global0.zw, vec2<i32>(2147483647i, global0.x)) >> ((vec2<u32>(u_input.a, 1u) >> (vec2<u32>(u_input.a, 69135u) % vec2<u32>(32u))) % vec2<u32>(32u)), (global0.xy << (vec2<u32>(u_input.a, 23308u) % vec2<u32>(32u))) << (vec2<u32>(39875u, 101699u) % vec2<u32>(32u))));
    let var_1 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), vec4<u32>(8967u, 39481u, u_input.a, 44769u)), ~1u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(53261u, u_input.a)) >> (((vec2<u32>(u_input.a, 1u) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))) ^ ~vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_clamp_vec3_i32(min(_wgslsmith_div_vec3_i32(var_0.xwx << (vec3<u32>(var_1.x, 50483u, var_1.x) % vec3<u32>(32u)), var_0.yzx), ~select(vec3<i32>(-29829i, 2147483647i, -1i), vec3<i32>(var_0.x, global0.x, global0.x), vec3<bool>(true, false, true))), ~var_0.zxw, _wgslsmith_clamp_vec3_i32(-var_0.yyy, ~(var_0.www >> (vec3<u32>(17282u, var_1.x, 34592u) % vec3<u32>(32u))), abs(var_0.xzz))) | abs(_wgslsmith_add_vec3_i32(var_0.zzz, vec3<i32>(1i, var_0.x, 17074i)));
    var var_3 = ~var_2.x;
    var var_4 = true;
    let var_5 = func_5(func_1(_wgslsmith_div_vec2_f32(vec2<f32>(-187f, _wgslsmith_f_op_f32(714f * -1620f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-448f, 551f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1003f - 840f)), 1971f), -1i << (1u % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1000f, 166f)), 315f)))), 226f), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-204f, 381f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(370f, 2224f) + vec2<f32>(-927f, 954f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1703f, 352f) - vec2<f32>(-332f, -1379f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1139f, -971f))), _wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -30981i, 1i), vec3<i32>(0i, -2147483647i, 8589i)) | 0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(61282i, var_2.x, 2147483647i, 1i), vec4<i32>(var_5, _wgslsmith_dot_vec3_i32(vec3<i32>(12808i, var_2.x, global0.x), var_0.zxw), -global0.x, ~41256i)), ~vec4<i32>(_wgslsmith_add_i32(0i, var_0.x), 1i, ~1i, i32(-1i) * -55686i)), _wgslsmith_add_vec2_u32(firstTrailingBit(firstTrailingBit(vec2<u32>(var_1.x, 4294967295u))), select(~vec2<u32>(1684u, u_input.a), vec2<u32>(4294967295u, u_input.a), any(vec2<bool>(false, true))) | ~(var_1 ^ vec2<u32>(var_1.x, var_1.x))), ~func_2(), countOneBits(vec4<i32>(var_5, -45870i, -(1i << (0u % 32u)), var_0.x)));
}

