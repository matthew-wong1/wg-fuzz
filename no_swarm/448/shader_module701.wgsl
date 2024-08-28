struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(true, true, true, false, false);

var<private> global1: u32 = 1u;

var<private> global2: array<bool, 22>;

var<private> global3: array<u32, 16>;

var<private> global4: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * 731f) + _wgslsmith_f_op_f32(max(arg_2.a, arg_2.b.x)))))));
    let var_1 = vec3<u32>(58441u, ~(0u >> (countOneBits(1u) % 32u)) & ((_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 16u)], 16u)], 1u, arg_0) & ~arg_0) << ((reverseBits(global3[_wgslsmith_index_u32(arg_0, 16u)]) << (~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 16u)], 16u)], 16u)] % 32u)) % 32u)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~_wgslsmith_sub_u32(1u, 0u)), ~abs(~1u)), 16u)]);
    global1 = _wgslsmith_dot_vec3_u32(~countOneBits(_wgslsmith_add_vec3_u32(~vec3<u32>(var_1.x, var_1.x, 4294967295u), ~var_1)), vec3<u32>(firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(arg_0, 16u)], 16u)]), 16u)]), (~1u ^ _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(31498u, 16u)], arg_0)) << (arg_0 % 32u), 38712u));
    global2 = array<bool, 22>();
    global0 = array<bool, 5>();
    return !select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 5u)], false), vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 5u)], true), vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 5u)], global2[_wgslsmith_index_u32(arg_0, 22u)])), global0[_wgslsmith_index_u32(1u, 5u)] == true), select(select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 5u)], false), vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0, 5u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 5u)], false)), select(vec2<bool>(false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.x, 16u)], 5u)]), vec2<bool>(global2[_wgslsmith_index_u32(31859u, 22u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 5u)])), true)), select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 22u)]), vec2<bool>(true, false), true), !vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 5u)], true), !global2[_wgslsmith_index_u32(4294967295u, 22u)]), !select(vec2<bool>(global2[_wgslsmith_index_u32(arg_0, 22u)], global0[_wgslsmith_index_u32(30512u, 5u)]), vec2<bool>(true, false), vec2<bool>(false, false)), any(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 5u)], global2[_wgslsmith_index_u32(2951u, 22u)], global0[_wgslsmith_index_u32(var_1.x, 5u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 5u)], true), false))), !(!select(vec2<bool>(global0[_wgslsmith_index_u32(var_1.x, 5u)], true), vec2<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.x, 16u)], 22u)], false), global0[_wgslsmith_index_u32(arg_0, 5u)])));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    var var_0 = Struct_1(-570f, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -538f), 1902f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(427f * 517f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-464f, 216f, false)))))));
    global1 = 1u;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -125f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-793f * -1400f)))), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-818f, 1148f), _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(-var_0.b.x)));
    let var_3 = select(select(!(!func_3(1u, Struct_1(var_0.b.x, vec3<f32>(var_2.a, 212f, -510f)), Struct_1(385f, var_2.b))), select(vec2<bool>(all(vec2<bool>(true, false)), !global2[_wgslsmith_index_u32(4294967295u, 22u)]), func_3(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)], Struct_1(561f, vec3<f32>(var_2.a, var_0.a, var_2.b.x)), Struct_1(var_0.b.x, vec3<f32>(1201f, 857f, 2003f))), !(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 22u)], false))), false), !arg_1, vec2<bool>(-10497i != arg_0, false));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))) - 316f);
}

fn func_2(arg_0: u32) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1285f, _wgslsmith_f_op_f32(func_4(~2147483647i, func_3(10850u, Struct_1(935f, vec3<f32>(594f, 150f, -344f)), Struct_1(156f, vec3<f32>(-404f, 1000f, 1702f))))), true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-970f))) + _wgslsmith_f_op_f32(f32(-1f) * -883f))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(388f, -1017f, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(1i, func_3(4294967295u, Struct_1(1528f, vec3<f32>(-253f, -264f, 1632f)), Struct_1(-251f, vec3<f32>(-495f, 711f, 1099f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-971f, 2607f)))), _wgslsmith_div_f32(1437f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-654f + -2520f)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = 869f;
    let var_1 = global2[_wgslsmith_index_u32(42959u, 22u)];
    let var_2 = func_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(firstLeadingBit(20413u ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3852u, 16u)], 16u)], 16u)]), 16u)], 9635u, global3[_wgslsmith_index_u32(0u, 16u)] | 4294967295u, ~global3[_wgslsmith_index_u32(countOneBits(4294967295u), 16u)]), _wgslsmith_add_vec4_u32(vec4<u32>(select(global3[_wgslsmith_index_u32(4294967295u, 16u)], 4294967295u, true), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)], global3[_wgslsmith_index_u32(~16271u, 16u)], 31336u | global3[_wgslsmith_index_u32(4294967295u, 16u)]), ~(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 16u)], 16u)], global3[_wgslsmith_index_u32(75046u, 16u)], 53650u, 16220u) << (vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(1u, 16u)], 28250u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], 16u)]) % vec4<u32>(32u))))), 16u)]);
    var var_3 = select(!select(select(vec4<bool>(false, true, false, false), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 5u)], false), global0[_wgslsmith_index_u32(4294967295u, 5u)] & false), vec4<bool>(true, true, func_3(global3[_wgslsmith_index_u32(1u, 16u)], Struct_1(655f, arg_0.b), Struct_1(var_2.b.x, vec3<f32>(1179f, 501f, -936f))).x, u_input.a.x >= -64055i), true), !vec4<bool>(global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(82713u | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 22u)], false, global0[_wgslsmith_index_u32(~(0u & global3[_wgslsmith_index_u32(39912u, 16u)]), 5u)], true), global0[_wgslsmith_index_u32(4294967295u, 5u)]);
    global3 = array<u32, 16>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.b.x, 817f)));
}

