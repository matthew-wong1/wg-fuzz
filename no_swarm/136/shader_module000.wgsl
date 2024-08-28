struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, -1i, -23248i);

var<private> global1: vec4<u32>;

var<private> global2: array<vec4<u32>, 19>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-1095f, 3047f, -1000f));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: i32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(select(890f, global3.a.x, false)), -989f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global3.a)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(734f, 2787f, arg_0))))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-164f))))) - _wgslsmith_f_op_f32(sign(-1000f)));
    global0 = _wgslsmith_div_vec3_i32(~_wgslsmith_clamp_vec3_i32(~abs(vec3<i32>(2147483647i, -27187i, arg_1)), countOneBits(vec3<i32>(u_input.c, global0.x, u_input.c)), firstLeadingBit(vec3<i32>(-61085i, u_input.c, -9577i))), ~abs(_wgslsmith_add_vec3_i32(vec3<i32>(-2445i, 0i, global0.x) >> (vec3<u32>(0u, u_input.a, 4294967295u) % vec3<u32>(32u)), min(vec3<i32>(23125i, -2147483647i, arg_1), vec3<i32>(20875i, 35467i, u_input.c)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(trunc(-275f)), 1013f))));
    let var_3 = ~min(max(_wgslsmith_clamp_u32(u_input.d, global1.x, _wgslsmith_dot_vec3_u32(global1.xww, vec3<u32>(15680u, global1.x, global1.x))), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global1.zyw, u_input.b, vec3<u32>(0u, u_input.d, u_input.b.x)), u_input.b & vec3<u32>(global1.x, 1u, global1.x))), ~_wgslsmith_mod_u32(firstLeadingBit(u_input.d), u_input.d));
    return !(_wgslsmith_sub_i32(_wgslsmith_add_i32(firstTrailingBit(-5464i), 1i), -2147483647i) > _wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(-20168i, 39520i, -30790i)), abs(select(vec3<i32>(arg_1, global0.x, arg_1), vec3<i32>(-1i, u_input.c, 2147483647i), vec3<bool>(true, true, true)))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global1 = firstTrailingBit(vec4<u32>(firstLeadingBit(~(~global1.x)), u_input.b.x, u_input.d, ~(~min(4294967295u, u_input.a))));
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(sign(arg_0.x)))))));
    global0 = ~firstLeadingBit(select(-(vec3<i32>(u_input.c, -73950i, 0i) ^ vec3<i32>(u_input.c, -2147483647i, u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global0.x, 1i), -vec3<i32>(u_input.c, -1i, u_input.c)), vec3<bool>(func_3(-965f, 49314i), global1.x <= u_input.d, select(false, true, true))));
    global3 = Struct_1(global3.a);
    let var_0 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), firstLeadingBit(global0.x) <= ~u_input.c), vec3<bool>(false, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), false), true)), false), true);
    return Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(-557f)), arg_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 761f, global3.a.x)) * _wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(-global3.a)))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(global3.a);
    let var_1 = ~vec4<u32>(1u, ~65754u, 15319u, 1u);
    let var_2 = u_input.c;
    global3 = func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.a.x + -1648f))) * global3.a.x), _wgslsmith_f_op_f32(-389f - 1272f), 1000f));
    let var_3 = true;
    return func_2(global3.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    let var_0 = vec2<i32>(-1i, -2147483647i);
    global1 = _wgslsmith_add_vec4_u32(select(~countOneBits(global2[_wgslsmith_index_u32(1u, 19u)]) | _wgslsmith_sub_vec4_u32(vec4<u32>(57889u, global1.x, global1.x, 1u) >> (vec4<u32>(1u, global1.x, 4294967295u, 1u) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(global1.x, 19u)]), ~(~global2[_wgslsmith_index_u32(u_input.a, 19u)]), arg_0.a.x > -229f), vec4<u32>(~_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(global1.x, 19u)], global2[_wgslsmith_index_u32(1u, 19u)]), 19u)], vec4<u32>(0u, 17286u, global1.x, 1u)), firstTrailingBit(37885u), ~(global1.x << ((48156u << (global1.x % 32u)) % 32u)), global1.x));
    global0 = abs(select(-_wgslsmith_mod_vec3_i32(vec3<i32>(1556i, var_0.x, 57181i), vec3<i32>(var_0.x, u_input.c, var_0.x)) ^ ~(vec3<i32>(39414i, -21635i, 35703i) & vec3<i32>(var_0.x, 17095i, 9679i)), vec3<i32>(max(_wgslsmith_mod_i32(global0.x, 1i), _wgslsmith_sub_i32(var_0.x, 66857i)), firstLeadingBit(u_input.c), -24696i), false));
    var var_1 = func_2(vec3<f32>(arg_1.x, arg_0.a.x, arg_0.a.x));
    global1 = vec4<u32>(4294967295u, global1.x, max(1u, ~_wgslsmith_sub_u32(countOneBits(0u), 97520u & global1.x)), u_input.d);
    return _wgslsmith_mult_u32(0u, countOneBits(1u));
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> vec3<i32> {
    global1 = arg_1;
    global0 = ~reverseBits((vec3<i32>(-2147483647i, 2147483647i, u_input.c) | -vec3<i32>(-42279i, u_input.c, 2147483647i)) ^ vec3<i32>(firstTrailingBit(28960i), -global0.x, abs(global0.x)));
    global3 = func_1(arg_2);
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_f32(-global3.a.x)).a.x)));
    global0 = ~_wgslsmith_add_vec3_i32(-max(vec3<i32>(2147483647i, 2147483647i, global0.x), vec3<i32>(u_input.c, u_input.c, -2147483647i)), vec3<i32>(u_input.c, -2147483647i, select(u_input.c, global0.x, true))) ^ ~_wgslsmith_sub_vec3_i32(min(-vec3<i32>(3153i, global0.x, -40381i), vec3<i32>(u_input.c, u_input.c, -1i)), ~(vec3<i32>(u_input.c, global0.x, 3220i) ^ vec3<i32>(-50543i, 17283i, 1i)));
    return -_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.c, 3308i, u_input.c)) << (vec3<u32>(~0u, ~14388u, global1.x >> (0u % 32u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-1i, global0.x, -5470i)), -vec3<i32>(global0.x, u_input.c, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(global3.a.x, -1735f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1229f, global3.a.x)) + _wgslsmith_f_op_f32(abs(global3.a.x))))));
    global0 = _wgslsmith_div_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(-9501i, 0i, -2147483647i), vec3<i32>(global0.x, 4073i, global0.x) ^ vec3<i32>(-25063i, 2856i, 2147483647i)), min(vec3<i32>(u_input.c, u_input.c, global0.x), select(_wgslsmith_sub_vec3_i32(vec3<i32>(-7413i, u_input.c, 51409i), vec3<i32>(-2147483647i, 2147483647i, global0.x)), -vec3<i32>(-1i, -31704i, u_input.c), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)))) & func_5(func_4(func_1(_wgslsmith_f_op_f32(-global3.a.x)), vec2<f32>(global3.a.x, var_0.a.x)), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) | 66413u, 19u)], -792f);
    global2 = array<vec4<u32>, 19>();
    let var_1 = _wgslsmith_mult_vec2_u32(u_input.b.zx, u_input.b.xx << (global1.wy % vec2<u32>(32u)));
    global2 = array<vec4<u32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer((vec2<i32>(-1i, u_input.c >> (u_input.b.x % 32u)) & global0.xy) & select(vec2<i32>(global0.x | 13098i, _wgslsmith_mod_i32(global0.x, u_input.c)), select(-global0.zz, func_5(4103u, vec4<u32>(u_input.b.x, 61719u, 0u, 62196u), -796f).yy, vec2<bool>(true, true)), vec2<bool>(true, true)), var_0.a.x, global0.zx << (_wgslsmith_sub_vec2_u32(min(~var_1, vec2<u32>(0u, 114048u)), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(28597u, 1u), u_input.b.xy))) % vec2<u32>(32u)), vec3<f32>(-371f, global3.a.x, -986f), 1i);
}

