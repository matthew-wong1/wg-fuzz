struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(vec3<i32>(i32(-1i) * -20615i, -62821i, -25341i), _wgslsmith_f_op_f32(1130f * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(342f, -943f), 154f))), u_input.b.x));
    let var_1 = vec4<u32>(1u ^ ~(~_wgslsmith_mod_u32(u_input.a, 1u)), max(min(select(u_input.a, 132381u, true), countOneBits(countOneBits(44949u))), ~abs(~u_input.a)), ~1u, u_input.a);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1090f, 1000f))), -1787f)), -2711f, _wgslsmith_f_op_f32(var_0.a.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(752f * _wgslsmith_f_op_f32(-var_0.a.b)) - _wgslsmith_div_f32(var_0.a.b, _wgslsmith_f_op_f32(sign(260f))))));
    var_0 = Struct_2(var_0.a);
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, select(var_1.x, u_input.d, reverseBits(29657u) > ~u_input.a), ~(23626u & max(var_1.x, 4294967295u))), vec3<u32>(~(~var_1.x), countOneBits(~u_input.a), ~1u) >> (~firstTrailingBit(~var_1.zxy) % vec3<u32>(32u)));
    return select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !(_wgslsmith_dot_vec3_i32(u_input.b, var_0.a.a << (var_1.yyw % vec3<u32>(32u))) > select(-23892i, -20886i, false)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: vec3<f32>) -> vec4<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1094f, arg_3.x)), u_input.b.yx, select(select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), all(vec3<bool>(true, true, true))), func_3(), true), vec4<bool>(all(func_3().wxz), _wgslsmith_clamp_u32(arg_2.x, 1395u, arg_2.x) == 4609u, true, false), any(vec4<bool>(true, true, true, true)) | (true && all(vec3<bool>(false, true, true)))), u_input.a < 23923u);
    var var_1 = arg_1.b;
    var_1 = Struct_2(Struct_1(select(_wgslsmith_sub_vec3_i32(var_1.a.a, vec3<i32>(-55518i, 1i, -19653i)), arg_1.b.a.a, vec3<bool>(false, true, false)) << (~arg_2 % vec3<u32>(32u)), var_0.a, _wgslsmith_sub_i32(var_0.b.x, 0i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-arg_1.a);
    var_1 = Struct_2(Struct_1(u_input.b, -1151f, arg_0.x >> ((~40699u << ((1u << (arg_2.x % 32u)) % 32u)) % 32u)));
    return _wgslsmith_mult_vec4_i32(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.c, 2147483647i, 17851i, var_0.b.x), -vec4<i32>(2147483647i, -46491i, arg_0.x, arg_1.b.a.a.x))), ~(-vec4<i32>(-61008i, abs(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, 2147483647i, arg_0.x, u_input.c), vec4<i32>(2147483647i, var_0.b.x, u_input.c, arg_0.x)), -31219i)));
}

fn func_1(arg_0: u32, arg_1: f32) -> vec2<i32> {
    var var_0 = ~u_input.d;
    let var_1 = ~arg_0;
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-15060i, ~(-1i), -u_input.b.x, firstTrailingBit(17435i)), func_2(vec2<i32>(0i, 2147483647i), Struct_4(vec4<f32>(arg_1, arg_1, arg_1, arg_1), Struct_2(Struct_1(vec3<i32>(u_input.b.x, 1i, 0i), 270f, u_input.c))), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_0, 1u), vec3<u32>(var_1, var_1, 4294967295u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1542f, arg_1, arg_1)))), -vec4<i32>(~1i, 1i, -21805i, u_input.c)), _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, -2147483647i), ~u_input.b.xy));
    let var_3 = vec3<bool>(false, false, _wgslsmith_mult_i32(-1i << (_wgslsmith_mod_u32(1u, arg_0) % 32u), var_2.x) != ((~var_2.x ^ ~u_input.c) >> (4294967295u % 32u)));
    var var_4 = -u_input.c;
    return _wgslsmith_mod_vec2_i32(u_input.b.yz, -min(u_input.b.yy, ~abs(vec2<i32>(-1i, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(-25367i);
    var_0 = -u_input.c;
    var var_1 = Struct_3(-1913f, _wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.b.yy), ~func_1(min(36053u, 0u), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), select(select(vec4<bool>(any(vec3<bool>(true, true, false)), true, true, true), vec4<bool>(true, false, false, all(vec4<bool>(true, true, false, false))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, true, true)))), !vec4<bool>(true, any(vec2<bool>(true, true)), true, true), true), (642f > _wgslsmith_f_op_f32(sign(-374f))) == !all(vec2<bool>(true, true)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, -2109f)))), var_1.b, var_1.c, false);
    var_2 = Struct_3(_wgslsmith_f_op_f32(-var_1.a), vec2<i32>(_wgslsmith_div_i32(select(-2147483647i, u_input.c, all(vec2<bool>(var_1.d, true))), -(~u_input.c)), -40557i >> (u_input.a % 32u)), vec4<bool>((false == all(var_1.c.wxy)) | true, all(var_1.c.yzx), false, false), var_2.c.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_1.a, var_2.a, -1008f) * vec4<f32>(1321f, var_2.a, var_1.a, var_1.a)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1140f + var_1.a)))), 907f, _wgslsmith_div_f32(555f, _wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.a, var_2.a), -292f)) - var_1.a)));
    var var_4 = ~reverseBits(~firstLeadingBit(_wgslsmith_add_u32(u_input.a, u_input.a)));
    let var_5 = Struct_5(countOneBits(vec4<u32>(min(u_input.a, ~21132u), select(_wgslsmith_dot_vec3_u32(vec3<u32>(55304u, u_input.d, 62353u), vec3<u32>(u_input.d, 1u, u_input.d)), _wgslsmith_add_u32(152448u, u_input.d), var_1.d), u_input.a, min(~u_input.d, ~u_input.d))), func_3());
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x, 1u);
}

