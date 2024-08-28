struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: array<Struct_3, 22>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_i32(-abs(select(-vec2<i32>(u_input.c, u_input.c), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, global0.a), vec2<i32>(u_input.c, 1i)), 1i < global0.a)), ~(~(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, global0.a), vec2<i32>(u_input.c, global0.a)) | _wgslsmith_div_vec2_i32(vec2<i32>(40537i, global0.a), vec2<i32>(18908i, -28176i)))));
    var var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 22u)];
    let var_2 = Struct_1(-2147483647i, global0.b);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xx + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * 291f), _wgslsmith_div_f32(1167f, arg_0.x)))) - arg_0.zz);
    let var_4 = firstLeadingBit(_wgslsmith_add_i32(-1i, -_wgslsmith_div_i32(19231i, var_0.x) << (_wgslsmith_sub_u32(arg_1.x, ~u_input.a.x) % 32u)));
    return Struct_1(var_4, vec4<bool>(global0.b.x, (var_3.x <= _wgslsmith_f_op_f32(-var_3.x)) | !var_1.b.b.x, var_2.b.x, true));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_div_u32(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(~(u_input.b.x << (u_input.b.x % 32u)), _wgslsmith_add_u32(~1u, _wgslsmith_mult_u32(u_input.a.x, 3149u))), ~u_input.b.x));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 + arg_1), -3182f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -304f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 771f, arg_1) - vec3<f32>(980f, arg_1, 295f)), arg_2.xyx)), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 695f, arg_1) * vec3<f32>(arg_1, 144f, arg_1)), min(vec4<u32>(u_input.b.x, u_input.b.x, 38730u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 0u))).b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1156f, arg_1)) + vec3<f32>(2303f, arg_1, arg_1)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(214f, -1000f, -863f) * vec3<f32>(arg_1, arg_1, -3313f)), vec3<f32>(arg_1, -1022f, 806f), all(arg_0.b)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -1000f, arg_1)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(850f, -895f, arg_1)) * vec3<f32>(866f, _wgslsmith_div_f32(115f, arg_1), 1016f)), select(global0.b.xzz, vec3<bool>(-1174f <= arg_1, true, true), any(!vec2<bool>(true, arg_2.x))))));
    global1 = arg_0.b.x;
    let var_2 = firstTrailingBit(select(u_input.a, _wgslsmith_clamp_vec2_u32(select(_wgslsmith_mult_vec2_u32(u_input.b.wy, vec2<u32>(u_input.a.x, 5165u)), countOneBits(u_input.b.zw), any(vec3<bool>(arg_2.x, global0.b.x, global0.b.x))), vec2<u32>(u_input.b.x, reverseBits(55378u)), ~(~vec2<u32>(u_input.a.x, u_input.b.x))), global0.b.x));
    var var_3 = vec3<i32>(~(~_wgslsmith_add_i32(i32(-1i) * -14375i, 1i)), abs(global0.a) << (_wgslsmith_mod_u32(min(_wgslsmith_clamp_u32(4294967295u, var_2.x, var_2.x), u_input.b.x), ~(~var_2.x)) % 32u), arg_0.a);
    return var_2.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-696f - -1865f), 975f)))) - 1293f);
    global2 = array<Struct_3, 22>();
    let var_1 = 0u;
    let var_2 = firstTrailingBit(-(select(arg_0.c, select(vec2<i32>(0i, -2147483647i), vec2<i32>(-14278i, 13390i), global0.b.zz), select(global0.b.yx, vec2<bool>(global0.b.x, false), true)) & countOneBits(select(arg_1.c, arg_0.c, global0.b.x))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, -143f, 112f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 455f, var_0) - vec3<f32>(var_0, var_0, var_0)), global0.b.wzx))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(-var_0)))))));
    return all(select(func_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(-542f)), -969f, _wgslsmith_f_op_f32(-var_0)), select(vec4<u32>(1u, u_input.b.x, 11067u, 4294967295u) & vec4<u32>(var_1, arg_1.a, 22784u, 27367u), firstLeadingBit(arg_1.b), !vec4<bool>(false, global0.b.x, false, false))).b.wxy, vec3<bool>(global0.b.x, any(func_2(var_3, u_input.b).b), !global0.b.x && global0.b.x), false));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-720f + 631f)), -997f, 938f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-169f, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 586f, 203f) * vec3<f32>(-680f, 1342f, -1162f))))), ~u_input.b);
    global2 = array<Struct_3, 22>();
    global2 = array<Struct_3, 22>();
    var var_1 = Struct_3(select(!vec3<bool>(func_2(vec3<f32>(arg_0.x, -1000f, arg_0.x), u_input.b).b.x, any(vec2<bool>(false, arg_2)), true), global0.b.zzy, func_4(Struct_2(func_3(Struct_1(global0.a, global0.b), 1204f, vec4<bool>(var_0.b.x, arg_2, global0.b.x, false), vec2<i32>(25888i, 2147483647i)), ~u_input.b, abs(vec2<i32>(var_0.a, -2147483647i))), Struct_2(1u, vec4<u32>(u_input.b.x, 32135u, u_input.b.x, 1u), vec2<i32>(-1i, var_0.a) ^ vec2<i32>(u_input.c, global0.a)))), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(385f, 775f, 897f), vec3<f32>(arg_0.x, arg_0.x, arg_0.x))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(2112f, arg_0.x, 181f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 226f, arg_0.x) * vec3<f32>(1408f, -207f, -1000f))))), ~(~vec4<u32>(arg_1.x, 12727u, u_input.a.x, 17247u))), -var_0.a, 29839i ^ u_input.c);
    let var_2 = _wgslsmith_mod_u32(13894u, u_input.a.x);
    return var_0;
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_4 {
    var var_0 = 57160i == arg_3.a;
    let var_1 = _wgslsmith_mult_i32(-18760i, 13609i) >> (_wgslsmith_mod_u32(func_3(arg_3, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-786f)))), vec4<bool>(true, arg_3.b.x && global0.b.x, true, true), vec2<i32>(countOneBits(arg_3.a), 0i)), u_input.a.x) % 32u);
    var_0 = arg_3.b.x;
    global0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-816f + arg_1), arg_1) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1996f, -637f))), vec2<f32>(arg_0, arg_0)))), u_input.b.yzy, true);
    let var_2 = arg_3;
    return Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1763f, arg_1, _wgslsmith_f_op_f32(max(171f, -1767f)), _wgslsmith_f_op_f32(arg_1 * arg_0)))), Struct_1(firstLeadingBit(select(0i, -23170i, any(global0.b.zw))), select(global0.b, vec4<bool>(true, true, true, true), arg_3.b)), false, u_input.a.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(-arg_2.x, -28696i), vec2<i32>(-firstLeadingBit(-10012i), 0i)));
}

