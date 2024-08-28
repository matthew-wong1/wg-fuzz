struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<u32, 9> = array<u32, 9>(5996u, 0u, 5916u, 0u, 19242u, 70287u, 65631u, 17050u, 27535u);

var<private> global2: array<bool, 32> = array<bool, 32>(false, false, false, true, true, true, true, false, true, false, true, false, true, false, true, true, true, false, true, false, true, false, false, true, true, true, true, true, false, false, false, true);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec3<u32> {
    global0 = (u_input.b & vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b.zyz, vec3<i32>(u_input.c, 7628i, 2147483647i)), firstTrailingBit(_wgslsmith_mod_i32(u_input.d, -12186i)), global0.x, -global0.x)) << (arg_0.d % vec4<u32>(32u));
    global2 = array<bool, 32>();
    var var_0 = arg_0.c;
    var var_1 = arg_0;
    var var_2 = abs(~_wgslsmith_sub_i32(firstTrailingBit(0i), ~u_input.a));
    return arg_0.d.xyy;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global2 = array<bool, 32>();
    let var_0 = !(!select(!select(vec4<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32270u, 9u)], 9u)], 32u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54650u, 9u)], 32u)], global2[_wgslsmith_index_u32(30182u, 32u)], false), vec4<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 9u)], 32u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(11022u, 32u)], false)), vec4<bool>(false || global2[_wgslsmith_index_u32(28331u, 32u)], 2325i >= global0.x, false, global2[_wgslsmith_index_u32(4294967295u, 32u)]), !(u_input.c != 0i)));
    global2 = array<bool, 32>();
    let var_1 = _wgslsmith_add_vec3_u32(min(~vec3<u32>(1u, 11821u, 0u), ~func_3(Struct_1(true, global1[_wgslsmith_index_u32(1726u, 9u)], vec2<f32>(1000f, 798f), vec4<u32>(arg_0, arg_0, 4294967295u, arg_0)), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0, 32u)], var_0.x, false))), abs(reverseBits(firstLeadingBit(vec3<u32>(14275u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 9u)], 9u)], 43375u))))) ^ vec3<u32>(abs(13606u), ~_wgslsmith_mod_u32(_wgslsmith_add_u32(arg_0, arg_0), func_3(Struct_1(var_0.x, 10647u, vec2<f32>(621f, 1589f), vec4<u32>(54651u, 1u, global1[_wgslsmith_index_u32(arg_0, 9u)], arg_0)), var_0).x), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 3771u), reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(0u, 9u)], 4294967295u))), _wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 4294967295u), 4294967295u)));
    global0 = ~abs(reverseBits(max(u_input.b, max(u_input.b, u_input.b))));
    return Struct_1(var_0.x, _wgslsmith_div_u32(abs(global1[_wgslsmith_index_u32(arg_0, 9u)]), min(abs(18777u), min(4294967295u, ~8812u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1f + -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1814f)) * _wgslsmith_f_op_f32(floor(-428f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-931f, 829f), vec2<f32>(-810f, -658f)))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1668f, 282f))))), firstLeadingBit(vec4<u32>(22287u, ~(30024u | arg_0), select(arg_0, ~var_1.x, !global2[_wgslsmith_index_u32(31983u, 32u)]), 1u)));
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = firstLeadingBit(firstLeadingBit(global0.yx) << (func_3(func_2(arg_0.d.x & arg_0.b), vec4<bool>(arg_0.c.x < arg_0.c.x, true, any(vec3<bool>(true, arg_0.a, arg_0.a)), arg_0.a)).yy % vec2<u32>(32u)));
    var var_1 = ~(~(countOneBits(~vec2<u32>(0u, arg_0.d.x)) & vec2<u32>(~arg_0.d.x, 36139u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)])));
    let var_2 = func_2(var_1.x);
    var var_3 = Struct_2(func_2(93801u), var_0.x);
    var var_4 = Struct_1(any(select(!vec2<bool>(var_3.a.a, global2[_wgslsmith_index_u32(0u, 32u)]), select(vec2<bool>(true, true), select(vec2<bool>(false, arg_0.a), vec2<bool>(false, global2[_wgslsmith_index_u32(23124u, 32u)]), arg_0.a), !vec2<bool>(true, var_2.a)), vec2<bool>(true, true))), abs(~var_3.a.b), vec2<f32>(_wgslsmith_f_op_f32(-1065f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.a.c.x - 428f), _wgslsmith_f_op_f32(trunc(var_3.a.c.x)), true))), _wgslsmith_f_op_f32(-257f - _wgslsmith_f_op_f32(var_3.a.c.x + _wgslsmith_div_f32(1308f, -902f)))), ~(~var_3.a.d));
    return i32(-1i) * -var_3.b;
}

