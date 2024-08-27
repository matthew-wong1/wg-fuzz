struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(-34088i);

var<private> global1: array<i32, 14>;

var<private> global2: bool = true;

var<private> global3: vec4<u32>;

var<private> global4: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - -918f), _wgslsmith_f_op_f32(-456f + -588f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1147f)) + 1029f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(921f * 401f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1591f, 717f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(282f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, 1402f, var_0), vec3<f32>(-1227f, var_0, var_0)))))));
    var var_2 = Struct_1(true | any(arg_0.yz));
    global4 = all(vec3<bool>(true, true, true));
    var var_3 = any(vec3<bool>(true, true, all(vec3<bool>(!arg_0.x, global1[_wgslsmith_index_u32(global3.x, 14u)] <= 16756i, any(arg_0.zxz)))));
    return -1348f;
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<bool>, arg_3: vec3<u32>) -> u32 {
    var var_0 = vec2<i32>(-global0[_wgslsmith_index_u32(4294967295u, 1u)], 0i);
    return _wgslsmith_add_u32(select(global3.x, reverseBits(global3.x), false), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, arg_3.x) >> (arg_3.zy % vec2<u32>(32u)), global3.zz), ~(4294967295u | global3.x)), arg_3.x));
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = ~1i << (global3.x % 32u);
    var var_1 = vec2<f32>(arg_0, -557f);
    global4 = !(all(vec4<bool>(true, true, true, true)) || !(!(arg_0 < var_1.x)));
    global2 = !(func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(344f, 344f, 399f), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, var_1.x, var_1.x), vec3<f32>(var_1.x, var_1.x, var_1.x)))), _wgslsmith_f_op_f32(func_3(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)))), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), ~(~global3.zyw)) != 4849u);
    let var_2 = Struct_3(-1244f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1071f) + _wgslsmith_f_op_f32(floor(var_1.x))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -445f))), 14340i, true, Struct_2(17524u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_1.x, 457f) - vec3<f32>(740f, arg_0, -483f))))), ~(~global3.x) >= 4294967295u, abs(48778u)));
    return !any(select(select(select(vec3<bool>(false, true, var_2.e.c), vec3<bool>(var_2.d, var_2.e.c, true), var_2.d), select(vec3<bool>(var_2.b.a, false, var_2.e.c), vec3<bool>(true, var_2.e.c, var_2.e.c), vec3<bool>(false, var_2.d, false)), !vec3<bool>(var_2.d, true, var_2.b.a)), select(vec3<bool>(true, true, true), vec3<bool>(var_2.b.a, false, var_2.b.a), var_2.b.a), u_input.a.x > 10250i));
}

