struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> u32 {
    global0 = u_input.a.x & max(-(arg_1.a.x >> (select(arg_0.x, 34093u, false) % 32u)), _wgslsmith_div_i32(0i, firstTrailingBit(min(-17482i, 50962i))));
    global0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, ~_wgslsmith_mult_i32(63163i, -arg_1.a.x)), -u_input.a.x, select(~1i, ~1i, select(all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), true, true)));
    let var_0 = Struct_1(vec3<i32>(-1i, 1i, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, -arg_1.a.x)), ~arg_0, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-887f * arg_1.c.x)) * 601f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(479f - -768f))), _wgslsmith_f_op_f32(select(arg_1.d.x, _wgslsmith_div_f32(237f, _wgslsmith_f_op_f32(min(arg_1.d.x, arg_1.e.x))), -1i > reverseBits(arg_1.a.x))), -204f), arg_1.d, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.d.x - _wgslsmith_f_op_f32(arg_1.d.x * -1000f)), -1949f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(arg_1.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_1.e)) * arg_1.c.zy)))));
    global0 = ~19220i;
    let var_1 = Struct_1(vec3<i32>(_wgslsmith_div_i32(-arg_1.a.x, -21457i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.a.x, arg_1.a.x), vec3<i32>(-1i, u_input.a.x, 1i))) << (~arg_1.b.x % 32u), select(~(u_input.a.x | var_0.a.x), -(var_0.a.x << (arg_0.x % 32u)), true)), min(abs(~firstTrailingBit(arg_1.b)), vec4<u32>(_wgslsmith_mod_u32(min(1u, 9210u), ~14955u), ~(u_input.b.x | 24985u), ~max(125245u, 0u), 0u)), var_0.c, arg_1.d, vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), -858f));
    return 0u;
}