fn func_1(arg_0: vec4<bool>) -> vec2<u32> {
    let var_0 = global0.x;
    global1 = array<u32, 9>();
    global1 = array<u32, 9>();
    global2 = array<bool, 32>();
    global0 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(global0.x, _wgslsmith_div_i32(~u_input.b.x, countOneBits(70429i))), func_4(func_2(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2296u, 9u)], 9u)]))), min(12690i, global0.x) ^ _wgslsmith_dot_vec3_i32(select(select(vec3<i32>(u_input.d, -1i, -1i), u_input.b.yyx, arg_0.x), abs(u_input.b.yyw), !arg_0.xyy), vec3<i32>(u_input.a, _wgslsmith_sub_i32(u_input.b.x, 20462i), -global0.x)), 48821i, i32(-1i) * -2221i);
    return ~vec2<u32>(1u, global1[_wgslsmith_index_u32(0u, 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.d, -1001i), u_input.b.wwz), 2147483647i) << (_wgslsmith_mod_u32(~47075u, global1[_wgslsmith_index_u32(1u, 9u)] | ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)]) % 32u));
    var var_1 = 1i;
    let var_2 = ~select(~(~func_1(vec4<bool>(true, false, global2[_wgslsmith_index_u32(34419u, 32u)], false))), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 9444u), vec2<u32>(50192u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(47960u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], 9u)]))), true && global2[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21668u, 9u)], 9u)]).b, countOneBits(global1[_wgslsmith_index_u32(38070u, 9u)])), 32u)]);
    var var_3 = Struct_1(global2[_wgslsmith_index_u32(1u, 32u)] && true, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 9u)], var_2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1762f), _wgslsmith_f_op_f32(1000f + 882f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(809f, 512f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(531f, 1000f), vec2<f32>(160f, -301f), true))))), _wgslsmith_clamp_vec4_u32(func_2(~min(52726u, global1[_wgslsmith_index_u32(var_2.x, 9u)])).d, ~max(~vec4<u32>(1u, 23908u, global1[_wgslsmith_index_u32(var_2.x, 9u)], 59368u), vec4<u32>(63631u, global1[_wgslsmith_index_u32(var_2.x, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], 21721u)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, var_2.x, 4294967295u), vec4<u32>(0u, var_2.x, var_2.x, 19843u)), countOneBits(vec4<u32>(0u, 4294967295u, 74634u, var_2.x))), vec4<u32>(abs(83730u), 0u, global1[_wgslsmith_index_u32(var_2.x, 9u)], _wgslsmith_add_u32(var_2.x, var_2.x)))));
    let var_4 = ~(-_wgslsmith_sub_vec4_i32(~u_input.b, countOneBits(vec4<i32>(global0.x, -2147483647i, 3040i, u_input.d) ^ vec4<i32>(0i, global0.x, u_input.d, u_input.c))));
    global1 = array<u32, 9>();
    global0 = vec4<i32>(global0.x, -firstLeadingBit(var_4.x), -26650i, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.c.x, 519f, -1156f), vec3<f32>(var_3.c.x, var_3.c.x, 147f))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_3.c.x, var_3.c.x, var_3.c.x), vec3<f32>(264f, -188f, var_3.c.x))))), -1247f);
}

