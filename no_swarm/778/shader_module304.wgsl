struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: i32) -> u32 {
    var var_0 = ~_wgslsmith_div_vec4_i32(firstTrailingBit(~u_input.d), -u_input.d & u_input.d);
    var var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(~(~(~u_input.b)), (~vec3<u32>(9414u, 74588u, 0u) ^ (vec3<u32>(19499u, arg_1.a.a, 0u) >> (vec3<u32>(79417u, arg_1.b.a, arg_1.c.c) % vec3<u32>(32u)))) & vec3<u32>(u_input.b.x, u_input.c.x, ~u_input.c.x)), _wgslsmith_sub_u32(~(_wgslsmith_div_u32(27835u, arg_1.a.c) << (arg_1.a.c % 32u)), _wgslsmith_add_u32(arg_1.c.c, countOneBits(4294967295u))), 1u, ~firstTrailingBit(~(arg_1.a.a << (39492u % 32u))));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_div_vec4_u32(firstTrailingBit(~min(vec4<u32>(arg_1.c.c, arg_1.a.a, 1u, arg_1.b.c), vec4<u32>(4294967295u, var_2.c.a, var_1.x, 0u)) & vec4<u32>(1u & var_2.a.c, ~67903u, 23238u, 1u)), _wgslsmith_div_vec4_u32(firstTrailingBit(~vec4<u32>(56078u, var_2.b.c, 1u, arg_1.b.c)), vec4<u32>(_wgslsmith_mod_u32(~97849u, arg_1.b.a & u_input.b.x), ~_wgslsmith_mult_u32(arg_1.a.c, 1393u), 44216u ^ ~var_1.x, ~4294967295u)));
    let var_4 = arg_1;
    return _wgslsmith_div_u32(firstLeadingBit(reverseBits(1u)), min(countOneBits(~(~16887u)), var_1.x));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: vec2<bool>, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(116f, -227f, -1200f, -354f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -163f, _wgslsmith_f_op_f32(f32(-1f) * -1235f), _wgslsmith_f_op_f32(min(arg_1, arg_1))))))));
    var var_1 = arg_2;
    return 38469u;
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    var var_0 = true;
    var var_1 = Struct_2(Struct_1(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(~u_input.c.x, u_input.c.x), 0u), ((i32(-1i) * -1803i) | _wgslsmith_sub_i32(u_input.d.x, u_input.a)) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(105464u, 0u), _wgslsmith_mult_vec2_u32(u_input.b.zy, u_input.b.xx)) % 32u), 0u), Struct_1(func_4(vec4<u32>(func_3(arg_0.x, Struct_2(Struct_1(30692u, u_input.d.x, 10238u), Struct_1(0u, -38890i, u_input.b.x), Struct_1(u_input.b.x, u_input.d.x, u_input.b.x)), vec4<f32>(-363f, 1512f, -1245f, 644f), u_input.d.x), u_input.c.x & u_input.b.x, 1u, min(u_input.b.x, u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(395f - 620f) * -424f), select(select(vec2<bool>(false, false), vec2<bool>(arg_0.x, arg_0.x), true), arg_0, false), abs(max(0u, 56984u))), abs(~(-8755i)), ~_wgslsmith_add_u32(u_input.c.x, u_input.b.x)), Struct_1(_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x) | _wgslsmith_dot_vec4_u32(vec4<u32>(22391u, u_input.c.x, 4294967295u, 0u), vec4<u32>(41701u, u_input.c.x, u_input.c.x, u_input.c.x)), ~_wgslsmith_mult_u32(13172u, 52765u)), u_input.a, 20113u));
    var var_2 = Struct_1(~122636u, -4513i, var_1.c.a);
    var var_3 = -186f;
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1021f, _wgslsmith_f_op_f32(213f - -950f))), _wgslsmith_div_f32(971f, -958f))) * 177f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -706f) + 1594f));
    return 35617u;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_u32(select(~reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, 24199u, u_input.b.x)), vec4<u32>(0u, func_2(vec2<bool>(false, true)), u_input.c.x, countOneBits(~u_input.c.x)), vec4<bool>(false, true, 4716u <= (u_input.b.x | u_input.c.x), select(true, true, true))), vec4<u32>(~u_input.c.x, func_4(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(4294967295u, 96770u, u_input.c.x, u_input.b.x)), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 4294967295u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -307f))), vec2<bool>(true, true), 63059u), _wgslsmith_add_u32(_wgslsmith_add_u32(1u, u_input.c.x ^ 25964u), 1u), ~_wgslsmith_dot_vec2_u32(u_input.c, ~vec2<u32>(0u, 8093u))));
    let var_1 = 1u;
    let var_2 = Struct_3(-vec2<i32>(u_input.d.x, countOneBits(-5382i & u_input.d.x)), Struct_2(Struct_1(u_input.b.x, 1i ^ (u_input.a << (1u % 32u)), _wgslsmith_sub_u32(u_input.b.x, 25882u)), Struct_1(var_1, _wgslsmith_clamp_i32(89215i, -2147483647i, firstTrailingBit(-18766i)), 1u), Struct_1(reverseBits(var_1), _wgslsmith_dot_vec3_i32(reverseBits(u_input.d.ywy), u_input.d.zyx), u_input.b.x << (func_2(vec2<bool>(true, true)) % 32u))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1360f);
    var var_4 = Struct_3(var_2.a, Struct_2(Struct_1(145u & var_0, _wgslsmith_div_i32(var_2.b.a.b, 0i) & -48667i, var_0), var_2.b.a, var_2.b.c));
    return Struct_2(Struct_1(5642u, -28922i, 0u >> (u_input.b.x % 32u)), var_2.b.a, var_4.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(countOneBits(vec2<i32>(_wgslsmith_add_i32(u_input.a, u_input.d.x), -1i)) & _wgslsmith_add_vec2_i32(u_input.d.yw, u_input.d.zw), func_1());
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(350f, -528f, 1000f, -1114f), vec4<f32>(793f, -1000f, -1035f, -464f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1386f, -2326f, -165f, 844f), vec4<f32>(-1054f, -1149f, 2148f, 101f)))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(845f, -259f, -435f, 1000f) - vec4<f32>(483f, -403f, 1000f, -900f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-253f, 154f, 1193f, -200f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-840f, -246f, -1609f, 319f)))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(-873f)), _wgslsmith_f_op_f32(step(-1695f, -1000f)), _wgslsmith_f_op_f32(1185f + 569f), _wgslsmith_f_op_f32(f32(-1f) * -321f))))));
    let var_3 = Struct_1(37071u, i32(-1i) * -u_input.a, var_0.b.a.c);
    var var_4 = Struct_3(~(var_0.a | vec2<i32>(abs(-36433i), _wgslsmith_mult_i32(0i, var_3.b))), var_0.b);
    var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-436f + var_2.x)), _wgslsmith_f_op_f32(min(var_2.x, var_2.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<f32>(var_2.x, var_2.x, var_2.x, -391f))))))));
    var var_5 = -10202i;
    let x = u_input.a;
    s_output = StorageBuffer(-1180f);
}

