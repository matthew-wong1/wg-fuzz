struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_1(vec3<u32>(124432u, 309u, 57420u)), false, Struct_1(vec3<u32>(0u, 48836u, 32050u)), vec2<f32>(163f, -1269f), false), Struct_3(Struct_1(vec3<u32>(0u, 65540u, 0u)), true, Struct_1(vec3<u32>(0u, 0u, 1u)), vec2<f32>(-195f, -1022f), false), Struct_3(Struct_1(vec3<u32>(65974u, 17340u, 4294967295u)), false, Struct_1(vec3<u32>(86055u, 4294967295u, 23240u)), vec2<f32>(-644f, -748f), true), Struct_3(Struct_1(vec3<u32>(4294967295u, 55839u, 1u)), false, Struct_1(vec3<u32>(54974u, 0u, 55u)), vec2<f32>(164f, 1434f), false), Struct_3(Struct_1(vec3<u32>(93787u, 29263u, 42283u)), false, Struct_1(vec3<u32>(65550u, 0u, 88640u)), vec2<f32>(-722f, -1426f), true), Struct_3(Struct_1(vec3<u32>(1u, 16350u, 5073u)), false, Struct_1(vec3<u32>(0u, 1u, 1u)), vec2<f32>(1000f, -398f), false), Struct_3(Struct_1(vec3<u32>(0u, 348u, 67126u)), false, Struct_1(vec3<u32>(31274u, 82473u, 4294967295u)), vec2<f32>(1000f, 1455f), false), Struct_3(Struct_1(vec3<u32>(57950u, 0u, 1u)), false, Struct_1(vec3<u32>(0u, 1u, 4294967295u)), vec2<f32>(-282f, 711f), false));

var<private> global1: array<Struct_2, 17>;

var<private> global2: i32 = 1i;

var<private> global3: array<bool, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: i32) -> vec3<u32> {
    let var_0 = Struct_5(select(!select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 17u)], global3[_wgslsmith_index_u32(4294967295u, 17u)]), select(vec2<bool>(true, true), vec2<bool>(false, false), global3[_wgslsmith_index_u32(4294967295u, 17u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 17u)])), vec2<bool>(_wgslsmith_f_op_f32(floor(arg_1)) == _wgslsmith_f_op_f32(floor(-138f)), true), !(!(!vec2<bool>(global3[_wgslsmith_index_u32(98221u, 17u)], global3[_wgslsmith_index_u32(arg_0.x, 17u)])))), false);
    let var_1 = vec2<i32>(abs(-(i32(-1i) * -37766i)), -1i);
    var var_2 = 416f;
    let var_3 = vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 17u)], true);
    let var_4 = !(!vec3<bool>(false, false, !(arg_0.x >= 24046u)));
    return reverseBits(abs(~((arg_0.wwy ^ arg_0.xzw) ^ vec3<u32>(arg_0.x, u_input.a, u_input.a))));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> i32 {
    global3 = array<bool, 17>();
    var var_0 = Struct_1(max(~max(func_3(vec4<u32>(4294967295u, u_input.b.x, u_input.a, u_input.b.x), arg_1.d.x, 2147483647i), arg_1.c.a), reverseBits(func_3(~vec4<u32>(69210u, 0u, arg_1.c.a.x, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -1485f), 31406i))));
    let var_1 = _wgslsmith_mod_i32(~2147483647i << (~arg_1.c.a.x % 32u), _wgslsmith_dot_vec4_i32((vec4<i32>(u_input.c.x, arg_0, -10052i, u_input.c.x) | vec4<i32>(arg_0, arg_0, u_input.c.x, u_input.c.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(38827u, arg_1.a.a.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, 1u, arg_1.c.a.x, arg_1.a.a.x), vec4<u32>(22208u, 1u, var_0.a.x, 30041u)) % vec4<u32>(32u)), ~select(vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(53491i, -2147483647i, arg_0, -11687i), vec4<bool>(true, true, false, arg_1.e)))) << (firstTrailingBit(abs(50226u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.a.x, arg_1.a.a.x, arg_1.c.a.x) | vec4<u32>(91965u, arg_1.a.a.x, 4294967295u, 4256u), vec4<u32>(1u, 55721u, 4294967295u, var_0.a.x) << (vec4<u32>(u_input.b.x, 86160u, 14097u, 108769u) % vec4<u32>(32u))) % 32u)) % 32u);
    return 1i;
}

