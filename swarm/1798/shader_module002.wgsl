struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 5030i), u_input.d.yw), u_input.d.x, i32(-1i) * -1i)));
    var_0 = Struct_3(vec4<i32>(var_0.a.x, select(var_0.a.x, _wgslsmith_mod_i32(1i, abs(var_0.a.x)), select(u_input.a != u_input.a, true, any(vec3<bool>(false, false, false)))), -28464i, u_input.d.x));
    var_0 = Struct_3(_wgslsmith_mult_vec4_i32(u_input.b, select(max(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -28017i, u_input.b.x, var_0.a.x), u_input.b), abs(vec4<i32>(78358i, 2147483647i, u_input.b.x, var_0.a.x))), _wgslsmith_sub_vec4_i32(u_input.d, var_0.a | vec4<i32>(-37255i, 1i, 0i, 0i)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-584f, 161f, 794f, 1645f) * vec4<f32>(-1085f, 381f, -426f, -1545f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1236f, -1155f, 908f, 1246f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-320f, -716f, 283f, 488f) + vec4<f32>(-1611f, -139f, -1542f, -228f))), vec4<bool>(true, true, var_0.a.x <= var_0.a.x, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1314f, -144f, 1460f, 550f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(137f, -1068f, 1117f, -352f), vec4<f32>(-803f, -334f, -306f, 334f), true)))), true)), ~select(vec4<u32>(~u_input.a, ~u_input.a, firstLeadingBit(u_input.a), u_input.a), countOneBits(vec4<u32>(1u, 1u, u_input.a, u_input.a)) | vec4<u32>(u_input.a, 1u, 16578u, u_input.a), true && all(vec3<bool>(true, true, true))), u_input.d.yw);
    var var_2 = Struct_4(~0u >> (~u_input.a % 32u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_1.a.zw, vec2<f32>(1008f, 570f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -1000f)), var_1.b.x <= 1u))), vec2<f32>(-678f, 1204f), true)), select(vec2<bool>(var_1.c.x == u_input.b.x, (var_1.b.x >= u_input.a) & true), vec2<bool>(true, true), true), var_1.a.x);
    return reverseBits(-var_0.a.x);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> Struct_4 {
    var var_0 = vec3<i32>(-48529i & -(~2147483647i & _wgslsmith_sub_i32(u_input.b.x, arg_0)), ~arg_0, func_3());
    var_0 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(firstTrailingBit(u_input.d.x), var_0.x | u_input.d.x), 1i) & (-28573i << (arg_3.c % 32u)), _wgslsmith_mod_i32(-1i, abs(arg_0)), 31430i);
    let var_1 = Struct_1(arg_2.c.a, _wgslsmith_mult_u32(~arg_3.b, 10333u), 4294967295u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_1.a);
    let var_3 = Struct_1(arg_1.a, select(~_wgslsmith_dot_vec4_u32(vec4<u32>(47188u, arg_3.c, 4294967295u, 1u), vec4<u32>(arg_2.c.b, arg_1.c, 28092u, arg_1.b)) >> (_wgslsmith_add_u32(0u | u_input.a, abs(4294967295u)) % 32u), countOneBits(_wgslsmith_mult_u32(46738u, _wgslsmith_clamp_u32(var_1.c, 4294967295u, arg_1.b))), any(!arg_2.b.zx) && false), 1u);
    return Struct_4(select(~var_1.b, 1u, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.a.x, 232f))))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, var_3.a.x)))))), vec2<bool>(!any(arg_2.b), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -947f))))));
}

fn func_4(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))));
    var var_1 = u_input.b;
    var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(-var_1.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.wy, var_1.yx), vec2<i32>(-24443i, var_1.x)), u_input.d.x, _wgslsmith_mult_i32(1i, u_input.c.x >> (48711u % 32u))), vec4<i32>(_wgslsmith_mult_i32(var_1.x & u_input.b.x, -1i), -1i, _wgslsmith_div_i32(1i, -21464i), 0i), u_input.b) << (~abs(countOneBits(vec4<u32>(30394u, 87520u, u_input.a, u_input.a))) % vec4<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1f, _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) * _wgslsmith_div_f32(-1511f, -2390f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0.b.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -146f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(-709f - arg_0.b.x)), vec4<bool>(any(vec2<bool>(arg_0.c.x, false)), any(!vec4<bool>(false, true, arg_0.c.x, arg_0.c.x)), false, !(u_input.d.x <= -50134i)))), ~(u_input.a << (1u % 32u)) ^ arg_0.a, firstLeadingBit(4294967295u));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, -133f))))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -706f), _wgslsmith_f_op_f32(ceil(var_2.a.x)))), _wgslsmith_f_op_f32(select(arg_0.d, _wgslsmith_f_op_f32(1000f - -1000f), arg_0.c.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 782f), arg_0.b))))))));
    return 2827f;
}

fn func_1() -> i32 {
    let var_0 = !vec3<bool>(all(vec2<bool>(select(false, true, false), true)), false, !any(vec4<bool>(true, true, true, true)));
    let var_1 = vec4<i32>(-2147483647i, ~u_input.b.x, 79832i, 0i);
    let var_2 = u_input.d;
    var var_3 = reverseBits(-u_input.b.yxx);
    let var_4 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(-1i, Struct_1(vec4<f32>(-151f, -351f, 842f, -149f), u_input.a, 38589u), Struct_2(vec2<u32>(u_input.a, 55394u), vec4<bool>(var_0.x, var_0.x, var_0.x, true), Struct_1(vec4<f32>(359f, 192f, 777f, -798f), u_input.a, 0u)), Struct_1(vec4<f32>(-729f, -677f, 1950f, 502f), 0u, 1u)))) + _wgslsmith_f_op_f32(-707f * _wgslsmith_f_op_f32(round(-551f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -133f)));
    return -26312i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, true, true);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -123f);
    var var_2 = _wgslsmith_mult_u32(max(u_input.a ^ 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), abs(vec2<u32>(u_input.a, u_input.a)))) & 33514u, _wgslsmith_div_u32(~(~4294967295u), _wgslsmith_clamp_u32(u_input.a, 14262u, u_input.a) | u_input.a) << (firstTrailingBit(u_input.a) % 32u));
    var var_3 = select(~1u, _wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.a, u_input.a) | max(u_input.a, 32227u), 48840u), (1i ^ _wgslsmith_add_i32(-u_input.d.x, _wgslsmith_add_i32(2147483647i, -1i))) >= u_input.d.x);
    var_2 = ~(~(~57710u));
    var_3 = u_input.a;
    var var_4 = firstLeadingBit(_wgslsmith_mod_i32(func_1(), _wgslsmith_add_i32(func_1(), _wgslsmith_sub_i32(countOneBits(u_input.d.x), ~u_input.b.x))));
    let var_5 = ~(~select(vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), false | var_0.x)) ^ min(vec4<u32>(countOneBits(~4294967295u), u_input.a, _wgslsmith_div_u32(21939u | u_input.a, u_input.a << (u_input.a % 32u)), 1u), _wgslsmith_mod_vec4_u32(abs(reverseBits(vec4<u32>(20043u, u_input.a, 0u, 68157u))), reverseBits(~vec4<u32>(4294967295u, 23828u, 0u, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, _wgslsmith_f_op_f32(abs(-1455f)), 508f, -161f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(187f, -725f, 120f, var_1), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -1092f, -1299f, var_1))))), !select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.x, true, var_0.x, true), false))))), max(27201u << (var_5.x % 32u), 1u));
}

