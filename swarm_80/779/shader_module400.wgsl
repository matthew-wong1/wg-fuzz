struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: bool,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(518f, 1884f);

var<private> global1: array<i32, 8> = array<i32, 8>(i32(-2147483648), 2147483647i, -1i, -25814i, 16440i, -91215i, 0i, 16016i);

var<private> global2: Struct_3;

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(1134f, 1214f), Struct_1(445f, 1228f), Struct_1(305f, -716f), Struct_1(1467f, -969f), Struct_1(704f, -878f), Struct_1(-498f, 816f), Struct_1(1165f, 861f), Struct_1(-173f, 692f), Struct_1(658f, 733f), Struct_1(-122f, -1559f), Struct_1(719f, 1289f), Struct_1(-1663f, -1655f), Struct_1(1000f, 286f), Struct_1(2166f, 564f), Struct_1(-1400f, -1000f), Struct_1(-480f, 986f), Struct_1(1397f, -798f), Struct_1(-1107f, -612f), Struct_1(1368f, -279f), Struct_1(1000f, 264f), Struct_1(-573f, -473f), Struct_1(1449f, 1434f), Struct_1(-1000f, -151f), Struct_1(-859f, 340f), Struct_1(-1881f, -563f), Struct_1(-1824f, 751f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    global3 = array<Struct_1, 26>();
    var var_0 = Struct_3(~vec3<u32>(~1u, global2.a.x ^ 0u, _wgslsmith_sub_u32(u_input.a, ~u_input.a)), select(_wgslsmith_div_vec2_u32(~vec2<u32>(38841u, 0u), ~vec2<u32>(1u, 1u)), global2.b, vec2<bool>(true, global2.c)) << (~global2.a.yy % vec2<u32>(32u)), global2.c, global2.d, global2.e);
    let var_1 = select(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 8u)] << (1u % 32u), max(_wgslsmith_add_i32(var_0.e.a.x, -global1[_wgslsmith_index_u32(u_input.a, 8u)]), _wgslsmith_dot_vec4_i32(~vec4<i32>(global2.e.a.x, var_0.e.a.x, 1i, global2.e.a.x), min(vec4<i32>(global2.e.a.x, global1[_wgslsmith_index_u32(global2.a.x, 8u)], 19402i, global2.e.a.x), vec4<i32>(-4526i, var_0.e.a.x, -2147483647i, 67666i)))), 44301i), _wgslsmith_mult_vec3_i32(~(-var_0.e.a), min(abs(vec3<i32>(1719i, -4732i, -2863i) | vec3<i32>(global2.e.a.x, 17210i, global1[_wgslsmith_index_u32(0u, 8u)])), var_0.e.a)), true | (1i < var_0.e.a.x));
    global1 = array<i32, 8>();
    global1 = array<i32, 8>();
    return global2.e.b.b;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: f32) -> vec3<bool> {
    var var_0 = Struct_2(vec3<i32>(firstLeadingBit(-2147483647i), ~21727i << (min(38198u, firstTrailingBit(u_input.a)) % 32u), -min(-global1[_wgslsmith_index_u32(global2.b.x, 8u)], -1i)), global2.e.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.d)) + _wgslsmith_f_op_f32(-arg_0))))));
    global2 = Struct_3(vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, global2.b.x, u_input.a)), ~vec3<u32>(global2.a.x, arg_1.x, 43033u)), global2.a.x), ~countOneBits(countOneBits(vec2<u32>(u_input.a, global2.a.x)) >> (~global2.a.zz % vec2<u32>(32u))), !(!(true || global2.c)), 1384f, Struct_2(vec3<i32>(-36659i, firstLeadingBit(39884i), -firstLeadingBit(global1[_wgslsmith_index_u32(global2.b.x, 8u)])), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a - arg_2)), var_0.b.b), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(955f, 364f)), -391f)), global2.d)));
    global1 = array<i32, 8>();
    let var_1 = 1036f;
    var var_2 = _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(var_0.a, global2.e.a));
    return select(select(vec3<bool>(global2.c, true, global2.c), !(!select(vec3<bool>(global2.c, global2.c, true), vec3<bool>(false, false, false), vec3<bool>(true, true, global2.c))), reverseBits(u_input.a ^ 2584u) != _wgslsmith_mult_u32(4294967295u, 0u)), vec3<bool>(global2.c, !global2.c, select(false, true, true)), true);
}

