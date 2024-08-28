struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(-4722i, -3383i, 69691i), vec3<i32>(-1i, -30803i, 1i), vec3<i32>(i32(-2147483648), i32(-2147483648), -75168i), vec3<i32>(-22214i, -20801i, 0i), vec3<i32>(i32(-2147483648), -29400i, -8394i), vec3<i32>(2147483647i, -1i, 1i), vec3<i32>(i32(-2147483648), -63729i, -1i), vec3<i32>(8179i, i32(-2147483648), i32(-2147483648)), vec3<i32>(20876i, -1i, 2147483647i), vec3<i32>(30107i, -45021i, -20077i), vec3<i32>(-1i, 0i, -58999i), vec3<i32>(13751i, 4421i, 52923i), vec3<i32>(i32(-2147483648), 28783i, i32(-2147483648)), vec3<i32>(1i, -1i, 0i), vec3<i32>(0i, 0i, -1i), vec3<i32>(0i, 33986i, 2147483647i), vec3<i32>(18600i, i32(-2147483648), 12716i), vec3<i32>(-2822i, 1i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<i32>(37433i, 0i, 18134i), vec3<i32>(2147483647i, 1432i, -3256i));

var<private> global1: f32 = 663f;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), -28744i, i32(-2147483648), -1i);

var<private> global3: vec2<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    global2 = _wgslsmith_clamp_vec4_i32(~(~vec4<i32>(i32(-1i) * -35473i, -1i << (0u % 32u), u_input.d, global2.x)), firstLeadingBit(firstLeadingBit(abs(vec4<i32>(-2147483647i, global2.x, -16889i, 1i)))) >> (~_wgslsmith_mod_vec4_u32(countOneBits(u_input.c), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)) % vec4<u32>(32u)), abs(min(firstLeadingBit(vec4<i32>(61978i, -1i, 1i, 4596i)), -vec4<i32>(arg_0.a, -45377i, global2.x, u_input.d))) >> (vec4<u32>(1u, u_input.a, abs(22171u), firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.c.zy, u_input.c.xy))) % vec4<u32>(32u)));
    var var_0 = select(vec2<bool>(true, global3.x), select(vec2<bool>(false, global3.x), vec2<bool>(true, true), !vec2<bool>(select(true, global3.x, true), any(vec4<bool>(global3.x, global3.x, true, global3.x)))), all(select(vec3<bool>(global3.x, global3.x, all(vec3<bool>(true, global3.x, false))), select(!vec3<bool>(false, global3.x, true), vec3<bool>(true, global3.x, global3.x), global3.x), vec3<bool>(any(vec2<bool>(global3.x, global3.x)), all(vec2<bool>(true, global3.x)), u_input.c.x <= 1134u))));
    let var_1 = Struct_4(select(vec3<bool>(any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(global3.x, global3.x), global3.x)), true, all(select(vec2<bool>(global3.x, false), vec2<bool>(global3.x, true), vec2<bool>(false, global3.x)))), select(vec3<bool>(true, select(true, var_0.x, true), !global3.x), select(vec3<bool>(global3.x, var_0.x, false), !vec3<bool>(global3.x, global3.x, false), !vec3<bool>(false, global3.x, var_0.x)), !any(vec2<bool>(false, true))), select(select(!vec3<bool>(var_0.x, false, false), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, var_0.x, true), global3.x), select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, global3.x, var_0.x), vec3<bool>(false, true, false))), !vec3<bool>(var_0.x, false, true), global3.x)), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 740f))) - vec2<f32>(-720f, 275f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1037f, 285f) - vec2<f32>(1134f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1931f, -961f))))), vec3<bool>(global3.x, global3.x, any(vec3<bool>(global3.x, true, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f - -1848f), 747f, _wgslsmith_f_op_f32(trunc(402f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1162f, -122f, -1285f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(762f, -820f, 1144f) * vec3<f32>(1000f, -1000f, -893f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(129f, -658f, 409f), vec3<f32>(-1000f, -1181f, -2067f), vec3<bool>(global3.x, var_0.x, true))) + vec3<f32>(2149f, -1372f, -112f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-919f, -294f, 1063f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 890f, 1877f)), select(global3.x, true, global3.x))))));
    var var_2 = -8416i;
    var var_3 = !(var_0.x & !(_wgslsmith_f_op_f32(f32(-1f) * -1042f) >= _wgslsmith_f_op_f32(-var_1.b.c.x)));
    return var_1.b.d.xz;
}