fn func_4(arg_0: f32, arg_1: i32) -> u32 {
    let var_0 = any(!select(select(vec2<bool>(global3[_wgslsmith_index_u32(30775u, 17u)], global3[_wgslsmith_index_u32(u_input.b.x, 17u)]), !vec2<bool>(global3[_wgslsmith_index_u32(12013u, 17u)], false), false || global3[_wgslsmith_index_u32(u_input.b.x, 17u)]), select(!vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 17u)]), select(vec2<bool>(false, false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 17u)], false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 17u)], global3[_wgslsmith_index_u32(51534u, 17u)])), all(vec2<bool>(false, global3[_wgslsmith_index_u32(1315u, 17u)]))), any(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 17u)], global3[_wgslsmith_index_u32(4294967295u, 17u)]))));
    let var_1 = -545f;
    var var_2 = select(select(select(!vec2<bool>(false, var_0), !select(vec2<bool>(false, false), vec2<bool>(true, var_0), var_0), vec2<bool>(true, true)), !vec2<bool>(global3[_wgslsmith_index_u32(~u_input.b.x, 17u)], var_0), select(!select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 17u)], global3[_wgslsmith_index_u32(68857u, 17u)]), vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 17u)], global3[_wgslsmith_index_u32(u_input.a, 17u)])), !vec2<bool>(var_0, true), !vec2<bool>(var_0, true))), select(select(!(!vec2<bool>(var_0, global3[_wgslsmith_index_u32(u_input.b.x, 17u)])), vec2<bool>(global3[_wgslsmith_index_u32(1u, 17u)], false | global3[_wgslsmith_index_u32(u_input.a, 17u)]), select(!vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 17u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 17u)], global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 17u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 17u)], var_0)), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 17u)], global3[_wgslsmith_index_u32(u_input.a, 17u)]))), select(vec2<bool>(true, true), select(vec2<bool>(var_0, false), select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec2<bool>(false, var_0), vec2<bool>(false, false)), !vec2<bool>(true, var_0)), vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, u_input.a), vec3<u32>(u_input.a, 5145u, 8571u)), 17u)], arg_0 >= 914f)), global3[_wgslsmith_index_u32(select(u_input.b.x, 0u, !any(vec3<bool>(false, var_0, true))), 17u)]), vec2<bool>(any(!(!vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 17u)], global3[_wgslsmith_index_u32(u_input.b.x, 17u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) * -1745f) >= -1540f));
    let var_3 = Struct_4(all(vec4<bool>(true, true, true, true)), -u_input.c);
    var var_4 = Struct_4(false, vec2<i32>(min(1i, firstTrailingBit(var_3.b.x)), _wgslsmith_div_i32(abs(u_input.c.x), _wgslsmith_mod_i32(u_input.c.x, -2147483647i))) >> (firstTrailingBit(countOneBits(u_input.b)) % vec2<u32>(32u)));
    return ~4294967295u;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_5 {
    let var_0 = global3[_wgslsmith_index_u32(arg_0.a.x, 17u)];
    let var_1 = u_input.c;
    let var_2 = vec2<u32>(~1u, func_4(102f, ~14358i & func_2(-2147483647i, Struct_3(Struct_1(arg_3.a), arg_2, arg_3, vec2<f32>(-641f, 1166f), true))));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(countOneBits(_wgslsmith_sub_u32(arg_3.a.x, 4294967295u)), ~_wgslsmith_mod_u32(16790u, 4294967295u)), _wgslsmith_div_u32(~42129u, 4294967295u))), 17u)];
    var var_4 = vec3<bool>(false, any(!(!vec4<bool>(false, global3[_wgslsmith_index_u32(42984u, 17u)], global3[_wgslsmith_index_u32(arg_3.a.x, 17u)], true))), -3717i != (u_input.c.x << (arg_0.a.x % 32u)));
    return Struct_5(select(vec2<bool>(all(vec2<bool>(var_4.x, var_3.a)), false), var_4.yz, false), any(!vec2<bool>(arg_2, any(vec2<bool>(var_3.b.x, true)))));
}

fn func_5(arg_0: Struct_5, arg_1: f32, arg_2: i32) -> u32 {
    let var_0 = arg_0.a.x || all(select(!(!vec4<bool>(false, arg_0.a.x, global3[_wgslsmith_index_u32(4294967295u, 17u)], true)), select(select(vec4<bool>(true, false, arg_0.b, true), vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(u_input.b.x, 17u)])), vec4<bool>(false, arg_0.a.x, arg_0.b, true), !vec4<bool>(true, arg_0.b, true, false)), select(select(vec4<bool>(false, arg_0.b, false, arg_0.b), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 17u)], true, false, global3[_wgslsmith_index_u32(u_input.b.x, 17u)]), vec4<bool>(false, arg_0.a.x, false, true)), vec4<bool>(true, true, arg_0.a.x, arg_0.b), !global3[_wgslsmith_index_u32(0u, 17u)])));
    var var_1 = Struct_3(Struct_1(func_3(min(max(vec4<u32>(0u, u_input.a, u_input.b.x, 0u), vec4<u32>(26845u, u_input.b.x, 2752u, u_input.b.x)), vec4<u32>(1u, 0u, 9895u, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1423f)) - _wgslsmith_f_op_f32(arg_1 * arg_1)), 1i)), true, Struct_1(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), vec3<u32>(~u_input.a, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), ~27522u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1)), 388f)) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -237f), -123f), _wgslsmith_f_op_f32(f32(-1f) * -398f))), false);
    let var_2 = global1[_wgslsmith_index_u32(var_1.c.a.x, 17u)];
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(86907u, _wgslsmith_dot_vec2_u32(~(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.b)), ~vec2<u32>(_wgslsmith_add_u32(15412u, var_1.a.a.x), ~49072u))), 8u)];
    var var_4 = Struct_4(!(firstTrailingBit(-17105i) > -(i32(-1i) * -1i)), vec2<i32>(1i, ~45712i));
    return 25992u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (u_input.b << (vec2<u32>(func_5(func_1(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 107u)), vec4<f32>(-107f, 1538f, 948f, 765f), false, Struct_1(vec3<u32>(u_input.b.x, 0u, 1u))), _wgslsmith_f_op_f32(-1120f + 1595f), ~(-3767i)), _wgslsmith_sub_u32(min(u_input.b.x, 1u), abs(23974u))) % vec2<u32>(32u))) >> (~(~(u_input.b | ~u_input.b)) % vec2<u32>(32u));
    var var_1 = 20223i;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-509f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(176f + -1538f))), -1000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(min(589f, 112f)), -893f)))));
    var var_3 = !(!(!func_1(Struct_1(vec3<u32>(var_0.x, u_input.a, 43716u)), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 372f, var_2.x, 394f), vec4<f32>(1000f, 1453f, -793f, 578f)), 33514i > u_input.c.x, Struct_1(vec3<u32>(4294967295u, u_input.a, var_0.x))).a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, 2534f, 24065u, _wgslsmith_f_op_vec2_f32(round(var_2)));
}

