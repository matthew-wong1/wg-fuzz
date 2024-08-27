struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<f32>(-1025f, 1191f, -1134f, -111f)), Struct_1(vec4<f32>(-469f, -290f, 1491f, -1000f)), Struct_1(vec4<f32>(-197f, -1183f, 918f, -331f)), Struct_1(vec4<f32>(463f, -630f, 417f, 742f)), Struct_1(vec4<f32>(-220f, -1542f, -339f, -1213f)), Struct_1(vec4<f32>(-959f, 866f, -1000f, 1850f)), Struct_1(vec4<f32>(1424f, -2373f, 422f, -110f)), Struct_1(vec4<f32>(-1324f, 557f, -487f, 1432f)), Struct_1(vec4<f32>(-412f, 308f, -158f, -285f)), Struct_1(vec4<f32>(-371f, -216f, -2211f, -906f)), Struct_1(vec4<f32>(-638f, 2209f, -973f, 227f)), Struct_1(vec4<f32>(-1381f, -1437f, -134f, -378f)), Struct_1(vec4<f32>(193f, 293f, 549f, -397f)), Struct_1(vec4<f32>(1780f, 301f, -1148f, -1595f)), Struct_1(vec4<f32>(1021f, -2338f, -588f, -420f)), Struct_1(vec4<f32>(386f, 988f, -806f, -163f)), Struct_1(vec4<f32>(562f, 948f, 1165f, -1926f)), Struct_1(vec4<f32>(1122f, 358f, 505f, 458f)), Struct_1(vec4<f32>(735f, 1000f, 1088f, -1000f)), Struct_1(vec4<f32>(1292f, -817f, 1323f, 440f)), Struct_1(vec4<f32>(1298f, -2203f, -1588f, 1913f)), Struct_1(vec4<f32>(480f, -876f, 1087f, -872f)), Struct_1(vec4<f32>(417f, -1820f, 604f, -1000f)), Struct_1(vec4<f32>(-1000f, -536f, -444f, 1736f)), Struct_1(vec4<f32>(2085f, -1208f, 1000f, -763f)), Struct_1(vec4<f32>(-173f, 545f, 812f, -517f)), Struct_1(vec4<f32>(-133f, -425f, -530f, 1155f)), Struct_1(vec4<f32>(3246f, -359f, 177f, -1736f)), Struct_1(vec4<f32>(1426f, -1148f, 395f, 734f)), Struct_1(vec4<f32>(421f, -845f, -721f, 1000f)), Struct_1(vec4<f32>(246f, -871f, 2142f, -2347f)), Struct_1(vec4<f32>(263f, -271f, 1547f, -1000f)));

var<private> global1: array<i32, 32> = array<i32, 32>(23395i, 1i, 2147483647i, 46458i, i32(-2147483648), 16125i, 2147483647i, 12729i, 1i, 55797i, -87563i, 1i, 1i, 33190i, 17548i, -25631i, -68333i, 1i, -12820i, -8156i, 2147483647i, -1i, -30027i, 7645i, 0i, 5968i, i32(-2147483648), 103898i, 1499i, 32456i, i32(-2147483648), 2147483647i);

