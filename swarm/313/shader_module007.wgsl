struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(0i), Struct_2(-9830i), Struct_2(-1i), Struct_2(-7692i), Struct_2(i32(-2147483648)), Struct_2(-5582i), Struct_2(1i), Struct_2(-1i), Struct_2(1i), Struct_2(2147483647i), Struct_2(-58903i), Struct_2(0i), Struct_2(1i));

var<private> global1: array<bool, 31>;

var<private> global2: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_2(10566i)), Struct_3(Struct_2(2147483647i)), Struct_3(Struct_2(-8081i)), Struct_3(Struct_2(0i)), Struct_3(Struct_2(-16882i)), Struct_3(Struct_2(10334i)), Struct_3(Struct_2(11740i)), Struct_3(Struct_2(0i)), Struct_3(Struct_2(-1i)), Struct_3(Struct_2(-48166i)), Struct_3(Struct_2(-19532i)), Struct_3(Struct_2(49680i)));

var<private> global3: array<i32, 20>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 13>();
    var var_0 = !(!(global1[_wgslsmith_index_u32(14707u, 31u)] & global1[_wgslsmith_index_u32(countOneBits(4294967295u), 31u)]));
    let var_1 = vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(~14655u, ~(~42247u))), ~1u, _wgslsmith_add_u32(~firstTrailingBit(~4294967295u), max(~abs(68572u), countOneBits(reverseBits(8948u)))), _wgslsmith_dot_vec2_u32(vec2<u32>(~(~81563u), 1u), vec2<u32>(1u, 0u)));
    global0 = array<Struct_2, 13>();
    var var_2 = _wgslsmith_mod_i32(-2478i, global3[_wgslsmith_index_u32(1u, 20u)] & firstLeadingBit(firstLeadingBit(reverseBits(0i))));
    return firstLeadingBit(_wgslsmith_clamp_u32(var_1.x, 10863u ^ reverseBits(var_1.x), 0u));
}

fn func_2(arg_0: u32) -> vec3<i32> {
    global3 = array<i32, 20>();
    global2 = array<Struct_3, 12>();
    var var_0 = Struct_1(vec3<u32>(firstTrailingBit(_wgslsmith_div_u32(21484u, 4294967295u)) << (0u % 32u), 67451u, _wgslsmith_mod_u32(func_3(), ~(arg_0 >> (arg_0 % 32u)))));
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32((firstTrailingBit(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], -29359i, global3[_wgslsmith_index_u32(var_0.a.x, 20u)], -16114i)) << (~vec4<u32>(4294967295u, arg_0, 64136u, 4294967295u) % vec4<u32>(32u))) << (vec4<u32>(16478u, min(arg_0, 4294967295u), var_0.a.x | 0u, ~arg_0) % vec4<u32>(32u)), ~vec4<i32>(global3[_wgslsmith_index_u32(0u, 20u)] << (var_0.a.x % 32u), -u_input.a, u_input.a, global3[_wgslsmith_index_u32(var_0.a.x, 20u)])), ~vec4<i32>(countOneBits(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(36182u, 20u)], -11282i)), 13354i, global3[_wgslsmith_index_u32(70377u, 20u)] ^ -1i, 1i));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1226f - 489f), _wgslsmith_f_op_f32(sign(-1705f)), _wgslsmith_f_op_f32(-1410f - -1034f), -1324f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1814f, 767f, 1359f, 1000f), vec4<f32>(-1732f, 1068f, 147f, 516f))), vec4<f32>(-117f, -275f, 703f, -2945f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-106f, -1163f, -296f, 1420f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(396f, -1291f, -464f, 958f) + vec4<f32>(-1000f, 2224f, 250f, -564f))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1795f, 997f, 1933f, 1000f) + vec4<f32>(1520f, 203f, -2299f, -636f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(405f, 732f, -1206f, 1099f) * vec4<f32>(-1588f, -429f, 1161f, -118f)), !vec4<bool>(global1[_wgslsmith_index_u32(var_0.a.x, 31u)], true, false, false)))))));
    return vec3<i32>(u_input.a, global3[_wgslsmith_index_u32(~var_0.a.x, 20u)], ~abs(global3[_wgslsmith_index_u32(40217u, 20u)]) & (6877i & u_input.a)) ^ vec3<i32>(u_input.a, global3[_wgslsmith_index_u32(~select(var_0.a.x, 33441u, false) & _wgslsmith_clamp_u32(arg_0 << (116714u % 32u), _wgslsmith_mod_u32(var_0.a.x, 1u), 85249u | var_0.a.x), 20u)], ~(-7627i));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<u32>) -> Struct_2 {
    global0 = array<Struct_2, 13>();
    let var_0 = Struct_1(~vec3<u32>(arg_2.x, ~4294967295u, 1u));
    var var_1 = (var_0.a.xz | countOneBits(vec2<u32>(0u | arg_2.x, reverseBits(arg_2.x)))) << (var_0.a.xy % vec2<u32>(32u));
    global3 = array<i32, 20>();
    let var_2 = global2[_wgslsmith_index_u32(abs(arg_2.x), 12u)];
    return var_2.a;
}

fn func_1(arg_0: u32) -> vec2<bool> {
    let var_0 = Struct_3(func_4(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a & u_input.a, -1i ^ u_input.a, -1i), func_2(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -589f), abs(~(~vec3<u32>(arg_0, arg_0, 19246u)))));
    var var_1 = arg_0;
    let var_2 = vec2<bool>(any(!(!vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 31u)], true))), false);
    var_1 = 0u;
    global0 = array<Struct_2, 13>();
    return vec2<bool>(all(!(!select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(global1[_wgslsmith_index_u32(7337u, 31u)], true, var_2.x), vec3<bool>(true, false, true)))), any(vec4<bool>(true, true, any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(arg_0, 31u)], true)), false)) && any(!(!vec3<bool>(var_2.x, var_2.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~countOneBits(1u), _wgslsmith_add_u32(1u, 1u), 1u, ~69441u);
    let var_1 = select(vec2<bool>(!global1[_wgslsmith_index_u32(49712u, 31u)], any(select(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(var_0.x, 31u)], global1[_wgslsmith_index_u32(51007u, 31u)], global1[_wgslsmith_index_u32(89u, 31u)]), vec4<bool>(global1[_wgslsmith_index_u32(75699u, 31u)], false, true, false), false), !vec4<bool>(true, global1[_wgslsmith_index_u32(82807u, 31u)], global1[_wgslsmith_index_u32(var_0.x, 31u)], false), false))), select(select(!(!vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 31u)], global1[_wgslsmith_index_u32(1u, 31u)])), func_1(0u), vec2<bool>(true, global1[_wgslsmith_index_u32(~85434u, 31u)])), !select(func_1(var_0.x), select(vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 31u)], global1[_wgslsmith_index_u32(24167u, 31u)]), vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(var_0.x, 31u)])), global1[_wgslsmith_index_u32(0u, 31u)]), true), global1[_wgslsmith_index_u32(var_0.x, 31u)]);
    var var_2 = 0u;
    global2 = array<Struct_3, 12>();
    let var_3 = Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.zxy, var_0.yyz), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(69504u, var_0.x, 38737u), vec3<u32>(var_0.x, 0u, 44132u)), var_0.xyz)));
    let var_4 = global0[_wgslsmith_index_u32(1767u, 13u)];
    global3 = array<i32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(u_input.a, u_input.a ^ 1i, 2147483647i), ~_wgslsmith_sub_i32(-(0i ^ var_4.a), 15027i));
}

