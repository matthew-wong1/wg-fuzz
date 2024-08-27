struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, true, true, false, true, false, false, false, false, true, false, true, false, false, true, false, false, false, true, false, false);

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(35643u), Struct_1(8231u), false), Struct_2(Struct_1(1u), Struct_1(50007u), true), Struct_2(Struct_1(4294967295u), Struct_1(1u), true), Struct_2(Struct_1(40738u), Struct_1(32111u), true), Struct_2(Struct_1(1u), Struct_1(20197u), false), Struct_2(Struct_1(41486u), Struct_1(52813u), true), Struct_2(Struct_1(4294967295u), Struct_1(4294967295u), false), Struct_2(Struct_1(0u), Struct_1(4294967295u), true));

var<private> global2: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = arg_1.x;
    global0 = array<bool, 21>();
    var var_1 = Struct_1(arg_0);
    var var_2 = _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(48704u, var_1.a, 42208u)), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(28420u, 0u, 4294967295u)), reverseBits(vec3<u32>(11791u, var_1.a, arg_0)))), vec3<u32>(~54977u, _wgslsmith_add_u32(arg_0, ~u_input.a), ~(var_1.a << (0u % 32u)))));
    global0 = array<bool, 21>();
    return Struct_1(u_input.a);
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = Struct_1(u_input.a);
    let var_1 = !arg_0;
    global1 = array<Struct_2, 8>();
    global2 = all(vec4<bool>(any(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], arg_0, false, false), vec4<bool>(arg_0, false, var_1, arg_0), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], var_1, false, var_1))) | global0[_wgslsmith_index_u32(~u_input.a, 21u)], all(vec2<bool>(all(vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.a, 21u)])), u_input.a != 68342u)), !all(select(vec4<bool>(true, false, var_1, false), vec4<bool>(true, arg_0, true, var_1), true)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.b.xxw, u_input.b.zwz), _wgslsmith_sub_i32(u_input.b.x, -66291i)) > abs(-1i)));
    var var_2 = vec2<bool>(all(vec4<bool>(all(vec2<bool>(false, false)) || false, true, var_1, false)), any(vec3<bool>(false | all(vec2<bool>(false, var_1)), false, false)));
    return _wgslsmith_mult_i32(min(~0i, -66995i), 1i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f)))), _wgslsmith_f_op_f32(select(-536f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1933f)), global0[_wgslsmith_index_u32(11367u, 21u)])))));
    global0 = array<bool, 21>();
    let var_1 = Struct_2(arg_1, arg_1, u_input.a >= reverseBits(1u));
    let var_2 = 63928i;
    var var_3 = select(~(~vec4<u32>(~arg_0.a, 0u, var_1.a.a >> (42807u % 32u), 45329u)), vec4<u32>(arg_0.a, var_1.b.a, arg_0.a, select(~firstTrailingBit(1u), ~(~1u), arg_0.a == ~41448u)), var_1.c);
    return abs(_wgslsmith_sub_vec4_i32(vec4<i32>(min(u_input.c, 2147483647i), 2147483647i, 0i, var_2), vec4<i32>(var_2, _wgslsmith_mult_i32(u_input.b.x, var_2), 0i, i32(-1i) * -36428i))) | vec4<i32>(_wgslsmith_mod_i32(func_3(var_1.c), 15714i), var_2, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.b, firstLeadingBit(u_input.b)), -1i >> (_wgslsmith_div_u32(46758u, 4294967295u) % 32u)), _wgslsmith_sub_i32(var_2, var_2));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> vec4<u32> {
    var var_0 = min(countOneBits(firstLeadingBit(-arg_1.x)) << (select(abs(firstLeadingBit(4294967295u)), arg_0.a, true) % 32u), ~u_input.c);
    let var_1 = global1[_wgslsmith_index_u32(~4294967295u, 8u)];
    var var_2 = arg_0;
    let var_3 = -930f;
    var_2 = func_1(~u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, 620f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, 1467f)) * vec2<f32>(931f, -875f)))));
    return ~select(vec4<u32>(func_1(var_2.a >> (13028u % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_3))).a, 66867u, abs(_wgslsmith_div_u32(0u, 1u)), _wgslsmith_div_u32(firstLeadingBit(7895u), _wgslsmith_dot_vec3_u32(vec3<u32>(47887u, 4294967295u, 30806u), vec3<u32>(83144u, var_2.a, 41753u)))), vec4<u32>(u_input.a, arg_0.a, func_1(_wgslsmith_add_u32(1u, 21584u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, -555f))).a, arg_0.a), var_1.c);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    global0 = array<bool, 21>();
    global2 = !(~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.b.x, -2407i, 1i), -2147483647i) <= (-func_2(arg_0, arg_0).x >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a, u_input.a, u_input.a), firstLeadingBit(vec3<u32>(arg_1.x, 1u, arg_0.a))) % 32u)));
    let var_0 = func_1(~4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-993f, 313f)), vec2<f32>(-1115f, -803f), any(vec2<bool>(false, global0[_wgslsmith_index_u32(36616u, 21u)])))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(486f, 1000f)))))));
    global1 = array<Struct_2, 8>();
    var var_1 = -215f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1574f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(654f, 915f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-373f + -127f))));
    return Struct_2(arg_0, Struct_1(arg_0.a), global0[_wgslsmith_index_u32(arg_1.x, 21u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 8>();
    var var_0 = func_5(func_1(0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 439f)), vec2<f32>(551f, -2576f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-308f, -3066f) + vec2<f32>(-1305f, -1161f)), vec2<f32>(-1925f, 593f)))), func_4(func_1(u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1014f, -1211f), vec2<f32>(-718f, -235f), vec2<bool>(global0[_wgslsmith_index_u32(98436u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)]))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(385f, -745f) - vec2<f32>(564f, -1000f)))), min(select(func_2(Struct_1(15998u), Struct_1(4294967295u)), vec4<i32>(u_input.b.x, 12336i, u_input.b.x, u_input.c) ^ u_input.b, !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], true, true, true)), vec4<i32>(-u_input.c, u_input.b.x, func_2(Struct_1(u_input.a), Struct_1(4294967295u)).x, firstLeadingBit(4232i)))));
    let var_1 = vec4<u32>(0u, var_0.a.a, abs(_wgslsmith_clamp_u32(var_0.b.a, ~0u, 87143u)), func_5(var_0.a, select(vec4<u32>(28474u, 0u, 4294967295u, u_input.a), vec4<u32>(u_input.a, var_0.b.a, 4294967295u, 5078u), vec4<bool>(true, true, true, true))).a.a) ^ abs(_wgslsmith_sub_vec4_u32(vec4<u32>(~21164u, var_0.b.a >> (u_input.a % 32u), abs(46975u), 0u), _wgslsmith_sub_vec4_u32(~vec4<u32>(58367u, u_input.a, 39023u, 1u), vec4<u32>(u_input.a, 65155u, u_input.a, var_0.a.a))));
    let var_2 = select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 21u)] && any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 21u)], var_0.c, false, global0[_wgslsmith_index_u32(0u, 21u)])), 1i >= countOneBits(-u_input.b.x), all(select(select(vec4<bool>(true, var_0.c, true, true), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.a, 21u)], var_0.c, true, var_0.c), global0[_wgslsmith_index_u32(59425u, 21u)]), vec4<bool>(var_0.c, true, false, global0[_wgslsmith_index_u32(4876u, 21u)]), select(vec4<bool>(false, var_0.c, true, global0[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<bool>(false, false, false, var_0.c), false)))), vec4<bool>(true, all(!(!vec3<bool>(var_0.c, var_0.c, var_0.c))), !(var_0.c && var_0.c), global0[_wgslsmith_index_u32(u_input.a, 21u)]), !vec4<bool>(all(vec3<bool>(var_0.c, false, var_0.c)), true, global0[_wgslsmith_index_u32(func_5(Struct_1(var_1.x), var_1).a.a ^ ~u_input.a, 21u)], true));
    var var_3 = -(~u_input.b);
    var var_4 = vec2<bool>(var_2.x, !(true || global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.yz, ~var_1.wz), 21u)]));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b | vec4<i32>(u_input.c, -19930i, -10504i, max(u_input.b.x, -1i)), reverseBits(_wgslsmith_mod_vec4_i32(u_input.b, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, var_3.x, var_3.x, u_input.c), u_input.b)))), -1i);
}

