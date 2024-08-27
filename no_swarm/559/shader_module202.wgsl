struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 3> = array<Struct_5, 3>(Struct_5(1u, Struct_3(Struct_2(vec2<i32>(19007i, 1i), vec2<bool>(false, true), vec2<bool>(true, false), i32(-2147483648), vec3<f32>(-478f, 310f, -165f)), vec4<bool>(true, false, false, false), vec4<i32>(-5738i, i32(-2147483648), 63548i, -21929i), 209f), 209f), Struct_5(4294967295u, Struct_3(Struct_2(vec2<i32>(-67777i, i32(-2147483648)), vec2<bool>(true, false), vec2<bool>(false, false), 23952i, vec3<f32>(-488f, 1203f, -333f)), vec4<bool>(true, false, false, true), vec4<i32>(32955i, 44015i, 0i, -23575i), 555f), 119f), Struct_5(1u, Struct_3(Struct_2(vec2<i32>(-21775i, -1i), vec2<bool>(true, true), vec2<bool>(true, true), -19826i, vec3<f32>(-1000f, 2606f, -2620f)), vec4<bool>(true, true, false, false), vec4<i32>(19573i, 3297i, -32998i, -1i), -283f), -528f));

var<private> global1: array<Struct_1, 9>;

var<private> global2: Struct_4;

