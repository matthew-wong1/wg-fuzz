struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_4;

var<private> global2: i32 = -453i;

var<private> global3: vec4<i32>;

var<private> global4: f32 = 1155f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<i32> {
    var var_0 = vec4<i32>(0i, ~abs(~(~(-2147483647i))), _wgslsmith_sub_i32((~global1.a.a | 1i) & 49945i, -1i), _wgslsmith_clamp_i32(u_input.b.x, global3.x, global0.x));
    global1 = Struct_4(global1.a, select(vec2<bool>(-25862i >= (-1i ^ global1.a.a), global1.d), vec2<bool>(!any(vec3<bool>(global1.b.x, global1.d, global1.b.x)), true), (_wgslsmith_mod_i32(-2147483647i, 1i) << (1u % 32u)) != global1.a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.c.x, global1.c.x, -128f), vec3<f32>(global1.c.x, global1.c.x, global1.c.x)))), !(false || !(!global1.d)));
    global2 = 1i;
    let var_1 = _wgslsmith_add_vec4_i32(-abs(~countOneBits(vec4<i32>(39030i, 0i, u_input.b.x, global0.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(-22780i, global1.a.a, global3.x, global3.x), vec4<i32>(421i, -24864i, u_input.b.x, 39279i)), select(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, global3.x, 1i, 1i), vec4<i32>(-84382i, -42939i, 54615i, u_input.b.x)) & -vec4<i32>(global1.a.a, 1i, -10170i, -37622i), ~firstTrailingBit(vec4<i32>(global0.x, 2147483647i, global0.x, global3.x)), !vec4<bool>(global1.a.b.x, global1.d, global1.d, true)), select(abs(vec4<i32>(2147483647i, global1.a.a, global1.a.a, 1i)), min(vec4<i32>(global3.x, 2147483647i, global1.a.a, global1.a.a), vec4<i32>(u_input.a, var_0.x, 2147483647i, 1i)), any(vec3<bool>(global1.b.x, false, true))) & abs(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, global3.x, 2147483647i, 0i), vec4<i32>(global3.x, global1.a.a, -17870i, -1i)))));
    var var_2 = -1i;
    return ~(-_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, global3.x, var_0.x), vec4<i32>(0i, global1.a.a, -1i, 3868i)), -vec4<i32>(var_0.x, -2147483647i, 10250i, var_0.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: bool) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -756f, -261f, 1593f))));
    var var_1 = _wgslsmith_f_op_f32(abs(131f));
    let var_2 = global1.a;
    let var_3 = select(max(1u, reverseBits(abs(1u))), _wgslsmith_div_u32(1u, 4294967295u), select(true, var_2.b.x, arg_1.a.b.x)) >> ((select(firstTrailingBit(1u), 33747u, -global1.a.a != -arg_1.a.a) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(min(0u, 107799u), firstTrailingBit(4294967295u)), vec2<u32>(12142u, min(2912u, 0u)))) % 32u);
    return vec3<f32>(146f, global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1184f))));
}

fn func_2() -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.c.x, -439f)) - _wgslsmith_f_op_f32(select(global1.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1120f))), select(true, true, true) && true))), global1.c.x, 1147f);
    global0 = u_input.b << (vec3<u32>(64328u, 52774u, 21879u) % vec3<u32>(32u));
    var var_1 = !(_wgslsmith_f_op_f32(-1300f * _wgslsmith_f_op_f32(step(346f, global1.c.x))) <= var_0.x);
    let var_2 = Struct_4(global1.a, vec2<bool>(!select(!global1.d, global1.a.b.x, true), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1538f, _wgslsmith_f_op_f32(f32(-1f) * -1966f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-390f + var_0.x))) - _wgslsmith_f_op_vec3_f32(func_4(func_3(), Struct_4(global1.a, global1.b, global1.c, true), global1.b.x))), false);
    var var_3 = !select(!global1.a.b, !global1.a.b, !(!(!var_2.d)));
    return _wgslsmith_add_i32(-80778i, min(~u_input.a, ~u_input.b.x));
}

fn func_5(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(-2187f, 1f);
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.c.x), global1.c.x));
    var var_1 = global1.c.x;
    global2 = max(_wgslsmith_div_i32(global3.x, ~arg_0), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(0i, global3.x)), ~(~global0.yx)), ~(-14378i) >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 13470u, 95171u, 4294967295u), vec4<u32>(21973u, 60905u, 40429u, 19648u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(8739u, 58322u, 4294967295u, 42744u)) % 32u)) % 32u)));
    let var_2 = global0.x;
    return Struct_2(0i, !vec2<bool>(true, global1.b.x && any(vec2<bool>(false, true))));
}

