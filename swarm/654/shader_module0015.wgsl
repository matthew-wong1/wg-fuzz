struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(27246u, 37433u, 17885u, 1u, 19411u, 1u, 52934u, 2440u, 13022u, 69802u, 28449u, 4294967295u);

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(987f, true, vec3<bool>(true, false, true), true, vec3<f32>(562f, -455f, 626f)), Struct_1(-616f, true, vec3<bool>(true, true, false), true, vec3<f32>(471f, -1612f, -170f)), Struct_1(-847f, false, vec3<bool>(false, false, false), false, vec3<f32>(-628f, 1229f, 165f)), Struct_1(-126f, true, vec3<bool>(false, false, true), false, vec3<f32>(789f, 275f, 267f)), Struct_1(1033f, true, vec3<bool>(true, true, true), false, vec3<f32>(524f, -112f, -821f)), Struct_1(1000f, false, vec3<bool>(true, false, true), true, vec3<f32>(-672f, -1215f, 792f)), Struct_1(718f, true, vec3<bool>(false, false, false), false, vec3<f32>(-924f, -1367f, 888f)), Struct_1(623f, true, vec3<bool>(false, true, false), true, vec3<f32>(100f, 894f, -2365f)), Struct_1(492f, true, vec3<bool>(true, true, false), false, vec3<f32>(-310f, 385f, 455f)), Struct_1(-1553f, true, vec3<bool>(true, false, true), true, vec3<f32>(-1567f, 915f, -1672f)), Struct_1(1565f, true, vec3<bool>(true, true, true), false, vec3<f32>(-818f, -1071f, -712f)), Struct_1(1704f, false, vec3<bool>(true, true, false), false, vec3<f32>(529f, -250f, 2133f)), Struct_1(744f, false, vec3<bool>(true, true, true), false, vec3<f32>(670f, -1678f, -1000f)), Struct_1(476f, true, vec3<bool>(true, true, false), true, vec3<f32>(-208f, 302f, -531f)), Struct_1(2060f, true, vec3<bool>(true, true, false), false, vec3<f32>(-2205f, 868f, -189f)), Struct_1(821f, true, vec3<bool>(false, true, true), false, vec3<f32>(1192f, -1736f, 584f)), Struct_1(-692f, false, vec3<bool>(true, false, false), false, vec3<f32>(984f, -1557f, 964f)), Struct_1(1000f, false, vec3<bool>(false, false, false), false, vec3<f32>(-507f, -838f, 2690f)), Struct_1(1230f, true, vec3<bool>(true, true, false), true, vec3<f32>(-837f, -724f, 855f)), Struct_1(-238f, false, vec3<bool>(false, false, false), true, vec3<f32>(1143f, -780f, 791f)), Struct_1(-101f, false, vec3<bool>(false, false, false), true, vec3<f32>(-441f, -903f, -564f)), Struct_1(-1098f, false, vec3<bool>(true, false, false), true, vec3<f32>(592f, 787f, 771f)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1166f, 1000f, _wgslsmith_div_f32(-404f, 239f)))));
    global0 = array<u32, 12>();
    var var_1 = var_0.xy;
    let var_2 = _wgslsmith_f_op_f32(round(var_1.x));
    return -vec3<i32>(-46918i, _wgslsmith_sub_i32(~_wgslsmith_mult_i32(0i, 0i), ~0i), _wgslsmith_clamp_i32(~(i32(-1i) * -2147483647i), _wgslsmith_mod_i32(15812i >> (0u % 32u), firstLeadingBit(62403i)), max(select(16354i, -25300i, true), 0i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> vec3<u32> {
    var var_0 = select(func_3(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, arg_1, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], arg_1, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(2539u, 36284u, arg_1, 12235u), vec4<u32>(1u, u_input.a, 0u, 1u), vec4<u32>(14446u, global0[_wgslsmith_index_u32(104365u, 12u)], u_input.a, 6865u)), vec4<u32>(0u, 4294967295u, u_input.a, global0[_wgslsmith_index_u32(0u, 12u)]))), vec3<i32>(2147483647i, 1i, 60721i) >> (vec3<u32>(5837u, arg_1, arg_1) % vec3<u32>(32u)), select(select(vec3<bool>(true, select(false, false, false), any(vec2<bool>(true, true))), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), (0u < global0[_wgslsmith_index_u32(u_input.a, 12u)]) || true), vec3<bool>(!any(vec2<bool>(false, false)), !(arg_0.x >= 1396f), true), 4708u == ((4294967295u << (u_input.a % 32u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u)))));
    let var_1 = Struct_1(451f, (any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)) || false) && all(vec4<bool>(false, true, true, true)), vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 12u)] != u_input.a, true, any(vec2<bool>(true, false)))), false, all(vec2<bool>(true, true)) & ((var_0.x ^ 23511i) > -1i)), true && !all(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-arg_0));
    var var_2 = _wgslsmith_f_op_f32(select(983f, _wgslsmith_f_op_f32(-169f * _wgslsmith_f_op_f32(round(1022f))), var_1.d));
    let var_3 = _wgslsmith_mult_i32(0i, var_0.x);
    var var_4 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(~var_0.x, firstTrailingBit(var_0.x)), ~abs(-1i)) | vec2<i32>(reverseBits(96567i), 1i >> ((0u >> (arg_1 % 32u)) % 32u)), ~_wgslsmith_add_vec2_i32(var_0.yy, func_3(vec4<u32>(arg_1, 0u, 8896u, global0[_wgslsmith_index_u32(u_input.a, 12u)]) & vec4<u32>(24498u, u_input.a, 1u, 50072u)).xx));
    return vec3<u32>(~u_input.a >> (1u % 32u), ~(~17749u), 0u);
}

