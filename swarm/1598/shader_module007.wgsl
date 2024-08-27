struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_2) -> u32 {
    let var_0 = ~(~arg_2.c.x);
    var var_1 = ~arg_2.b.zx;
    var var_2 = arg_2;
    var_1 = vec2<i32>(var_1.x, _wgslsmith_mod_i32(1i, select(~0i, arg_2.b.x, all(arg_0))));
    let var_3 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -200f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x))) != _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(max(1377f, 1000f))), _wgslsmith_div_vec4_i32(-select(-vec4<i32>(0i, 1i, u_input.a, 8096i), vec4<i32>(arg_2.b.x, var_2.b.x, 1i, 1i), !arg_0.x), vec4<i32>(-_wgslsmith_dot_vec3_i32(var_2.b.wwz, arg_2.b.yyz), -2147483647i, i32(-1i) * -2147483647i, var_1.x)), vec4<u32>(~var_2.c.x, ~var_2.d.x, _wgslsmith_dot_vec4_u32(arg_2.c << (vec4<u32>(arg_2.c.x, arg_2.d.x, 0u, var_2.c.x) % vec4<u32>(32u)), ~arg_2.c), select(~1u, min(var_2.d.x, var_0), true)) ^ ~var_2.c, arg_2.c.yxz);
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1440f, 1000f, 1617f, -283f)))) - vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-246f + 1028f), _wgslsmith_f_op_f32(1362f * 406f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-669f * -1714f)), -515f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-769f, -1000f) - -492f))));
    var var_1 = Struct_2(!arg_2, firstTrailingBit(vec4<i32>(-_wgslsmith_clamp_i32(0i, -1i, -44757i), i32(-1i) * -44960i, arg_1 >> (func_3(vec3<bool>(arg_2, true, false), vec2<f32>(var_0.x, 1399f), Struct_2(true, vec4<i32>(-989i, arg_3, -63354i, arg_3), vec4<u32>(1u, 16652u, arg_0.a, arg_0.a), vec3<u32>(4294967295u, arg_0.a, arg_0.a))) % 32u), 0i)), ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(82122u, 0u, arg_0.a, 1u), select(vec4<u32>(15194u, arg_0.a, arg_0.a, arg_0.a), vec4<u32>(27616u, 4294967295u, arg_0.a, 0u), false))), ~(_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0.a, arg_0.a) ^ vec3<u32>(23764u, arg_0.a, 0u), vec3<u32>(1u, 47260u, 0u)) | ~vec3<u32>(4294967295u, arg_0.a, 0u)));
    let var_2 = Struct_2(true, -select(vec4<i32>(-2147483647i & arg_1, abs(var_1.b.x), -22660i, arg_3 >> (66748u % 32u)), vec4<i32>(u_input.c, 1i, -2147483647i, abs(-1i)), any(vec2<bool>(true, true))), _wgslsmith_clamp_vec4_u32(var_1.c, reverseBits(var_1.c) >> (firstLeadingBit(var_1.c) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(var_1.c, vec4<u32>(4294967295u, arg_0.a, 0u, var_1.d.x), var_1.c), var_1.c)) << (((~vec4<u32>(4294967295u, 32976u, 1u, arg_0.a) ^ var_1.c) & vec4<u32>(_wgslsmith_div_u32(var_1.c.x, var_1.c.x), var_1.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 4294967295u, var_1.d.x, 46228u), vec4<u32>(20531u, var_1.c.x, var_1.c.x, 37u)), var_1.d.x | arg_0.a)) % vec4<u32>(32u)), vec3<u32>(arg_0.a | 4009u, ~77777u, 1u));
    var var_3 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_1.d.x >> (reverseBits(var_2.d.x) % 32u), _wgslsmith_div_u32(~(14327u | var_2.c.x), _wgslsmith_add_u32(4294967295u, ~var_2.c.x)), var_2.c.x), 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.d.x, arg_0.a, 57215u, 4294967295u), select(vec4<u32>(47166u, var_2.d.x, var_1.d.x, 31435u), var_2.c, vec4<bool>(arg_2, true, arg_2, arg_2))), firstTrailingBit(vec4<u32>(var_1.d.x, 34173u, arg_0.a, var_1.d.x)), ~firstTrailingBit(vec4<u32>(0u, 4294967295u, 0u, 22425u))), firstTrailingBit((var_2.c & var_2.c) ^ var_1.c)));
    var var_4 = max(vec2<i32>(0i, -_wgslsmith_div_i32(u_input.a, 58093i)), -vec2<i32>(u_input.b, 0i) & var_2.b.xx);
    return _wgslsmith_f_op_f32(-1000f - var_0.x);
}

fn func_1() -> StorageBuffer {
    let var_0 = ~select(4294967295u, ~(~(~28743u)), !(_wgslsmith_f_op_f32(floor(-2143f)) > _wgslsmith_f_op_f32(func_2(Struct_1(20568u), -2147483647i, true, u_input.a))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1706f, 1926f, -111f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(484f, 2063f, 136f) * vec3<f32>(-1511f, -719f, -1389f)))))), vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1841f, 1751f, -1000f) + vec3<f32>(1000f, -336f, 489f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1676f, -138f, 681f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), -1027f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1121f, 1939f, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 695f, -1713f) - vec4<f32>(-649f, -641f, -821f, var_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) * vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(-990f * 101f), var_1.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-512f, -905f, var_1.x, -2329f)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-848f + var_1.x), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(abs(var_2.x)))) * _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, -1884f), _wgslsmith_f_op_f32(-1693f * var_2.x))), _wgslsmith_f_op_f32(-var_2.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-126f, var_1.x, var_2.x, 546f) - vec4<f32>(var_2.x, var_1.x, 1037f, 1000f))))))));
    let var_3 = ~vec4<u32>(_wgslsmith_sub_u32(0u, countOneBits(0u << (1u % 32u))), var_0, ~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(72721u, var_0))), select(20520u, countOneBits(var_0), true));
    return StorageBuffer(max(countOneBits(u_input.b), 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x)))) - 453f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -573f, 1340f, 806f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-203f, 1585f, -568f, -238f) * vec4<f32>(var_2.x, 649f, var_2.x, 1000f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-722f + _wgslsmith_f_op_f32(var_2.x - -401f))), true)), vec4<i32>(u_input.c, _wgslsmith_add_i32(-27613i, ~_wgslsmith_mod_i32(u_input.b, -2147483647i)), firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b, u_input.a), ~37611i, u_input.b)), -(~(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 25101u, 1u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_mod_u32(~1u, 1u), _wgslsmith_mult_u32(0u, ~(~1u)));
    var var_1 = Struct_1(var_0.x);
    var var_2 = ~0u;
    var_2 = var_1.a;
    var var_3 = ~u_input.a;
    let x = u_input.a;
    s_output = func_1();
}

