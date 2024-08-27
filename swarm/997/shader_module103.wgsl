struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(15594i, -1131f, vec4<bool>(false, true, true, true)), vec4<i32>(-36083i, -14545i, 1i, -17077i), vec3<bool>(false, true, true), vec3<i32>(0i, 54604i, -37804i), 999f), Struct_2(Struct_1(0i, 1477f, vec4<bool>(true, true, false, false)), vec4<i32>(-16972i, 2147483647i, 2147483647i, 1i), vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), 1i, -1i), 700f), Struct_2(Struct_1(-30873i, 1838f, vec4<bool>(false, true, false, false)), vec4<i32>(32236i, 15214i, -1i, 54249i), vec3<bool>(true, false, true), vec3<i32>(-1i, 1i, i32(-2147483648)), 1316f), Struct_2(Struct_1(0i, -494f, vec4<bool>(true, true, true, true)), vec4<i32>(2147483647i, 0i, 16718i, 35640i), vec3<bool>(false, false, true), vec3<i32>(30799i, -1i, 1i), -2398f), Struct_2(Struct_1(11960i, -387f, vec4<bool>(false, false, false, true)), vec4<i32>(-28333i, 2147483647i, 2147483647i, 1i), vec3<bool>(true, true, false), vec3<i32>(22809i, 2147483647i, 8995i), -370f), Struct_2(Struct_1(-8864i, -1381f, vec4<bool>(false, true, false, true)), vec4<i32>(2147483647i, 47138i, 2147483647i, -50715i), vec3<bool>(true, true, true), vec3<i32>(-22788i, -1i, 33589i), 1843f), Struct_2(Struct_1(0i, 946f, vec4<bool>(true, false, true, true)), vec4<i32>(-24253i, 18039i, 32252i, 2147483647i), vec3<bool>(false, true, false), vec3<i32>(-1i, i32(-2147483648), 2147483647i), 1528f), Struct_2(Struct_1(i32(-2147483648), 113f, vec4<bool>(true, false, false, true)), vec4<i32>(77379i, 47128i, 0i, 50286i), vec3<bool>(false, false, false), vec3<i32>(2147483647i, 15947i, 1i), -548f), Struct_2(Struct_1(1i, -626f, vec4<bool>(true, false, true, false)), vec4<i32>(i32(-2147483648), 64550i, -13752i, 0i), vec3<bool>(true, false, true), vec3<i32>(-4768i, 0i, -20471i), -381f), Struct_2(Struct_1(-27641i, 238f, vec4<bool>(true, false, false, true)), vec4<i32>(-1i, i32(-2147483648), -12977i, i32(-2147483648)), vec3<bool>(true, false, false), vec3<i32>(-19119i, -45607i, 2147483647i), 1097f), Struct_2(Struct_1(1i, -395f, vec4<bool>(false, true, false, true)), vec4<i32>(-25545i, 2147483647i, 13854i, 1i), vec3<bool>(true, true, true), vec3<i32>(-11395i, 28950i, 27693i), 160f));

var<private> global2: vec4<bool>;