fn func_2(arg_0: i32) -> Struct_5 {
    let var_0 = Struct_4(!vec3<bool>(global3.x, true, !all(vec4<bool>(global3.x, false, global3.x, global3.x))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2138f, 144f))), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(0i))), vec2<bool>(global3.x, true))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-741f, -400f, 235f)))), vec3<f32>(-1148f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(542f * -891f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = var_0.b.b;
    global2 = ~(-((vec4<i32>(1i, -1i, arg_0, global2.x) | min(vec4<i32>(global2.x, arg_0, 2147483647i, arg_0), vec4<i32>(-1i, arg_0, global2.x, -1i))) << (firstLeadingBit(u_input.c) % vec4<u32>(32u))));
    var var_2 = min(1i, global2.x);
    var var_3 = var_1.x;
    return Struct_5(vec2<u32>(select(u_input.a, 9395u >> (u_input.c.x % 32u), true), u_input.e) << (vec2<u32>(abs(~u_input.a), _wgslsmith_add_u32(~48814u, countOneBits(1u))) % vec2<u32>(32u)), Struct_3(1u, arg_0, !(!any(var_1.xx)), var_0.b, var_0.b));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: vec4<i32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(-1011f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-662f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d.x))))));
    var var_0 = func_2(global2.x);
    var var_1 = Struct_5(~max(_wgslsmith_mod_vec2_u32(u_input.c.zx, vec2<u32>(var_0.a.x, 4294967295u)), vec2<u32>(var_0.b.a, 4294967295u)) >> (~(var_0.a | vec2<u32>(u_input.e, 4294967295u)) % vec2<u32>(32u)), func_2(_wgslsmith_mod_i32(-2147483647i, var_0.b.b)).b);
    var var_2 = ~(~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.wxw, vec3<u32>(4294967295u, var_1.b.a, 0u)), firstTrailingBit(u_input.c.xxw)), select(u_input.c.yzx ^ u_input.c.wzy, vec3<u32>(var_0.a.x, 1u, u_input.a), var_1.b.d.b.x)));
    var_1 = func_2(-599i);
    return Struct_2(arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -186f)), _wgslsmith_f_op_f32(727f - 252f)), vec3<bool>(true, true, true), vec3<f32>(281f, 1f, 1000f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-171f + 122f), -453f, 2556f)))), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, ~global2.x, ~(-24364i), -41069i), vec4<i32>(-u_input.d, -global2.x, ~1i, _wgslsmith_mult_i32(global2.x, global2.x)), vec4<i32>(-u_input.d, ~u_input.d, global2.x, firstTrailingBit(global2.x))), vec4<i32>(2147483647i, u_input.d, _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(u_input.e, 22u)], u_input.b) << (68157u % 32u), global2.x >> (u_input.e % 32u)), (u_input.e >> ((u_input.a ^ u_input.a) % 32u)) >= (42583u ^ u_input.a)), _wgslsmith_mod_u32(u_input.c.x, (_wgslsmith_div_u32(4294967295u, u_input.e) | min(u_input.a, 1u)) & u_input.a), max(-vec4<i32>(u_input.b.x, u_input.d, -37943i, global2.x) & max(~vec4<i32>(global2.x, global2.x, u_input.b.x, global2.x), vec4<i32>(2147483647i, 1i, u_input.b.x, u_input.b.x) & vec4<i32>(-9620i, 2204i, 1i, 2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 0i, -23010i, global2.x), select(vec4<i32>(global2.x, -2147483647i, 45738i, u_input.b.x), vec4<i32>(0i, 81986i, 44729i, u_input.b.x), vec4<bool>(false, global3.x, false, global3.x))) | vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, -36070i, -1i), vec4<i32>(-43303i, global2.x, u_input.b.x, 4201i)), i32(-1i) * -52293i, 2147483647i)));
    var_0 = func_1(Struct_1(vec2<f32>(1f, 109f), vec3<bool>(global3.x, true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(226f, 397f, 1000f), vec3<f32>(-999f, -767f, -322f)) + vec3<f32>(1584f, -1340f, -342f)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2672f), -901f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), _wgslsmith_add_vec4_i32(select(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(var_0.a, global2.x, u_input.d, 893i)), -vec4<i32>(-13688i, var_0.a, -2147483647i, -1i)), vec4<i32>(u_input.b.x, ~1i, -2147483647i, firstLeadingBit(-1i)), !(!global3.x)), vec4<i32>(var_0.a, u_input.d, 1i, _wgslsmith_clamp_i32(~global2.x, 1i, 36i))), max(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.c.x, u_input.e)), u_input.c.zy), abs(4294967295u)), ~((firstLeadingBit(vec4<i32>(u_input.d, 5386i, u_input.b.x, u_input.b.x)) >> (reverseBits(vec4<u32>(u_input.c.x, u_input.a, u_input.a, u_input.e)) % vec4<u32>(32u))) & -(~vec4<i32>(-2147483647i, var_0.a, u_input.b.x, 2147483647i))));
    global0 = array<vec3<i32>, 22>();
    let var_1 = Struct_4(select(select(vec3<bool>(!global3.x, true, true), func_2(-1i).b.e.b, !func_2(-2147483647i).b.d.b), vec3<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(global3.x, global3.x)), select(global3.x, !global3.x, global3.x)), (0i < firstTrailingBit(var_0.a)) & true), Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -743f), _wgslsmith_f_op_f32(ceil(1395f))))), vec3<bool>(any(select(vec2<bool>(true, global3.x), vec2<bool>(false, global3.x), vec2<bool>(global3.x, global3.x))), any(vec4<bool>(true, global3.x, true, global3.x)) && any(vec2<bool>(false, false)), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-246f)), _wgslsmith_f_op_f32(-1000f * 555f), _wgslsmith_f_op_f32(-2352f + -236f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(990f, 149f, -2246f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-273f, -1211f, 1000f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(552f, -762f, true)) + _wgslsmith_div_f32(-467f, -559f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-207f, 770f))), _wgslsmith_f_op_f32(sign(920f)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-662f + _wgslsmith_f_op_f32(min(var_1.b.d.x, _wgslsmith_f_op_f32(trunc(-598f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1174f * _wgslsmith_f_op_f32(f32(-1f) * -1189f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.d.x))), _wgslsmith_div_u32(countOneBits(countOneBits(u_input.c.x)), _wgslsmith_clamp_u32(38122u, select(u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 32413u), !global3.x), u_input.e)), ~reverseBits(_wgslsmith_mod_u32(u_input.a, u_input.e << (u_input.e % 32u))), _wgslsmith_mod_vec2_u32(vec2<u32>(~min(1u, 4294967295u), abs(u_input.c.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x >> (35237u % 32u), ~4294967295u), min(u_input.c.xw | vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(u_input.c.x, u_input.c.x)))));
}