var<private> global3: Struct_4 = Struct_4(0u, Struct_2(vec2<i32>(-43937i, 6315i), vec2<bool>(false, false), vec2<bool>(true, true), i32(-2147483648), vec3<f32>(-514f, -918f, 101f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<bool> {
    global2 = Struct_4(global2.a, Struct_2(~countOneBits(-global2.b.a), select(global3.b.c, global3.b.b, vec2<bool>(-975f < global3.b.e.x, any(global2.b.b))), !(!(!global2.b.b)), u_input.a, global3.b.e));
    global1 = array<Struct_1, 9>();
    var var_0 = min(u_input.b.xx, ~(~_wgslsmith_clamp_vec2_u32(~u_input.b.xy, ~vec2<u32>(4294967295u, 15979u), u_input.b.wz)));
    var_0 = ~(~_wgslsmith_clamp_vec2_u32(~u_input.b.yy << (abs(u_input.b.zy) % vec2<u32>(32u)), select(max(u_input.b.wx, vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_div_vec2_u32(u_input.b.xz, u_input.b.ww), vec2<bool>(global3.b.b.x, true)), vec2<u32>(1u, abs(var_0.x))));
    var var_1 = Struct_1(~firstLeadingBit(_wgslsmith_mult_vec3_i32(-vec3<i32>(-38525i, 64819i, u_input.c), vec3<i32>(u_input.a, -1i, global3.b.d) ^ vec3<i32>(26966i, global2.b.a.x, 0i))), !global3.b.c.x, true, global2.b.c.x, _wgslsmith_mod_i32(global2.b.d, u_input.c));
    return !vec3<bool>(global3.b.b.x, var_1.c, !(!any(vec3<bool>(false, false, true))));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: bool) -> vec2<bool> {
    var var_0 = func_3();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~reverseBits(global3.a), 21386u), 3u)];
    let var_2 = var_1.b.b.xzz;
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.b.e.x), _wgslsmith_f_op_f32(floor(-249f)), 918f, _wgslsmith_f_op_f32(max(global2.b.e.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.c)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, 1467f, 1249f, 1208f) - vec4<f32>(global3.b.e.x, -773f, -1127f, global3.b.e.x)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -474f, global3.b.e.x, -345f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.c, 1000f, global3.b.e.x, 1979f), vec4<f32>(var_1.c, global2.b.e.x, global2.b.e.x, var_1.b.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.e.x, -258f, -297f, 1442f)))))));
    var var_4 = global2.b.e.x;
    return var_0.yy;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<f32>) -> f32 {
    global3 = Struct_4((_wgslsmith_mod_u32(~1u, 41900u) & ~global2.a) << (_wgslsmith_div_u32(global3.a, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, global3.a, 0u, u_input.b.x)), ~vec4<u32>(global3.a, 73176u, 12144u, 4894u))) % 32u), Struct_2(vec2<i32>(countOneBits(-97978i), _wgslsmith_dot_vec3_i32(arg_1.c.zzy, ~vec3<i32>(global3.b.d, 0i, arg_0.a.a.x))), select(vec2<bool>(arg_0.b.x, arg_0.a.b.x || arg_2.b.x), select(vec2<bool>(arg_2.a.c.x, true), arg_0.b.xw, arg_1.b.xz), vec2<bool>(true, false)), func_2(false, firstTrailingBit(firstTrailingBit(vec2<i32>(arg_0.c.x, -32183i))), arg_0.b.x), 0i, arg_2.a.e));
    let var_0 = global2.b.a;
    let var_1 = Struct_3(global3.b, !select(arg_0.b, !vec4<bool>(arg_1.a.c.x, true, false, false), all(vec2<bool>(arg_0.b.x, global2.b.b.x))), firstTrailingBit(vec4<i32>(0i, ~0i, -var_0.x, arg_1.a.d)) >> (~vec4<u32>(1u, _wgslsmith_div_u32(u_input.b.x, 705u), 840u, _wgslsmith_mod_u32(u_input.b.x, 5932u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(step(arg_2.a.e.x, -563f)));
    var var_2 = vec3<u32>(select(~global3.a, abs(global2.a), select(true | func_3().x, !(!global2.b.c.x), arg_0.a.c.x)), u_input.b.x, 0u);
    let var_3 = ~(vec3<u32>(~(global3.a << (0u % 32u)), ~6963u, ~(~global2.a)) ^ u_input.b.zyw);
    return 280f;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: Struct_5) -> vec2<u32> {
    global3 = Struct_4(_wgslsmith_mult_u32(_wgslsmith_add_u32(6371u, _wgslsmith_dot_vec4_u32(u_input.b, ~u_input.b)), arg_3.a), Struct_2(firstLeadingBit(global3.b.a), arg_3.b.a.b, vec2<bool>(!global3.b.b.x, false), 2147483647i, vec3<f32>(668f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1329f - arg_3.b.a.e.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(528f)))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.e.x, 244f, arg_0.e.x)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1342f, arg_1, arg_0.e.x), vec3<f32>(125f, -481f, 165f), arg_2))))))) * arg_3.b.a.e);
    global1 = array<Struct_1, 9>();
    var var_1 = ~(~(countOneBits(arg_0.a.x << (30799u % 32u)) << (global2.a % 32u)));
    global1 = array<Struct_1, 9>();
    return u_input.b.zz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(u_input.b.yz ^ countOneBits(func_4(Struct_2(vec2<i32>(44239i, 8595i), global2.b.b, vec2<bool>(false, false), u_input.c, vec3<f32>(-2371f, global3.b.e.x, 1677f)), _wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(global3.b.a, vec2<bool>(global3.b.c.x, true), global2.b.b, u_input.c, global3.b.e), vec4<bool>(global3.b.c.x, global2.b.c.x, global2.b.b.x, true), vec4<i32>(-33643i, 0i, global2.b.d, -8688i), 934f), Struct_3(Struct_2(vec2<i32>(global3.b.a.x, -2147483647i), vec2<bool>(global3.b.b.x, global2.b.b.x), global2.b.c, -29484i, global2.b.e), vec4<bool>(true, global3.b.b.x, global3.b.c.x, false), vec4<i32>(global3.b.a.x, global3.b.d, -9883i, 0i), global2.b.e.x), Struct_3(Struct_2(global2.b.a, vec2<bool>(false, false), vec2<bool>(false, global2.b.c.x), global2.b.d, global2.b.e), vec4<bool>(global3.b.c.x, global3.b.c.x, false, true), vec4<i32>(-38980i, global3.b.d, global2.b.d, 2147483647i), 251f), vec4<f32>(-1675f, -512f, -1026f, global3.b.e.x))), !global3.b.c.x, global0[_wgslsmith_index_u32(4294967295u, 3u)])), vec2<u32>(1u, ~global2.a | _wgslsmith_div_u32(883u, 1u)) ^ vec2<u32>(_wgslsmith_div_u32(global2.a, global3.a), ~global3.a));
    var var_1 = true;
    var var_2 = global2.b.b;
    var_1 = _wgslsmith_f_op_f32(select(global3.b.e.x, _wgslsmith_f_op_f32(func_1(Struct_3(global2.b, vec4<bool>(true, false, false, global3.b.b.x), ~vec4<i32>(global3.b.a.x, u_input.c, 48464i, global2.b.a.x), _wgslsmith_f_op_f32(-global2.b.e.x)), Struct_3(Struct_2(vec2<i32>(global2.b.d, 1i), global2.b.b, global3.b.c, u_input.c, global3.b.e), !vec4<bool>(var_2.x, true, true, false), vec4<i32>(-9584i, global2.b.d, 2147483647i, -2147483647i) | vec4<i32>(global3.b.a.x, global3.b.d, -4258i, 29234i), _wgslsmith_f_op_f32(global3.b.e.x * 1178f)), Struct_3(Struct_2(vec2<i32>(global3.b.a.x, -10876i), global3.b.c, vec2<bool>(true, global3.b.b.x), -54376i, vec3<f32>(-771f, global2.b.e.x, global2.b.e.x)), vec4<bool>(global3.b.b.x, true, false, global3.b.b.x), vec4<i32>(0i, -42369i, 8302i, -35502i) ^ vec4<i32>(347i, 0i, global3.b.a.x, global3.b.a.x), _wgslsmith_f_op_f32(global3.b.e.x - -1745f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.e.x, 814f, global2.b.e.x, global3.b.e.x) - vec4<f32>(-507f, -206f, 397f, global2.b.e.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.b.e.x, global2.b.e.x, 1771f, global3.b.e.x))))))), !(_wgslsmith_div_f32(global3.b.e.x, global3.b.e.x) >= -286f))) == _wgslsmith_f_op_f32(-global2.b.e.x);
    var var_3 = vec2<bool>(var_2.x, func_3().x);
    let var_4 = Struct_4(max(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.x, ~global3.a, _wgslsmith_clamp_u32(0u, var_0.x, var_0.x), ~global3.a), vec4<u32>(~44425u, u_input.b.x, ~global2.a, global2.a)), ~(~abs(var_0.x))), Struct_2(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(global2.b.a, global2.b.a), _wgslsmith_add_vec2_i32(global2.b.a, vec2<i32>(u_input.a, -11380i))) & ~abs(global3.b.a), vec2<bool>(var_3.x, global2.b.b.x), select(!(!global3.b.b), !(!global3.b.b), any(select(vec4<bool>(false, var_3.x, var_2.x, global2.b.b.x), vec4<bool>(var_3.x, var_3.x, var_2.x, var_2.x), vec4<bool>(false, false, true, true)))), -304i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global2.b.e, vec3<f32>(global3.b.e.x, global3.b.e.x, -160f), vec3<bool>(false, global2.b.b.x, global3.b.c.x))) * _wgslsmith_f_op_vec3_f32(global3.b.e * global2.b.e))))));
    global2 = Struct_4(1u, var_4.b);
    global0 = array<Struct_5, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1284u, firstTrailingBit(firstLeadingBit(0u)), 1u, 0u));
}