fn func_1(arg_0: i32) -> Struct_1 {
    global2 = Struct_3(select(reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(global2.a, global2.a), 0u, global2.a.x)), _wgslsmith_add_vec3_u32(global2.a, global2.a), all(func_2(_wgslsmith_f_op_f32(min(1000f, 970f)), abs(vec3<u32>(global2.a.x, u_input.a, 0u)), 1774f))), _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(9692u, 1u), abs(abs(global2.b.x))), _wgslsmith_add_vec2_u32(global2.a.yy, abs(~vec2<u32>(107669u, 1u)))), true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x - global0.x))))), Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global1[_wgslsmith_index_u32(u_input.a, 8u)]), vec2<i32>(53156i, arg_0) | global2.e.a.xy), ~(-16458i), 25751i), global3[_wgslsmith_index_u32(53214u, 26u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(1u, 0u, 0u)), max(vec3<u32>(u_input.a, 0u, 22901u), vec3<u32>(4693u, 17474u, 4294967295u))), ~(~vec3<u32>(4294967295u, global2.b.x, u_input.a))), 26u)]));
    let var_0 = _wgslsmith_f_op_f32(trunc(global0.x));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(707f, 709f), vec2<f32>(global2.e.c.b, -174f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 415f) + vec2<f32>(var_0, -122f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, global0.x) + vec2<f32>(1000f, 686f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-826f, -1000f), vec2<f32>(global2.d, global0.x)))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-global2.d), -126f)))));
    var var_1 = select(vec4<bool>(false, !all(vec2<bool>(false, global2.c)), global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 12414u, u_input.a), vec3<u32>(41108u, global2.b.x, global2.a.x)), ~u_input.a), 8u)] < -2147483647i, global2.c), select(!vec4<bool>(all(vec2<bool>(true, false)), false, func_2(-1818f, vec3<u32>(24928u, global2.b.x, 1u), 1000f).x, global2.c), !(!(!vec4<bool>(false, true, global2.c, false))), !select(select(vec4<bool>(false, true, false, global2.c), vec4<bool>(global2.c, true, global2.c, global2.c), false), select(vec4<bool>(true, global2.c, true, global2.c), vec4<bool>(global2.c, global2.c, false, false), vec4<bool>(global2.c, false, global2.c, global2.c)), !vec4<bool>(global2.c, global2.c, global2.c, true))), select(vec4<bool>(true, true, all(vec2<bool>(false, global2.c)), !global2.c), select(select(!vec4<bool>(global2.c, global2.c, global2.c, false), select(vec4<bool>(global2.c, true, global2.c, global2.c), vec4<bool>(global2.c, global2.c, false, false), vec4<bool>(global2.c, global2.c, false, global2.c)), 0u >= global2.b.x), vec4<bool>(true, global2.c & global2.c, arg_0 >= arg_0, true), select(!vec4<bool>(global2.c, global2.c, global2.c, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, global2.c, true, global2.c), false), true)), vec4<bool>(true, all(!vec4<bool>(global2.c, true, false, true)), false, global2.c)));
    global2 = Struct_3(_wgslsmith_add_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global2.b.x, global2.a.x), vec3<u32>(global2.a.x, global2.b.x, global2.b.x))) ^ global2.a, vec3<u32>(abs(u_input.a), ~u_input.a, ~u_input.a) | ~vec3<u32>(89122u, 17089u, global2.a.x)), global2.a.yx, false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -404f))), Struct_2(vec3<i32>(-min(-12994i, arg_0), ~33642i >> (u_input.a % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, arg_0, -2147483647i, global1[_wgslsmith_index_u32(u_input.a, 8u)]), firstTrailingBit(vec4<i32>(22657i, 2147483647i, global1[_wgslsmith_index_u32(u_input.a, 8u)], 0i)))), global2.e.b, global3[_wgslsmith_index_u32(0u, 26u)]));
    return global3[_wgslsmith_index_u32(global2.b.x, 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.e;
    var var_1 = vec3<bool>(false, false & !global2.c, all(vec2<bool>(false, any(select(vec2<bool>(global2.c, false), vec2<bool>(global2.c, global2.c), true)))));
    let var_2 = Struct_1(716f, -1918f);
    let var_3 = func_1(-_wgslsmith_dot_vec2_i32(~(~vec2<i32>(0i, global2.e.a.x)), global2.e.a.zz));
    let var_4 = -min(vec4<i32>(-2147483647i, select(~global2.e.a.x, _wgslsmith_div_i32(-5552i, global2.e.a.x), true), ~_wgslsmith_mod_i32(var_0.a.x, -56375i), ~(~var_0.a.x)), vec4<i32>(2147483647i, -_wgslsmith_mod_i32(global2.e.a.x, global2.e.a.x), _wgslsmith_mod_i32(min(-35501i, 33815i), min(global1[_wgslsmith_index_u32(global2.a.x, 8u)], global1[_wgslsmith_index_u32(global2.b.x, 8u)])), -max(global2.e.a.x, -7428i)));
    let var_5 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(52303u), min(var_0.a.x, global1[_wgslsmith_index_u32(110676u, 8u)]), abs(select(~vec4<i32>(var_4.x, global1[_wgslsmith_index_u32(global2.b.x, 8u)], 42655i, global2.e.a.x), ~var_4, vec4<bool>(false, true, var_1.x, var_1.x)) >> (~select(vec4<u32>(4294967295u, global2.b.x, 15693u, 4294967295u), vec4<u32>(4294967295u, 52707u, 71368u, 63629u), global2.c) % vec4<u32>(32u))));
}

