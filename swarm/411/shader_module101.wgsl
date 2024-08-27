struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: vec4<bool>,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(-779f));

var<private> global3: array<u32, 21>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    var var_0 = abs(global3[_wgslsmith_index_u32(~(~firstTrailingBit(global3[_wgslsmith_index_u32(1u, 21u)])), 21u)] & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~countOneBits(0u)), 21u)], 21u)], 21u)]);
    var var_1 = true;
    let var_2 = false;
    let var_3 = vec3<u32>(~54890u, 1u, global3[_wgslsmith_index_u32(abs(firstLeadingBit(22261u)), 21u)]) << (~vec3<u32>(global3[_wgslsmith_index_u32(~4294967295u, 21u)], 4294967295u, _wgslsmith_mod_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20054u, 21u)], 21u)], 21u)], 1u)) % vec3<u32>(32u));
    let var_4 = select(select(select(vec2<bool>(true, all(vec2<bool>(true, false))), global0[_wgslsmith_index_u32(~(~var_3.x), 6u)], true), vec2<bool>(_wgslsmith_add_i32(u_input.a, u_input.a) == _wgslsmith_add_i32(39347i, global1.x), var_2), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(6132u, var_3.x, var_3.x)), var_3), 6u)]), !(!(!(!global0[_wgslsmith_index_u32(25850u, 6u)]))), select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~0u, 21u)], 21u)], var_3.x), 6u)], !select(global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_3.x, 21u)], 21u)], 6u)], global0[_wgslsmith_index_u32(~71203u, 6u)], select(global0[_wgslsmith_index_u32(1u, 6u)], vec2<bool>(false, false), var_2)), global0[_wgslsmith_index_u32(23981u, 6u)]));
    return select(select(select(select(vec4<bool>(false, true, var_2, var_4.x), select(vec4<bool>(var_2, true, false, var_2), vec4<bool>(var_4.x, var_2, var_4.x, var_4.x), var_2), true), vec4<bool>(!var_2, var_3.x >= global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], true, all(vec3<bool>(true, var_2, var_4.x))), var_4.x), vec4<bool>(true, all(vec3<bool>(true, true, true)), true & !var_4.x, false), false), vec4<bool>(true, true, any(vec3<bool>(var_2, true, var_4.x)), all(select(global0[_wgslsmith_index_u32(var_3.x, 6u)], !var_4, var_2))), select(select(select(select(vec4<bool>(true, false, var_2, var_2), vec4<bool>(var_4.x, var_2, var_2, true), var_4.x), !vec4<bool>(true, false, var_2, var_2), true), vec4<bool>(true, global1.x > -1i, var_4.x, true), var_2), vec4<bool>(true, any(vec4<bool>(var_2, var_2, var_2, var_2)), !var_2, !any(vec4<bool>(true, true, true, var_2))), !select(select(vec4<bool>(var_2, true, var_4.x, true), vec4<bool>(false, true, false, true), vec4<bool>(var_4.x, true, var_4.x, var_4.x)), vec4<bool>(true, var_4.x, var_4.x, var_4.x), vec4<bool>(var_4.x, true, var_4.x, false))));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: i32, arg_3: u32) -> f32 {
    var var_0 = arg_2;
    let var_1 = 2147483647i;
    let var_2 = Struct_1(all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)))));
    var var_3 = -7247i;
    var var_4 = Struct_3(!select(!(!vec4<bool>(true, var_2.a, var_2.a, true)), vec4<bool>(false, !var_2.a, var_2.a, 452f <= arg_0), func_3()));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1145f)) - arg_0)) - _wgslsmith_f_op_f32(ceil(-273f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_4 {
    let var_0 = Struct_1(global3[_wgslsmith_index_u32(31778u, 21u)] == ~abs(global3[_wgslsmith_index_u32(~4294967295u, 21u)]));
    var var_1 = _wgslsmith_div_vec2_i32(global1.ww, vec2<i32>((~global1.x << (1u % 32u)) ^ ~(-2147483647i), 1i));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(sign(-249f)), vec4<u32>(10311u, 62830u, _wgslsmith_dot_vec2_u32(~vec2<u32>(33952u, 4294967295u), firstTrailingBit(vec2<u32>(4294967295u, 0u))), abs(~1u)), -global1.x ^ ~global1.x, 1u)));
    var_2 = global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(9176u, 21u)], 1u)];
    var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(select(vec4<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 36987u, ~1u, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)]), 21u)]), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(53321u, 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(18878u, 21u)], 21u)], 0u, 0u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(62229u, 21u)], 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)], 0u), vec4<u32>(global3[_wgslsmith_index_u32(1u, 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], global3[_wgslsmith_index_u32(29088u, 21u)], 1u)), !any(vec2<bool>(true, arg_2.x)))), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 61342u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)], 1u), ~vec4<u32>(12550u, 4294967295u, global3[_wgslsmith_index_u32(917u, 21u)], 1u) << ((vec4<u32>(global3[_wgslsmith_index_u32(22146u, 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], global3[_wgslsmith_index_u32(0u, 21u)], 26538u) | vec4<u32>(global3[_wgslsmith_index_u32(145863u, 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20304u, 21u)], 21u)], 21u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11657u, 21u)], 21u)], 21u)], 21u)], 21u)])) % vec4<u32>(32u))))), 1u)];
    return Struct_4(vec2<f32>(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_2.a, var_2.a), _wgslsmith_f_op_f32(select(var_2.a, var_2.a, arg_2.x)), true)))), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-2147483647i), -1i, -1i), vec3<i32>(-u_input.a, arg_0.x, countOneBits(_wgslsmith_add_i32(49751i, var_1.x)))), vec3<f32>(-1522f, 480f, _wgslsmith_f_op_f32(-1272f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a, -111f))))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec4<f32>) -> f32 {
    global3 = array<u32, 21>();
    var var_0 = select(_wgslsmith_mult_u32(arg_0.a.x, ~1u), 70154u, arg_2.c.x) < firstLeadingBit(abs(~(~global3[_wgslsmith_index_u32(5381u, 21u)])));
    let var_1 = Struct_5(reverseBits(arg_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.d.c.x)) + _wgslsmith_f_op_f32(arg_2.b + _wgslsmith_f_op_f32(ceil(-808f)))), func_3(), Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1.d.c.zy)), arg_2.d.c.zz), -arg_0.d.b, arg_2.d.c));
    global0 = array<vec2<bool>, 6>();
    let var_2 = 92207u;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d.c.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.b), arg_3.x))), 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 6>();
    var var_0 = !(!select(vec3<bool>(false, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), false));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_5(_wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(0u, 21u)], 1u, 10477u, 1u), vec4<u32>(4294967295u, 33082u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)])), _wgslsmith_f_op_f32(f32(-1f) * -803f), vec4<bool>(var_0.x, true, true, true), Struct_4(vec2<f32>(117f, 1015f), -2147483647i, vec3<f32>(1000f, -185f, -981f))), Struct_5(vec4<u32>(12225u, 54285u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], global3[_wgslsmith_index_u32(16547u, 21u)]), 347f, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), func_1(global1.zxw, Struct_3(vec4<bool>(var_0.x, false, true, true)), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(77922u, 21u)], 21u)], 21u)], 6u)], Struct_1(var_0.x))), Struct_5(~vec4<u32>(global3[_wgslsmith_index_u32(872u, 21u)], global3[_wgslsmith_index_u32(90419u, 21u)], 4294967295u, 85515u), _wgslsmith_f_op_f32(func_2(-107f, vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 21u)], 61988u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21505u, 21u)], 21u)], 21u)], 21u)]), u_input.a, global3[_wgslsmith_index_u32(4294967295u, 21u)])), !vec4<bool>(var_0.x, var_0.x, true, false), func_1(vec3<i32>(u_input.a, -10376i, u_input.a), Struct_3(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(103144u, 21u)], 6u)], Struct_1(var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-805f, 742f, 398f, 1288f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(567f)), _wgslsmith_f_op_f32(ceil(1675f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)], 0u) >> (min(~vec3<u32>(0u, 1310u, global3[_wgslsmith_index_u32(75341u, 21u)]), vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 21u)], global3[_wgslsmith_index_u32(11666u, 21u)], 1u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(713f - 1321f), vec4<u32>(~(~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(23884u, 21u)], 1u)), global3[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(31917u, 5500u), global3[_wgslsmith_index_u32(1u, 21u)]), 21u)], global3[_wgslsmith_index_u32(reverseBits(~0u), 21u)], ~firstLeadingBit(reverseBits(1u))), vec2<f32>(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(func_4(Struct_5(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 21u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 18392u), 625f, vec4<bool>(var_0.x, var_0.x, true, false), Struct_4(vec2<f32>(var_1.a, 1107f), u_input.a, vec3<f32>(var_1.a, var_1.a, var_1.a))), Struct_5(vec4<u32>(global3[_wgslsmith_index_u32(32325u, 21u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19239u, 21u)], 21u)], 21u)], 21u)], 21u)], global3[_wgslsmith_index_u32(4294967295u, 21u)], 4294967295u), var_1.a, vec4<bool>(var_0.x, false, var_0.x, var_0.x), Struct_4(vec2<f32>(var_1.a, 1000f), u_input.a, vec3<f32>(var_1.a, var_1.a, -141f))), Struct_5(vec4<u32>(1u, 36407u, 119904u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32475u, 21u)], 21u)]), 1214f, vec4<bool>(var_0.x, var_0.x, false, false), Struct_4(vec2<f32>(var_1.a, 277f), u_input.a, vec3<f32>(599f, -1327f, var_1.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-792f, var_1.a, 715f, var_1.a))))), _wgslsmith_f_op_f32(max(143f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 1000f);
}

