struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<u32>;

var<private> global2: array<vec2<f32>, 13>;

var<private> global3: array<vec2<i32>, 30>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_sub_vec4_u32(~abs(vec4<u32>(global1.x, u_input.a.x, u_input.a.x, u_input.a.x)) >> (~reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, global1.x, u_input.a.x)) % vec4<u32>(32u)), vec4<u32>(max(~u_input.a.x, 0u ^ global1.x), _wgslsmith_mult_u32(~1u, ~u_input.a.x), firstLeadingBit(u_input.a.x | 4294967295u), global1.x ^ (0u ^ u_input.a.x))), _wgslsmith_dot_vec4_i32(-vec4<i32>(select(1i, -39077i, true), -58339i >> (u_input.a.x % 32u), 1i, 1i), vec4<i32>(0i, -4775i, 1i, -47115i)));
    let var_1 = !select(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true)), all(vec4<bool>(true, true, true, true)), true);
    var var_2 = select(select(vec4<bool>(all(vec3<bool>(var_1, true, var_1)), any(!vec2<bool>(var_1, var_1)), min(var_0.b, var_0.b) <= max(var_0.b, var_0.b), false), select(select(!vec4<bool>(var_1, true, true, var_1), vec4<bool>(false, false, var_1, var_1), any(vec3<bool>(true, var_1, true))), !select(vec4<bool>(var_1, true, false, var_1), vec4<bool>(var_1, false, false, var_1), vec4<bool>(var_1, var_1, var_1, true)), var_1), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(true, var_1, var_1, true), var_1), select(vec4<bool>(var_1, false, true, var_1), vec4<bool>(var_1, var_1, true, var_1), var_1)), select(!vec4<bool>(var_1, var_1, var_1, var_1), select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, var_1, true, false)), select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(false, var_1, false, true))), !vec4<bool>(var_1, var_1, var_1, false))), vec4<bool>(all(select(select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(true, var_1, false, true), false), !vec4<bool>(var_1, true, var_1, var_1), false)), all(select(select(vec2<bool>(var_1, true), vec2<bool>(false, false), vec2<bool>(true, var_1)), select(vec2<bool>(false, false), vec2<bool>(var_1, var_1), vec2<bool>(true, var_1)), false)), var_1, !var_1), any(!select(vec2<bool>(var_1, var_1), select(vec2<bool>(false, true), vec2<bool>(var_1, var_1), var_1), true)));
    global2 = array<vec2<f32>, 13>();
    var var_3 = var_1;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1536f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(252f, 1835f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(565f, -523f, true)), _wgslsmith_f_op_f32(-1119f - -1299f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1096f - 431f) + _wgslsmith_f_op_f32(max(-889f, 819f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -898f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -556f) + _wgslsmith_f_op_f32(select(-2777f, 600f, var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1353f, -1264f, var_1)) - _wgslsmith_f_op_f32(f32(-1f) * -258f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - 206f)))), !select(vec4<bool>(var_1, false, true, var_1), !vec4<bool>(false, var_2.x, true, var_1), vec4<bool>(var_2.x, false, true, true)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(306f)) * _wgslsmith_f_op_f32(1000f - 1832f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-719f)), 296f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-111f - -960f))))));
    global3 = array<vec2<i32>, 30>();
    global3 = array<vec2<i32>, 30>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-662f, 220f, -582f, 433f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1228f, 1373f, -1077f, 482f), vec4<f32>(-696f, -2107f, -957f, -932f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1482f, 427f, 761f, 1338f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-457f, 266f, -597f, 1101f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -320f, 1705f, -1000f) - vec4<f32>(1552f, 1547f, 1000f, -281f)), _wgslsmith_f_op_vec4_f32(func_3()))))));
    global1 = _wgslsmith_sub_vec2_u32(u_input.a.xz, min(vec2<u32>(u_input.a.x, 0u), vec2<u32>(5401u, arg_0.a.x) | firstLeadingBit(vec2<u32>(arg_0.a.x, 40540u))) | abs(~u_input.a.zx << (vec2<u32>(u_input.a.x, 32465u) % vec2<u32>(32u))));
    return vec3<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), 0u == (1u >> (global1.x % 32u)))), false, !(~(25070u ^ arg_0.a.x) != ~1u));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32) -> u32 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_3(~(i32(-1i) * -(arg_1 >> (u_input.a.x % 32u))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(global2[_wgslsmith_index_u32(88270u, 13u)])))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1051f, _wgslsmith_div_f32(-466f, var_1.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-134f + -1562f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x), -405f)), any(vec2<bool>(arg_0.x, false)) || !arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1489f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_1.b.x, -118f, var_1.b.x) - vec4<f32>(339f, 253f, -674f, 157f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, var_1.b.x, -387f, 750f) * vec4<f32>(-281f, var_1.b.x, var_1.b.x, var_1.b.x))))) - vec4<f32>(_wgslsmith_div_f32(-138f, var_1.b.x), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -994f), _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1307f * var_1.b.x)))));
    global3 = array<vec2<i32>, 30>();
    global1 = vec2<u32>(_wgslsmith_div_u32(select(_wgslsmith_dot_vec2_u32(~u_input.a.zy, vec2<u32>(46268u, 28498u)), ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), true), u_input.a.x), _wgslsmith_add_u32(countOneBits(_wgslsmith_mult_u32(global1.x, 1u)) << (~4294967295u % 32u), var_0));
    return 33565u;
}