var<private> global3: u32 = 33143u;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> f32 {
    global1 = array<Struct_2, 11>();
    var var_0 = Struct_3(abs(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(61938u, 4u)], 4u)], 4u)], reverseBits(arg_1.a))), firstLeadingBit((vec3<i32>(2147483647i, -18102i, -8545i) | vec3<i32>(2147483647i, arg_1.c.a, arg_0.x)) ^ (min(vec3<i32>(-21009i, 1i, 2147483647i), vec3<i32>(arg_1.d.b.x, -1i, 0i)) | vec3<i32>(13327i, -30380i, arg_0.x))), arg_1.c, global1[_wgslsmith_index_u32(~(~arg_1.a), 11u)]);
    var var_1 = arg_1.a >= ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.a, 59019u)), ~(~vec2<u32>(0u, 0u)));
    let var_2 = _wgslsmith_dot_vec3_i32(select(max(arg_1.b, arg_1.b), abs(arg_1.b), !vec3<bool>(true, false, global2.x)) & (-var_0.b | select(vec3<i32>(var_0.c.a, 12654i, arg_1.c.a), vec3<i32>(2147483647i, arg_1.b.x, arg_0.x), true)), max(~arg_1.d.d, var_0.b | vec3<i32>(-41648i, var_0.d.a.a, 0i)) >> (reverseBits(~vec3<u32>(global0[_wgslsmith_index_u32(arg_1.a, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], 22194u)) % vec3<u32>(32u))) | firstTrailingBit(0i);
    var var_3 = 390f;
    return _wgslsmith_f_op_f32(min(var_0.d.a.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1399f, arg_1.d.a.b))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))))));
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1476f * 692f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-381f)))) + _wgslsmith_f_op_f32(func_3(~(-vec2<i32>(-172i, u_input.b)), Struct_3(31959u, ~vec3<i32>(-2147483647i, u_input.c.x, 1i), Struct_1(u_input.a.x, 1501f, vec4<bool>(var_0, var_0, false, false)), global1[_wgslsmith_index_u32(~11542u, 11u)])))), 287f, _wgslsmith_f_op_f32(abs(1545f)));
    global1 = array<Struct_2, 11>();
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~countOneBits(1u), max(4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(88186u, 4u)], 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)]), vec3<u32>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(38749u, 4u)], global0[_wgslsmith_index_u32(52302u, 4u)])), 4u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(25433u, 4u)], 0u, global0[_wgslsmith_index_u32(21642u, 4u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59027u, 4u)], 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], global0[_wgslsmith_index_u32(1u, 4u)]))), select(vec3<u32>(4294967295u, _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], 4u)], 4u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16688u, 4u)], 4u)], 4u)], 4u)], 4u)]), 1u), abs(vec3<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(3398u, 4u)]) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], 4294967295u) % vec3<u32>(32u))), true)), select(~countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4294967295u, global0[_wgslsmith_index_u32(25169u, 4u)]) >> (vec3<u32>(global0[_wgslsmith_index_u32(46205u, 4u)], 1u, global0[_wgslsmith_index_u32(51547u, 4u)]) % vec3<u32>(32u))), ~(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(42362u, 4u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], 0u, 0u)) >> (~vec3<u32>(14403u, 39448u, global0[_wgslsmith_index_u32(1u, 4u)]) % vec3<u32>(32u))), all(global2.wx)));
    let var_3 = _wgslsmith_f_op_f32(sign(819f));
    return Struct_1(u_input.b, _wgslsmith_f_op_f32(max(-1000f, -1145f)), vec4<bool>(true, global2.x, !global2.x, 17964u >= reverseBits(firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 4u)]))));
}

