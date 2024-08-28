struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, 38699i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>) -> u32 {
    return arg_0.a.x & ~(_wgslsmith_add_u32(1u, 12222u & arg_0.a.x) ^ arg_0.a.x);
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    global0 = vec2<i32>(reverseBits(~(i32(-1i) * -global0.x)), countOneBits(~2147483647i));
    var var_0 = Struct_4(Struct_3(vec2<u32>(min(39393u, func_3(Struct_3(vec2<u32>(0u, 4294967295u)), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), ~1u)), Struct_1(vec3<u32>(1u, 1u, 1u), _wgslsmith_sub_u32(~4294967295u, firstTrailingBit(~45188u)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-20771i, -2147483647i, 62222i) & -vec3<i32>(global0.x, 0i, global0.x), _wgslsmith_sub_vec3_i32(~vec3<i32>(global0.x, 0i, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(-21045i, 18110i, global0.x), vec3<i32>(global0.x, u_input.a, global0.x))), ~vec3<i32>(-1i, u_input.a, -53486i)), u_input.a), !arg_0);
    var_0 = Struct_4(Struct_3(var_0.b.a.zz), Struct_1(~vec3<u32>(_wgslsmith_clamp_u32(48567u, var_0.a.a.x, var_0.a.a.x), 0u, var_0.b.a.x), ~_wgslsmith_sub_u32(select(var_0.a.a.x, 1u, var_0.c.x), 92878u), vec3<i32>(firstTrailingBit(select(-1i, u_input.a, var_0.c.x)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-30889i, var_0.b.d, u_input.a, u_input.a), -vec4<i32>(global0.x, u_input.a, -53485i, var_0.b.d)), global0.x), ~(-2147483647i)), !select(vec4<bool>(!arg_0.x, var_0.c.x, false, select(var_0.c.x, var_0.c.x, true)), vec4<bool>(any(arg_0), true, false, true), false));
    var var_1 = Struct_1(~(~abs(vec3<u32>(var_0.b.b, 26970u, 34156u))), 47409u, ~(-(~var_0.b.c)), -5991i);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1708f) + _wgslsmith_div_f32(-166f, -678f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1330f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1483f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2501f * 189f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(504f, -596f, 884f, -1920f) * vec4<f32>(-366f, 1000f, 146f, -470f)), vec4<f32>(265f, -1423f, 315f, -108f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1742f, 1721f, -312f, 974f) + vec4<f32>(-856f, -1863f, 280f, -1237f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-566f, 606f, 1020f, -883f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(887f, -1905f, -1215f, 104f) - vec4<f32>(819f, 1428f, 604f, 890f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1189f, -873f, 1000f, 1650f)))) * vec4<f32>(_wgslsmith_f_op_f32(380f * -521f), _wgslsmith_f_op_f32(-486f + 104f), _wgslsmith_f_op_f32(sign(117f)), _wgslsmith_f_op_f32(select(-1647f, 1075f, true)))) * vec4<f32>(2025f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-454f - -106f)), -2513f)));
    return Struct_4(var_0.a, Struct_1(max(countOneBits(vec3<u32>(var_0.a.a.x, 5450u, var_1.a.x)), var_0.b.a & var_1.a), firstTrailingBit(var_1.b), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(var_0.b.c.x, var_1.d), 42909i), -1i, reverseBits(1i ^ global0.x)), 6790i), !arg_0);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: f32, arg_3: Struct_4) -> Struct_1 {
    let var_0 = arg_3.c.yxz;
    var var_1 = Struct_4(arg_3.a, Struct_1(vec3<u32>(_wgslsmith_div_u32(arg_3.b.a.x << (arg_3.a.a.x % 32u), 4294967295u), 0u, 35950u), _wgslsmith_mod_u32(select(4294967295u, _wgslsmith_add_u32(arg_3.a.a.x, arg_1.a.a.x), select(arg_1.c.x, var_0.x, false)), ~24074u), vec3<i32>((global0.x ^ global0.x) ^ ~u_input.a, arg_1.b.d, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-13394i, 2147483647i, 1i, 1i), vec4<i32>(-1i, u_input.a, 43385i, 0i)), abs(vec4<i32>(2147483647i, -16279i, arg_3.b.d, arg_3.b.d)))), arg_1.b.d), !vec4<bool>(select(false, !arg_1.c.x, !var_0.x), false, any(arg_3.c.zw), !var_0.x && (var_0.x != false)));
    var var_2 = var_1.b.c.zz;
    var var_3 = Struct_4(Struct_3(~vec2<u32>(_wgslsmith_mult_u32(110676u, arg_3.b.b), firstLeadingBit(83984u))), arg_3.b, arg_1.c);
    var var_4 = Struct_2(1169f, var_3.b, func_2(arg_3.c).b, _wgslsmith_dot_vec4_u32(abs(~firstLeadingBit(vec4<u32>(var_1.b.a.x, var_3.a.a.x, var_3.b.a.x, 8638u))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.a.a.x, arg_1.b.a.x, arg_1.a.a.x, arg_3.b.b), vec4<u32>(arg_1.a.a.x, 3525u, 1u, 22723u)), vec4<u32>(4294967295u, 4294967295u, 4294967295u, arg_3.a.a.x))), arg_3.b.c);
    return var_3.b;
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: bool) -> i32 {
    global0 = vec2<i32>(u_input.a, arg_0.b.c.x);
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-962f, _wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(f32(-1f) * -1386f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(870f, 661f, 1196f, 1000f) * vec4<f32>(-2401f, 1922f, 961f, 1000f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-101f, 469f, -438f, -222f)))), select(arg_0.c, !arg_0.c, true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2447f, 181f, -1090f, -2209f)), vec4<f32>(1612f, 1857f, 293f, 1350f))) * _wgslsmith_div_vec4_f32(vec4<f32>(775f, 307f, 2183f, -684f), vec4<f32>(506f, -1355f, 510f, -1772f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1427f, 287f, -632f, -1284f) - vec4<f32>(837f, 793f, 738f, -552f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-281f, 297f, 259f, 1179f))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-193f, 2564f, -221f, -1000f))))))), select(vec4<bool>(false, any(arg_0.c), true, false), func_2(!(!vec4<bool>(arg_2, true, true, arg_2))).c, (arg_0.a.a.x > ~50130u) & ((arg_0.b.b & arg_0.b.b) > arg_0.b.a.x))));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    let var_2 = func_2(vec4<bool>(false, false, true, true)).b;
    global0 = _wgslsmith_div_vec2_i32(-var_2.c.yx, -arg_1.xx) ^ abs(min(max(vec2<i32>(var_2.c.x, 1i) ^ vec2<i32>(-2147483647i, arg_0.b.c.x), reverseBits(arg_1.xx)), var_2.c.xz));
    return -2147483647i;
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(global0.x, _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, arg_2.b.c.x, 0i, 1i), vec4<i32>(0i, -4279i, 26563i, arg_2.b.d)), select(vec4<i32>(global0.x, -9702i, 9985i, -60734i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, arg_2.b.c.x, 2147483647i), vec4<i32>(arg_2.b.c.x, global0.x, u_input.a, u_input.a)), true)), global0.x) & ~global0.x;
    var var_1 = select(!vec2<bool>(arg_0, arg_2.c.x), vec2<bool>(true & select(true, false, any(vec3<bool>(arg_0, false, false))), true), !arg_2.c.yw);
    global0 = _wgslsmith_clamp_vec2_i32(arg_2.b.c.yz, arg_2.b.c.zy, ~arg_2.b.c.zx);
    var_1 = !select(arg_2.c.zw, select(select(!arg_2.c.zx, arg_2.c.wz, !vec2<bool>(false, arg_2.c.x)), select(arg_2.c.wz, arg_2.c.zy, true), var_1.x), vec2<bool>(all(!arg_2.c.xy), arg_2.c.x));
    var var_2 = var_0;
    return Struct_1(vec3<u32>(_wgslsmith_mult_u32(~arg_3, ~1u) & ~arg_3, 1u, arg_2.b.b), max(4116u, 4294967295u), arg_2.b.c, func_5(Struct_4(Struct_3(arg_1.a), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(529f, -240f, 305f)), func_2(arg_2.c), 705f, Struct_4(Struct_3(vec2<u32>(1u, arg_2.a.a.x)), arg_2.b, vec4<bool>(false, false, false, false))), func_2(func_2(arg_2.c).c).c), _wgslsmith_add_vec3_i32(select(min(vec3<i32>(arg_2.b.d, var_0, var_0), vec3<i32>(var_0, 5040i, arg_2.b.c.x)), arg_2.b.c, all(arg_2.c.yy)), -vec3<i32>(var_0, 0i, 1i) & vec3<i32>(4964i, var_0, arg_2.b.d)), true));
}