var<private> global2: array<i32, 9> = array<i32, 9>(-9251i, -47562i, 1i, -3327i, -45970i, -9763i, -3548i, 55309i, 1i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> f32 {
    var var_0 = 47148i;
    let var_1 = ~vec4<u32>(0u, select(1u, ~0u, true), u_input.a.x, arg_0.b.x) ^ (_wgslsmith_mult_vec4_u32(~(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 0u) & vec4<u32>(arg_0.b.x, 91273u, 4294967295u, 35266u)), ~countOneBits(vec4<u32>(1u, 36663u, u_input.a.x, 81754u))) >> (~(reverseBits(vec4<u32>(u_input.a.x, 4294967295u, 2614u, u_input.a.x)) << (vec4<u32>(arg_0.b.x, 0u, 4294967295u, 12319u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_mult_vec3_i32(~abs((vec3<i32>(1i, global2[_wgslsmith_index_u32(arg_0.b.x, 9u)], arg_1) & vec3<i32>(arg_1, -13400i, arg_1)) << (vec3<u32>(var_1.x, u_input.a.x, 71285u) % vec3<u32>(32u))), abs(~(vec3<i32>(global1[_wgslsmith_index_u32(var_1.x, 32u)], 2147483647i, global1[_wgslsmith_index_u32(arg_0.b.x, 32u)]) & -vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], -1716i, 18153i))));
    global1 = array<i32, 32>();
    var var_3 = arg_0.a.a.yyx;
    return -1644f;
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>) -> bool {
    var var_0 = select(arg_1.d.xz, !arg_1.d.yy, arg_1.d.xy);
    var var_1 = global0[_wgslsmith_index_u32(1u, 32u)];
    let var_2 = arg_1.a;
    global0 = array<Struct_1, 32>();
    var var_3 = u_input.a.x;
    return arg_0 >= _wgslsmith_f_op_f32(-329f + _wgslsmith_f_op_f32(103f - _wgslsmith_f_op_f32(-var_1.a.x)));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec4<bool>) -> f32 {
    global0 = array<Struct_1, 32>();
    var var_0 = Struct_3(Struct_1(vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_div_vec2_u32(~firstLeadingBit(u_input.a) & u_input.a, max(vec2<u32>(~u_input.a.x, u_input.a.x >> (u_input.a.x % 32u)), vec2<u32>(max(4143u, 4294967295u), 29556u))), any(select(arg_2.ww, !select(arg_2.zy, arg_2.yx, arg_2.zz), select(arg_2.x, true, arg_1 || arg_0))), arg_2.zxz);
    global1 = array<i32, 32>();
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(4294967295u, 32u)], vec2<u32>(1u, 34111u), true, select(vec3<bool>(any(var_0.d), arg_0, !all(vec4<bool>(false, arg_0, arg_1, false))), var_0.d, !select(select(vec3<bool>(true, true, true), vec3<bool>(arg_0, true, arg_0), var_0.d), select(vec3<bool>(var_0.d.x, arg_0, false), vec3<bool>(var_0.d.x, arg_0, var_0.c), arg_1), all(vec4<bool>(arg_1, true, var_0.c, arg_1)))));
    let var_2 = var_1;
    return var_2.a.a.x;
}

fn func_1() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(677f, 1098f)), -481f, -2542f))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(1000f * -1426f), _wgslsmith_f_op_f32(736f * -503f), -903f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1288f, _wgslsmith_div_f32(-718f, -254f))))), _wgslsmith_f_op_f32(func_4(func_3(_wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(vec4<f32>(-1107f, -876f, -1045f, -632f)), vec2<u32>(0u, u_input.a.x), false, vec3<bool>(true, false, false)), 31698i)), Struct_3(global0[_wgslsmith_index_u32(4294967295u, 32u)], vec2<u32>(80978u, 4294967295u), false, vec3<bool>(true, true, false)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a, vec2<u32>(0u, u_input.a.x))), u_input.a.x <= u_input.a.x, vec4<bool>(true, true, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(821f * 672f), _wgslsmith_f_op_f32(690f * -1756f))) + _wgslsmith_f_op_f32(-485f + _wgslsmith_f_op_f32(1000f * -112f)))), vec4<f32>(-199f, _wgslsmith_f_op_f32(func_2(Struct_3(global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 32u)], vec2<u32>(u_input.a.x, 0u), true, select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)), global2[_wgslsmith_index_u32(~u_input.a.x, 9u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1127f + -1000f) + _wgslsmith_f_op_f32(trunc(971f))) * -615f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-335f, -766f))))))), global0[_wgslsmith_index_u32(u_input.a.x, 32u)]);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d.a.x)));
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(922f, -1589f, -1000f), arg_3.a.a.zww)) * arg_3.a.a.ywz)), vec3<f32>(arg_3.a.a.x, 753f, arg_3.a.a.x), !vec3<bool>(global1[_wgslsmith_index_u32(5500u, 32u)] > global2[_wgslsmith_index_u32(40979u, 9u)], false, true))), arg_3.a.a.zzw, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1367f, arg_2)), _wgslsmith_f_op_f32(-305f * -466f))) + _wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1619f + arg_1.x), -405f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -424f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1758f))), _wgslsmith_f_op_f32(func_1())), arg_3.a);
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec2_i32(-((-vec2<i32>(0i, global1[_wgslsmith_index_u32(34114u, 32u)]) << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))) >> ((~vec2<u32>(4294967295u, u_input.a.x) | reverseBits(vec2<u32>(arg_3.b.x, 4294967295u))) % vec2<u32>(32u))), firstLeadingBit(select(vec2<i32>(arg_2, -global1[_wgslsmith_index_u32(4294967295u, 32u)]), ~vec2<i32>(1i, 1i), !(!arg_3.d.yy))));
    let var_1 = select(!arg_3.d, !arg_3.d, arg_3.c);
    global2 = array<i32, 9>();
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(~reverseBits(_wgslsmith_add_u32(1u, 96721u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_1, arg_3.b.x), select(u_input.a.x, 50430u, false)), min(75239u, select(arg_1, arg_1, true)))), arg_3.b);
    var var_3 = arg_3.a.a.yyy;
    return func_5(true, _wgslsmith_div_vec3_f32(arg_3.a.a.xxw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1171f, 432f, var_3.x)))), var_3.x, Struct_3(arg_0.d, _wgslsmith_mult_vec2_u32(~min(vec2<u32>(1u, 31737u), vec2<u32>(arg_1, 0u)), vec2<u32>(~var_2.x, 1u)), true, select(select(select(vec3<bool>(false, true, var_1.x), vec3<bool>(true, true, true), var_1), select(var_1, var_1, var_1.x), false), select(vec3<bool>(arg_3.c, arg_3.d.x, var_1.x), vec3<bool>(true, arg_3.c, false), true), select(!arg_3.d, select(vec3<bool>(arg_3.d.x, var_1.x, arg_3.c), vec3<bool>(var_1.x, arg_3.d.x, true), true), !var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 32>();
    let var_0 = func_6(func_5(!(!(global1[_wgslsmith_index_u32(u_input.a.x, 32u)] == -39453i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-452f, _wgslsmith_f_op_f32(f32(-1f) * -2324f), -1290f)), _wgslsmith_f_op_f32(func_1()), Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], u_input.a, false, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.a.x == u_input.a.x))), min(_wgslsmith_mult_u32(0u, ~(~7517u)), min(~firstTrailingBit(u_input.a.x), u_input.a.x)), global1[_wgslsmith_index_u32(reverseBits(u_input.a.x), 32u)], Struct_3(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(50961u, 67799u, 11327u) >> (firstLeadingBit(~u_input.a.x) % 32u), 32u)], ~vec2<u32>(39302u, ~u_input.a.x), false, vec3<bool>(true, true, true)));
    var var_1 = select(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(25623u, u_input.a.x), u_input.a)), u_input.a.x << (~(u_input.a.x >> (u_input.a.x % 32u)) % 32u)), 61322u, _wgslsmith_add_i32(abs(_wgslsmith_mult_i32(28316i, global2[_wgslsmith_index_u32(u_input.a.x, 9u)])), ~(global1[_wgslsmith_index_u32(0u, 32u)] << (u_input.a.x % 32u))) > global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(0u, u_input.a.x, 4294967295u, 6355u), vec4<u32>(4294967295u, 98377u, u_input.a.x, u_input.a.x), vec4<bool>(false, false, false, false)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, 108633u, 1u), vec4<u32>(u_input.a.x, 400u, u_input.a.x, 4294967295u)), select(vec4<u32>(u_input.a.x, u_input.a.x, 57385u, u_input.a.x), vec4<u32>(43028u, 0u, u_input.a.x, u_input.a.x), vec4<bool>(false, true, true, true))), vec4<u32>(4294967295u, u_input.a.x, countOneBits(u_input.a.x), u_input.a.x)), 32u)]);
    let var_2 = _wgslsmith_mod_i32(reverseBits(-(~global1[_wgslsmith_index_u32(u_input.a.x, 32u)])), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(12882u, 32u)], -11864i, 2147483647i, 2147483647i) >> (vec4<u32>(0u, 38415u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), ~vec4<i32>(global2[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(0u, 32u)], 1i, global1[_wgslsmith_index_u32(4294967295u, 32u)])) << (u_input.a.x % 32u)));
    var var_3 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(min(~0u, select(u_input.a.x, u_input.a.x, false)), u_input.a.x), vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 14111u) ^ ~18008u, abs(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(-663f, ~u_input.a.x ^ 43818u, vec2<u32>(59276u, 32046u), abs(4294967295u), -2147483647i);
}