fn func_5(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(~_wgslsmith_dot_vec2_u32(global3.xw, vec2<u32>(31962u, _wgslsmith_mod_u32(global3.x, 0u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-165f)), -553f, -465f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1097f, -566f, -288f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(532f, -470f, 376f))))))), arg_0, ~max(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-102f, 953f, -244f)), _wgslsmith_f_op_f32(-325f + 1045f), vec3<bool>(false, true, false), ~vec3<u32>(global3.x, 0u, global3.x)), 1u));
    global4 = !var_0.c;
    let var_1 = vec3<bool>(var_0.c, all(select(!select(vec2<bool>(true, true), vec2<bool>(false, arg_0), vec2<bool>(false, var_0.c)), select(vec2<bool>(false, var_0.c), select(vec2<bool>(arg_0, var_0.c), vec2<bool>(true, arg_0), vec2<bool>(arg_0, false)), vec2<bool>(true, arg_0)), all(!vec3<bool>(var_0.c, var_0.c, arg_0)))), arg_0);
    let var_2 = -_wgslsmith_clamp_vec4_i32(~(-select(vec4<i32>(global0[_wgslsmith_index_u32(13112u, 1u)], 0i, global0[_wgslsmith_index_u32(var_0.d, 1u)], u_input.a.x), vec4<i32>(1i, global1[_wgslsmith_index_u32(4294967295u, 14u)], -51370i, 1i), false)), vec4<i32>(arg_1.x, ~(-u_input.b), arg_1.x, arg_1.x & 0i), -min(vec4<i32>(u_input.b, -2147483647i, 45914i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, -26777i, 8291i, u_input.b), vec4<i32>(-1i, global0[_wgslsmith_index_u32(global3.x, 1u)], 0i, 69664i))));
    let var_3 = var_1.xy;
    return Struct_1(select(false, func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-795f - var_0.b.x)))), !var_0.c));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    global3 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(28187u, 0u, arg_0.x, 0u), arg_0), 1u), _wgslsmith_add_u32(4294967295u, arg_0.x) & ~arg_0.x), arg_0.x, ~55470u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, global3.x), arg_0.wy)), select(~(~min(vec4<u32>(1u, global3.x, 16666u, global3.x), vec4<u32>(0u, 69869u, 39408u, arg_0.x))), arg_0, !arg_2.x));
    var var_0 = _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_sub_vec4_i32(~reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], 19580i, 23571i, global0[_wgslsmith_index_u32(48851u, 1u)])), _wgslsmith_add_vec4_i32(abs(vec4<i32>(global0[_wgslsmith_index_u32(56950u, 1u)], -1i, -2147483647i, 56910i)), -vec4<i32>(17445i, 2147483647i, global1[_wgslsmith_index_u32(arg_0.x, 14u)], global1[_wgslsmith_index_u32(global3.x, 14u)])))), vec4<i32>(global0[_wgslsmith_index_u32(~4294967295u, 1u)], -11658i, ~u_input.b & global0[_wgslsmith_index_u32(max(global3.x, arg_0.x), 1u)], 2147483647i), ~(-max(vec4<i32>(global0[_wgslsmith_index_u32(32733u, 1u)], -1i, global0[_wgslsmith_index_u32(63253u, 1u)], -2147483647i) << (vec4<u32>(global3.x, arg_0.x, 112889u, 2030u) % vec4<u32>(32u)), abs(vec4<i32>(1i, global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(global3.x, 14u)], -23561i)))));
    var var_1 = Struct_1(!(true | func_2(_wgslsmith_f_op_f32(select(-1335f, -1899f, arg_2.x)))));
    var var_2 = u_input.a;
    let var_3 = func_5(!any(vec4<bool>(var_1.a, true, true, !arg_1.a)), vec3<i32>(u_input.a.x, -(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(6184u, 1u)], 19790i, global1[_wgslsmith_index_u32(arg_0.x, 14u)]), var_0.xwy) & -23994i), var_2.x));
    return -77045i;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> Struct_2 {
    global1 = array<i32, 14>();
    global4 = false;
    var var_0 = Struct_1(false);
    let var_1 = select(!(!(!select(vec2<bool>(true, true), vec2<bool>(false, var_0.a), vec2<bool>(false, true)))), !vec2<bool>(var_0.a, ~1u < ~global3.x), var_0.a);
    var var_2 = countOneBits(func_6(_wgslsmith_add_vec4_u32(min(select(vec4<u32>(16319u, 16496u, global3.x, global3.x), vec4<u32>(71399u, global3.x, 0u, 10425u), false), _wgslsmith_add_vec4_u32(vec4<u32>(global3.x, 0u, global3.x, 10289u), vec4<u32>(global3.x, 19504u, 1u, 40865u))), vec4<u32>(30926u, _wgslsmith_dot_vec3_u32(global3.zwy, vec3<u32>(14431u, 4294967295u, global3.x)), ~4294967295u, 41442u)), func_5(func_2(arg_1), vec3<i32>(u_input.b & global1[_wgslsmith_index_u32(102062u, 14u)], 1i, arg_0.x)), select(select(select(vec3<bool>(false, var_1.x, var_0.a), vec3<bool>(var_1.x, var_0.a, var_1.x), true), !vec3<bool>(false, false, var_0.a), vec3<bool>(var_1.x, var_1.x, true)), !select(vec3<bool>(true, var_0.a, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_0.a, var_1.x, false)), all(!vec3<bool>(false, var_1.x, var_1.x)))));
    return Struct_2(_wgslsmith_clamp_u32(global3.x | (global3.x | global3.x), ~_wgslsmith_div_u32(global3.x, ~global3.x), 31718u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(1180f, -544f, arg_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, arg_1, arg_1))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -1072f, arg_1))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, arg_1, arg_1))))))), all(!(!select(vec3<bool>(var_1.x, var_0.a, true), vec3<bool>(var_1.x, var_0.a, var_0.a), var_0.a))), firstTrailingBit(119951u));
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global3 = _wgslsmith_mult_vec4_u32((_wgslsmith_mult_vec4_u32(max(vec4<u32>(45540u, 4294967295u, 4158u, 1u), vec4<u32>(39629u, global3.x, 36149u, 29043u)), vec4<u32>(global3.x, arg_1.a, 1u, global3.x) << (vec4<u32>(25784u, 6203u, arg_1.a, 4294967295u) % vec4<u32>(32u))) << (vec4<u32>(global3.x, _wgslsmith_mult_u32(43466u, arg_1.d), arg_1.a, abs(arg_1.d)) % vec4<u32>(32u))) ^ ~(~vec4<u32>(71108u, global3.x, arg_1.a, global3.x) >> (select(vec4<u32>(33339u, arg_1.a, 4294967295u, 58529u), vec4<u32>(0u, 0u, 24463u, 9589u), false) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(firstTrailingBit(~(~vec4<u32>(global3.x, 4294967295u, 0u, 4294967295u))), _wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, 34001u, 0u, arg_1.d) >> (vec4<u32>(38163u, 0u, arg_1.d, 65579u) % vec4<u32>(32u))), firstLeadingBit(~vec4<u32>(arg_1.a, arg_1.a, 61171u, 18804u)))));
    var var_0 = _wgslsmith_div_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(~(~vec4<u32>(global3.x, 4294967295u, 0u, 32694u)), vec4<u32>(max(22533u, 4294967295u), arg_1.d, global3.x, abs(0u)))), ~vec4<u32>(6422u, max(4853u, _wgslsmith_mult_u32(8640u, global3.x)), global3.x, reverseBits(abs(0u))));
    var var_1 = 1317f;
    var var_2 = _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), func_2(1f) & arg_1.c));
    var var_3 = vec2<u32>(countOneBits(~(func_4(arg_1.b, arg_1.b.x, vec3<bool>(false, true, true), global3.wxw) | (1u << (1u % 32u)))), ~0u);
    return Struct_1(arg_1.c);
}

