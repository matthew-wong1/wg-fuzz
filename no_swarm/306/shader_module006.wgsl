struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<f32>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: array<i32, 1> = array<i32, 1>(17739i);

var<private> global2: array<u32, 20>;

var<private> global3: array<bool, 32>;

var<private> global4: array<vec3<bool>, 3>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: i32, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(420f + 787f);
    global1 = array<i32, 1>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(5429u, 1u)), _wgslsmith_add_vec2_u32(select(arg_0.wz, vec2<u32>(u_input.a, 16010u), arg_1), ~vec2<u32>(0u, arg_3))) & 0u, 0u, 67065u), 1u)];
    let var_2 = ~(-arg_2);
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(798f, var_0) - _wgslsmith_f_op_f32(sign(var_0))), 1106f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(step(1036f, -785f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * -1655f) + _wgslsmith_div_f32(var_0, -1687f))), var_0), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-548f, _wgslsmith_f_op_f32(max(-124f, var_0)), _wgslsmith_f_op_f32(min(2051f, -691f)), var_0))))));
    return abs(min(4294967295u, 4294967295u));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    let var_0 = Struct_3(Struct_1(select(arg_0.x, global3[_wgslsmith_index_u32(39079u, 32u)], global3[_wgslsmith_index_u32(func_3(~vec4<u32>(4294967295u, 20857u, u_input.b, 0u), true, ~global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 20u)], 1u)], ~1u), 32u)]), vec3<i32>(reverseBits(1i), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(171u, u_input.b, global2[_wgslsmith_index_u32(1u, 20u)]), 1u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(1u, 20u)], 25633u), select(21592u, global2[_wgslsmith_index_u32(4294967295u, 20u)], arg_0.x)), 1u)]), 1000f, 1132f), _wgslsmith_mod_vec2_u32(abs(~select(vec2<u32>(111001u, global2[_wgslsmith_index_u32(1u, 20u)]), vec2<u32>(1u, u_input.a), true)), vec2<u32>(u_input.b, ~_wgslsmith_clamp_u32(u_input.a, 15888u, 4294967295u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-806f, 1035f), vec2<f32>(-1317f, -556f))))) - vec2<f32>(_wgslsmith_f_op_f32(select(802f, _wgslsmith_f_op_f32(min(-2253f, 1872f)), u_input.a >= u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-749f))))), Struct_2(arg_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 236f, _wgslsmith_f_op_f32(-213f + -1106f), _wgslsmith_f_op_f32(1914f + 612f)) * vec4<f32>(_wgslsmith_f_op_f32(trunc(100f)), 495f, _wgslsmith_div_f32(-1000f, 553f), _wgslsmith_f_op_f32(-104f + -253f)))), Struct_1(true, -(~(~vec3<i32>(-41343i, -2147483647i, 5734i))), _wgslsmith_f_op_f32(sign(1433f)), 1074f));
    var var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, var_0.e.b.x >> (0u % 32u), firstLeadingBit(33974i)), -(global1[_wgslsmith_index_u32(1u, 1u)] | -2147483647i), ~1i, 0i), ~vec4<i32>(countOneBits(global1[_wgslsmith_index_u32(4294967295u, 1u)]), -2147483647i | var_0.a.b.x, var_0.a.b.x, global1[_wgslsmith_index_u32(~1u, 1u)]) << (firstLeadingBit(vec4<u32>(var_0.b.x, u_input.a, ~global2[_wgslsmith_index_u32(1u, 20u)], ~global2[_wgslsmith_index_u32(var_0.b.x, 20u)])) % vec4<u32>(32u)));
    var var_2 = var_0.e;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, -945f));
    var var_4 = -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(min(-vec4<i32>(var_2.b.x, var_2.b.x, 44628i, 58268i), vec4<i32>(13531i, 5009i, 1i, global1[_wgslsmith_index_u32(u_input.a, 1u)]) ^ vec4<i32>(var_0.a.b.x, -19971i, 1i, var_0.a.b.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a, 1u)], 2147483647i, -2147483647i) & vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(29665u, 1u)], -28745i, 1i), vec4<i32>(-19116i, -2147483647i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12909u, 20u)], 20u)], 1u)], -14858i) << (vec4<u32>(1u, global2[_wgslsmith_index_u32(25305u, 20u)], 0u, global2[_wgslsmith_index_u32(1u, 20u)]) % vec4<u32>(32u)))), _wgslsmith_div_i32(-var_0.a.b.x, (global1[_wgslsmith_index_u32(4294967295u, 1u)] >> (4294967295u % 32u)) & min(var_0.e.b.x, 18142i)));
    return !var_2.a;
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    global4 = array<vec3<bool>, 3>();
    let var_0 = select(select(select(vec2<bool>(arg_0.a, func_2(vec2<bool>(false, true))), vec2<bool>(true, arg_0.a), vec2<bool>(true, true)), select(vec2<bool>(true, !global3[_wgslsmith_index_u32(0u, 32u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 20u)], 20u)], 20u)]), 32u)]), vec2<bool>(global3[_wgslsmith_index_u32(~u_input.a, 32u)], true)), ((arg_0.a | arg_0.a) & true) || arg_0.a), select(!(!vec2<bool>(global3[_wgslsmith_index_u32(59361u, 32u)], true)), !select(!vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, true), !arg_0.a), !(!(!vec2<bool>(arg_0.a, global3[_wgslsmith_index_u32(u_input.b, 32u)])))), !arg_0.a);
    global3 = array<bool, 32>();
    var var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(trunc(816f)), arg_0.c), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1695f, arg_0.d))) + vec2<f32>(_wgslsmith_f_op_f32(-1000f - arg_0.d), _wgslsmith_f_op_f32(arg_0.c - arg_0.d)))))));
    global3 = array<bool, 32>();
    return vec4<bool>(arg_0.a, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~92246u, 20u)], 32u)], arg_0.a, -firstTrailingBit(~arg_0.b.x) < 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(all(!func_1(Struct_1(false, vec3<i32>(1i, 55856i, -1i), 522f, 540f))), any(vec3<bool>(true, true, true)), global3[_wgslsmith_index_u32(20052u & (_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 0u) | 17734u), 32u)]));
    var var_1 = -(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.a, 1u)], -30475i)), vec3<i32>(-23311i, ~global1[_wgslsmith_index_u32(7040u, 1u)], _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 1u)], 47316i))) << (15726u % 32u));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1268f - 1000f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1409f, 1231f)), 371f), ~vec3<i32>(global1[_wgslsmith_index_u32(24329u, 1u)], -45113i, _wgslsmith_sub_i32(0i, 18946i)), _wgslsmith_f_op_f32(min(-229f, 1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-2016f)))), 256f))), select(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(1u, 20u)], 1u)) >> (firstTrailingBit(vec2<u32>(55923u, u_input.b)) % vec2<u32>(32u)), select(abs(vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], 27799u) ^ vec2<u32>(u_input.a, 0u), !vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 32u)], true))), ~(~(vec2<u32>(73690u, u_input.a) | vec2<u32>(43842u, 55947u))), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1696f) - vec2<f32>(408f, -1482f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(122f, -355f)))))) - vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -438f), -2032f)), 1f)), Struct_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1245f, -150f, _wgslsmith_f_op_f32(f32(-1f) * -2136f), -1090f))), Struct_1(true, abs(-(~vec3<i32>(global1[_wgslsmith_index_u32(24288u, 1u)], 1i, 1i))), _wgslsmith_f_op_f32(step(692f, 1167f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1000f)), -754f)))));
    var var_3 = Struct_2(all(!func_1(var_2.e)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-927f, var_2.c.x))), var_2.a.d, var_2.a.c));
    var_0 = var_3.a | true;
    var_1 = abs(_wgslsmith_dot_vec2_i32(var_2.a.b.zz, var_2.e.b.zz));
    let var_4 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_i32(vec2<i32>(1i, global1[_wgslsmith_index_u32(30810u, 1u)]), (var_2.e.b.yx | var_2.a.b.xz) & reverseBits(vec2<i32>(-1i, var_2.e.b.x))), _wgslsmith_f_op_f32(-var_3.b.x), abs(32691u | var_2.b.x), 6421i, -902f);
}

