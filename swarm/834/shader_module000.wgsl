struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(82853u, 0u, 0u), vec3<u32>(11877u, 41901u, 0u), vec3<u32>(4294967295u, 1u, 37619u), vec3<u32>(14440u, 1u, 38609u), vec3<u32>(0u, 0u, 23150u), vec3<u32>(14551u, 0u, 27220u), vec3<u32>(2233u, 4294967295u, 1u), vec3<u32>(0u, 20924u, 42542u), vec3<u32>(13580u, 0u, 1681u), vec3<u32>(4294967295u, 1u, 5646u), vec3<u32>(58164u, 31475u, 0u), vec3<u32>(71359u, 113239u, 1u), vec3<u32>(54364u, 1u, 19046u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(1u, 67202u, 31090u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(24283u, 40632u, 5224u), vec3<u32>(25034u, 24866u, 626u), vec3<u32>(0u, 4294967295u, 45488u), vec3<u32>(1u, 7274u, 30327u), vec3<u32>(4294967295u, 0u, 17331u), vec3<u32>(25042u, 0u, 1u), vec3<u32>(41344u, 0u, 18274u), vec3<u32>(75963u, 6772u, 80589u), vec3<u32>(42215u, 11731u, 22589u), vec3<u32>(40687u, 67889u, 0u));

var<private> global2: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec4<u32>(0u, 35308u, 0u, 1u)), 1000f), Struct_2(Struct_1(vec4<u32>(60814u, 46800u, 4294967295u, 11655u)), -144f), Struct_2(Struct_1(vec4<u32>(15193u, 0u, 1u, 49447u)), 178f), Struct_2(Struct_1(vec4<u32>(68256u, 23263u, 0u, 13916u)), 192f), Struct_2(Struct_1(vec4<u32>(78492u, 1u, 7789u, 0u)), 1942f), Struct_2(Struct_1(vec4<u32>(14585u, 4294967295u, 0u, 52964u)), -352f), Struct_2(Struct_1(vec4<u32>(0u, 14190u, 1u, 92788u)), 787f), Struct_2(Struct_1(vec4<u32>(46937u, 4294967295u, 16498u, 15980u)), 1495f), Struct_2(Struct_1(vec4<u32>(45721u, 0u, 65059u, 41874u)), -815f), Struct_2(Struct_1(vec4<u32>(1u, 1u, 4294967295u, 0u)), -388f), Struct_2(Struct_1(vec4<u32>(8189u, 25100u, 68401u, 29213u)), 1444f), Struct_2(Struct_1(vec4<u32>(13650u, 4294967295u, 1u, 4294967295u)), 2027f), Struct_2(Struct_1(vec4<u32>(31216u, 0u, 33717u, 0u)), -841f), Struct_2(Struct_1(vec4<u32>(8474u, 0u, 0u, 0u)), -1814f), Struct_2(Struct_1(vec4<u32>(22829u, 1u, 0u, 83668u)), -1000f), Struct_2(Struct_1(vec4<u32>(133587u, 53251u, 4294967295u, 75447u)), -1000f), Struct_2(Struct_1(vec4<u32>(1u, 30331u, 0u, 1u)), 255f), Struct_2(Struct_1(vec4<u32>(1u, 47832u, 61804u, 4294967295u)), -1303f), Struct_2(Struct_1(vec4<u32>(0u, 0u, 4294967295u, 0u)), -1146f), Struct_2(Struct_1(vec4<u32>(4294967295u, 56942u, 1u, 8603u)), 1470f), Struct_2(Struct_1(vec4<u32>(42108u, 43940u, 0u, 20508u)), -121f), Struct_2(Struct_1(vec4<u32>(4294967295u, 48071u, 59274u, 29314u)), 626f), Struct_2(Struct_1(vec4<u32>(10658u, 1u, 4294967295u, 4294967295u)), 1000f));

