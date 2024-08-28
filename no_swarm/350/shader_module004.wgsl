struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1501f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
    var_0 = abs(-vec4<i32>(2147483647i, reverseBits(_wgslsmith_sub_i32(0i, u_input.b)), abs(arg_2.c), -25203i));
    var_0 = reverseBits(vec4<i32>(_wgslsmith_div_i32(-9792i, var_0.x), 15056i, _wgslsmith_div_i32(max(arg_0.c.c, var_0.x ^ u_input.b), firstTrailingBit(1i)), 1752i));
    var_0 = vec4<i32>(arg_0.d, u_input.b, arg_0.c.c, _wgslsmith_div_i32(arg_2.c | ~reverseBits(47302i), 35096i));
    return _wgslsmith_clamp_u32(u_input.d, ~arg_2.a.x, arg_0.c.b) >= min(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(26116u, arg_2.b), ~arg_2.a, false), vec2<u32>(1u, _wgslsmith_clamp_u32(arg_0.c.a.x, u_input.a, u_input.d))), _wgslsmith_div_u32(4294967295u, min(27336u, _wgslsmith_mult_u32(9494u, arg_0.b.b))));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    var var_0 = Struct_1(abs(~(arg_0.a.a ^ vec2<u32>(arg_2.x, 4294967295u)) >> (arg_0.a.a % vec2<u32>(32u))), abs(u_input.a), 1i);
    var var_1 = min(arg_0.a.c, var_0.c);
    let var_2 = !(!vec3<bool>(true, u_input.c.x > (u_input.b & 1i), func_3(Struct_2(Struct_1(arg_2.zz, 60700u, -40997i), arg_0.b, Struct_1(arg_2.xx, 0u, 2147483647i), 17550i), arg_1, Struct_1(vec2<u32>(17420u, arg_2.x), 1u, 5577i), vec2<bool>(true, true))));
    var var_3 = -1000f >= arg_1;
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(2017f, 1567f, arg_1) - vec3<f32>(440f, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + 1328f) + arg_1)));
    return _wgslsmith_sub_u32(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_mod_u32(u_input.a, _wgslsmith_add_u32(4294967295u, 0u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 38755u), vec2<u32>(arg_2.x, ~arg_2.x))), arg_0.b.a.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(min(min(max(_wgslsmith_sub_vec2_u32(arg_1.a, vec2<u32>(1u, 4294967295u)), arg_1.a), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 0u), arg_1.a >> (arg_1.a % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(593u, abs(10687u)), _wgslsmith_add_vec2_u32(~vec2<u32>(19906u, 19412u), vec2<u32>(arg_1.a.x, 0u)), vec2<u32>(arg_1.a.x | 35894u, 42659u))), ~(~36987u), 1i >> (~(~u_input.a) % 32u));
    let var_1 = Struct_1(~firstTrailingBit(~var_0.a), arg_1.a.x, var_0.c);
    let var_2 = _wgslsmith_mod_vec2_u32(select(~vec2<u32>(~0u, var_1.b), ~var_0.a, select(vec2<bool>(!arg_0.x, !arg_0.x), select(arg_0.xx, select(arg_0.zz, vec2<bool>(arg_0.x, false), arg_0.x), arg_0.xz), vec2<bool>(true, true))), arg_1.a);
    var var_3 = ~vec3<u32>(4294967295u, 12241u, ~(~12782u));
    let var_4 = arg_0;
    return arg_1;
}

fn func_1() -> f32 {
    let var_0 = reverseBits(reverseBits(40856u) >> (firstLeadingBit(~1u) % 32u));
    let var_1 = func_4(vec3<bool>(true, true, true), Struct_1(vec2<u32>(abs(select(var_0, 0u, false)), ~(~1u)), abs(func_2(Struct_2(Struct_1(vec2<u32>(u_input.d, 4294967295u), u_input.a, 65244i), Struct_1(vec2<u32>(u_input.a, 9611u), u_input.d, 1i), Struct_1(vec2<u32>(1u, 4294967295u), 803u, u_input.c.x), u_input.b), -2777f, vec4<u32>(var_0, u_input.d, var_0, 4896u))) & ~(28820u ^ u_input.d), u_input.c.x));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -775f), _wgslsmith_f_op_f32(1427f * _wgslsmith_f_op_f32(max(218f, _wgslsmith_f_op_f32(f32(-1f) * -711f)))), 1218f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-457f, 970f))))), _wgslsmith_f_op_f32(f32(-1f) * -107f)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))), _wgslsmith_f_op_f32(var_2.x + 861f));
    var var_4 = vec3<f32>(-1168f, _wgslsmith_f_op_f32(sign(-1754f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-596f - 134f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1392f, var_4.x, any(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))))) + -589f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1439f, 857f), _wgslsmith_div_f32(518f, 385f)), -1000f, 368f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(408f - -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -512f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1971f, 352f, -653f, 455f), vec4<f32>(857f, -543f, 1690f, 899f), vec4<bool>(true, true, true, true)))) + vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(round(423f)), _wgslsmith_f_op_f32(f32(-1f) * -496f), _wgslsmith_f_op_f32(325f * -1144f)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, abs(1i), u_input.b << (91538u % 32u)) << (~select(vec4<u32>(34095u, 23976u, u_input.a, u_input.d), vec4<u32>(68472u, u_input.d, u_input.a, 1u), false) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(~(~vec4<i32>(-1i, u_input.c.x, -4260i, -11137i)), vec4<i32>(select(-2147483647i, 1i, false), ~1i, -32643i & u_input.c.x, 2147483647i)), _wgslsmith_sub_vec4_i32(u_input.c & _wgslsmith_add_vec4_i32(u_input.c, u_input.c), _wgslsmith_sub_vec4_i32(u_input.c, u_input.c) ^ _wgslsmith_div_vec4_i32(u_input.c, u_input.c))));
}

