struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(0u, 110497u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(29059u, 53049u, 52295u), vec3<u32>(3088u, 50592u, 16403u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<i32> {
    var var_0 = ~(-2147483647i);
    let var_1 = arg_0;
    var var_2 = vec3<i32>(i32(-1i) * -(~arg_0.d), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_1.d, ~(~0i)), 10610i), ~1i);
    var_0 = -63172i;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, _wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f) + var_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + 196f) * 188f)) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-631f - _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(floor(var_1.c.x)), var_1.c.x, -507f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.c.x + 594f), 199f, 851f, var_1.c.x))));
    return abs(firstTrailingBit(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.d, arg_0.d, var_2.x, 52571i), vec4<i32>(-32179i, var_2.x, u_input.c.x, 2147483647i)))) << (vec4<u32>(_wgslsmith_mod_u32(reverseBits(arg_1.x), _wgslsmith_sub_u32(arg_1.x, arg_1.x)), u_input.a.x, ~u_input.a.x, arg_1.x) % vec4<u32>(32u)));
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<u32>, 4>();
    global0 = array<vec3<u32>, 4>();
    let var_0 = ~(u_input.c.x >> (u_input.a.x % 32u));
    global0 = array<vec3<u32>, 4>();
    let var_1 = select(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.c.x, -1i, 68829i), ~vec4<i32>(u_input.c.x, var_0, var_0, u_input.c.x), func_3(Struct_1(269f, 392f, vec2<f32>(-781f, 1027f), 14525i), vec2<u32>(31637u, 12716u))), ~countOneBits(firstLeadingBit(firstTrailingBit(vec4<i32>(var_0, -1i, var_0, 2147483647i)))), true);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 248f), 556f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1424f, 428f) + vec2<f32>(-355f, 1983f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2000f, 496f)), vec2<f32>(1f, 1f))))), _wgslsmith_div_i32(_wgslsmith_div_i32(1i, -1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(24312i, u_input.d), _wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(var_1.x, 2147483647i)))));
}