fn func_6(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_4) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(round(-327f));
    global0 = ~arg_2.c.yy;
    var var_1 = arg_3.b;
    let var_2 = Struct_2(-813f, arg_2, func_2(arg_3.c).b, var_1.b << (~1164u % 32u), -vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(~0i, 1i, var_1.c.x), arg_2.d));
    let var_3 = Struct_1(func_2(vec4<bool>(true, func_4(vec3<f32>(-1266f, arg_1, 804f), Struct_4(Struct_3(vec2<u32>(80277u, var_2.b.b)), arg_2, arg_3.c), arg_1, arg_3).d > ~arg_2.d, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 3495u), arg_2.a.zz) > ~39615u, var_2.a >= _wgslsmith_f_op_f32(-805f * var_2.a))).b.a, ~(_wgslsmith_dot_vec2_u32(var_1.a.yy, var_2.b.a.zz) ^ var_1.a.x), ~vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(13786i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-3366i, 31585i, -5268i), vec3<i32>(global0.x, u_input.a, global0.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, u_input.a), ~vec2<i32>(arg_3.b.c.x, var_2.b.d)), 1i), reverseBits(global0.x << (~0u % 32u)) >> (~35481u % 32u));
    return vec2<f32>(var_2.a, var_2.a);
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> vec2<bool> {
    let var_0 = firstTrailingBit(max(~((vec4<i32>(global0.x, u_input.a, 1i, u_input.a) & vec4<i32>(global0.x, u_input.a, -58319i, arg_1.e.x)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-35508i, 63557i, -2147483647i, 4170i), vec4<i32>(-37430i, 1i, global0.x, arg_1.b.c.x))), -vec4<i32>(i32(-1i) * -2147483647i, firstLeadingBit(16256i), _wgslsmith_div_i32(2147483647i, u_input.a), arg_1.e.x >> (arg_1.d % 32u))));
    global0 = select(arg_1.c.c.zy, arg_1.e.yx, any(select(vec4<bool>(arg_2, all(vec3<bool>(true, false, arg_2)), arg_2, !arg_2), !(!vec4<bool>(arg_2, arg_2, arg_2, arg_2)), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, true, false, arg_2), arg_2 && arg_2))));
    let var_1 = select(vec2<bool>(arg_2, all(!select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(false, false, true), vec3<bool>(true, false, arg_2)))), select(!func_2(func_2(vec4<bool>(arg_2, true, arg_2, arg_2)).c).c.yw, !(!vec2<bool>(arg_2, true)), 2262f > _wgslsmith_f_op_f32(-813f - _wgslsmith_f_op_f32(-1512f * arg_0.x))), func_2(select(!select(vec4<bool>(false, arg_2, arg_2, false), vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(arg_2, arg_2, arg_2, true)), select(!vec4<bool>(arg_2, true, false, arg_2), select(vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(arg_2, true, true, false)), vec4<bool>(arg_2, arg_2, false, arg_2)), !all(vec2<bool>(false, arg_2)))).c.xw);
    let var_2 = ~func_4(vec3<f32>(arg_0.x, 215f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-2595f))))), func_2(vec4<bool>(true, all(vec4<bool>(false, false, var_1.x, false)), all(vec2<bool>(var_1.x, var_1.x)), arg_2)), _wgslsmith_f_op_f32(step(-751f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_2(!select(vec4<bool>(true, var_1.x, false, false), vec4<bool>(arg_2, false, var_1.x, arg_2), false))).b;
    var var_3 = arg_1;
    return var_1;
}