fn func_6(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(932f, vec3<f32>(-125f, -2083f, 760f));
    var var_1 = Struct_1(-1083f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_3.b))));
    let var_2 = Struct_1(-1000f, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.b.x, var_1.a, -567f))));
    let var_3 = 0u;
    return firstLeadingBit(max(_wgslsmith_mult_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_3, 16u)], 16u)], global3[_wgslsmith_index_u32(10367u, 16u)], 0u), firstTrailingBit(vec3<u32>(var_3, 20640u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_3, 16u)], 16u)]))), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3, var_3, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)]) & vec3<u32>(4294967295u, 4294967295u, global3[_wgslsmith_index_u32(41600u, 16u)]), _wgslsmith_div_vec3_u32(vec3<u32>(var_3, 4294967295u, 0u), vec3<u32>(var_3, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)], global3[_wgslsmith_index_u32(var_3, 16u)])), select(vec3<u32>(var_3, var_3, 19482u), vec3<u32>(global3[_wgslsmith_index_u32(0u, 16u)], 4494u, global3[_wgslsmith_index_u32(32133u, 16u)]), true)), ~vec3<u32>(4294967295u, 52031u, 41059u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(753f - arg_0.x)))) != 1000f, false, global2[_wgslsmith_index_u32(arg_1 >> (~(~global3[_wgslsmith_index_u32(4294967295u, 16u)]) % 32u), 22u)] != ((~global3[_wgslsmith_index_u32(2305u, 16u)] & ~arg_1) == _wgslsmith_div_u32(35757u, 30133u)));
    var var_1 = func_6(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(func_2(arg_1), Struct_1(-943f, vec3<f32>(-214f, arg_0.x, arg_0.x)), func_2(4294967295u))), arg_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(172f))), arg_0.x))), global2[_wgslsmith_index_u32(0u, 22u)] == var_0.x, func_2(arg_1), func_2(firstTrailingBit(1u)));
    let var_2 = false;
    global1 = 0u;
    let var_3 = func_2(~1u);
    return func_2(_wgslsmith_dot_vec2_u32(var_1.xx, var_1.zx));
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(~31029u, 22u)];
    global3 = array<u32, 16>();
    var var_1 = !global0[_wgslsmith_index_u32(43498u, 5u)];
    global0 = array<bool, 5>();
    var var_2 = arg_1;
    return Struct_1(_wgslsmith_f_op_f32(abs(var_2.b.x)), vec3<f32>(_wgslsmith_f_op_f32(func_4(13510i, vec2<bool>(true, true))), _wgslsmith_div_f32(-379f, arg_2.b.x), _wgslsmith_f_op_f32(-arg_1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 22>();
    var var_0 = func_7(global3[_wgslsmith_index_u32(52535u, 16u)], func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1110f, _wgslsmith_f_op_f32(step(-685f, 1673f))))), 1u), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-547f)) - -600f), -1105f)), vec3<f32>(1f, 1f, 1f)), vec3<i32>(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_div_i32(abs(u_input.b.x), u_input.b.x), u_input.b.x), u_input.b.x));
    let var_1 = func_7(global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(reverseBits(0u) << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], 16u)] % 32u), 16u)], 16u)] % 32u), global3[_wgslsmith_index_u32(7620u, 16u)]), 16u)], Struct_1(_wgslsmith_f_op_f32(func_4(u_input.b.x, select(select(vec2<bool>(true, false), vec2<bool>(true, global0[_wgslsmith_index_u32(8457u, 5u)]), global0[_wgslsmith_index_u32(34987u, 5u)]), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7173u, 16u)], 5u)], global2[_wgslsmith_index_u32(66671u, 22u)])))), var_0.b), func_1(vec2<f32>(1656f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(158f * 235f))), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 16u)], 16u)]), ~u_input.a.zyy);
    let var_2 = _wgslsmith_add_u32(~func_6(vec2<f32>(_wgslsmith_f_op_f32(-1000f + var_0.a), 259f), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 16u)], 22u)], func_2(0u >> (global3[_wgslsmith_index_u32(16327u, 16u)] % 32u)), var_1).x, global3[_wgslsmith_index_u32(51907u, 16u)]);
    global1 = 32769u;
    var var_3 = ~u_input.a.x;
    global1 = ~4294967295u;
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(f32(-1f) * -340f)) - 1000f), _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1630f - _wgslsmith_f_op_f32(1016f - -433f)), var_0.a)))));
    var var_5 = func_2(max(global3[_wgslsmith_index_u32(var_2, 16u)], ~0u));
    let x = u_input.a;
    s_output = StorageBuffer(29416u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(reverseBits(79701u), 16u)], 16u)], 61219u, 4294967295u), ~firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_2, var_2, 1u), vec3<u32>(0u, var_2, global3[_wgslsmith_index_u32(0u, 16u)])))), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x >> (_wgslsmith_add_u32(72950u << (var_2 % 32u), 65663u) % 32u), 37926i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - var_0.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a)))))), 16806u);
}

