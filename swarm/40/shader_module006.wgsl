struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21> = array<vec2<bool>, 21>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(0u, 27204u, 4294967295u), vec3<u32>(38045u, 8651u, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 26030u, 100986u), vec3<u32>(54100u, 4294967295u, 14382u), vec3<u32>(0u, 73429u, 4839u), vec3<u32>(0u, 34597u, 52438u), vec3<u32>(1472u, 0u, 22926u), vec3<u32>(66946u, 1u, 0u), vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 89167u, 46235u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(48923u, 1u, 1u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 14313u, 4294967295u), vec3<u32>(26508u, 1u, 1u), vec3<u32>(36943u, 0u, 34955u), vec3<u32>(4294967295u, 29174u, 16959u), vec3<u32>(29052u, 0u, 0u), vec3<u32>(28943u, 1u, 81667u), vec3<u32>(1u, 14179u, 4294967295u), vec3<u32>(4294967295u, 6621u, 8020u), vec3<u32>(17575u, 39371u, 60015u), vec3<u32>(4294967295u, 4294967295u, 7566u));

var<private> global2: Struct_2;

var<private> global3: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = select(false, !all(!(!global0[_wgslsmith_index_u32(u_input.a.x, 21u)])), true);
    global2 = arg_0;
    global0 = array<vec2<bool>, 21>();
    global2 = Struct_2(1u);
    var var_1 = 263f;
    return u_input.a.x;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_2(func_3(Struct_2(16024u)));
    let var_1 = false & (_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1497f + 1092f), _wgslsmith_f_op_f32(-814f - 600f)))) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1430f)))));
    let var_2 = Struct_1(_wgslsmith_div_f32(735f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(440f)), _wgslsmith_f_op_f32(trunc(-111f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-175f, 1198f))))), ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(arg_0, 1i, arg_0) | vec3<i32>(27571i, arg_0, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1694f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1368f, -1413f))), min(~select(-vec4<i32>(arg_0, arg_0, arg_0, arg_0), vec4<i32>(-2147483647i, arg_0, -43212i, 2147483647i) ^ vec4<i32>(arg_0, arg_0, 14075i, -40750i), select(vec4<bool>(true, var_1, var_1, true), vec4<bool>(true, false, var_1, true), vec4<bool>(var_1, var_1, var_1, var_1))), vec4<i32>(arg_0, arg_0, -4556i, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 22253i, arg_0, -29760i), vec4<i32>(arg_0, 0i, 0i, -1i)))));
    let var_3 = _wgslsmith_dot_vec4_i32(~(-vec4<i32>(40011i, arg_0, var_2.b.x, arg_0) & min(reverseBits(var_2.d), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2.d.x, arg_0, 2147483647i, -21827i), var_2.d))), _wgslsmith_mod_vec4_i32(var_2.d, _wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_0, var_2.b.x, 13459i) ^ vec4<i32>(var_2.b.x, var_2.d.x, 0i, var_2.d.x), var_2.d)) ^ vec4<i32>(countOneBits(33380i), 1i << (select(0u, var_0.a, false) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.x, 52597i, var_2.b.x, var_2.b.x), vec4<i32>(arg_0, var_2.b.x, 2147483647i, var_2.d.x)), _wgslsmith_clamp_i32(1i, i32(-1i) * -1i, 18091i)));
    var var_4 = var_2.b.x >> (_wgslsmith_div_u32(~_wgslsmith_sub_u32(4294967295u, var_0.a >> (u_input.a.x % 32u)), select(var_0.a, (18055u & u_input.a.x) | 30616u, any(select(vec3<bool>(false, false, true), vec3<bool>(var_1, var_1, false), false)))) % 32u);
    return Struct_2(~firstTrailingBit(_wgslsmith_mult_u32(var_0.a, ~38568u)));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global3 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~_wgslsmith_div_vec4_i32(min(vec4<i32>(-1i, 7501i, 0i, 40913i), vec4<i32>(-2147483647i, 14575i, -7056i, 1i)), vec4<i32>(1i, -23527i, -13526i, -5241i))), ~min(min(vec4<i32>(-48882i, -628i, -2147483647i, -1i) << (vec4<u32>(global2.a, 0u, 11411u, arg_0.a) % vec4<u32>(32u)), vec4<i32>(2147483647i, 25370i, 26389i, -1i)), vec4<i32>(1i, 1i, 1i, 1i)));
    global3 = _wgslsmith_sub_i32(~_wgslsmith_sub_i32(reverseBits(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(52460i, -1i, 20919i), vec3<i32>(1i, 36968i, 41817i))), firstLeadingBit(~13730i >> (_wgslsmith_add_u32(global2.a, 16794u) % 32u))) | (i32(-1i) * -2147483647i);
    var var_0 = !(!(all(select(global0[_wgslsmith_index_u32(global2.a, 21u)], global0[_wgslsmith_index_u32(global2.a, 21u)], false)) != true));
    var var_1 = countOneBits(18616i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(356f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1378f))) * 782f)));
    return arg_0;
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> vec4<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + -195f) + 601f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-528f, -468f) + _wgslsmith_f_op_f32(sign(-1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global0 = array<vec2<bool>, 21>();
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 1000f))), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 1630f), vec2<f32>(arg_1, 518f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(671f, 1612f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -819f) - vec2<f32>(arg_1, var_0.x)), vec2<f32>(847f, var_0.x))))));
    global2 = func_4(func_2(countOneBits(~arg_0.x)));
    let var_1 = Struct_2(select(abs(global2.a), 4294967295u, !all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)))));
    return min(firstLeadingBit(vec4<u32>(countOneBits(func_3(Struct_2(u_input.a.x))), 4294967295u, select(u_input.a.x, ~4294967295u, any(vec3<bool>(false, false, true))), _wgslsmith_mult_u32(func_2(-2147483647i).a, 0u))), ~vec4<u32>(countOneBits(global2.a), _wgslsmith_mult_u32(var_1.a, global2.a), ~4294967295u, _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(49815u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)])) ^ max(vec4<u32>(var_1.a, var_1.a, var_1.a, var_1.a), _wgslsmith_add_vec4_u32(select(vec4<u32>(var_1.a, 90135u, 4294967295u, 4294967295u), vec4<u32>(global2.a, global2.a, 7869u, var_1.a), false), vec4<u32>(0u, global2.a, u_input.a.x, u_input.a.x))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_2) -> u32 {
    let var_0 = vec3<u32>(func_4(arg_2).a, ~1u, reverseBits(max(_wgslsmith_add_u32(arg_2.a, arg_1.x) << (select(1u, 0u, false) % 32u), func_2(-20611i).a ^ 1u)));
    let var_1 = true;
    var var_2 = any(global0[_wgslsmith_index_u32(0u, 21u)]);
    global1 = array<vec3<u32>, 25>();
    global3 = 20736i;
    return ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(~1u, ~arg_2.a, 6680u)), global1[_wgslsmith_index_u32(func_3(arg_2), 25u)]);
}