fn func_1() -> Struct_2 {
    var var_0 = vec4<i32>(~abs(11261i), (17158i >> (abs(_wgslsmith_mult_u32(u_input.a.x, 9343u)) % 32u)) >> ((u_input.a.x << (func_4(func_2(Struct_2(vec4<u32>(global1.x, 0u, 4294967295u, global1.x), -7050i), global3[_wgslsmith_index_u32(u_input.a.x, 30u)]), 2147483647i) % 32u)) % 32u), ~abs(max(_wgslsmith_mod_i32(-1i, 13929i), -2147483647i)), firstTrailingBit(firstLeadingBit(2147483647i)));
    var var_1 = Struct_1(_wgslsmith_add_u32(countOneBits(~(~u_input.a.x)), 1u), vec3<bool>(true, all(vec2<bool>(true, true)) & (func_2(Struct_2(vec4<u32>(12931u, 131069u, 0u, global1.x), -11825i), vec2<i32>(3958i, -2147483647i)).x && (global1.x > 0u)), !(!(var_0.x <= -1i))), firstLeadingBit(var_0.x) | _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(select(global3[_wgslsmith_index_u32(109898u, 30u)], vec2<i32>(var_0.x, -2147483647i), vec2<bool>(true, true)), -vec2<i32>(-23874i, 1i)), var_0.wy));
    var_0 = ~_wgslsmith_div_vec4_i32(-(vec4<i32>(var_1.c, 2147483647i, var_0.x, var_0.x) ^ vec4<i32>(var_1.c, -52954i, 34314i, var_1.c)) >> (countOneBits(select(vec4<u32>(1u, 4294967295u, 97072u, 13233u), vec4<u32>(5170u, var_1.a, 53006u, 0u), vec4<bool>(var_1.b.x, false, var_1.b.x, false))) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.zzw, var_0.ywx), -16870i, ~(-8790i), var_0.x), -countOneBits(vec4<i32>(-27232i, -1i, var_0.x, 54058i))));
    let var_2 = u_input.a;
    var var_3 = vec3<bool>(var_1.b.x, any(vec4<bool>(any(vec4<bool>(false, true, false, false)), var_1.b.x, all(vec3<bool>(var_1.b.x, var_1.b.x, false)), u_input.a.x >= ~38584u)), any(vec3<bool>(false, true, any(select(var_1.b.zx, vec2<bool>(true, true), var_1.b.x)))));
    return Struct_2(_wgslsmith_sub_vec4_u32(select(vec4<u32>(global1.x, global1.x, global1.x, 0u), abs(vec4<u32>(2982u, 138207u, 1u, global1.x)), any(vec2<bool>(var_1.b.x, var_3.x))), _wgslsmith_mult_vec4_u32(~vec4<u32>(global1.x, var_2.x, var_1.a, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.a, u_input.a.x, 21564u, var_2.x), vec4<u32>(u_input.a.x, var_2.x, var_1.a, u_input.a.x)))) ^ select(vec4<u32>(var_1.a, var_2.x, var_1.a, firstLeadingBit(var_2.x)), ~firstLeadingBit(vec4<u32>(34524u, 52525u, var_1.a, 0u)), true), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(), Struct_2(firstLeadingBit(~(vec4<u32>(8903u, 19862u, 0u, 1u) >> (vec4<u32>(global1.x, 77675u, global1.x, global1.x) % vec4<u32>(32u)))), -131i), vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec4<bool>(false, true, true, true))))));
    global3 = array<vec2<i32>, 30>();
    global1 = reverseBits(vec2<u32>(var_0.b.a.x, var_0.b.a.x & 1u));
    let var_1 = Struct_3(var_0.b.b, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1179f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1058f) * _wgslsmith_f_op_f32(sign(879f))))), -802f));
    global2 = array<vec2<f32>, 13>();
    var var_2 = global1.x;
    var_2 = u_input.a.x | var_0.a.a.x;
    var var_3 = var_0.a.b;
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b, min(vec4<u32>(u_input.a.x, 1u, 1u, ~(global1.x << (4294967295u % 32u))), ~(~var_0.b.a)), 22252u, reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, var_0.a.a.x, u_input.a.x, 66293u), abs(vec4<u32>(global1.x, global1.x, global1.x, 3354u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + -652f))));
}