fn func_6(arg_0: Struct_4, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = vec2<bool>(global0.b.x, false);
    var var_1 = -1000f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * arg_0.a.x), _wgslsmith_f_op_f32(max(arg_0.a.x, arg_1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a.x)))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0.a), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-1588f * 711f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) * _wgslsmith_f_op_f32(sign(arg_0.a.x))), _wgslsmith_f_op_f32(538f - _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x))), !vec4<bool>(any(vec4<bool>(global0.b.x, global0.b.x, arg_0.c, global0.b.x)), true, true, arg_1.x != arg_1.x))), arg_0.b, global0.b.x, arg_0.d, reverseBits(_wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-1i, 10919i)), 26026i)));
    let var_3 = vec4<i32>(_wgslsmith_add_i32(arg_0.e, ~(-2147483647i)), i32(-1i) * -(~(~(-1i))), u_input.c, 0i >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(5789u, 39951u, 20112u, var_2.d), u_input.b, false), abs(vec4<u32>(arg_0.d, arg_0.d, 1u, 1u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(37112u, 0u, 1u, var_2.d), u_input.b), 4294967295u, ~arg_0.d, firstLeadingBit(u_input.a.x))) % 32u));
    global2 = array<Struct_3, 22>();
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(1f, 1f);
    let var_1 = Struct_3(global0.b.xxx, func_6(func_5(-631f, _wgslsmith_f_op_f32(floor(var_0.x)), ~select(vec4<i32>(global0.a, -1i, global0.a, 0i), vec4<i32>(-1i, global0.a, 0i, 2147483647i), vec4<bool>(true, global0.b.x, true, global0.b.x)), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), u_input.b.wyx, false)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -471f), vec2<f32>(var_0.x, var_0.x))) - vec2<f32>(1f, 1f))))), -6513i << (_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, ~10512u), _wgslsmith_add_u32(0u, abs(52687u))) % 32u), abs(_wgslsmith_clamp_i32(global0.a, global0.a, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, u_input.c), u_input.c))));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(-341f, var_0.x)), -593f), var_0.x)), var_0.x));
    global0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1238f)), ~(~vec4<u32>(2427u, ~31366u, ~13477u, select(u_input.b.x, 10732u, global0.b.x))));
    var var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -224f)), -416f, -245f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))), var_1.b, all(func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-291f, var_2, var_0.x) + vec3<f32>(589f, var_2, 2054f)))), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.b.x, 0u, 948u, 4294967295u)))).b.yzy), 1u, _wgslsmith_div_i32(-select(~(-5646i), u_input.c << (8419u % 32u), global0.b.x), u_input.c));
    global1 = func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_f_op_f32(abs(var_2)))) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1716f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-619f * _wgslsmith_f_op_f32(var_3.a.x * var_0.x)))), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_1.c, global0.a, global0.a, var_3.e)) | select(_wgslsmith_mult_vec4_i32(vec4<i32>(21879i, var_3.b.a, 13086i, -39058i), vec4<i32>(var_3.e, global0.a, -95588i, u_input.c)), vec4<i32>(u_input.c, -1i, var_1.d, global0.a) | vec4<i32>(var_3.e, var_3.b.a, 2819i, var_1.b.a), var_3.c), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(19381i, 72398i), 2147483647i), -(i32(-1i) * -1i), global0.a, -2147483647i)), Struct_1(_wgslsmith_mod_i32(global0.a & -2147483647i, i32(-1i) * -1i) & var_3.b.a, !global0.b)).b.b.x;
    global0 = func_2(var_3.a.zyz, ~vec4<u32>(var_3.d ^ ~1u, u_input.b.x, var_3.d, _wgslsmith_sub_u32(abs(u_input.b.x), _wgslsmith_div_u32(u_input.a.x, 1u))));
    let var_4 = 1u;
    var_3 = func_5(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1046f - -2376f))), -vec4<i32>(min(~26860i, global0.a), i32(-1i) * -global0.a, -1i, -34607i), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2 * var_0.x), _wgslsmith_f_op_f32(-var_0.x)))), var_0.x, vec4<i32>(-5612i, var_3.b.a >> (4294967295u % 32u), u_input.c, u_input.c) & _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-35142i, global0.a, -68948i, -2147483647i)), firstTrailingBit(vec4<i32>(u_input.c, var_1.c, var_3.b.a, var_1.d))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.a.yxy * vec3<f32>(var_2, var_3.a.x, var_2))), min(firstLeadingBit(u_input.b), max(vec4<u32>(var_3.d, 30117u, var_4, 20740u), vec4<u32>(0u, u_input.b.x, 64046u, var_3.d))))).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_3.a.x), var_3.a.zw, abs(var_4) >= 1u)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.x, var_2)), -1418f), var_3.a.wz))), _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(14417i, global0.a | u_input.c)), vec2<i32>(min(-2147483647i, -17692i), ~u_input.c)), vec3<u32>(~35952u, 16262u, 1u), global0.a);
}