fn func_6(arg_0: bool, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_2(9450u << (abs(global2.a) % 32u));
    global1 = array<vec3<u32>, 25>();
    var var_1 = true;
    let var_2 = Struct_1(1122f, _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(~13765i, -1i, _wgslsmith_add_i32(67911i, -65i)), vec3<i32>(reverseBits(1i), 2147483647i << (global2.a % 32u), -23777i)), max(vec3<i32>(firstLeadingBit(-40064i), _wgslsmith_mod_i32(0i, 30347i), -1i), abs(-vec3<i32>(0i, -1i, -21435i)))), arg_1, ~select(vec4<i32>(~25360i, -2147483647i, firstLeadingBit(2209i), 0i), vec4<i32>(1i, max(1i, -5699i), i32(-1i) * -40949i, i32(-1i) * -34777i), arg_0));
    var_0 = Struct_2(u_input.a.x);
    return func_4(Struct_2(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(~global2.a < (~global2.a >> (func_5(func_1(vec4<i32>(-12297i, 2147483647i, -2147483647i, 0i), 1758f), global1[_wgslsmith_index_u32(25732u, 25u)], Struct_2(global2.a)) % 32u)), -416f);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(408f, 1717f))) * vec2<f32>(201f, -1297f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-228f, -127f), vec2<f32>(-1489f, 1447f), select(vec2<bool>(false, true), vec2<bool>(false, true), true))))))));
    global1 = array<vec3<u32>, 25>();
    let var_1 = _wgslsmith_add_vec2_i32((vec2<i32>(1i, 1i) ^ (select(vec2<i32>(16025i, 2147483647i), vec2<i32>(-8884i, -34796i), vec2<bool>(false, false)) & vec2<i32>(45200i, 0i))) ^ vec2<i32>(_wgslsmith_mult_i32(countOneBits(-23304i), max(-2147483647i, 41301i)), -15169i), vec2<i32>(_wgslsmith_mod_i32(-1i, ~1i), ~1i));
    global0 = array<vec2<bool>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(select(func_5(~vec4<u32>(u_input.a.x, 7236u, 1u, 3255u), func_1(vec4<i32>(0i, 5311i, var_1.x, 2147483647i), 567f).ywz, func_2(-40316i)), 1u, -68417i < (var_1.x >> (u_input.a.x % 32u))), global2.a), vec2<u32>((select(global2.a, 1154u, false) & abs(u_input.a.x)) & ~u_input.a.x, 4294967295u));
}

