struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, i32(-2147483648));

var<private> global1: vec2<i32> = vec2<i32>(46475i, 0i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(446f - -1505f) - _wgslsmith_f_op_f32(max(-117f, 949f))), 1f))));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(508f, 1210f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 168f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(-1139f, -1559f))), -1022f < _wgslsmith_f_op_f32(step(370f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(200f - 579f), _wgslsmith_f_op_f32(628f * 845f)))))));
    global0 = _wgslsmith_sub_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, global0.x, 47181i), vec3<i32>(global0.x, 2147483647i, global0.x)), -vec3<i32>(global1.x, 6323i, 1i)), min(global0.x, global0.x)), _wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(0i, global1.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, global0.x), vec2<i32>(0i, 2147483647i))), countOneBits(min(_wgslsmith_div_vec2_i32(vec2<i32>(8105i, 0i), vec2<i32>(-9331i, -2147483647i)), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, 1i), vec2<i32>(2147483647i, -23113i))))));
    var var_2 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(972f, 831f)))), 618f, -760f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1674f))))), _wgslsmith_f_op_f32(f32(-1f) * -1299f), ~_wgslsmith_mod_u32(_wgslsmith_add_u32(11994u, 1u), ~arg_0), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-1812f * -885f), _wgslsmith_f_op_f32(sign(-1850f)), _wgslsmith_f_op_f32(-788f * 552f)), vec3<f32>(_wgslsmith_f_op_f32(-671f * 1380f), _wgslsmith_f_op_f32(f32(-1f) * -1015f), _wgslsmith_f_op_f32(select(1000f, -395f, arg_1.x))))), _wgslsmith_f_op_f32(max(1678f, _wgslsmith_div_f32(1756f, -1355f)))), reverseBits(~(min(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(u_input.d, 0u, 41431u)) ^ vec3<u32>(42029u, 23472u, 742u))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -131f) - 301f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1698f)), 1f), _wgslsmith_f_op_f32(f32(-1f) * -504f), u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 343f, -529f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1122f - _wgslsmith_f_op_f32(-733f - 1944f)) - 217f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-189f, -819f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-296f, 1330f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1630f, 965f))))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1249f), 866f), vec2<f32>(_wgslsmith_f_op_f32(min(1000f, -1592f)), _wgslsmith_f_op_f32(-1045f * 851f)), arg_1))), arg_1.x);
    var var_3 = var_2.d.x;
    return vec3<bool>(true, var_2.e, arg_1.x);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: vec2<f32>) -> u32 {
    var var_0 = any(vec2<bool>(arg_0, false));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(-1016f, arg_3.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3.x, -747f))), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-954f, arg_3.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(435f, 800f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(257f - arg_3.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.x, -478f)))))), 0u, vec3<f32>(_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + _wgslsmith_f_op_f32(max(arg_3.x, -1035f)))), arg_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -465f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(838f, _wgslsmith_f_op_f32(920f - -475f)) - arg_3.x));
    let var_2 = -608f;
    global1 = -vec2<i32>(abs(-1i), countOneBits(global0.x));
    var var_3 = global0.x;
    return ~(u_input.a & ~u_input.a);
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = arg_2.c.b;
    global1 = -countOneBits(-_wgslsmith_div_vec2_i32(vec2<i32>(35893i, -12974i) | vec2<i32>(global1.x, -2147483647i), countOneBits(vec2<i32>(2147483647i, global1.x))));
    var var_1 = -1202f;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(arg_2.c.d));
    var_2 = _wgslsmith_f_op_vec3_f32(abs(arg_2.c.a.wzz));
    return Struct_2(_wgslsmith_dot_vec2_u32(arg_2.b.yy, u_input.b) ^ select(65125u, ~1u, !all(vec3<bool>(arg_2.e, arg_2.e, arg_2.e))), arg_2.a.d.x, arg_0, countOneBits(-10510i), true);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<f32>) -> u32 {
    var var_0 = func_5(func_4(any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), -1i <= global0.x)), func_2(~u_input.d, vec2<bool>(true, true)), u_input.c, vec2<f32>(-1003f, _wgslsmith_f_op_f32(abs(772f)))), ~arg_1, Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2042f, arg_2.x, 387f, -518f))), arg_2.x, ~_wgslsmith_add_u32(u_input.d, 8981u), vec3<f32>(-831f, _wgslsmith_div_f32(455f, -1122f), _wgslsmith_f_op_f32(arg_2.x + -1922f)), arg_2.x), ~abs(select(arg_1.xwx, arg_1.xwx, true)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1117f, -247f, arg_2.x, arg_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-472f)) * 662f), _wgslsmith_add_u32(arg_1.x, ~u_input.b.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(495f, arg_2.x, arg_2.x), vec3<f32>(arg_2.x, arg_2.x, arg_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-322f)) + 707f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(arg_2.x * arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -216f)))), true));
    var var_1 = false;
    var_0 = Struct_2(arg_1.x, 1320f, 1u, max(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d, global0.x) >> (firstLeadingBit(u_input.c) % vec2<u32>(32u)), -vec2<i32>(var_0.d, var_0.d))), false);
    var_1 = true;
    let var_2 = !(!(!vec2<bool>(var_0.e, func_2(u_input.c.x, vec2<bool>(var_0.e, var_0.e)).x)));
    return min(~(_wgslsmith_add_u32(u_input.b.x, ~1u) ^ _wgslsmith_sub_u32(var_0.c, var_0.a)), 27362u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(firstTrailingBit(0u), func_1(u_input.b.x, firstTrailingBit(abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 0u, 0u, u_input.b.x), vec4<u32>(19546u, u_input.d, u_input.c.x, 1u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(668f, 1056f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(387f, -1000f), vec2<f32>(-1000f, 630f), vec2<bool>(false, false)))))), 0u, ~u_input.b.x);
    global0 = firstTrailingBit(reverseBits(~vec2<i32>(-global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -2147483647i), vec2<i32>(-1i, global1.x)))));
    global0 = vec2<i32>(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global0.x, global0.x), vec3<i32>(global1.x, global1.x, global1.x))), global1.x) >> (~_wgslsmith_div_vec2_u32(min(var_0.zy, countOneBits(u_input.b)), var_0.xy) % vec2<u32>(32u));
    let var_1 = func_2(countOneBits(1u), !vec2<bool>(true, any(vec2<bool>(true, true))));
    global1 = vec2<i32>(select(~(-(global1.x & 1861i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, 48232i), 0i), true), min(max(min(reverseBits(global0.x), global1.x), 24503i), global1.x >> (1u % 32u)));
    global0 = _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(select(7766i << (0u % 32u), firstTrailingBit(global0.x), var_1.x), -2147483647i)), select(~(-abs(vec2<i32>(-30286i, global1.x))), min(vec2<i32>(global1.x, 0i), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0.x, -12872i), vec2<i32>(global0.x, global0.x)), vec2<i32>(global1.x, 22230i))), vec2<bool>(var_1.x, true)), abs(vec2<i32>(global1.x, global0.x)) << (~(~u_input.b >> (_wgslsmith_clamp_vec2_u32(var_0.zy, vec2<u32>(1u, 42732u), var_0.yz) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global0 = countOneBits(select(vec2<i32>(firstLeadingBit(~global0.x), -18281i), min(~vec2<i32>(-2147483647i, global1.x), firstLeadingBit(vec2<i32>(global0.x, global0.x))) ^ vec2<i32>(global0.x, 2147483647i ^ global1.x), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, ~var_0.x & _wgslsmith_dot_vec2_u32(~var_0.yz, var_0.zy), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(477f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(581f + -2595f)))))), vec2<i32>(firstLeadingBit(~global0.x), _wgslsmith_div_i32(-2147483647i, _wgslsmith_add_i32(1i, -55023i))) | _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(global0.x, global0.x)), vec2<i32>(global0.x, global0.x) ^ vec2<i32>(global1.x, -16824i), -vec2<i32>(global0.x, -48214i)), firstTrailingBit(firstTrailingBit(vec2<i32>(1i, -70162i)))));
}

