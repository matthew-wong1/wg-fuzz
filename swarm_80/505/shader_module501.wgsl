struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 5>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> vec4<u32> {
    global0 = 1u;
    global0 = ~arg_2.d;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1378f, arg_3.b.c.x)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_2.c.x - 270f)))))));
    let var_1 = arg_3.b;
    global0 = ~(~arg_3.d);
    return firstTrailingBit(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, arg_3.d, arg_2.d) & vec4<u32>(1u, 1u, 1u, arg_2.d), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_1, arg_1, 0u), vec4<u32>(4294967295u, 2444u, arg_3.d, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.d, 4294967295u, 13187u, u_input.a.x), vec4<u32>(1u, 4294967295u, 0u, 52084u))) | ~vec4<u32>(arg_2.d, u_input.a.x, u_input.a.x, arg_1)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = Struct_3(select(-abs(arg_1.e), ~vec4<i32>(1i, 25267i, 1i, min(55776i, arg_1.d.x)), vec4<bool>(arg_1.a || !arg_1.a, any(select(vec2<bool>(false, arg_1.a), vec2<bool>(true, false), vec2<bool>(arg_1.a, false))), false, arg_1.a)), arg_1, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(882f, -1000f, -384f) + _wgslsmith_div_vec3_f32(arg_1.c, vec3<f32>(-932f, arg_1.c.x, arg_1.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(196f, arg_0, arg_1.c.x) - vec3<f32>(arg_1.c.x, -666f, -212f)))), _wgslsmith_f_op_vec3_f32(step(arg_1.c, _wgslsmith_f_op_vec3_f32(arg_1.c + _wgslsmith_f_op_vec3_f32(vec3<f32>(829f, 499f, -346f) * arg_1.c)))))), 4294967295u);
    var var_1 = !(false && !all(select(vec3<bool>(var_0.b.a, true, true), vec3<bool>(false, var_0.b.a, var_0.b.a), vec3<bool>(false, var_0.b.a, var_0.b.a))));
    var_1 = arg_1.a;
    var_1 = true;
    var var_2 = Struct_1(select(true, any(!(!vec4<bool>(true, false, arg_1.a, true))), true), arg_1.e.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0, arg_0))), _wgslsmith_f_op_f32(-arg_1.c.x), -514f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, arg_1.c.x, var_0.c.x)), arg_1.c, select(vec3<bool>(var_0.b.a, arg_1.a, var_0.b.a), vec3<bool>(false, var_0.b.a, false), true))))), -(vec3<i32>(-14662i, var_0.a.x, arg_1.e.x & arg_1.e.x) << (~firstTrailingBit(vec3<u32>(var_0.d, u_input.a.x, 1u)) % vec3<u32>(32u))), firstTrailingBit(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.e.x, var_0.a.x, 32488i, arg_1.d.x), reverseBits(arg_1.e))));
    return select(_wgslsmith_mult_vec4_i32(-firstTrailingBit(~arg_1.e), ((vec4<i32>(arg_1.b, var_2.b, arg_1.e.x, -2147483647i) & vec4<i32>(var_0.a.x, 2147483647i, var_0.a.x, var_2.e.x)) & vec4<i32>(-1i, 15382i, 20097i, arg_1.b)) ^ var_2.e), vec4<i32>(var_0.b.e.x, max(var_0.a.x, -9789i), 26318i, var_0.a.x), true);
}

