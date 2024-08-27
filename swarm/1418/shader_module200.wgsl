struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(0i, 42440i, -16761i, 1i, -1i, -14314i, 1i, i32(-2147483648), 1i, 1i, i32(-2147483648), -23614i, 1i, -7636i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    let var_0 = Struct_3(-firstLeadingBit(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 14u)], -1i, global0[_wgslsmith_index_u32(1u, 14u)], 1i)) >> (vec4<u32>(abs(4294967295u), _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), _wgslsmith_add_u32(u_input.c.x | u_input.c.x, _wgslsmith_mult_u32(0u, u_input.c.x)), ~25345u) % vec4<u32>(32u)), !vec2<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))), Struct_2(countOneBits(max(u_input.b.x >> (u_input.c.x % 32u), -2571i))), Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 14u)]));
    let var_1 = var_0.d;
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    return u_input.b.x;
}

fn func_2() -> f32 {
    global0 = array<i32, 14>();
    let var_0 = vec4<i32>(func_3(), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x) | ~u_input.c.x, 14u)], firstLeadingBit(u_input.b.x), ~1i);
    global0 = array<i32, 14>();
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(1i, firstLeadingBit(var_0.x), reverseBits(i32(-1i) * -2147483647i)), ~u_input.a) | vec3<i32>(reverseBits(-u_input.a.x), ~u_input.a.x, -1i);
    var_1 = u_input.a;
    return -991f;
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(349f * 829f))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1101f + -619f));
    var var_2 = ~(~u_input.c.zx) | ~reverseBits(u_input.c.xz);
    var var_3 = vec3<i32>(_wgslsmith_add_i32(15309i, -24980i), _wgslsmith_mult_i32(-1i, u_input.a.x), func_3());
    return Struct_3(~vec4<i32>(~_wgslsmith_mult_i32(11928i, u_input.b.x), _wgslsmith_add_i32(20917i & var_3.x, 1i), 1i, var_3.x), arg_0.xy, Struct_2(max(1i, global0[_wgslsmith_index_u32(~var_2.x, 14u)])), Struct_2(var_3.x));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_2, 97310u), min(96531u, 4294967295u)), u_input.c.x, ~(~93978u)), u_input.c.zzz);
    global0 = array<i32, 14>();
    var var_1 = select(!select(arg_0.b, !vec2<bool>(arg_0.b.x, arg_0.b.x), vec2<bool>(arg_0.b.x, arg_0.b.x)), vec2<bool>(all(vec4<bool>(arg_0.b.x && arg_0.b.x, true, arg_0.b.x, func_1(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)).b.x)), -1000f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1565f)))), arg_0.b);
    var_1 = select(vec2<bool>(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(372f, 1893f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-633f - -1339f) - _wgslsmith_f_op_f32(-1000f + 802f))), select(vec2<bool>(1u != u_input.c.x, true), !arg_0.b, select(arg_0.b, arg_0.b, false)), select(false, _wgslsmith_sub_u32(var_0.x, ~28176u) >= 2151u, false && (all(vec2<bool>(true, false)) & true)));
    var_1 = !arg_0.b;
    return any(vec3<bool>(all(vec3<bool>(any(vec3<bool>(arg_0.b.x, arg_0.b.x, var_1.x)), true, true)), (var_0.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, arg_2), vec4<u32>(arg_2, 0u, 24604u, var_0.x))) < arg_2, arg_0.b.x));
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_5) -> Struct_4 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~firstLeadingBit(~arg_2), arg_3.b, 0u), max(abs(~vec3<u32>(91739u, 65523u, arg_3.b)) & u_input.c.zyw, vec3<u32>(countOneBits(arg_2), u_input.c.x, ~u_input.c.x)));
    var_1 = select(1u, abs(~arg_1.x), true & (true == !(u_input.d.x == arg_3.c)));
    var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~(~(~u_input.c.yw)), arg_1), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.x, arg_2 | 4294967295u, u_input.c.x), select(vec4<u32>(26068u, 15683u, arg_2, arg_2), u_input.c, vec4<bool>(false, arg_0, arg_3.a.a.x, arg_3.a.a.x)) ^ (vec4<u32>(u_input.c.x, 1u, 1u, arg_2) ^ u_input.c)), arg_1.x));
    let var_2 = Struct_3(select(-((vec4<i32>(global0[_wgslsmith_index_u32(44204u, 14u)], -1i, arg_3.a.b.a, global0[_wgslsmith_index_u32(0u, 14u)]) & vec4<i32>(arg_3.a.b.b.x, 2147483647i, -2147483647i, arg_3.a.b.a)) | (vec4<i32>(1i, global0[_wgslsmith_index_u32(arg_3.b, 14u)], u_input.b.x, 2147483647i) >> (u_input.c % vec4<u32>(32u)))), ~select(vec4<i32>(-19741i, global0[_wgslsmith_index_u32(81655u, 14u)], u_input.a.x, global0[_wgslsmith_index_u32(arg_3.b, 14u)]), vec4<i32>(u_input.a.x, 1i, -2147483647i, global0[_wgslsmith_index_u32(arg_3.b, 14u)]), arg_3.a.a.x) >> (u_input.c % vec4<u32>(32u)), all(vec4<bool>(arg_3.a.a.x, true, all(vec2<bool>(arg_3.a.a.x, true)), all(vec2<bool>(false, true))))), vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-896f))) == -598f), Struct_2(32310i), func_1(!select(select(vec4<bool>(arg_0, arg_3.a.a.x, true, true), vec4<bool>(false, true, false, arg_0), vec4<bool>(true, true, false, arg_3.a.a.x)), !vec4<bool>(false, true, true, arg_0), select(vec4<bool>(arg_0, arg_3.a.a.x, true, true), vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_3.a.a.x, true, true, arg_3.a.a.x)))).c);
    return Struct_4(select(select(arg_3.a.a, select(select(vec3<bool>(arg_0, false, var_2.b.x), vec3<bool>(true, true, false), arg_3.a.a), select(arg_3.a.a, arg_3.a.a, vec3<bool>(false, true, arg_3.a.a.x)), false), arg_3.a.a), !arg_3.a.a, vec3<bool>(all(select(vec4<bool>(false, false, arg_0, arg_3.a.a.x), vec4<bool>(arg_0, arg_0, true, var_2.b.x), false)), true && any(arg_3.a.a), true)), arg_3.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_5(func_4(func_1(vec4<bool>(true, true, true, true)), abs(0u >> (u_input.c.x % 32u)), u_input.c.x, Struct_1(1i, vec2<i32>(0i, global0[_wgslsmith_index_u32(1u, 14u)]))), vec2<u32>(~0u, u_input.c.x), ~max(u_input.c.x >> (u_input.c.x % 32u), u_input.c.x | u_input.c.x), Struct_5(Struct_4(vec3<bool>(false, false, false), Struct_1(0i, vec2<i32>(-1i, u_input.a.x))), u_input.c.x | u_input.c.x, i32(-1i) * -2147483647i)), countOneBits(1u), (-4123i >> (_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, ~64081u) % 32u)) | -1i);
    var var_1 = reverseBits(countOneBits(~u_input.c.x));
    var var_2 = var_0;
    var_1 = ~1u;
    var_1 = countOneBits(select(91099u, _wgslsmith_clamp_u32(abs(var_0.b) << ((var_2.b >> (var_2.b % 32u)) % 32u), 63948u, min(max(45041u, var_2.b), _wgslsmith_dot_vec3_u32(u_input.c.wxw, vec3<u32>(var_2.b, u_input.c.x, 84794u)))), var_2.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(~u_input.c ^ (vec4<u32>(var_0.b, 0u, 0u, 4294967295u) >> (vec4<u32>(var_2.b, 0u, 4294967295u, var_0.b) % vec4<u32>(32u))), u_input.c), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(488f + _wgslsmith_f_op_f32(abs(-1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(130f)) - _wgslsmith_f_op_f32(min(1560f, -1008f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1251f)))), -1798f), func_5(any(vec2<bool>(!var_0.a.a.x, var_0.a.a.x)), u_input.c.xw, ~(~43012u & ~u_input.c.x), var_0).b.a);
}