fn func_1(arg_0: i32, arg_1: u32) -> u32 {
    global0 = array<u32, 12>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1, 12u)], 12u)], arg_1, 0u), vec4<u32>(1u, u_input.a, 1u, 60063u) ^ abs(vec4<u32>(0u, 39311u, 4294967295u, global0[_wgslsmith_index_u32(49515u, 12u)]))), vec4<u32>(4294967295u, u_input.a, u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, arg_1, 29611u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, 12986u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)]), vec4<u32>(arg_1, 4294967295u, 0u, u_input.a))))) >> (23463u % 32u), 22u)];
    let var_1 = var_0.c.yy;
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    return min(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(arg_1 & 37852u), abs(~arg_1), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7242u, 12u)], 12u)] ^ arg_1, 1u << (1u % 32u))), func_2(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), var_0.a, _wgslsmith_f_op_f32(round(685f))), abs(arg_1) & (4294967295u & u_input.a))), 12u)], arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(19271u, u_input.a), vec2<u32>(33619u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 12u)], 12u)]))), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(min(global0[_wgslsmith_index_u32(1u, 12u)], u_input.a), 1u), ~(~15458u)), _wgslsmith_clamp_u32(0u, func_1(-35828i, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, 0u), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(49654u, 12u)], 0u, u_input.a))), ~649u)));
    global0 = array<u32, 12>();
    var var_1 = ~u_input.a;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(208f, 966f, -846f)), var_0), _wgslsmith_mult_vec3_u32(firstLeadingBit(~max(vec3<u32>(50878u, 1u, 9445u), vec3<u32>(var_0, var_0, 3326u))), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, var_0, global0[_wgslsmith_index_u32(var_0, 12u)]), ~vec3<u32>(28101u, u_input.a, u_input.a)))), 22u)];
    var_1 = ~(_wgslsmith_mult_u32(countOneBits(_wgslsmith_add_u32(55598u, u_input.a)), 4294967295u) << (u_input.a % 32u));
    var var_3 = firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a, 12u)]);
    let var_4 = _wgslsmith_dot_vec3_i32(func_3(vec4<u32>(3925u, select(global0[_wgslsmith_index_u32(var_0, 12u)], 0u, var_2.b), ~1u, 41275u)), vec3<i32>(~_wgslsmith_mod_i32(2147483647i, -2147483647i), -22730i, -56599i)) & 1i;
    let var_5 = 66360i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, var_2.e.x)), var_2.e.x)) * _wgslsmith_f_op_vec3_f32(ceil(var_2.e))), select(max(vec2<u32>(min(u_input.a, 4294967295u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(9756u, 12u)], 5242u)), ~(vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 12u)]) >> (vec2<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 12u)]) % vec2<u32>(32u)))), vec2<u32>(0u, ~24524u), vec2<bool>(true, var_2.b)), firstTrailingBit(-_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_5, var_5), vec2<i32>(13190i, var_5), vec2<i32>(-2147483647i, var_4)), max(vec2<i32>(1i, var_5), vec2<i32>(-5045i, 24225i)))));
}

