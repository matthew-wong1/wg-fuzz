struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(-1i, i32(-2147483648), 0i, -53357i), vec3<f32>(-619f, 667f, 296f), true, false), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(-1i, 0i, i32(-2147483648), i32(-2147483648)), vec3<f32>(242f, -700f, -1000f), true, true), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(i32(-2147483648), -30653i, 2701i, i32(-2147483648)), vec3<f32>(-1172f, -656f, -878f), true, true), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(5366i, 0i, 3397i, -14844i), vec3<f32>(-935f, 2292f, 1000f), false, true), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(1i, -1i, 40038i, 41761i), vec3<f32>(-483f, -117f, -1045f), true, true), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(-17703i, 1i, -1i, -41014i), vec3<f32>(892f, 2284f, 836f), false, false), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(2147483647i, -60802i, 37702i, 1i), vec3<f32>(698f, 1000f, -425f), true, false), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(39103i, -1i, -1i, -9392i), vec3<f32>(-397f, -1299f, 179f), false, true), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(2147483647i, 15295i, -31877i, -1i), vec3<f32>(-727f, -442f, 492f), true, false), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(i32(-2147483648), 0i, -41491i, -1i), vec3<f32>(454f, -2382f, 1647f), true, false), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(-8984i, i32(-2147483648), 12157i, 2147483647i), vec3<f32>(551f, 762f, -218f), false, false), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(20217i, 0i, 5886i, -19484i), vec3<f32>(963f, -617f, -591f), true, true), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(-4796i, 2147483647i, -1i, 2364i), vec3<f32>(-611f, -645f, 659f), false, false), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(-1i, 2147483647i, 0i, 0i), vec3<f32>(578f, -1422f, 1193f), true, false), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(2147483647i, 2147483647i, -1i, -1570i), vec3<f32>(-976f, -1000f, -827f), true, false), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(36432i, -16522i, 0i, -19971i), vec3<f32>(2158f, 1140f, 1864f), false, true), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(-58224i, -3538i, -63773i, 1i), vec3<f32>(898f, 714f, -398f), true, true), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(6940i, 2147483647i, i32(-2147483648), 2147483647i), vec3<f32>(1069f, 836f, -726f), true, false), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(-1i, 2147483647i, 2147483647i, 38035i), vec3<f32>(-1385f, -1000f, 1295f), false, true), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(0i, -21272i, 26644i, -1i), vec3<f32>(-175f, -2716f, 152f), false, true), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(1i, i32(-2147483648), 24363i, 2147483647i), vec3<f32>(-1854f, -1524f, -1921f), true, true), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(2147483647i, i32(-2147483648), -14256i, -40658i), vec3<f32>(-2624f, -404f, 2280f), true, true), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(2147483647i, 1i, i32(-2147483648), 12930i), vec3<f32>(374f, -324f, 630f), false, false), Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(-14887i, 0i, i32(-2147483648), 0i), vec3<f32>(-230f, -1042f, -273f), true, false), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(-17372i, -23722i, i32(-2147483648), 2147483647i), vec3<f32>(1088f, 711f, 444f), true, false), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(1i, 1i, 1i, 58848i), vec3<f32>(1236f, 335f, -929f), true, true), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(39798i, 2147483647i, -21585i, -26516i), vec3<f32>(1584f, -884f, -231f), false, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    var var_0 = vec2<i32>(-2147483647i, -2147483647i);
    var_0 = vec2<i32>(u_input.c, -2147483647i);
    var var_1 = ~(-(~firstTrailingBit(firstTrailingBit(vec2<i32>(-18407i, u_input.c)))));
    return !vec4<bool>(true, ~(~u_input.b.x) > select(_wgslsmith_add_u32(4294967295u, u_input.b.x), _wgslsmith_clamp_u32(0u, 4294967295u, u_input.b.x), all(vec2<bool>(false, true))), true, abs(-var_1.x) != var_1.x);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(150f, global0[_wgslsmith_index_u32(11311u, 27u)]);
    var_0 = Struct_2(var_0.b.c.x, Struct_1(!func_3(var_0.b.c.x), countOneBits(firstLeadingBit(var_0.b.b)) | countOneBits(-vec4<i32>(-2147483647i, u_input.c, -1301i, u_input.c)), _wgslsmith_f_op_vec3_f32(select(var_0.b.c, vec3<f32>(_wgslsmith_f_op_f32(323f * 165f), 563f, var_0.a), func_3(_wgslsmith_f_op_f32(-894f - var_0.b.c.x)).ywx)), any(vec2<bool>(true, var_0.b.d)), var_0.b.e));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -448f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1111f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(369f * var_0.a))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(var_0.a - var_0.a), Struct_1(select(!func_3(var_1.x), !var_0.b.a, var_0.b.a), -var_0.b.b, var_1.zwy, all(!func_3(476f).xy), var_0.b.a.x));
    var var_3 = -5819i;
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.c.x * 112f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a)))) - _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - 1882f), _wgslsmith_f_op_f32(-var_1.x))))), Struct_1(!var_2.b.a, vec4<i32>(-21118i, max(-var_2.b.b.x, var_0.b.b.x ^ u_input.c), reverseBits(-var_2.b.b.x), -u_input.c), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1319f)) * _wgslsmith_f_op_f32(var_0.b.c.x * 2806f)), _wgslsmith_f_op_f32(round(var_0.b.c.x)), _wgslsmith_f_op_f32(trunc(-174f))), true, u_input.c != -_wgslsmith_mult_i32(13896i, var_2.b.b.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    var var_0 = func_2();
    let var_1 = 28039u;
    var_0 = func_2();
    var_0 = Struct_2(-671f, var_0.b);
    let var_2 = -_wgslsmith_mod_i32(firstTrailingBit(-1i), -2147483647i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(-264f, arg_2.c.x))) * -267f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(689f, var_0.a))) - _wgslsmith_f_op_f32(-456f * _wgslsmith_f_op_f32(f32(-1f) * -268f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(28008i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(0i, u_input.c), u_input.c, ~(-2147483647i), u_input.c), ~(~vec4<i32>(u_input.c, -2529i, -1i, -96259i)))) << (u_input.a % 32u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1482f + _wgslsmith_f_op_f32(func_1(vec2<u32>(31370u, u_input.a), u_input.a, Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(u_input.c, u_input.c, -1i, 1i), vec3<f32>(1158f, 1735f, -1566f), true, false))))), 504f, _wgslsmith_f_op_f32(f32(-1f) * -526f)));
    var var_2 = _wgslsmith_clamp_i32(-firstLeadingBit(~(-1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(select(min(vec3<i32>(u_input.c, 25329i, -1i), vec3<i32>(u_input.c, u_input.c, u_input.c)), firstTrailingBit(vec3<i32>(-2147483647i, u_input.c, u_input.c)), true), vec3<i32>(51574i, 37377i << (u_input.b.x % 32u), -11251i)), -(vec3<i32>(-1i, -2147483647i, u_input.c) << (u_input.b.zzz % vec3<u32>(32u))) >> ((~u_input.b.xzx << (~vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_mod_i32(-20661i, -65342i));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) * -861f), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(~u_input.b, (vec4<u32>(u_input.a, u_input.a, u_input.b.x, u_input.a) & u_input.b) << (vec4<u32>(4294967295u, u_input.b.x, 4294967295u, 4294967295u) % vec4<u32>(32u)))), 27u)]);
    let var_4 = 22085i;
    var var_5 = vec4<bool>(!(func_2().b.e | !all(vec2<bool>(var_3.b.d, false))), !(!var_3.b.d), var_3.b.e, !(!(!all(vec4<bool>(true, true, var_3.b.a.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4, _wgslsmith_f_op_f32(f32(-1f) * -111f), vec4<i32>(u_input.c, select(firstLeadingBit(16841i), -2147483647i, false), ~(~u_input.c), func_2().b.b.x) ^ vec4<i32>(u_input.c, -1i, 1i, -64607i), select(26936u, countOneBits(17777u), false));
}

