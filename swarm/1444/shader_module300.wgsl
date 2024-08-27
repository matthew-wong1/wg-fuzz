struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<bool>) -> vec2<bool> {
    global0 = abs(firstLeadingBit(abs(abs(vec4<u32>(arg_0.a.b, arg_0.a.a.x, 43815u, arg_0.a.b)) & arg_0.a.a)));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_0.a.e.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-196f, _wgslsmith_f_op_f32(-arg_0.a.d)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-276f - -1446f) * -546f), var_0.b) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1400f, var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(floor(arg_0.a.e.xzx)), true))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.a.e.yyy * vec3<f32>(arg_0.a.d, -215f, arg_0.a.e.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b, -643f, arg_0.a.d), vec3<f32>(var_0.b, arg_0.a.e.x, 606f))), false)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.e.x, var_0.b, 996f) * arg_0.a.e.yzy)))));
    global0 = arg_0.a.a;
    let var_2 = Struct_1(vec4<u32>(~0u << (~_wgslsmith_add_u32(global0.x, global0.x) % 32u), ~arg_0.a.b, 0u, ~4294967295u), global0.x ^ _wgslsmith_div_u32(~global0.x, arg_0.a.a.x & 4294967295u), ~reverseBits(max(41599u, 95194u)) & arg_0.a.a.x, var_1.x, _wgslsmith_f_op_vec4_f32(-arg_0.a.e));
    return arg_2.zz;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = Struct_3(arg_2.a, 576f);
    let var_1 = Struct_3(1952f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_2.a)), -1135f, all(select(vec2<bool>(false, true), func_3(Struct_2(Struct_1(vec4<u32>(u_input.a.x, global0.x, 18181u, global0.x), u_input.a.x, 0u, arg_1.x, vec4<f32>(896f, arg_2.b, 1935f, 480f)), vec3<i32>(u_input.b.x, 27483i, u_input.b.x), vec4<i32>(u_input.b.x, 0i, -2147483647i, u_input.b.x)), u_input.b, vec3<bool>(true, false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))))));
    var var_2 = Struct_1(~reverseBits(select(abs(vec4<u32>(global0.x, u_input.a.x, global0.x, 1u)), _wgslsmith_add_vec4_u32(u_input.a, u_input.a), true)), _wgslsmith_mod_u32(global0.x | ~u_input.a.x, ~4294967295u) << (select(abs(select(3403u, 1u, false)), abs(global0.x), _wgslsmith_f_op_f32(step(var_0.b, 462f)) == _wgslsmith_f_op_f32(round(801f))) % 32u), u_input.a.x, 336f, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-111f, -1000f, -147f, var_0.a)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, -386f, -1034f, -319f), vec4<f32>(arg_2.a, -589f, 1709f, var_0.b), false)), vec4<bool>(true, true, true, true))))))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(countOneBits(u_input.a), var_2.a), firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a.ww, _wgslsmith_sub_vec2_u32(u_input.a.xz, vec2<u32>(49177u, global0.x)))), ~abs(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), 1321f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_0, -653f, arg_2.b)))), abs(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(-31838i, 2147483647i, u_input.b.x), vec3<i32>(1i, 0i, u_input.b.x)) << (_wgslsmith_div_vec3_u32(global0.zwx >> (vec3<u32>(global0.x, var_2.a.x, u_input.a.x) % vec3<u32>(32u)), select(var_2.a.yzw, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), false)) % vec3<u32>(32u))), reverseBits(_wgslsmith_add_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x)), vec4<i32>(u_input.b.x, 1i, 0i, u_input.b.x) ^ vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x != u_input.b.x), -max(vec4<i32>(-2147483647i, 0i, u_input.b.x, 1i), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, 1i)))));
    var var_4 = var_3.a;
    return Struct_2(var_3.a, abs(var_3.c.zwz), vec4<i32>(min(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 0i), firstLeadingBit(vec2<i32>(0i, -22425i))), -2147483647i), 1i, ~(-_wgslsmith_mult_i32(1i, var_3.b.x)), _wgslsmith_clamp_i32(var_3.c.x, u_input.b.x, 13879i) >> (u_input.a.x % 32u)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: vec3<f32>) -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -833f)))) + _wgslsmith_f_op_f32(f32(-1f) * -122f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3.x, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, 736f, arg_2))) + arg_3))), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-477f * 1498f)), arg_2), arg_0));
    global0 = var_0.a.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(var_0.a.e.xx * vec2<f32>(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.x)) - _wgslsmith_f_op_f32(414f + arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0, arg_2)), _wgslsmith_f_op_f32(select(-2452f, arg_0, arg_1))))));
    global0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(22544u, 65705u), u_input.a.zy) % 32u), ~1u, 0u, abs(0u)), u_input.a), 1u, _wgslsmith_add_u32(~4294967295u, (_wgslsmith_mult_u32(var_0.a.a.x, global0.x) << (countOneBits(28156u) % 32u)) << (48406u % 32u)), ~12873u);
    global0 = u_input.a;
    return _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_add_u32(1u, ~u_input.a.x)), ~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(-(reverseBits(vec3<i32>(0i, u_input.b.x, u_input.b.x) & vec3<i32>(-23910i, u_input.b.x, u_input.b.x)) << (global0.zyy % vec3<u32>(32u))), -(~max(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) << (u_input.a.zww % vec3<u32>(32u)))));
    var var_1 = ~_wgslsmith_sub_u32(global0.x, global0.x);
    let var_2 = (~(~firstLeadingBit(global0.wwz)) | vec3<u32>(54192u, ~4294967295u, 18062u)) & _wgslsmith_div_vec3_u32(~(~u_input.a.xwz), firstTrailingBit(u_input.a.www));
    global0 = ~(~u_input.a);
    global0 = u_input.a;
    var_1 = 4294967295u;
    global0 = select(vec4<u32>(global0.x, var_2.x, var_2.x, 60230u) << (max(u_input.a, firstLeadingBit(~vec4<u32>(var_2.x, 55762u, var_2.x, 0u))) % vec4<u32>(32u)), min(firstLeadingBit(u_input.a), vec4<u32>(20310u, _wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.yz), ~u_input.a.x, 3322u) ^ u_input.a), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), (1i << (func_1(624f, true, 135f, vec3<f32>(-655f, -141f, 1000f)) % 32u)) < -33511i, select(true, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a) < 35979u, false)));
    var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, 40187u, var_2.x), select(_wgslsmith_div_vec3_u32(abs(u_input.a.ywx), global0.xxw) << (~min(vec3<u32>(var_2.x, global0.x, var_2.x), vec3<u32>(1u, var_2.x, var_2.x)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, abs(41594u), global0.x), global0.wwy | (u_input.a.xzz >> (vec3<u32>(1u, u_input.a.x, 58521u) % vec3<u32>(32u)))), false));
    var var_3 = reverseBits(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-120f + _wgslsmith_f_op_f32(ceil(-840f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1660f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(580f, -529f, _wgslsmith_f_op_f32(min(-2154f, -280f)))), Struct_3(_wgslsmith_f_op_f32(-1341f + -2133f), -505f)).a.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1875f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-866f, 2314f))))), func_2(-445f, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(526f, -912f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1455f + 170f), _wgslsmith_f_op_f32(f32(-1f) * -1336f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -467f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_3(356f, _wgslsmith_f_op_f32(floor(-1817f)))).a.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_f_op_f32(f32(-1f) * -939f), true)), _wgslsmith_f_op_f32(step(-421f, _wgslsmith_f_op_f32(360f + 1131f))))))));
}

