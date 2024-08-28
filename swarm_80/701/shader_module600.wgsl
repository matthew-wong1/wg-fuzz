struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(16437u, 37288u, 4294967295u), vec3<u32>(31015u, 4294967295u, 1u), vec3<u32>(1u, 1u, 54047u), vec3<u32>(40516u, 33609u, 48187u), vec3<u32>(0u, 77483u, 37410u), vec3<u32>(4294967295u, 11399u, 17253u), vec3<u32>(21645u, 4294967295u, 1912u), vec3<u32>(26723u, 72915u, 19168u));

var<private> global2: vec4<bool>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(557f, -790f, -138f), -1051f, -43684i, 9947u);

var<private> global4: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<f32>(-445f, 983f, 581f), 639f, 0i, 0u), Struct_1(vec3<f32>(-2389f, -869f, -817f), 2053f, 53717i, 6221u), Struct_1(vec3<f32>(-1000f, -232f, 432f), 1000f, 0i, 94375u), Struct_1(vec3<f32>(626f, 1179f, 1462f), 796f, 17602i, 0u), Struct_1(vec3<f32>(-1000f, -500f, -2685f), 1100f, i32(-2147483648), 15400u), Struct_1(vec3<f32>(735f, -2272f, 2377f), -278f, 3451i, 0u), Struct_1(vec3<f32>(504f, -539f, -226f), -464f, -24114i, 1u), Struct_1(vec3<f32>(-1970f, 1081f, 316f), -444f, i32(-2147483648), 44010u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_0.b.a.zwx);
    let var_1 = Struct_4(583f, arg_0.b);
    var var_2 = select(firstLeadingBit(vec4<i32>(1i, var_1.b.b.x >> (firstTrailingBit(0u) % 32u), 1i, abs(5221i) | abs(u_input.d))), _wgslsmith_sub_vec4_i32(~countOneBits(vec4<i32>(global3.c, -2147483647i, u_input.d, var_1.b.b.x)), abs(vec4<i32>(global3.c, 7183i, 35853i, arg_0.b.b.x))) << (min(max(~vec4<u32>(global3.d, 0u, global3.d, global3.d), vec4<u32>(u_input.a.x, 23520u, 77560u, 652u) << (vec4<u32>(66021u, global3.d, 379u, u_input.b) % vec4<u32>(32u))), countOneBits(~vec4<u32>(3216u, u_input.c, 0u, global3.d))) % vec4<u32>(32u)), global2.x || true);
    var var_3 = vec4<i32>(0i >> ((global3.d & ~u_input.c) % 32u), ~(~countOneBits(-var_1.b.b.x)), -51625i, var_1.b.b.x);
    let var_4 = global2.x;
    return select(!select(global2.xy, vec2<bool>(true, global2.x), !global2.wx), select(global2.wx, select(select(global2.yy, select(vec2<bool>(true, global2.x), global2.yz, vec2<bool>(true, global2.x)), vec2<bool>(true, false)), vec2<bool>(true, !global2.x), any(select(vec2<bool>(global2.x, true), global2.zy, global2.x))), global2.xw), global2.x);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<u32>) -> Struct_3 {
    global0 = ~(54285u ^ (_wgslsmith_dot_vec2_u32(arg_2.yx, vec2<u32>(4294967295u, 0u)) ^ ~0u));
    let var_0 = Struct_2(global2.x, vec3<i32>(-1i) * -vec3<i32>(1136i, ~arg_0, reverseBits(u_input.e.x)), !func_3(Struct_4(_wgslsmith_f_op_f32(607f + 1010f), Struct_3(vec4<f32>(arg_1.x, -564f, arg_1.x, 853f), u_input.e.zz))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
    var var_1 = _wgslsmith_f_op_f32(1358f + global3.b);
    var var_2 = Struct_3(arg_1, firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, -20432i), -var_0.b.xy) & ~abs(vec2<i32>(global3.c, -2147483647i))));
    let var_3 = ~(-max(-_wgslsmith_dot_vec2_i32(var_2.b, var_2.b), max(_wgslsmith_mult_i32(-23196i, arg_0), -var_2.b.x)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1647f), -1205f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.x, var_2.a.x))), 538f)), abs(vec2<i32>(var_3 >> (global3.d % 32u), -24230i)));
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1051f, _wgslsmith_f_op_f32(-168f * arg_0.d.a.x))), func_2(~global3.c, vec4<f32>(-226f, 639f, global3.a.x, _wgslsmith_f_op_f32(round(arg_0.d.a.x))), firstTrailingBit(vec4<u32>(global3.d, 8390u, firstTrailingBit(4294967295u), u_input.b))));
    let var_1 = -var_0.b.b;
    var var_2 = arg_0.c;
    var var_3 = func_2(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, max(~var_1.x, func_2(1i, vec4<f32>(var_2.d, 2343f, 1000f, var_0.b.a.x), vec4<u32>(global3.d, 12191u, u_input.b, 19315u)).b.x)), select(i32(-1i) * -22856i, ~select(var_2.b.x, var_2.b.x, true), true), func_2(var_2.b.x, arg_0.a.a, vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(1u, global3.d), u_input.a.x, 0u)).b.x), vec4<f32>(531f, -462f, var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-229f)) * 784f))), reverseBits(select(_wgslsmith_div_vec4_u32(vec4<u32>(62155u, 1u, 0u, global3.d), ~vec4<u32>(70776u, 0u, u_input.c, u_input.b)), vec4<u32>(1u, global3.d & global3.d, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global3.d, global3.d, 13570u), vec4<u32>(global3.d, global3.d, u_input.b, 79204u))), select(select(vec4<bool>(false, var_2.a, arg_0.c.a, global2.x), vec4<bool>(false, true, arg_0.c.a, arg_0.b.x), vec4<bool>(false, true, global2.x, true)), select(vec4<bool>(var_2.a, arg_0.c.c.x, false, false), vec4<bool>(false, true, true, global2.x), vec4<bool>(true, true, var_2.c.x, true)), vec4<bool>(arg_0.c.c.x, false, global2.x, false)))));
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1968f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d + 136f))))));
    return func_2(-22112i, vec4<f32>(var_0.a, 289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.b - 320f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) - _wgslsmith_f_op_f32(-global3.a.x)), -1000f))), ~(~(~vec4<u32>(u_input.b, 4294967295u, u_input.c, 4294967295u))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec4<i32>) -> bool {
    let var_0 = reverseBits(~_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, -30214i, 34557i, u_input.e.x), vec4<i32>(-arg_0.b.x, -2147483647i >> (0u % 32u), -1i, arg_0.b.x ^ -2147483647i)));
    let var_1 = all(select(select(global2.ww, vec2<bool>(global2.x, false), global2.ww), global2.xw, all(select(select(vec4<bool>(global2.x, true, false, global2.x), vec4<bool>(global2.x, false, global2.x, true), global2.x), vec4<bool>(false, true, global2.x, global2.x), false))));
    var var_2 = vec3<i32>(arg_2.x, reverseBits(_wgslsmith_div_i32(-1i, 2677i)), arg_2.x);
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(-func_4(Struct_5(func_2(u_input.e.x, arg_1, vec4<u32>(u_input.c, u_input.b, global3.d, 24705u)), global2.www, Struct_2(global2.x, u_input.e, vec2<bool>(false, global2.x), global3.a.x), func_4(Struct_5(Struct_3(arg_0.a, vec2<i32>(-6996i, arg_0.b.x)), vec3<bool>(var_1, false, global2.x), Struct_2(var_1, arg_2.zww, vec2<bool>(var_1, var_1), arg_0.a.x), arg_0)))).a.ywy), func_4(Struct_5(Struct_3(_wgslsmith_f_op_vec4_f32(arg_0.a + arg_1), arg_2.zy & var_2.zz), vec3<bool>(func_3(Struct_4(2617f, Struct_3(vec4<f32>(-605f, global3.b, -1349f, 786f), vec2<i32>(-1i, var_2.x)))).x, global3.d > global3.d, any(vec4<bool>(false, global2.x, var_1, false))), Struct_2(true, firstLeadingBit(u_input.e), select(vec2<bool>(false, global2.x), global2.zz, global2.zw), -840f), arg_0)).a.x, 2147483647i, 1u);
    var var_3 = -vec4<i32>(firstTrailingBit(~u_input.d), _wgslsmith_mod_i32(func_4(Struct_5(arg_0, vec3<bool>(global2.x, true, var_1), Struct_2(var_1, arg_2.xxy, vec2<bool>(var_1, var_1), arg_1.x), arg_0)).b.x, 1i), select(arg_2.x & -25372i, _wgslsmith_sub_i32(~2147483647i, -2147483647i), true), arg_2.x);
    return func_3(Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), global3.a.x), func_2(2147483647i, vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(-765f * arg_0.a.x), _wgslsmith_f_op_f32(abs(arg_0.a.x)), _wgslsmith_f_op_f32(334f * 1000f)), ~(~vec4<u32>(global3.d, u_input.c, 57162u, 1u))))).x;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: Struct_1) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -668f), global3.b, -672f, -1219f);
    let var_1 = _wgslsmith_mult_vec4_u32(~vec4<u32>(max(global3.d, arg_3.d), ~4294967295u, reverseBits(u_input.c), global3.d), vec4<u32>(arg_3.d, 13322u, _wgslsmith_mult_u32(arg_3.d, _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(global3.d, 8u)], global1[_wgslsmith_index_u32(111587u, 8u)])), _wgslsmith_add_u32(4294967295u, global3.d) ^ ~arg_3.d)) ^ ~(vec4<u32>(4294967295u, ~78592u, u_input.b, 1u) >> (vec4<u32>(32797u, global3.d, 1u, arg_3.d) % vec4<u32>(32u)));
    let var_2 = vec2<u32>(0u, abs(_wgslsmith_add_u32(reverseBits(4294967295u & global3.d), global3.d)));
    let var_3 = vec4<i32>(25296i, _wgslsmith_dot_vec3_i32(u_input.e, _wgslsmith_mod_vec3_i32(-vec3<i32>(arg_1.x, global3.c, global3.c), -arg_0 >> (vec3<u32>(global3.d, 13006u, arg_3.d) % vec3<u32>(32u)))), -32476i, ~(-(~(~(-2147483647i)))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1014f), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-676f - arg_3.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.x)))), -268f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-770f, 808f, var_0.x, var_0.x) * vec4<f32>(-624f, -2086f, -2417f, _wgslsmith_f_op_f32(-global3.b)))));
    return func_5(func_4(Struct_5(func_2(-global3.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global3.b, global3.b, arg_3.a.x)), abs(var_1)), select(vec3<bool>(global2.x, true, true), !global2.yyw, global2.x | false), Struct_2(arg_3.c == global3.c, vec3<i32>(var_3.x, -36425i, -2147483647i), vec2<bool>(false, global2.x), -1392f), func_2(_wgslsmith_div_i32(-11656i, var_3.x), vec4<f32>(862f, 537f, arg_3.b, var_0.x), ~vec4<u32>(0u, global3.d, 1u, arg_3.d)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(var_0.x - 888f))), _wgslsmith_f_op_f32(floor(1023f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1342f - var_0.x) + _wgslsmith_f_op_f32(floor(607f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-305f, global3.b)), _wgslsmith_f_op_f32(f32(-1f) * -1214f))), func_4(Struct_5(Struct_3(vec4<f32>(global3.b, global3.b, 1038f, 334f), vec2<i32>(arg_2.x, 32729i)), global2.xwx, Struct_2(true, vec3<i32>(arg_3.c, 2147483647i, -1i), vec2<bool>(false, global2.x), -385f), func_4(Struct_5(Struct_3(vec4<f32>(-286f, global3.a.x, -127f, global3.b), arg_1), vec3<bool>(global2.x, true, false), Struct_2(false, var_3.xyx, global2.wy, 979f), Struct_3(vec4<f32>(704f, arg_3.b, -1615f, 1477f), arg_2.zz))))).a.x), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1616f), true)) >= global3.a.x));
    var var_1 = true;
    global2 = !vec4<bool>(any(global2.wwy), var_0.x, !global2.x, select(var_0.x, !func_1(vec3<i32>(u_input.e.x, u_input.d, -2147483647i), u_input.e.zx, vec4<i32>(u_input.e.x, u_input.d, u_input.e.x, 0i), Struct_1(global3.a, -183f, global3.c, u_input.a.x)), true));
    var var_2 = Struct_2(true, vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.e.zy << (vec2<u32>(u_input.b, global3.d) % vec2<u32>(32u)), ~u_input.e.zz), ~26680i, 0i), !var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.a.x, global3.b))));
    global4 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(min(~1u, 19471u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(28760u, 1u, 21993u, 1u), vec4<u32>(global3.d, 49020u, 0u, u_input.a.x)), 4294967295u), countOneBits(select(global1[_wgslsmith_index_u32(global3.d, 8u)] ^ vec3<u32>(1u, 1u, global3.d), ~vec3<u32>(12574u, global3.d, 2869u), global2.x))));
}