fn func_2(arg_0: u32) -> vec4<u32> {
    var var_0 = Struct_1(countOneBits(~(vec3<i32>(-1i) * -u_input.a)), vec4<u32>(abs(27557u), func_3(~vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 44951u), Struct_1(vec3<i32>(u_input.a.x, 0i, -9485i), vec4<u32>(arg_0, 16091u, u_input.b.x, 0u), vec4<f32>(-1000f, -322f, -547f, -1000f), vec2<f32>(184f, -568f), vec2<f32>(-254f, -1779f))) & abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_0, arg_0, arg_0), vec4<u32>(arg_0, u_input.b.x, 0u, 9301u))), firstTrailingBit(_wgslsmith_sub_u32(~5200u, ~u_input.b.x)), firstTrailingBit(~countOneBits(arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-521f, -940f), vec2<f32>(240f, -122f), vec2<bool>(true, true))), _wgslsmith_div_vec2_f32(vec2<f32>(-532f, -121f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(933f, 1257f), vec2<f32>(744f, 1000f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(471f, -906f, false)) * 1396f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(382f, 281f))))) * _wgslsmith_div_vec2_f32(vec2<f32>(-424f, 1f), vec2<f32>(-304f, 1f))));
    let var_1 = true;
    var_0 = Struct_1(-vec3<i32>(-2147483647i, var_0.a.x, max(_wgslsmith_sub_i32(var_0.a.x, u_input.a.x), -70113i)), ~var_0.b, _wgslsmith_f_op_vec4_f32(-var_0.c), var_0.e, _wgslsmith_f_op_vec2_f32(abs(var_0.e)));
    var var_2 = max(~(select(firstLeadingBit(var_0.b.yyz), var_0.b.xxy << (var_0.b.xxz % vec3<u32>(32u)), vec3<bool>(true, true, true)) << (vec3<u32>(arg_0, ~41059u, firstTrailingBit(14592u)) % vec3<u32>(32u))), countOneBits(var_0.b.zxy));
    var_0 = Struct_1(abs(reverseBits(u_input.a)) << (~select(firstLeadingBit(var_0.b.yxz), var_0.b.yzx, var_1) % vec3<u32>(32u)), max(~vec4<u32>(23027u, 1u, var_2.x, u_input.b.x), vec4<u32>(0u, _wgslsmith_dot_vec3_u32(var_0.b.zzz, var_0.b.zyw), firstTrailingBit(4294967295u), ~99993u)) | select(~max(var_0.b, vec4<u32>(var_0.b.x, 0u, 46885u, 8012u)), var_0.b >> (_wgslsmith_add_vec4_u32(var_0.b, var_0.b) % vec4<u32>(32u)), vec4<bool>(var_1 != var_1, var_1, var_1, var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1300f, var_0.d.x, -638f, -987f), var_0.c))))), var_0.c.yx, var_0.d);
    return ~(~vec4<u32>(1u, ~(~var_0.b.x), _wgslsmith_mod_u32(79963u, var_2.x), 7408u));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = func_2(u_input.b.x);
    let var_1 = Struct_1(-vec3<i32>(u_input.a.x, reverseBits(arg_0) >> (~u_input.b.x % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -24691i, u_input.a.x, 65179i), vec4<i32>(-69028i, -2147483647i, -2147483647i, u_input.a.x)), ~vec4<i32>(u_input.a.x, u_input.a.x, arg_0, 0i))), ~vec4<u32>(var_0.x ^ 1u, 1u, 17978u, (7677u & var_0.x) >> (u_input.b.x % 32u)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(945f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -286f) * _wgslsmith_f_op_f32(-812f - -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_f32(select(-765f, _wgslsmith_f_op_f32(select(1363f, 316f, false)), true))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1062f))), 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -396f) * vec2<f32>(905f, 123f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(874f, 1926f) - vec2<f32>(-948f, 285f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(700f, -1109f) - vec2<f32>(-753f, -1174f))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(926f, 150f) + vec2<f32>(740f, -1000f))), vec2<f32>(1f, 1f), true))));
    let var_2 = abs(~var_0.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, var_1.d.x, var_1.e.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c.wzx + vec3<f32>(var_1.c.x, -252f, -439f)))) + var_1.c.wyx), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(var_1.c.wzz)), var_1.c.wyz, true))));
    let var_4 = Struct_1(-vec3<i32>(countOneBits(u_input.a.x), ~var_1.a.x, 44187i), ~(var_0 >> (max(var_0 >> (vec4<u32>(1u, var_0.x, 34366u, 29584u) % vec4<u32>(32u)), var_0) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(floor(var_1.c)), var_3.xy, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.x, var_3.x))), var_1.c.wz)) * var_1.e), _wgslsmith_div_vec2_f32(vec2<f32>(140f, _wgslsmith_f_op_f32(-var_1.e.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(var_1.e))))))));
    return false;
}

fn func_4(arg_0: bool) -> StorageBuffer {
    let var_0 = -u_input.a.yz;
    var var_1 = ~12328u;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(968f, 1000f) - _wgslsmith_f_op_f32(abs(-772f)))), _wgslsmith_div_f32(-1595f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-1372f + _wgslsmith_f_op_f32(step(1696f, -790f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(-826f)), _wgslsmith_f_op_f32(f32(-1f) * -506f), _wgslsmith_div_f32(-537f, -197f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(256f, -224f, -817f) + vec3<f32>(372f, -257f, 274f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-672f, 1411f, 2444f))))))), !vec3<bool>(!(!arg_0), true | arg_0, false)));
    let var_3 = vec3<bool>(arg_0 != false, u_input.b.x <= u_input.b.x, true);
    global0 = ~_wgslsmith_dot_vec3_i32(max(reverseBits(vec3<i32>(var_0.x, var_0.x, var_0.x)) | vec3<i32>(-13121i, var_0.x, var_0.x), ~vec3<i32>(59417i, u_input.a.x, 90438i)), ~(-u_input.a >> (~vec3<u32>(u_input.b.x, 20364u, u_input.b.x) % vec3<u32>(32u))));
    return StorageBuffer(u_input.b.x, _wgslsmith_div_u32(~u_input.b.x, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(abs(u_input.a.x)) != true);
}