fn func_8(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    global1 = array<i32, 14>();
    let var_0 = _wgslsmith_mult_i32(min(0i, -_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(0u, 14u)] ^ global1[_wgslsmith_index_u32(global3.x, 14u)], i32(-1i) * -1i)), _wgslsmith_mod_i32(-1i, ~_wgslsmith_div_i32(~0i, i32(-1i) * -4125i)));
    var var_1 = arg_2;
    var var_2 = Struct_1(true);
    let var_3 = func_1(u_input.a, -1774f);
    return Struct_2(~_wgslsmith_add_u32(abs(global3.x), 17764u), _wgslsmith_f_op_vec3_f32(var_3.b + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -558f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1821f)))), _wgslsmith_f_op_f32(func_3(!vec4<bool>(arg_1, false, false, arg_1))))), var_1.a, ~(~8159u) << (0u % 32u));
}

fn func_9(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = ~vec3<u32>(arg_2.e.d, ~_wgslsmith_add_u32(abs(0u), 4294967295u), ~arg_2.e.a);
    var var_1 = global3.x;
    let var_2 = arg_2.d;
    var var_3 = reverseBits(~_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, global3.x, arg_1.a), vec4<u32>(var_0.x, arg_2.e.d, arg_2.e.a, arg_2.e.a)), vec4<u32>(_wgslsmith_sub_u32(var_0.x, global3.x), ~1u, func_4(arg_1.b, 1232f, vec3<bool>(true, false, var_2), var_0), func_1(vec2<i32>(global0[_wgslsmith_index_u32(0u, 1u)], 1i), arg_3.x).a)));
    global2 = arg_1.c;
    return func_7(vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(round(-652f)), 1f, -188f), Struct_2(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.e.a, 41813u, 4294967295u, 44744u), vec4<u32>(35267u, 30991u, 4294967295u, var_0.x)), arg_1.d, ~4294967295u), reverseBits(var_3.x)), func_8(474f, var_2, Struct_1(arg_0.a)).b, func_8(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(385f * 857f))), func_7(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1341f, 1244f, arg_1.b.x, -624f) - vec4<f32>(-755f, arg_1.b.x, arg_3.x, -335f)), Struct_2(global3.x, arg_2.e.b, arg_0.a, 4779u), func_7(vec4<f32>(680f, arg_3.x, arg_2.e.b.x, 565f), Struct_2(global3.x, arg_1.b, false, arg_1.a), Struct_1(true))).a, Struct_1(true)).c, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_1.a, _wgslsmith_dot_vec2_u32(var_0.xz, vec2<u32>(arg_2.e.d, global3.x)), ~71582u), ~global3.x, arg_2.e.d)), func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(553f, arg_1.b.x, arg_1.b.x, 622f), vec4<f32>(arg_1.b.x, 654f, arg_3.x, -1000f))), vec4<f32>(300f, 1000f, 1431f, 374f)))), arg_2.e, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_dot_vec3_i32((abs(vec3<i32>(global0[_wgslsmith_index_u32(global3.x, 1u)], u_input.b, global1[_wgslsmith_index_u32(global3.x, 14u)])) | ~vec3<i32>(8889i, u_input.a.x, u_input.a.x)) << (_wgslsmith_mult_vec3_u32(global3.wxy, vec3<u32>(51364u, global3.x, global3.x)) % vec3<u32>(32u)), vec3<i32>(~global0[_wgslsmith_index_u32(firstLeadingBit(global3.x), 1u)], 1i, 1i));
    let var_1 = func_9(Struct_1(!any(vec4<bool>(false, false, true, true))), func_8(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1055f) * -289f))), select(true, true, var_0 != 2147483647i) == (u_input.a.x < -global1[_wgslsmith_index_u32(55200u, 14u)]), func_7(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(667f, 172f, 573f, 1192f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -2221f, 3087f, -830f))))), func_1(u_input.a, _wgslsmith_f_op_f32(623f * 444f)), func_5(true, select(vec3<i32>(u_input.b, 1i, u_input.a.x), vec3<i32>(20455i, u_input.b, global1[_wgslsmith_index_u32(global3.x, 14u)]), false)))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(968f, _wgslsmith_f_op_f32(floor(1895f)))) - _wgslsmith_f_op_f32(func_8(474f, true, Struct_1(false)).b.x + -1098f)), Struct_1(true || any(vec3<bool>(false, true, true))), select(select(-var_0, _wgslsmith_div_i32(1i, u_input.a.x), true), -50676i, false), true, Struct_2(global3.x, func_8(_wgslsmith_div_f32(-290f, 1588f), global3.x > global3.x, func_7(vec4<f32>(2003f, 556f, 674f, 165f), Struct_2(global3.x, vec3<f32>(-300f, 1082f, -1353f), true, 85738u), Struct_1(true))).b, false, select(48154u, 4294967295u, true) & select(global3.x, 1u, true))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1492f + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-674f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(409f, 162f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1992f, 301f, -728f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-782f, -221f, -1154f), vec3<f32>(-265f, -188f, -2493f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1027f, 650f, -852f)))))));
    var var_2 = _wgslsmith_f_op_f32(func_3(vec4<bool>(false, var_1.a && var_1.a, true, var_1.a)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(trunc(808f)), Struct_1(true | all(vec4<bool>(true, var_1.a, var_1.a, var_1.a))), _wgslsmith_mult_i32(-1i, ~_wgslsmith_sub_i32(var_0, u_input.b)) >> (firstTrailingBit(4294967295u) % 32u), !func_9(Struct_1(true), func_8(_wgslsmith_f_op_f32(sign(1564f)), var_1.a, Struct_1(false)), Struct_3(-529f, Struct_1(true), 0i, !var_1.a, Struct_2(global3.x, vec3<f32>(1056f, -1006f, 305f), true, 0u)), vec3<f32>(-1156f, _wgslsmith_f_op_f32(-1099f * -494f), -1304f)).a, Struct_2(~111308u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-239f, -171f, -978f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(334f, 1000f, 485f), vec3<f32>(-592f, 2147f, 1370f)))))), var_1.a, ~50682u));
    global1 = array<i32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-443f, var_3.a, 445f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.e.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, var_3.e.b.x, var_3.e.b.x)))) - _wgslsmith_f_op_vec3_f32(var_3.e.b - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2048f, var_3.e.b.x, -1000f), var_3.e.b) * _wgslsmith_f_op_vec3_f32(var_3.e.b + var_3.e.b)))));
}

