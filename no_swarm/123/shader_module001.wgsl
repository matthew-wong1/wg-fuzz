struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(4294967295u, vec3<i32>(19316i, -21368i, i32(-2147483648))), Struct_1(1u, vec3<i32>(-25673i, 1i, -29285i)), Struct_1(0u, vec3<i32>(15729i, -77065i, 2147483647i)), Struct_1(0u, vec3<i32>(2147483647i, 109591i, -67475i)), Struct_1(46794u, vec3<i32>(-698i, -7746i, 1i)), Struct_1(94131u, vec3<i32>(i32(-2147483648), -19711i, i32(-2147483648))), Struct_1(4294967295u, vec3<i32>(19356i, -6708i, 27799i)), Struct_1(44713u, vec3<i32>(-1i, 0i, -233i)), Struct_1(4294967295u, vec3<i32>(-1i, -2061i, 3978i)), Struct_1(1u, vec3<i32>(2147483647i, -31241i, -62630i)), Struct_1(9612u, vec3<i32>(-15846i, -36702i, 1i)), Struct_1(4294967295u, vec3<i32>(-30347i, 7182i, i32(-2147483648))), Struct_1(4294967295u, vec3<i32>(-23984i, 0i, 2147483647i)), Struct_1(0u, vec3<i32>(44826i, -7348i, 1i)), Struct_1(37812u, vec3<i32>(-1i, 2147483647i, i32(-2147483648))), Struct_1(0u, vec3<i32>(0i, 2147483647i, -34497i)), Struct_1(47648u, vec3<i32>(2147483647i, -25463i, 1i)), Struct_1(1u, vec3<i32>(31293i, -21049i, 62584i)), Struct_1(6584u, vec3<i32>(14139i, 2147483647i, -1i)), Struct_1(4294967295u, vec3<i32>(1i, -1i, -2992i)), Struct_1(0u, vec3<i32>(2147483647i, -42163i, -6042i)), Struct_1(761u, vec3<i32>(2147483647i, 2147483647i, 1i)), Struct_1(62263u, vec3<i32>(-1i, -10319i, 1i)), Struct_1(800u, vec3<i32>(0i, -8520i, 1i)), Struct_1(52167u, vec3<i32>(-1i, -14621i, 1i)), Struct_1(0u, vec3<i32>(-1757i, 2147483647i, 1i)));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = all(vec3<bool>(false, firstLeadingBit(abs(26470i)) == min(arg_3.b.x | -1i, 1i), all(vec4<bool>(true, true, true, true))));
    var var_1 = select(!vec2<bool>(false, select(true, true, true)), vec2<bool>(true, !var_0), select(select(!select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, var_0)), vec2<bool>(all(vec4<bool>(true, var_0, var_0, var_0)), !var_0), var_0), !select(select(vec2<bool>(false, false), vec2<bool>(var_0, true), var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), false), vec2<bool>(var_0, var_0)), select(select(vec2<bool>(true, var_0), !vec2<bool>(var_0, true), all(vec4<bool>(false, var_0, true, false))), vec2<bool>(false, false), all(select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, var_0, true), var_0)))));
    let var_2 = ~0i;
    var var_3 = arg_3.b.x;
    var_3 = ~(10392i << (u_input.a % 32u));
    return select(!(!vec3<bool>(true, var_0 || var_1.x, false)), vec3<bool>(false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_1.x)), arg_0.x)) == _wgslsmith_f_op_f32(ceil(-1000f)), false), vec3<bool>(var_0, false, !(!(var_0 & true))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> f32 {
    global0 = array<Struct_1, 26>();
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(abs(~abs(1u)), 26u)], 1i << ((~reverseBits(arg_1) ^ arg_1) % 32u), _wgslsmith_clamp_vec4_u32(select(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, u_input.a, 27094u, 4294967295u), vec4<u32>(u_input.a, u_input.a, 47355u, 18819u)), _wgslsmith_mult_vec4_u32(max(vec4<u32>(arg_1, 0u, arg_1, 0u), vec4<u32>(arg_1, arg_1, 4294967295u, 4294967295u)), vec4<u32>(u_input.a, u_input.a, 21769u, 38666u)), vec4<bool>(!arg_0.x, true, any(vec4<bool>(arg_0.x, false, true, false)), all(vec3<bool>(arg_0.x, arg_0.x, false)))), _wgslsmith_mod_vec4_u32(reverseBits(select(vec4<u32>(u_input.a, u_input.a, 0u, 60212u), vec4<u32>(1u, 0u, 51013u, u_input.a), arg_0.x)), ~(vec4<u32>(arg_1, u_input.a, arg_1, 48977u) | vec4<u32>(u_input.a, 49763u, 4294967295u, arg_1))), _wgslsmith_mult_vec4_u32(min(vec4<u32>(6446u, arg_1, u_input.a, 0u), vec4<u32>(1u, 33155u, arg_1, 0u)), vec4<u32>(21124u, u_input.a, 37335u, arg_1)) << (max(~vec4<u32>(59340u, arg_1, arg_1, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 2409u, 4294967295u, 1u), vec4<u32>(53684u, 41591u, u_input.a, 4294967295u))) % vec4<u32>(32u))), Struct_1(0u, ~(~vec3<i32>(1i, 1i, 1i))));
    var var_1 = ~firstLeadingBit(abs(var_0.c)) & var_0.c;
    var_1 = _wgslsmith_mult_vec4_u32(~(~vec4<u32>(~u_input.a, _wgslsmith_mod_u32(arg_1, var_0.a.a), min(var_1.x, 50468u), 0u & var_0.c.x)), _wgslsmith_sub_vec4_u32(~vec4<u32>(63642u, 57003u, var_0.a.a, 59782u) << (~(~vec4<u32>(arg_1, var_1.x, 4294967295u, arg_1)) % vec4<u32>(32u)), ~(~(var_0.c << (vec4<u32>(var_1.x, 20916u, 4294967295u, 0u) % vec4<u32>(32u))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1000f, 1000f))))))));
    return _wgslsmith_div_f32(1716f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-812f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1780f, 910f, arg_0.x)))) + -873f)));
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    global0 = array<Struct_1, 26>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(525f)) * -1000f))) * -1035f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(290f, -849f)) * _wgslsmith_f_op_f32(f32(-1f) * -471f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1367f, -363f)))));
    var var_2 = global0[_wgslsmith_index_u32(~13844u, 26u)];
    var var_3 = vec2<f32>(-558f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1197f * _wgslsmith_f_op_f32(func_4(func_3(vec4<f32>(-839f, -589f, 874f, 559f), vec3<f32>(-953f, -299f, 803f), 1i, Struct_1(u_input.a, vec3<i32>(-1558i, var_2.b.x, var_2.b.x))), _wgslsmith_mod_u32(var_2.a, 1u)))), 1000f)));
    return Struct_1(2740u, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, ~min(var_2.b.x, var_2.b.x), -1i), min(reverseBits(_wgslsmith_mult_vec3_i32(var_2.b, var_2.b)), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(var_2.b.x, 8613i, var_2.b.x), var_2.b, vec3<bool>(true, var_0, false)), vec3<i32>(12176i, var_2.b.x, var_2.b.x) | var_2.b, _wgslsmith_add_vec3_i32(var_2.b, var_2.b)))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = Struct_3(func_2(), -(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, arg_0)), vec2<i32>(arg_0, 2147483647i)) ^ _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, arg_0)), vec2<i32>(arg_0, arg_0))), Struct_2(Struct_1(~u_input.a, vec3<i32>(firstTrailingBit(-43204i), -1i, ~arg_0)), max(-16313i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 6319u)) % 32u), _wgslsmith_add_i32(arg_0, -2147483647i) << (~u_input.a % 32u)), ~_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.a, 1u, u_input.a, 7858u), vec4<u32>(4294967295u, u_input.a, 8415u, u_input.a)), vec4<u32>(1793u, 30741u, 4294967295u, 36665u)), global0[_wgslsmith_index_u32(1u, 26u)]));
    let var_1 = ~vec2<u32>(~firstTrailingBit(1u), ~u_input.a << (u_input.a % 32u));
    var var_2 = Struct_1(~7146u, var_0.c.a.b);
    let var_3 = vec2<bool>(false, arg_3.x);
    var var_4 = _wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(var_2.b.x << (4294967295u % 32u), abs(47448i))), -_wgslsmith_div_i32(-25676i, reverseBits(arg_0)), 22979i), abs(var_2.b));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f) + _wgslsmith_f_op_f32(-138f + 1129f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-244f, 1077f)) + _wgslsmith_f_op_f32(510f * _wgslsmith_f_op_f32(686f - _wgslsmith_f_op_f32(max(-1417f, 1549f))))));
    var_1 = -1392f;
    var var_2 = Struct_1(func_1(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, -2147483647i, -1i, 39748i)), vec4<i32>(0i, 0i, -36248i, 23104i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-702f, -627f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(749f, -497f), vec2<f32>(-1696f, -600f))) - vec2<f32>(-544f, 398f)), vec4<bool>(true, true, true, true)) << (~_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), 0u) % 32u), vec3<i32>(-1i, _wgslsmith_sub_i32(39376i, 1i) << (u_input.a % 32u), ~1i));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(2056f, -1000f, false))))))));
    let var_3 = firstTrailingBit(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.b.x, var_2.b.x, -10646i, var_2.b.x) & vec4<i32>(-21837i, var_2.b.x, var_2.b.x, var_2.b.x), firstTrailingBit(vec4<i32>(var_2.b.x, var_2.b.x, 60575i, 35164i)), vec4<i32>(var_2.b.x, 0i, 2147483647i, -72689i))) ^ _wgslsmith_add_vec4_i32(abs(vec4<i32>(~var_2.b.x, ~var_2.b.x, -67619i, 45366i)), vec4<i32>(firstLeadingBit(reverseBits(var_2.b.x)), var_2.b.x << ((13154u | u_input.a) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_2.b, var_2.b), func_2().b), firstLeadingBit(var_2.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(767f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -728f)), 1666f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-125f)))));
}