fn func_1(arg_0: f32, arg_1: f32) -> vec4<i32> {
    let var_0 = Struct_3(u_input.b.x, Struct_1(global1.a.a, select(vec4<bool>(global1.a.b.x, true, true, all(vec2<bool>(true, false))), select(!vec4<bool>(global1.d, global1.a.b.x, global1.b.x, global1.d), vec4<bool>(false, global1.a.b.x, false, global1.a.b.x), !vec4<bool>(true, global1.d, true, false)), vec4<bool>(global1.a.b.x, false, all(vec3<bool>(true, global1.a.b.x, true)), false)), vec4<bool>(any(vec4<bool>(global1.d, true, global1.a.b.x, true)), global1.d, !(false && global1.a.b.x), false)), func_5(func_2()), func_5(u_input.b.x), Struct_1(firstTrailingBit(u_input.a), !select(vec4<bool>(true, global1.a.b.x, true, global1.b.x), vec4<bool>(global1.a.b.x, false, global1.a.b.x, global1.a.b.x), global1.a.b.x), !vec4<bool>(true, false, all(vec2<bool>(global1.d, global1.b.x)), true)));
    let var_1 = firstLeadingBit(vec2<u32>(1u, 1u));
    global3 = func_3();
    var var_2 = Struct_5(var_0.c, global1.c.yx, var_0.e, 0i);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(1000f - var_2.b.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * -1126f), -1400f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-173f + arg_0)), arg_0)) * _wgslsmith_f_op_f32(-594f + arg_0)));
    return ~vec4<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(1i, global1.a.a, var_2.a.a), global3.wyz), global3.xxx), _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(var_2.c.a), -7242i, global0.x, _wgslsmith_mod_i32(var_2.c.a, 0i)), abs(~vec4<i32>(19268i, var_0.c.a, global0.x, var_2.d))), min(_wgslsmith_mult_i32(reverseBits(var_0.a), _wgslsmith_add_i32(u_input.b.x, global0.x)), func_5(firstLeadingBit(-1i)).a), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(_wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, 171f) * global1.c.x)), _wgslsmith_f_op_f32(112f + -1038f));
    let var_0 = vec3<u32>(~_wgslsmith_sub_u32(4294967295u >> (1u % 32u), ~firstTrailingBit(78719u)), ~countOneBits(1u) & ~_wgslsmith_clamp_u32(reverseBits(0u), ~0u, ~0u), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 62537u, 1u) >> ((reverseBits(vec4<u32>(1u, 4294967295u, 6728u, 4294967295u)) >> (select(vec4<u32>(14822u, 34937u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<bool>(false, false, global1.a.b.x, true)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u)));
    global3 = vec4<i32>(_wgslsmith_add_i32(global3.x, u_input.b.x), u_input.b.x, firstTrailingBit(global3.x >> (abs(4294967295u) % 32u)), _wgslsmith_mult_i32(global1.a.a, ~(~2147483647i)));
    var var_1 = Struct_5(Struct_2(i32(-1i) * -_wgslsmith_clamp_i32(global1.a.a, -21075i, global0.x), select(select(vec2<bool>(true, true), select(global1.b, global1.a.b, true), vec2<bool>(true, true)), !(!global1.a.b), global1.b)), vec2<f32>(1231f, 372f), Struct_1(~min(global0.x, -6469i & global3.x), select(select(vec4<bool>(true, global1.a.b.x, false, global1.d), !vec4<bool>(false, false, global1.a.b.x, global1.d), !vec4<bool>(true, global1.a.b.x, false, true)), vec4<bool>(global1.a.b.x, func_5(-36056i).b.x, !global1.d, false), any(!global1.b)), select(select(!vec4<bool>(global1.d, false, global1.b.x, global1.d), !vec4<bool>(true, true, global1.d, global1.d), !vec4<bool>(true, false, false, global1.b.x)), vec4<bool>(true, true, true, true), !(!vec4<bool>(true, global1.a.b.x, true, global1.d)))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.a, 1i, -2147483647i, global3.x)), min(vec4<i32>(-2147483647i, u_input.a, u_input.b.x, global1.a.a), vec4<i32>(global3.x, -2147483647i, -45715i, 0i))), ~func_3().x, global1.a.a) & ~4357i);
    var var_2 = ~max(var_0.xx, ~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 10856u), vec2<u32>(21783u, 2388u), var_0.zz), ~vec2<u32>(3u, 38565u), !vec2<bool>(true, global1.a.b.x)));
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1290f, _wgslsmith_f_op_f32(round(global1.c.x)))))));
    var var_3 = Struct_2(~(-22242i), var_1.c.c.wz);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(37698u, 4294967295u), var_0.yx), var_2.x, 43599u, 4294967295u), _wgslsmith_mod_u32(~var_2.x, 102698u << (1u % 32u)), _wgslsmith_f_op_vec2_f32(var_1.b - vec2<f32>(1000f, var_1.b.x)));
}

