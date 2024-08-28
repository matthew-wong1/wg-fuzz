struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: Struct_4,
    d: i32,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: u32 = 27348u;

var<private> global2: array<vec3<f32>, 27>;

var<private> global3: array<i32, 9>;

var<private> global4: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<f32>) -> Struct_4 {
    return Struct_4(!any(!select(vec3<bool>(false, true, true), vec3<bool>(global4.x, false, arg_1.x), vec3<bool>(arg_1.x, global4.x, global4.x))));
}

fn func_3(arg_0: vec3<bool>) -> vec3<f32> {
    let var_0 = func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1862f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(829f))))))), select(arg_0.zx, arg_0.xx, true), _wgslsmith_f_op_vec3_f32(max(global2[_wgslsmith_index_u32(~0u, 27u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(981f, -1490f, -1222f)), vec3<f32>(-448f, _wgslsmith_f_op_f32(1061f + 916f), _wgslsmith_f_op_f32(max(-1675f, 279f)))))));
    global3 = array<i32, 9>();
    let var_1 = Struct_2(select(~(~vec4<u32>(1224u, u_input.d.x, u_input.d.x, 0u)), vec4<u32>(~(~u_input.d.x), 26344u, 0u, 1u), true), ~abs(u_input.a) << (~(~u_input.d.x) % 32u), Struct_1(u_input.d), Struct_1(firstLeadingBit(max(vec2<u32>(u_input.d.x, u_input.d.x) | vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(u_input.d.x, u_input.d.x) ^ vec2<u32>(u_input.d.x, u_input.d.x)))), u_input.c.x);
    let var_2 = vec2<bool>(global4.x, true);
    global4 = arg_0.yz;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1221f, 219f, 483f))) - global2[_wgslsmith_index_u32(u_input.d.x, 27u)]));
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = ~vec3<u32>(u_input.d.x, u_input.d.x, ~(firstTrailingBit(u_input.d.x) ^ select(u_input.d.x, u_input.d.x, arg_1.a)));
    let var_1 = -1242f;
    let var_2 = _wgslsmith_f_op_vec3_f32(func_3(!(!select(!vec3<bool>(true, arg_2.a, true), vec3<bool>(true, arg_2.a, true), !vec3<bool>(arg_1.a, arg_1.a, global4.x)))));
    var var_3 = var_2;
    let var_4 = Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(abs(~var_0.xz), u_input.d), ~min(_wgslsmith_add_vec2_u32(vec2<u32>(6348u, 75946u), vec2<u32>(20025u, u_input.d.x)), ~vec2<u32>(u_input.d.x, var_0.x))));
    return Struct_2(firstLeadingBit(vec4<u32>(var_0.x ^ (0u | var_4.a.x), 62418u, ~3905u ^ countOneBits(var_0.x), 1u)), 11921i | (_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b, u_input.b), u_input.b ^ vec2<i32>(2147483647i, arg_0)) | -_wgslsmith_add_i32(global3[_wgslsmith_index_u32(var_4.a.x, 9u)], arg_0)), var_4, var_4, -1i);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32) -> Struct_2 {
    global1 = 0u;
    let var_0 = ~arg_0.a;
    var var_1 = _wgslsmith_mod_vec4_u32(arg_0.a, var_0);
    let var_2 = Struct_2(var_0, _wgslsmith_add_i32(-u_input.a, ~firstLeadingBit(0i)), func_2(~_wgslsmith_mod_i32(2513i, global3[_wgslsmith_index_u32(abs(0u), 9u)]), Struct_4(true), Struct_4(false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(404f, 286f, 1527f, -1747f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -122f, -1116f, 589f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1004f, 2222f, -1850f, -208f) * vec4<f32>(-1622f, -401f, 1165f, -1014f))))).d, arg_0.c, -7863i ^ (_wgslsmith_sub_i32(max(8207i, -40396i), func_2(arg_0.e, Struct_4(global4.x), Struct_4(false), vec4<f32>(-704f, -1734f, 1330f, 1104f)).b) & abs(global3[_wgslsmith_index_u32(~0u, 9u)])));
    var var_3 = select(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 80065u, arg_1.x), ~arg_0.a.zyy)), var_0.yzw, select(!(!(!vec3<bool>(global4.x, global4.x, global4.x))), vec3<bool>(true, global4.x, global4.x), select(select(!vec3<bool>(global4.x, true, global4.x), select(vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(global4.x, global4.x, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, global4.x, global4.x), vec3<bool>(true, global4.x, global4.x))), select(select(vec3<bool>(true, true, global4.x), vec3<bool>(global4.x, false, global4.x), true), vec3<bool>(true, false, global4.x), select(vec3<bool>(global4.x, global4.x, false), vec3<bool>(global4.x, true, false), vec3<bool>(global4.x, global4.x, true))), select(!vec3<bool>(false, false, global4.x), select(vec3<bool>(false, true, true), vec3<bool>(true, global4.x, global4.x), vec3<bool>(false, global4.x, true)), arg_2 > var_2.b))));
    return Struct_2(vec4<u32>(~(1u & ~arg_1.x), reverseBits(~51059u), arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(53625u, _wgslsmith_dot_vec2_u32(var_1.yw, var_3.zz), _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(34791u, 1u, var_1.x, var_0.x)), ~u_input.d.x), arg_1)), arg_0.b, func_2(func_2(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(arg_0.e, 0i)), Struct_4(true), Struct_4(true), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1283f, -160f, -179f, 1555f), vec4<f32>(-294f, 794f, -563f, 319f))))).b, func_1(-408f, vec2<bool>(false & global4.x, !global4.x), vec3<f32>(_wgslsmith_f_op_f32(-753f - -697f), _wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(min(-486f, 586f)))), Struct_4(global4.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-357f, -1551f, -1210f, -874f), vec4<f32>(-1000f, -1053f, -541f, -547f)) - vec4<f32>(-609f, 136f, -266f, 527f))))).d, func_2(~(i32(-1i) * -arg_0.b), func_1(111f, select(vec2<bool>(true, global4.x), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(838f, -465f, 980f))) - _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(u_input.d.x, 27u)] + global2[_wgslsmith_index_u32(arg_0.c.a.x, 27u)]))), Struct_4(!global4.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(520f, 479f, -1000f, -1000f) + vec4<f32>(-881f, 894f, -812f, -1078f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1768f, 1000f, 262f, 713f), vec4<f32>(1089f, 283f, -650f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-271f, 706f, -423f, 1000f))))).c, firstTrailingBit(~(~(~global3[_wgslsmith_index_u32(u_input.d.x, 9u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.d.x;
    var var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, min(~4294967295u, u_input.d.x | u_input.d.x), ~23839u), ~vec4<u32>(7081u, 20198u, firstTrailingBit(u_input.d.x), 4294967295u)), u_input.d.x, 1u, ~abs(16708u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1491f, -623f, -2124f, 553f) * vec4<f32>(1000f, 190f, 130f, 1580f)))))));
    let var_2 = Struct_3(func_4(func_2(28267i, func_1(_wgslsmith_f_op_f32(var_1.x - var_1.x), select(vec2<bool>(false, false), vec2<bool>(false, false), global4.x), _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(u_input.d.x, 27u)])), func_1(var_1.x, vec2<bool>(global4.x, false), _wgslsmith_f_op_vec3_f32(var_1.yww * vec3<f32>(-549f, var_1.x, 245f))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(ceil(960f)), 426f, -2222f)), ~min(abs(vec4<u32>(u_input.d.x, var_0.x, 60287u, 1u)), vec4<u32>(11937u, 4294967295u, 0u, 27251u)), global3[_wgslsmith_index_u32(1u, 9u)]), func_4(func_4(Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 41036u, var_0.x, 1u), vec4<u32>(4294967295u, 5573u, var_0.x, 29917u)), global3[_wgslsmith_index_u32(1u, 9u)], Struct_1(vec2<u32>(var_0.x, u_input.d.x)), Struct_1(vec2<u32>(u_input.d.x, u_input.d.x)), firstTrailingBit(u_input.a)), vec4<u32>(u_input.d.x, u_input.d.x ^ var_0.x, var_0.x, 1u), _wgslsmith_dot_vec3_i32(-vec3<i32>(global3[_wgslsmith_index_u32(var_0.x, 9u)], u_input.a, 39972i), firstLeadingBit(vec3<i32>(global3[_wgslsmith_index_u32(1u, 9u)], -2147483647i, -9530i)))), reverseBits(vec4<u32>(var_0.x, 11148u, 0u, 1u) >> (max(vec4<u32>(60597u, u_input.d.x, 26336u, var_0.x), vec4<u32>(u_input.d.x, 46576u, 47493u, u_input.d.x)) % vec4<u32>(32u))), firstLeadingBit(u_input.a)), vec4<f32>(1050f, _wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(892f, _wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_f32(var_1.x - 877f), _wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1162f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), var_1.x)), -1470f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x + var_1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-596f, var_1.x, var_1.x, -217f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(533f, var_1.x, var_1.x, var_1.x) - vec4<f32>(var_1.x, 829f, 253f, var_1.x))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1374f), _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(global4.x, global4.x, false))).x, _wgslsmith_f_op_f32(sign(-715f)), _wgslsmith_f_op_f32(var_1.x * 747f)))), ~abs(select(firstTrailingBit(vec4<u32>(1u, 53572u, var_0.x, 1978u)), vec4<u32>(1u, var_0.x, u_input.d.x, 1u), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(global4.x, false, false, false)))));
    var var_3 = ~min(func_2(var_2.b.e >> (_wgslsmith_div_u32(4294967295u, 44338u) % 32u), func_1(var_1.x, select(vec2<bool>(global4.x, false), vec2<bool>(false, false), vec2<bool>(global4.x, global4.x)), _wgslsmith_f_op_vec3_f32(-var_1.zwy)), func_1(-1252f, vec2<bool>(global4.x, false), vec3<f32>(186f, 634f, 1549f)), var_2.c).a, ~var_2.e);
    global4 = !select(!select(!vec2<bool>(global4.x, global4.x), select(vec2<bool>(global4.x, global4.x), vec2<bool>(true, false), global4.x), !vec2<bool>(false, global4.x)), select(vec2<bool>(select(false, false, global4.x), true), select(select(vec2<bool>(global4.x, global4.x), vec2<bool>(false, false), vec2<bool>(true, global4.x)), !vec2<bool>(global4.x, false), select(vec2<bool>(false, global4.x), vec2<bool>(false, true), vec2<bool>(global4.x, false))), true), global4.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, var_3.ywz, _wgslsmith_clamp_vec2_i32(vec2<i32>(-31045i << (var_2.a.c.a.x % 32u), u_input.c.x), u_input.c, _wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), max(vec2<i32>(42190i, -2147483647i), u_input.b))) >> (abs(max(var_2.a.c.a, vec2<u32>(var_0.x, u_input.d.x))) % vec2<u32>(32u)), var_2.b.e, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(269f))), var_2.c.x))));
}