var<private> global3: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> vec4<u32> {
    var var_0 = global2[_wgslsmith_index_u32(~u_input.a.x, 23u)];
    var var_1 = Struct_3(~(-u_input.c.x) | 7527i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-818f, _wgslsmith_f_op_f32(-global0.x), -839f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1984f) * _wgslsmith_f_op_f32(sign(var_0.b))))), ~(~firstLeadingBit(u_input.a)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -586f, _wgslsmith_f_op_f32(-1420f - global0.x), 847f) * _wgslsmith_f_op_vec4_f32(floor(var_1.b)));
    global2 = array<Struct_2, 23>();
    var var_2 = var_1.a >> ((u_input.a.x ^ u_input.a.x) % 32u);
    return var_0.a.a;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>) -> vec3<f32> {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(u_input.a.x), arg_0.c.x, 0u, _wgslsmith_dot_vec3_u32(max(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], vec3<u32>(1u, arg_0.c.x, arg_0.c.x) << (vec3<u32>(34735u, 19414u, arg_0.c.x) % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 14238u, arg_0.c.x), vec3<u32>(4294967295u, 59613u, arg_0.c.x)))), firstLeadingBit(abs(vec4<u32>(4294967295u, 26774u, 40194u, arg_0.c.x) ^ vec4<u32>(4294967295u, u_input.a.x, 45975u, u_input.a.x)) ^ ~(~vec4<u32>(8651u, 4294967295u, arg_0.c.x, u_input.a.x))));
    global2 = array<Struct_2, 23>();
    var_0 = func_2();
    global0 = vec4<f32>(-1262f, -545f, _wgslsmith_f_op_f32(-arg_0.b.x), -533f);
    var var_1 = 1u;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.www)));
}

fn func_3() -> vec3<bool> {
    let var_0 = global2[_wgslsmith_index_u32(max(u_input.a.x, ~1u), 23u)];
    let var_1 = var_0.a.a.zwx;
    var var_2 = abs(vec3<u32>(~0u, _wgslsmith_div_u32(select(u_input.a.x | 35119u, 1u, select(false, true, false)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_1.x, 18131u), _wgslsmith_dot_vec4_u32(var_0.a.a, vec4<u32>(1u, u_input.a.x, 1u, var_1.x)), ~21459u)), select(u_input.a.x, var_1.x, true)));
    let var_3 = _wgslsmith_div_i32(abs(-(~(-u_input.b))), firstLeadingBit(-max(abs(u_input.b), _wgslsmith_add_i32(u_input.b, -1i))));
    let var_4 = vec2<u32>(var_1.x, var_1.x);
    return select(vec3<bool>(true, any(vec2<bool>(true, false)), true), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1000f, 491f)) * global0.yww) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-470f, 1000f, global0.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_1(Struct_3(12523i, vec4<f32>(-121f, 626f, 976f, -274f), global1[_wgslsmith_index_u32(u_input.a.x, 26u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -550f, 379f)))))), func_3()))));
    var var_1 = countOneBits(_wgslsmith_mod_i32(~u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b | 897i, -20856i, _wgslsmith_div_i32(u_input.b, u_input.b)), u_input.c.yyy)));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, var_0.x, 378f, var_0.x), vec4<f32>(1066f, global0.x, var_0.x, 1135f), vec4<bool>(false, true, true, false))), _wgslsmith_div_vec4_f32(vec4<f32>(-733f, -248f, var_0.x, var_0.x), vec4<f32>(1019f, var_0.x, global0.x, -1042f)))))), vec4<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, 1812f, false)))), -434f, _wgslsmith_f_op_f32(sign(global0.x))));
    global1 = array<vec3<u32>, 26>();
    global2 = array<Struct_2, 23>();
    let var_2 = vec4<u32>(~1u, abs(1u) | _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a.x, countOneBits(46423u), u_input.a.x), abs(_wgslsmith_add_u32(u_input.a.x, u_input.a.x))), u_input.a.x, min(0u, 4294967295u));
    var var_3 = ~(~firstLeadingBit(10199u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -324f, var_0.x, 420f) * vec4<f32>(732f, -730f, -331f, global0.x))))))), vec3<u32>(u_input.a.x, 4294967295u, 24311u), 4294967295u >> (u_input.a.x % 32u));
}