fn func_1() -> i32 {
    let var_0 = func_2();
    var var_1 = var_0;
    var_1 = Struct_1(_wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + 923f) * 1090f) - func_2().c.x), !(!any(vec4<bool>(true, false, false, false))))), _wgslsmith_f_op_f32(select(-1747f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.b + var_1.b))) * _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(min(570f, -846f)))), true && !all(vec3<bool>(false, true, true)))), vec2<f32>(-1180f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * 349f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-833f - var_1.b))))), _wgslsmith_dot_vec4_i32((-vec4<i32>(var_0.d, var_0.d, 0i, 0i) << (~vec4<u32>(1u, u_input.b, 43446u, 46599u) % vec4<u32>(32u))) & (vec4<i32>(u_input.c.x, var_1.d, u_input.d, 2147483647i) ^ countOneBits(vec4<i32>(-40032i, var_0.d, var_0.d, 2147483647i))), vec4<i32>(var_1.d ^ var_1.d, i32(-1i) * -2147483647i, countOneBits(0i), 11326i) << (select(vec4<u32>(18399u, u_input.b, u_input.b, u_input.a.x), vec4<u32>(59818u, u_input.a.x, u_input.a.x, 1u) & vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x), vec4<bool>(false, false, false, false)) % vec4<u32>(32u))));
    global0 = array<vec3<u32>, 4>();
    var_1 = Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1107f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_1.b)))))), var_0.c, var_0.d);
    return -1i;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(1f, -367f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -971f), _wgslsmith_f_op_f32(max(439f, 2788f))), vec2<f32>(_wgslsmith_f_op_f32(abs(-1037f)), _wgslsmith_f_op_f32(f32(-1f) * -469f)))), vec2<f32>(_wgslsmith_f_op_f32(max(-845f, _wgslsmith_f_op_f32(step(993f, -1487f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f)))), select(_wgslsmith_clamp_i32(-(~22114i), ~arg_2.x, arg_0.x), ~arg_1, true));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a * 371f), _wgslsmith_div_f32(-413f, 215f))) * var_0.a) + var_0.a), _wgslsmith_f_op_f32(abs(func_2().c.x)), _wgslsmith_f_op_f32(1195f + _wgslsmith_f_op_f32(-var_0.a)));
    var var_2 = var_0;
    let var_3 = true;
    global0 = array<vec3<u32>, 4>();
    return var_0;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1084f, _wgslsmith_f_op_f32(-arg_0.x), arg_3.b == 762f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -490f))))), arg_0.x, _wgslsmith_f_op_vec2_f32(select(arg_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yw)), vec2<bool>(true, true))), _wgslsmith_div_i32(u_input.d ^ arg_1.d, countOneBits(~1i)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_3.c.x), arg_1.a, vec2<f32>(-935f, _wgslsmith_div_f32(arg_3.c.x, func_4(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.d, arg_1.d, var_0.d, arg_1.d), vec4<i32>(u_input.c.x, arg_3.d, 1i, 48730i)), reverseBits(u_input.c.x), vec2<i32>(2147483647i, -72102i) << (vec2<u32>(1u, arg_2.x) % vec2<u32>(32u)), 2147483647i).b)), 2147483647i);
    let var_2 = u_input.a.x;
    var_0 = Struct_1(arg_3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - var_0.a), 1449f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1.c)) + var_0.c))), ~_wgslsmith_div_i32(_wgslsmith_add_i32(func_4(vec4<i32>(-1i, -1i, var_0.d, 20645i), arg_3.d, u_input.c, arg_3.d).d, _wgslsmith_div_i32(arg_3.d, -1097i)), -5371i));
    let var_3 = abs(select(select(vec3<u32>(u_input.b, max(46637u, arg_2.x), u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, 4294967295u), firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec3<u32>(11346u, 4294967295u, 1u)), true), global0[_wgslsmith_index_u32(var_2, 4u)], !(-6774i != _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1.d, 0i, arg_1.d), vec4<i32>(-14115i, u_input.c.x, 1i, var_0.d)))));
    return arg_0.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_5(vec4<f32>(1027f, -951f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(505f - 235f))), 186f), func_4(vec4<i32>(select(u_input.c.x, 2147483647i ^ u_input.c.x, true), func_1(), -max(1i, u_input.c.x), _wgslsmith_mult_i32(u_input.c.x, 2147483647i)), 1i, ~(-vec2<i32>(15687i, -2147483647i)), 1i), ~u_input.a, func_2()));
    let var_1 = Struct_1(func_4(vec4<i32>(func_1(), ~(-u_input.c.x), countOneBits(~u_input.c.x), 1i), _wgslsmith_div_i32(abs(func_3(Struct_1(341f, var_0.x, vec2<f32>(-135f, 1122f), u_input.d), vec2<u32>(7522u, 4294967295u)).x), max(~u_input.c.x, u_input.d)), vec2<i32>(-u_input.c.x, _wgslsmith_mult_i32(22046i, 1i)), u_input.c.x).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), var_0.x)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-970f, var_0.x) * vec2<f32>(var_0.x, 126f))))), ~min(-9621i, -u_input.c.x));
    let var_2 = var_1;
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-695f)), var_1.a)), var_0.x)), var_0.x), 787f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(760f, 1910f)), var_1.d);
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -738f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_5 = 2147483647i;
    let var_6 = _wgslsmith_sub_vec4_u32(~vec4<u32>(74282u, 4294967295u, 1u, 1u << (~4294967295u % 32u)), abs(select(countOneBits(vec4<u32>(52198u, 50840u, u_input.b, u_input.b)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x), vec4<u32>(u_input.b, 26387u, 7201u, 3126u)), true)));
    let var_7 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, var_0.x, 1051f, var_3.b) * vec4<f32>(var_0.x, -1145f, 410f, 2043f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1615f, -2026f, 135f, 598f), vec4<f32>(var_0.x, 104f, 1172f, -651f)) + vec4<f32>(-1178f, var_4, 1754f, 1276f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1282f + 658f), _wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_f_op_f32(f32(-1f) * -930f), _wgslsmith_f_op_f32(f32(-1f) * -1962f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(i32(-1i) * -abs(-17375i), var_3.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1451f + 783f))), _wgslsmith_f_op_f32(floor(174f)))));
}

