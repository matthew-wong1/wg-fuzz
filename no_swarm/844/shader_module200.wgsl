struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(561f, 1115f, 394f, -1985f), vec4<f32>(864f, 4359f, -365f, -987f), vec4<f32>(-1168f, 410f, -1000f, -1034f), vec4<f32>(786f, -369f, -1912f, -560f), vec4<f32>(1659f, -386f, -695f, -296f), vec4<f32>(-1787f, 348f, -255f, -1069f), vec4<f32>(-472f, -391f, -459f, -631f), vec4<f32>(-729f, 1774f, 202f, 1000f), vec4<f32>(-150f, 544f, 506f, 2693f), vec4<f32>(-221f, 553f, -567f, -662f), vec4<f32>(1032f, -1023f, -550f, -967f), vec4<f32>(-1751f, -928f, 196f, -1604f), vec4<f32>(-261f, -2052f, 1000f, -451f), vec4<f32>(-1604f, 983f, 183f, 1000f), vec4<f32>(1186f, -471f, -884f, 332f), vec4<f32>(-111f, -507f, -2014f, 1617f), vec4<f32>(-1155f, -354f, 1000f, 520f), vec4<f32>(-144f, 316f, -2679f, 1842f), vec4<f32>(-999f, 917f, -1000f, -1593f), vec4<f32>(161f, -1338f, -879f, -1768f), vec4<f32>(-797f, 2405f, -400f, 156f), vec4<f32>(-131f, 1848f, -1000f, 119f), vec4<f32>(1000f, 300f, 166f, -1595f), vec4<f32>(-494f, 1693f, 1175f, 413f), vec4<f32>(999f, 159f, 251f, 1703f), vec4<f32>(-1126f, 1470f, -706f, 759f), vec4<f32>(-546f, 2576f, -1723f, 243f), vec4<f32>(-511f, -1097f, -1562f, -545f), vec4<f32>(-616f, -701f, 1000f, -1238f), vec4<f32>(-117f, -762f, 961f, -350f));

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 3>;

var<private> global3: f32 = -233f;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> vec2<i32> {
    let var_0 = 35193u;
    let var_1 = arg_2.a ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(arg_1.xy, vec2<i32>(arg_1.x, 31375i)), vec2<i32>(2147483647i, ~arg_2.a));
    let var_2 = -vec2<i32>(~_wgslsmith_mod_i32(reverseBits(global1.c.a), -u_input.a), ~1i);
    let var_3 = min(vec4<i32>(var_1, -arg_1.x, ~var_1, reverseBits(select(arg_1.x, 63918i, global1.c.c)) << (select(1u, select(u_input.b.x, 0u, global1.b.c), any(vec2<bool>(arg_2.c, false))) % 32u)), arg_1);
    global1 = Struct_2(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 4294967295u, 91644u, 1u) & reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3, 30095u, 16472u, 0u), vec4<u32>(93654u, arg_3, global1.a.x, 45373u))), global1.a << (reverseBits(vec4<u32>(arg_3, u_input.b.x, 64048u, global1.a.x)) % vec4<u32>(32u))), global1.b, arg_2, global1.d);
    return _wgslsmith_mult_vec2_i32(var_2, vec2<i32>(-u_input.c, ~_wgslsmith_mult_i32(var_1, -52844i) & _wgslsmith_mod_i32(global1.c.a, select(-9797i, -28626i, global1.c.c))));
}

fn func_4(arg_0: vec2<i32>) -> u32 {
    var var_0 = -u_input.c;
    let var_1 = firstTrailingBit(i32(-1i) * -(u_input.c << (abs(global1.a.x) % 32u)));
    let var_2 = Struct_1(-34893i, -1271f, global1.c.c);
    let var_3 = false;
    global3 = global1.b.b;
    return u_input.b.x;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = 9292i <= _wgslsmith_sub_i32(-arg_0, 1i);
    var_0 = arg_1.c;
    let var_1 = func_4(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -1788i, arg_1.a), vec4<i32>(0i, global1.c.a, u_input.a, global1.b.a)), _wgslsmith_add_i32(u_input.c, -2147483647i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -2147483647i), select(vec2<i32>(2147483647i, u_input.c), func_3(global1.b.b, vec4<i32>(global1.b.a, u_input.a, -9745i, arg_1.a), Struct_1(arg_0, 482f, false), 0u), vec2<bool>(false, global1.b.c)), vec2<i32>(-62026i, -30570i))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(653f + _wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(abs(arg_1.b))), _wgslsmith_f_op_f32(arg_1.b + 756f))));
    var var_3 = global1.d;
    return Struct_1(_wgslsmith_mult_i32(arg_0, arg_0), arg_1.b, true);
}

