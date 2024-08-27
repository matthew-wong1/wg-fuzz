struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(Struct_2(6555i, 232f)), Struct_3(Struct_2(-1i, 679f)), Struct_3(Struct_2(11636i, 1049f)), Struct_3(Struct_2(-33738i, -2481f)), Struct_3(Struct_2(54184i, -444f)), Struct_3(Struct_2(9735i, -730f)), Struct_3(Struct_2(-12124i, 1573f)), Struct_3(Struct_2(-1i, -598f)), Struct_3(Struct_2(1i, -2027f)), Struct_3(Struct_2(34293i, -769f)), Struct_3(Struct_2(-1i, -965f)), Struct_3(Struct_2(38519i, -876f)));

var<private> global1: array<i32, 25>;

var<private> global2: vec3<i32> = vec3<i32>(9714i, -7257i, 0i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_i32(select(~vec3<i32>(-47840i, u_input.b.x, -33885i), vec3<i32>(0i, global2.x & 3090i, -2147483647i), true), abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, global1[_wgslsmith_index_u32(0u, 25u)]), u_input.c), max(vec3<i32>(global2.x, -1i, 9822i), u_input.c), ~u_input.c))), 52927u, global1[_wgslsmith_index_u32(4294967295u, 25u)], -abs(_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 25u)], 57159i, 0i, -1i), vec4<i32>(global2.x, global1[_wgslsmith_index_u32(40196u, 25u)], -51244i, -30904i)) & _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(0u, 25u)], -1360i, -1i), vec4<i32>(global2.x, -46199i, u_input.a, -1i))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(1924f, -464f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 598f))))), 4294967295u);
    let var_2 = (global1[_wgslsmith_index_u32(~(~var_0.b) >> (2162u % 32u), 25u)] >> (min(4294967295u, ~974u) % 32u)) <= -1i;
    var_0 = Struct_1((vec3<i32>(select(global2.x, global1[_wgslsmith_index_u32(var_1.b, 25u)], var_2), global1[_wgslsmith_index_u32(1u, 25u)] | 0i, -global1[_wgslsmith_index_u32(var_0.b, 25u)]) << (vec3<u32>(~var_0.b, firstLeadingBit(105895u), var_1.b) % vec3<u32>(32u))) ^ vec3<i32>(_wgslsmith_mod_i32(u_input.a, global1[_wgslsmith_index_u32(21591u, 25u)]), 45821i, global1[_wgslsmith_index_u32(~1u, 25u)]), ~(~79568u), ~(-41977i), _wgslsmith_sub_vec4_i32(-reverseBits(vec4<i32>(1i, 0i, var_0.d.x, global1[_wgslsmith_index_u32(var_0.b, 25u)])), vec4<i32>(reverseBits(global1[_wgslsmith_index_u32(countOneBits(4294967295u), 25u)]), _wgslsmith_mult_i32(-global2.x, u_input.c.x >> (0u % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c.x, 1000i, global2.x), var_0.d) << (_wgslsmith_mult_u32(4294967295u, var_0.b) % 32u), select(firstLeadingBit(-39237i), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(var_0.b, 25u)], u_input.a), select(var_2, var_2, true)))));
    let var_3 = !(!vec3<bool>(true, var_2, true));
    return _wgslsmith_mod_i32(global2.x, abs(-global1[_wgslsmith_index_u32(~(~var_0.b), 25u)]));
}

fn func_2() -> vec3<i32> {
    global1 = array<i32, 25>();
    var var_0 = Struct_1(vec3<i32>(global2.x, countOneBits(func_3() ^ (-29542i | u_input.a)), global2.x ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 12210i), u_input.c.xz), global1[_wgslsmith_index_u32(4294967295u, 25u)] | global1[_wgslsmith_index_u32(4294967295u, 25u)])), reverseBits(~4294967295u), select(_wgslsmith_mult_i32(~_wgslsmith_div_i32(26531i, u_input.a), 1i), 2470i, true), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(min(vec4<i32>(-7623i, u_input.c.x, -24440i, -12681i), vec4<i32>(-44635i, 24037i, -3375i, 22381i)), vec4<i32>(global2.x, 0i, 1i, global2.x)));
    var var_1 = -544f;
    var_1 = -1483f;
    var var_2 = 4294967295u;
    return vec3<i32>(-12399i, var_0.d.x, var_0.d.x);
}

fn func_1(arg_0: bool) -> vec3<i32> {
    global0 = array<Struct_3, 12>();
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(-1022f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -150f)))))));
    global2 = u_input.c & min(select(~vec3<i32>(72375i, 2147483647i, 0i), reverseBits(u_input.c), true), _wgslsmith_add_vec3_i32(func_2(), abs(vec3<i32>(2147483647i, global2.x, 2147483647i))) & max(vec3<i32>(u_input.b.x, global1[_wgslsmith_index_u32(1u, 25u)], global2.x), select(u_input.c, u_input.c, vec3<bool>(false, arg_0, arg_0))));
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    return ~vec3<i32>(countOneBits(39548i), i32(-1i) * -(-1i | global2.x), min(-61278i, global1[_wgslsmith_index_u32(7097u, 25u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_add_vec3_i32(-vec3<i32>(-u_input.b.x & ~2147483647i, u_input.a, u_input.b.x), _wgslsmith_mod_vec3_i32(vec3<i32>(global2.x, global1[_wgslsmith_index_u32(1u, 25u)], global2.x), _wgslsmith_add_vec3_i32(-(u_input.c ^ u_input.c), func_1(true))));
    let var_0 = all(select(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), any(vec2<bool>(false, true))), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), any(vec4<bool>(true, true, true, true)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1418f * 2393f), _wgslsmith_f_op_f32(ceil(-607f)), _wgslsmith_f_op_f32(-1317f + 164f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.zz), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(-544f)), _wgslsmith_f_op_f32(-1395f - -543f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.xx - var_1.yy) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + var_1.xy)))), !vec2<bool>(all(vec4<bool>(var_0, var_0, var_0, false)), var_0))) - vec2<f32>(1834f, var_1.x));
    let var_3 = -u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(1u, 1u), ~firstTrailingBit(~vec2<u32>(4294967295u, 4294967295u)), true), global2.x, _wgslsmith_f_op_f32(-var_2.x), select(abs(~vec2<u32>(1u, 1u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(13514u, 7139u, 1u), vec3<u32>(0u, 52030u, 0u)) >> (49279u % 32u), 1u), select(!select(vec2<bool>(var_0, false), vec2<bool>(var_0, true), vec2<bool>(true, var_0)), vec2<bool>(true, any(vec3<bool>(var_0, true, false))), !(!vec2<bool>(var_0, var_0)))));
}