fn func_2(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = ~(~vec4<i32>(-1i, 20101i, abs(-arg_0.a.x), 19438i));
    var_0 = select(firstLeadingBit(_wgslsmith_add_vec4_i32(func_3(_wgslsmith_f_op_f32(round(487f)), Struct_1(true, 29377i, vec3<f32>(1010f, 234f, 378f), vec3<i32>(var_0.x, arg_0.a.x, var_0.x), vec4<i32>(41746i, var_0.x, var_0.x, 12910i))), vec4<i32>(firstTrailingBit(arg_0.a.x), countOneBits(arg_0.a.x), var_0.x, _wgslsmith_mod_i32(arg_0.a.x, -25591i)))), abs(vec4<i32>(-7684i, 2147483647i, ~(~(-2147483647i)), 1i)), true);
    global1 = array<Struct_2, 5>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-488f - -1636f)) + _wgslsmith_f_op_f32(ceil(-1685f)));
    let var_2 = Struct_1(!(!all(vec2<bool>(true, true))), -1375i, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1143f, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -1103f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -1232f, -993f) * vec3<f32>(-2802f, 676f, var_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_1) + vec3<f32>(var_1, var_1, var_1))) * vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -847f), 1083f))), countOneBits(var_0.yyz), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(51425i, -1i), vec2<i32>(-2147483647i, 1i)), var_0.ww), _wgslsmith_mult_i32(reverseBits(var_0.x), 0i)), ~(-_wgslsmith_add_i32(0i, var_0.x)), var_0.x, ~arg_0.a.x));
    return abs(_wgslsmith_div_vec3_i32(max(var_2.e.ywx, var_2.d) << ((u_input.a & vec3<u32>(4294967295u, 7572u, 5499u)) % vec3<u32>(32u)), var_0.wxz) & vec3<i32>(-var_2.e.x, _wgslsmith_mod_i32(arg_0.a.x, 49335i) & var_2.b, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~vec4<i32>(~0i << (0u % 32u), 2147483647i, select(-47768i >> (u_input.a.x % 32u), 45431i, true), _wgslsmith_mod_i32(~22202i, _wgslsmith_sub_i32(11548i, 0i))), Struct_1(all(vec3<bool>(true, true, true)), -33187i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-565f * -259f), -332f, _wgslsmith_f_op_f32(127f + -790f))), func_2(Struct_2(vec2<i32>(12012i, -14869i), func_1(vec4<bool>(false, true, true, true), u_input.a.x, Struct_3(vec4<i32>(-2147483647i, -2147483647i, 2147483647i, -1i), Struct_1(false, 1i, vec3<f32>(-425f, -1000f, -321f), vec3<i32>(42052i, 0i, -1i), vec4<i32>(-1857i, -1i, -1i, 1i)), vec3<f32>(-986f, -231f, 242f), 0u), Struct_3(vec4<i32>(2147483647i, -2147483647i, -3128i, -2147483647i), Struct_1(false, 32425i, vec3<f32>(-195f, -1482f, 1593f), vec3<i32>(-12383i, 2147483647i, 11443i), vec4<i32>(-19345i, -1i, 2147483647i, 0i)), vec3<f32>(-895f, 1567f, 1000f), 4294967295u)))), ~vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(551f, 1520f, 642f), vec3<f32>(-890f, 646f, 538f)) - vec3<f32>(-2078f, 1950f, -1000f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-845f, 168f, -434f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(559f, 604f, -718f))))))))), ~u_input.a.x);
    var var_1 = Struct_1(!(!var_0.b.a), max(abs(1i), var_0.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.c.x, _wgslsmith_f_op_f32(var_0.c.x * var_0.b.c.x), var_0.c.x), vec3<f32>(1230f, -161f, var_0.c.x), !select(vec3<bool>(false, var_0.b.a, var_0.b.a), vec3<bool>(true, false, var_0.b.a), var_0.b.a)))), vec3<i32>(var_0.a.x, reverseBits(-1i), var_0.b.d.x), var_0.a);
    let var_2 = Struct_2(vec2<i32>(min(var_1.d.x, _wgslsmith_add_i32(~var_0.b.e.x, countOneBits(var_1.b))), var_1.e.x), vec4<u32>(select(_wgslsmith_add_u32(0u, var_0.d), ~17009u, false), var_0.d, u_input.a.x, abs(1u)));
    let var_3 = var_1.a;
    global1 = array<Struct_2, 5>();
    var var_4 = var_0.b;
    global0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-335f, var_1.c.x, !select(false, true, u_input.a.x < 0u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1251f, -346f, var_4.c.x), _wgslsmith_f_op_vec3_f32(trunc(var_1.c)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c.x, 1595f, -208f) * var_0.b.c))))), abs(vec3<i32>(-min(1i, var_4.e.x), -var_0.a.x, -4689i)), var_0.d, -_wgslsmith_mult_i32(var_2.a.x, 41185i));
}