fn func_1(arg_0: f32) -> vec4<u32> {
    var var_0 = Struct_2(global1.a, func_2(279i, Struct_1(-9371i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) * _wgslsmith_f_op_f32(exp2(arg_0))), false)), Struct_1(max(func_3(_wgslsmith_f_op_f32(sign(global1.b.b)), -vec4<i32>(41676i, 2147483647i, u_input.a, global1.c.a), global2[_wgslsmith_index_u32(u_input.b.x, 3u)], 4294967295u).x, 14012i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(310f - _wgslsmith_f_op_f32(-global1.b.b)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_0, -2360f)), global1.b.b, false))), any(select(vec3<bool>(true, true, global1.c.c), !vec3<bool>(false, global1.b.c, false), any(vec4<bool>(global1.b.c, false, true, global1.c.c))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-561f, _wgslsmith_f_op_f32(round(arg_0)))) - vec2<f32>(arg_0, arg_0)));
    var var_1 = all(!select(vec4<bool>(global1.b.c && var_0.b.c, true, any(vec2<bool>(true, false)), !global1.c.c), !vec4<bool>(var_0.b.c, true, var_0.c.c, var_0.b.c), true));
    var var_2 = Struct_2(countOneBits(vec4<u32>(23857u, ~(~0u), ~18919u, _wgslsmith_mod_u32(~var_0.a.x, u_input.b.x))), Struct_1(~(-1i) << (_wgslsmith_div_u32(_wgslsmith_add_u32(1u, global1.a.x), global1.a.x ^ global1.a.x) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(!vec4<bool>(false, global1.b.c, true, var_0.b.c))), Struct_1(var_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.d.x * -431f)))), !(!(false & global1.c.c))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global1.d + _wgslsmith_f_op_vec2_f32(select(global1.d, vec2<f32>(global1.c.b, 1169f), true))))));
    var_2 = Struct_2(_wgslsmith_mod_vec4_u32(select(~var_2.a, select(~var_2.a, var_0.a, var_2.c.c && global1.c.c), true), ~var_0.a), var_0.b, func_2(_wgslsmith_mult_i32(reverseBits(global1.b.a), func_2(var_2.c.a, global2[_wgslsmith_index_u32(u_input.b.x, 3u)]).a), Struct_1(~func_3(global1.b.b, vec4<i32>(0i, u_input.a, u_input.a, -1i), var_0.b, global1.a.x).x, -1000f, !(!global1.b.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.d * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.d - vec2<f32>(647f, 729f)) * _wgslsmith_f_op_vec2_f32(max(var_2.d, global1.d))))));
    let var_3 = firstTrailingBit(firstTrailingBit(~(i32(-1i) * -44098i)));
    return var_2.a ^ var_0.a;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: f32) -> Struct_2 {
    let var_0 = arg_0.b;
    global2 = array<Struct_1, 3>();
    let var_1 = arg_0;
    var var_2 = ~select(vec4<i32>(11805i, global1.c.a ^ 2147483647i, reverseBits(global1.b.a), -u_input.a), vec4<i32>(1i, 7049i, 15715i, var_0.a) ^ vec4<i32>(arg_0.b.a, var_0.a, 12010i, global1.c.a), arg_1.x) | (vec4<i32>(~min(7887i, var_0.a), u_input.a, arg_0.c.a >> (0u % 32u), -2147483647i) & ~vec4<i32>(u_input.c << (var_1.a.x % 32u), reverseBits(28094i), 7704i, global1.c.a));
    var var_3 = 206f;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 30>();
    let var_0 = -vec2<i32>(~(1i | min(-2147483647i, global1.b.a)), global1.b.a);
    var var_1 = func_5(Struct_2(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.b) - _wgslsmith_f_op_f32(global1.d.x - 318f))), global2[_wgslsmith_index_u32(~1u, 3u)], Struct_1(_wgslsmith_mult_i32(global1.b.a, 12490i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -13164i), var_0), global1.b.b, true), global1.d), select(select(!vec3<bool>(true, global1.c.c, true), vec3<bool>(false, true, global1.a.x <= 26322u), !(!vec3<bool>(true, global1.b.c, false))), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, global1.c.c, true), vec3<bool>(global1.c.c, global1.c.c, global1.c.c), global1.c.c), vec3<bool>(false, global1.c.c, global1.c.c)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), !select(vec3<bool>(global1.c.c, global1.b.c, true), vec3<bool>(true, false, true), vec3<bool>(global1.c.c, false, global1.c.c)), global1.b.c)), !(!vec2<bool>(select(global1.c.c, global1.c.c, false), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x - global1.d.x)))));
    let var_2 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(((vec2<i32>(var_1.c.a, var_0.x) ^ var_0) ^ -vec2<i32>(1i, var_1.b.a)) >> (global1.a.zx % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(~var_0, ~vec2<i32>(0i, -13317i)), var_0, _wgslsmith_mult_vec2_i32(-var_0, ~vec2<i32>(-2147483647i, var_2.a))), _wgslsmith_sub_vec2_i32(~var_0 << (vec2<u32>(u_input.b.x, 13995u) % vec2<u32>(32u)), ~(~vec2<i32>(var_0.x, var_2.a)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(var_1.c.a, u_input.a, global1.c.a)) ^ vec3<i32>(var_2.a, var_0.x, u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.a, -1i, global1.c.a), ~vec3<i32>(-2147483647i, -20429i, u_input.c))), countOneBits(-countOneBits(vec3<i32>(-2147483647i, 2147483647i, var_1.b.a))), vec3<i32>(_wgslsmith_div_i32(abs(global1.b.a), var_1.b.a), -15096i, var_0.x)), var_1.a.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b - global1.b.b) + _wgslsmith_div_f32(global1.d.x, 1396f)), _wgslsmith_f_op_f32(global1.c.b - global1.c.b), var_1.b.c))), -6171i);
}