fn func_8(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_2(682f, Struct_1(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(497u, 4294967295u)) << (_wgslsmith_div_u32(21454u, 30979u) % 32u), 805u << (1u % 32u)), ~_wgslsmith_add_u32(func_3(Struct_3(vec2<u32>(0u, 11812u)), vec3<bool>(arg_0.x, false, arg_0.x)), 8786u), firstLeadingBit(max(-vec3<i32>(-1i, global0.x, global0.x), -vec3<i32>(54693i, u_input.a, u_input.a))), ~abs(select(-17769i, -2147483647i, arg_0.x))), func_1(true, func_2(vec4<bool>(true, true, true, func_2(vec4<bool>(arg_0.x, false, arg_0.x, false)).c.x)).a, Struct_4(Struct_3(vec2<u32>(15159u, 1u)), func_1(true, Struct_3(vec2<u32>(58342u, 0u)), Struct_4(Struct_3(vec2<u32>(4294967295u, 1u)), Struct_1(vec3<u32>(37726u, 1u, 31286u), 53878u, vec3<i32>(global0.x, global0.x, u_input.a), -1i), vec4<bool>(arg_0.x, false, true, arg_0.x)), abs(2875u)), select(!vec4<bool>(arg_0.x, arg_0.x, false, false), func_2(vec4<bool>(false, arg_0.x, arg_0.x, true)).c, func_2(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)).c.x)), abs(_wgslsmith_dot_vec3_u32(min(vec3<u32>(55769u, 13911u, 4294967295u), vec3<u32>(0u, 20795u, 4294967295u)), select(vec3<u32>(22354u, 28928u, 0u), vec3<u32>(33787u, 4294967295u, 67463u), false)))), 1u, vec3<i32>(~(-34282i), -33505i, u_input.a | _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(38058i, global0.x), vec2<i32>(25753i, -37226i)), vec2<i32>(82653i, 21914i))));
    var var_1 = true;
    var_1 = false;
    let var_2 = vec4<i32>(_wgslsmith_div_i32(2147483647i, ~func_5(Struct_4(Struct_3(vec2<u32>(4294967295u, 12791u)), var_0.c, vec4<bool>(false, arg_0.x, true, false)), var_0.c.c, true)), var_0.c.c.x, -var_0.e.x, func_4(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1000f, var_0.a)), _wgslsmith_f_op_f32(var_0.a - -962f), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - -208f) - _wgslsmith_f_op_f32(-815f + -228f)), 1049f), Struct_4(func_2(select(vec4<bool>(false, true, arg_0.x, true), vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))).a, Struct_1(abs(var_0.c.a), var_0.d, ~vec3<i32>(u_input.a, var_0.b.c.x, u_input.a), -1i), !(!vec4<bool>(arg_0.x, false, arg_0.x, true))), _wgslsmith_f_op_vec2_f32(func_6(~51606u, _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(var_0.a + var_0.a)), Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.d, 4294967295u, var_0.b.a.x), var_0.c.a), ~var_0.b.a.x, var_0.b.c, u_input.a << (var_0.c.b % 32u)), Struct_4(Struct_3(vec2<u32>(16378u, var_0.c.a.x)), func_4(vec3<f32>(var_0.a, -816f, -1000f), Struct_4(Struct_3(vec2<u32>(var_0.d, 1u)), var_0.b, vec4<bool>(arg_0.x, false, true, true)), var_0.a, Struct_4(Struct_3(var_0.b.a.yx), Struct_1(vec3<u32>(4294967295u, var_0.b.b, 4294967295u), 4294967295u, var_0.e, 2147483647i), vec4<bool>(arg_0.x, true, arg_0.x, true))), select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(true, false, true, arg_0.x), true)))).x, func_2(vec4<bool>(!arg_0.x, true, any(vec4<bool>(false, false, arg_0.x, false)), arg_0.x))).d);
    var_0 = Struct_2(_wgslsmith_f_op_f32(-var_0.a), Struct_1(~(~select(vec3<u32>(54482u, var_0.d, 59260u), var_0.c.a, vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), ~44119u, _wgslsmith_div_vec3_i32(~var_0.b.c, var_0.c.c) << (abs(~var_0.c.a) % vec3<u32>(32u)), ~(~_wgslsmith_clamp_i32(var_2.x, 21578i, 2147483647i))), Struct_1(~vec3<u32>(var_0.d, var_0.b.a.x | var_0.b.b, ~var_0.d), abs(var_0.c.a.x), vec3<i32>(0i, 2147483647i, countOneBits(func_1(arg_0.x, Struct_3(vec2<u32>(var_0.c.a.x, var_0.d)), Struct_4(Struct_3(var_0.c.a.yz), Struct_1(vec3<u32>(var_0.c.b, 0u, 0u), 33429u, vec3<i32>(-8329i, var_2.x, var_2.x), u_input.a), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)), 19050u).c.x)), var_2.x << (_wgslsmith_dot_vec2_u32(var_0.b.a.yz, var_0.b.a.yy) % 32u)), var_0.c.a.x, countOneBits(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(var_2.xxy, var_2.xxy)));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(func_7(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_6(0u, _wgslsmith_f_op_f32(sign(1106f)), func_1(true, Struct_3(vec2<u32>(4294967295u, 16555u)), Struct_4(Struct_3(vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 1u, 16405u), 4294967295u, vec3<i32>(1i, -88320i, global0.x), global0.x), vec4<bool>(true, false, false, true)), 70669u), Struct_4(Struct_3(vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 0u, 62875u), 0u, vec3<i32>(17323i, global0.x, global0.x), u_input.a), vec4<bool>(true, false, true, false)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-835f, 1010f) * vec2<f32>(-819f, 1355f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(811f, 1792f)))), Struct_2(1000f, Struct_1(~vec3<u32>(84186u, 1u, 4294967295u), _wgslsmith_mult_u32(39394u, 38161u), func_2(vec4<bool>(false, true, false, true)).b.c, ~u_input.a), Struct_1(~vec3<u32>(33297u, 24163u, 1u), _wgslsmith_mod_u32(4294967295u, 31653u), vec3<i32>(u_input.a, u_input.a, -2147483647i), global0.x), abs(~1u), vec3<i32>(_wgslsmith_sub_i32(global0.x, u_input.a), 14575i, ~global0.x)), all(vec2<bool>(true, true))));
    let var_1 = any(vec2<bool>(func_7(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-335f, -375f)), Struct_2(471f, Struct_1(vec3<u32>(1u, var_0.a.x, var_0.b), 8508u, vec3<i32>(u_input.a, 6380i, global0.x), 0i), Struct_1(var_0.a, var_0.a.x, var_0.c, var_0.c.x), 10694u, vec3<i32>(2147483647i, u_input.a, u_input.a)), func_7(vec2<f32>(-683f, -1000f), Struct_2(-311f, Struct_1(var_0.a, var_0.b, vec3<i32>(-2147483647i, -2147483647i, 0i), u_input.a), Struct_1(vec3<u32>(var_0.a.x, var_0.a.x, var_0.b), var_0.b, var_0.c, 2147483647i), 0u, vec3<i32>(global0.x, u_input.a, u_input.a)), false).x).x & false, any(vec3<bool>(true, true, true)) | all(vec4<bool>(true, false, true, false))));
    let var_2 = ~_wgslsmith_mod_u32(51399u, ~var_0.a.x);
    var var_3 = func_2(func_2(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), !vec4<bool>(var_1, true, true, var_1)), !vec4<bool>(false, var_1, var_1, true), vec4<bool>(var_0.d > 1i, true, var_0.b >= 20202u, var_1 && false))).c).b;
    var_3 = Struct_1(_wgslsmith_mult_vec3_u32(~var_3.a | select(_wgslsmith_div_vec3_u32(vec3<u32>(34144u, 10274u, var_3.a.x), var_0.a), _wgslsmith_div_vec3_u32(var_3.a, var_0.a), 34987u > var_3.b), func_2(vec4<bool>(var_0.d >= 0i, any(vec4<bool>(var_1, false, var_1, var_1)), all(vec3<bool>(false, true, var_1)), !var_1)).b.a), countOneBits(_wgslsmith_add_u32(~var_3.a.x, var_2)), -vec3<i32>(~(-2147483647i), var_0.c.x, 1075i), _wgslsmith_clamp_i32(var_3.c.x, ~1i | (~0i >> (select(1u, 4294967295u, true) % 32u)), global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