fn func_1() -> i32 {
    var var_0 = func_2();
    let var_1 = ~(~(~(~(~vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)])))));
    let var_2 = ~(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(min(var_1.x, 0u), ~var_1.x) ^ global0[_wgslsmith_index_u32(~var_1.x << (~4294967295u % 32u), 4u)], 4u)] & abs(global0[_wgslsmith_index_u32(var_1.x ^ _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_1.x, 4u)], var_1.x), 4u)]));
    var_0 = func_2();
    let var_3 = !func_2().c;
    return _wgslsmith_div_i32(countOneBits(2147483647i), firstLeadingBit(~_wgslsmith_clamp_i32(u_input.d, -55992i, -1i)));
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: i32, arg_3: u32) -> vec2<i32> {
    let var_0 = func_2().c;
    let var_1 = u_input.a;
    global0 = array<u32, 4>();
    let var_2 = func_2();
    let var_3 = -var_2.a;
    return reverseBits(-vec2<i32>(reverseBits(arg_2), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(func_4(global2.yz, 1f, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b, u_input.a.x), func_1()), _wgslsmith_dot_vec2_u32(min(min(vec2<u32>(1u, global0[_wgslsmith_index_u32(66740u, 4u)]), vec2<u32>(55825u, 10640u)), ~vec2<u32>(9955u, 4294967295u)), reverseBits(~vec2<u32>(global0[_wgslsmith_index_u32(1u, 4u)], 0u)))));
    var var_1 = vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], 1u)), vec4<u32>(global0[_wgslsmith_index_u32(53141u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], 1u) & vec4<u32>(45189u, 0u, 0u, 4294967295u)) << (firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4325u, 0u, 41812u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)]), vec4<u32>(1256u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], 18248u, global0[_wgslsmith_index_u32(0u, 4u)]))) % vec4<u32>(32u)), min(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4294967295u, 16091u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23860u, 4u)], 4u)], 4u)], 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)])), ~4575u, 4294967295u), ~abs(vec4<u32>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19161u, 4u)], 4u)], 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)])))), 4u)], 39547u, ~countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], 4u)], 4294967295u, 11385u), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(25217u, 4u)], global0[_wgslsmith_index_u32(7283u, 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41110u, 4u)], 4u)], 4u)], 4u)])), firstTrailingBit(0u))), _wgslsmith_mult_u32(countOneBits(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(30635u, 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], global0[_wgslsmith_index_u32(31813u, 4u)], global0[_wgslsmith_index_u32(5390u, 4u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], 4u)], 4u)], 4u)], 4294967295u, 0u, global0[_wgslsmith_index_u32(1u, 4u)])), 4u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u), 4u)])), select(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55306u, 4u)], 4u)], 4u)], 4u)], 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], global0[_wgslsmith_index_u32(1u, 4u)])), true)));
    let var_2 = global2.zzx;
    var var_3 = Struct_3(_wgslsmith_mult_u32(~1u, global0[_wgslsmith_index_u32(var_1.x, 4u)]) << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)] | (var_1.x | ~global0[_wgslsmith_index_u32(var_1.x, 4u)]), 4u)] % 32u), countOneBits(vec3<i32>(1i, u_input.b | var_0.x, ~u_input.c.x)), Struct_1(~(-u_input.a.x), -794f, !(!func_2().c)), Struct_2(Struct_1(var_0.x, 1f, select(!vec4<bool>(global2.x, true, var_2.x, true), vec4<bool>(global2.x, global2.x, true, var_2.x), var_2.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, u_input.b, u_input.d, var_0.x), select(vec4<i32>(var_0.x, -15566i, u_input.b, -1i), vec4<i32>(11548i, u_input.c.x, -67481i, var_0.x), vec4<bool>(global2.x, true, global2.x, false))), var_0.x, 17713i, -5643i), global2.zzx, vec3<i32>(-u_input.a.x << (firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23512u, 4u)], 4u)]) % 32u), ~select(var_0.x, u_input.c.x, var_2.x), ~(~u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-808f + -1535f)))));
    var var_4 = _wgslsmith_clamp_u32(var_1.x, ~_wgslsmith_dot_vec2_u32(var_1.yw, _wgslsmith_mod_vec2_u32(var_1.ww, var_1.xz)) << (1496u % 32u), ~(max(4294967295u, ~var_1.x) & _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 4u)], 4u)], 151u)));
    let var_5 = vec4<f32>(var_3.c.b, var_3.d.a.b, _wgslsmith_f_op_f32(select(-658f, 1307f, !var_3.d.c.x)), _wgslsmith_f_op_f32(var_3.c.b * _wgslsmith_f_op_f32(select(-753f, var_3.d.a.b, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_5.x * var_5.x), _wgslsmith_f_op_f32(-1366f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1523f) - var_5.x))), _wgslsmith_f_op_f32(ceil(-1071f)), global0[_wgslsmith_index_u32((var_1.x << (firstLeadingBit(1u) % 32u)) ^ var_3.a, 4u)]);
}

