struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1568f, -495f, 1558f);

var<private> global1: array<i32, 19> = array<i32, 19>(2147483647i, -1487i, 1i, 0i, 33940i, i32(-2147483648), -65966i, 2147483647i, -1i, 17550i, 1i, 20443i, -46980i, 2147483647i, i32(-2147483648), 4191i, -30613i, 3882i, i32(-2147483648));

var<private> global2: f32 = -970f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>) -> vec4<f32> {
    global2 = global0.x;
    global1 = array<i32, 19>();
    var var_0 = ~103827u;
    var var_1 = all(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(all(vec3<bool>(true, true, true)), false, true), !vec3<bool>(true, all(vec3<bool>(false, true, false)), true)));
    let var_2 = Struct_1(vec3<bool>(true, false, true), firstLeadingBit(73853u));
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(854f, -1558f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) + 953f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(999f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, global0.x))) - global0.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(996f, 1440f, -342f, -465f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.x, global0.x, global0.x)), vec4<f32>(182f, global0.x, global0.x, 1288f))))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec4<f32>) -> vec4<i32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2236f - _wgslsmith_f_op_f32(961f + 666f)))), _wgslsmith_f_op_f32(-arg_3.x), global0.x, arg_3.x);
    var var_1 = Struct_1(arg_0.a, select(arg_0.b, ~countOneBits(_wgslsmith_sub_u32(0u, arg_1.b)), all(arg_1.a) || (arg_3.x == _wgslsmith_f_op_f32(f32(-1f) * -129f))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * arg_3.x)) * _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(1318f + -932f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(553f, _wgslsmith_f_op_f32(select(arg_3.x, var_0.x, arg_2.x)))))), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1184f * global0.x))))));
    var var_2 = !(!arg_0.a.x);
    let var_3 = all(vec4<bool>(false, !all(vec2<bool>(true, true)), var_1.a.x, any(select(arg_1.a, vec3<bool>(true, true, true), var_1.a.x))));
    return countOneBits(vec4<i32>(-8859i, _wgslsmith_clamp_i32(firstLeadingBit(0i), ~(u_input.a & global1[_wgslsmith_index_u32(arg_0.b, 19u)]), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(arg_1.b, 19u)], global1[_wgslsmith_index_u32(~arg_1.b, 19u)])), 1i, min(_wgslsmith_sub_i32(41329i, -1i) >> (_wgslsmith_mod_u32(13214u, arg_1.b) % 32u), 1i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<i32>) -> vec3<f32> {
    var var_0 = ~select(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 10566i, global1[_wgslsmith_index_u32(1u, 19u)], -2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], -2147483647i, -39026i, arg_2.x)), -vec4<i32>(global1[_wgslsmith_index_u32(arg_1.x, 19u)], u_input.a, -2147483647i, global1[_wgslsmith_index_u32(arg_1.x, 19u)])) & vec4<i32>(0i >> (arg_1.x % 32u), -1i & u_input.c, 0i, countOneBits(-15286i)), countOneBits(select(vec4<i32>(u_input.a, -42019i, arg_2.x, u_input.b.x), vec4<i32>(arg_2.x, -47785i, arg_2.x, global1[_wgslsmith_index_u32(65756u, 19u)]), false) >> (~vec4<u32>(arg_0.b, arg_0.b, 1u, 0u) % vec4<u32>(32u))), true);
    var_0 = func_4(arg_0, arg_0, arg_0.a.zz, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, -196f, 1159f, -986f))) - _wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(u_input.b.x, -1i, u_input.a, var_0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2037f, global0.x, 156f, 1514f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(713f, -1288f, 367f, global0.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -480f) + vec4<f32>(-407f, global0.x, 382f, global0.x))))))));
    var_0 = select(reverseBits(vec4<i32>(-37951i, arg_2.x, global1[_wgslsmith_index_u32(arg_1.x, 19u)], arg_2.x) << (abs(vec4<u32>(9850u, arg_0.b, 12147u, 30979u)) % vec4<u32>(32u))), func_4(Struct_1(!arg_0.a, 24871u), arg_0, arg_0.a.yx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(global1[_wgslsmith_index_u32(arg_0.b, 19u)], 14596i, u_input.c, u_input.b.x))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1057f, 1702f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x))))), arg_0.a.x) | -vec4<i32>(max(1i, _wgslsmith_dot_vec3_i32(var_0.wxz, var_0.zwx)), _wgslsmith_dot_vec3_i32(max(var_0.wwz, var_0.xwz), vec3<i32>(var_0.x, u_input.c, 2147483647i) << (vec3<u32>(arg_0.b, arg_0.b, 43549u) % vec3<u32>(32u))), -2147483647i, -global1[_wgslsmith_index_u32(arg_0.b | arg_1.x, 19u)]);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, arg_2.x))).wyz)));
    global1 = array<i32, 19>();
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(449f, -435f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -476f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 864f, global0.x), vec3<f32>(global0.x, global0.x, 1301f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(297f, 1137f, -1000f), vec3<f32>(global0.x, -298f, global0.x))), vec3<f32>(global0.x, global0.x, global0.x))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2(arg_1, firstTrailingBit(countOneBits(vec2<u32>(10976u, arg_1.b))), -vec2<i32>(13996i, u_input.c))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-507f, 900f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1035f, global0.x, -1281f))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1695f, _wgslsmith_f_op_f32(306f + 1951f), _wgslsmith_f_op_f32(-global0.x)))) * vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(abs(vec4<i32>(-33444i, u_input.b.x, global1[_wgslsmith_index_u32(arg_1.b, 19u)], -1i)))).x, 471f, global0.x))));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-531f, global0.x, 478f) * vec3<f32>(global0.x, 421f, -316f))) * _wgslsmith_f_op_vec3_f32(func_2(Struct_1(!vec3<bool>(false, false, arg_0.x), 1u ^ arg_1.b), max(vec2<u32>(11388u, arg_1.b), ~vec2<u32>(arg_1.b, arg_1.b)), -u_input.b.xz))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, 1171f, -1656f))), vec3<f32>(var_0.x, -123f, _wgslsmith_f_op_f32(-global0.x)), all(select(arg_1.a, arg_1.a, arg_0.x))))));
    let var_1 = ~arg_1.b;
    return 1u;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = Struct_1(select(select(!var_0.a, select(!var_0.a, select(var_0.a, vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(true, true, false)), !arg_0.a.x), vec3<bool>(!var_0.a.x, all(vec2<bool>(var_0.a.x, false)), true)), vec3<bool>(arg_0.a.x, false, true), ~abs(0u) < _wgslsmith_mod_u32(84453u >> (arg_0.b % 32u), var_0.b)), var_0.b);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, -176f), vec3<f32>(global0.x, 591f, global0.x), var_1.a.x))))));
    let var_2 = var_0;
    var var_3 = min(~(-min(vec4<i32>(u_input.b.x, -36409i, global1[_wgslsmith_index_u32(1u, 19u)], u_input.a), vec4<i32>(global1[_wgslsmith_index_u32(var_0.b, 19u)], -10724i, 1i, -31937i))) ^ ~_wgslsmith_mult_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(var_1.b, 19u)], 1i, -1i, 9789i), firstTrailingBit(vec4<i32>(-24826i, 19498i, u_input.b.x, u_input.b.x))), min(_wgslsmith_add_vec4_i32(vec4<i32>(21972i, u_input.c, u_input.c, global1[_wgslsmith_index_u32(var_1.b, 19u)]), vec4<i32>(0i, -13314i, u_input.a, 1i)) << (~vec4<u32>(var_1.b, 1u, 1u, 1u) % vec4<u32>(32u)), -reverseBits(vec4<i32>(-24130i, global1[_wgslsmith_index_u32(arg_0.b, 19u)], 44872i, u_input.a))) >> (_wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(var_1.b, var_2.b, var_2.b, var_1.b)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b, var_0.b, arg_0.b, arg_0.b), vec4<u32>(1u, 2675u, var_0.b, 1u)), _wgslsmith_div_u32(var_1.b, var_1.b), ~4294967295u, 108818u), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(92252u, 4354u, arg_0.b, 27579u), vec4<u32>(0u, 0u, var_2.b, var_0.b)), _wgslsmith_clamp_u32(32314u, var_2.b, arg_0.b), 0u)) % vec4<u32>(32u)));
    return var_2;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec4<i32>) -> bool {
    let var_0 = Struct_1(!(!vec3<bool>(arg_0 >= arg_1.b, true, true)), abs(~(~4294967295u)));
    var var_1 = func_5(Struct_1(vec3<bool>(~(-2147483647i) != ~arg_3.x, !(!arg_2.x), arg_1.a.x), ~func_1(var_0.a.yy, func_5(Struct_1(var_0.a, arg_1.b)))));
    let var_2 = func_1(vec2<bool>(min(~var_0.b, _wgslsmith_clamp_u32(arg_1.b, 1u, arg_0)) > var_1.b, !arg_2.x), Struct_1(func_5(func_5(var_0)).a, ~80670u));
    var var_3 = func_5(arg_1);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(global0.x - global0.x));
    return !select(false, false, var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_6(~(~110355u), func_5(Struct_1(vec3<bool>(false, false, false), func_1(vec2<bool>(false, true), Struct_1(vec3<bool>(false, false, false), 0u)))), !func_5(func_5(Struct_1(vec3<bool>(false, false, true), 0u))).a.xx, ~func_4(Struct_1(vec3<bool>(false, false, false), 1u), func_5(Struct_1(vec3<bool>(false, true, true), 4294967295u)), vec2<bool>(false, false), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1766f, global0.x, 2417f, -1993f))))), true, func_6(~func_1(vec2<bool>(true, true), func_5(Struct_1(vec3<bool>(false, false, true), 4294967295u))), func_5(func_5(Struct_1(vec3<bool>(false, true, false), 1u))), vec2<bool>(true, true), -(~countOneBits(vec4<i32>(21034i, global1[_wgslsmith_index_u32(9701u, 19u)], 69103i, u_input.c)))));
    var var_1 = func_5(Struct_1(var_0, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yx, var_1.b);
}

