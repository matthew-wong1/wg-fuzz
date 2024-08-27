struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5>;

var<private> global1: array<f32, 5>;

var<private> global2: array<u32, 9> = array<u32, 9>(0u, 1u, 0u, 4294967295u, 16639u, 4294967295u, 12508u, 60685u, 1u);

var<private> global3: vec2<i32> = vec2<i32>(22638i, -1i);

var<private> global4: array<bool, 13> = array<bool, 13>(true, false, false, false, true, false, false, true, false, false, true, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-916f, 1149f, 1562f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(5650u, 5u)], -471f) - vec3<f32>(global1[_wgslsmith_index_u32(1457u, 5u)], global1[_wgslsmith_index_u32(6811u, 5u)], -149f)))), false, vec3<u32>(u_input.b, ~4294967295u, ~4294967295u) << (~vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 9u)], u_input.b, global2[_wgslsmith_index_u32(4443u, 9u)]) % vec3<u32>(32u)), vec2<i32>(i32(-1i) * -global3.x, global3.x)));
    let var_1 = var_0.a;
    let var_2 = vec2<u32>(30766u, ~_wgslsmith_clamp_u32(~u_input.b, firstTrailingBit(global2[_wgslsmith_index_u32(u_input.b, 9u)]), var_1.c.x)) | var_0.a.c.yz;
    global3 = ~(vec2<i32>(~(var_0.a.d.x >> (var_2.x % 32u)), -13067i) ^ min(select(u_input.c.zz, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a.d.x, 2147483647i), u_input.c.zx, vec2<i32>(-2147483647i, global3.x)), global4[_wgslsmith_index_u32(~var_1.c.x, 13u)]), vec2<i32>(-1i) * -var_0.a.d));
    global0 = array<Struct_5, 5>();
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.a.x)))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    global0 = array<Struct_5, 5>();
    global4 = array<bool, 13>();
    global2 = array<u32, 9>();
    let var_0 = func_2(select(global4[_wgslsmith_index_u32(6436u, 13u)], (global3.x >= 2147483647i) && !global4[_wgslsmith_index_u32(36187u, 13u)], !(arg_1.a.x <= 1165f)) & global4[_wgslsmith_index_u32(arg_0.x << (~4294967295u % 32u), 13u)]);
    global1 = array<f32, 5>();
    return Struct_1(arg_3.xyy, !all(!(!vec4<bool>(global4[_wgslsmith_index_u32(56341u, 13u)], false, true, global4[_wgslsmith_index_u32(arg_0.x, 13u)]))), ~vec3<u32>(u_input.b, ~(~global2[_wgslsmith_index_u32(25191u, 9u)]), 16421u), u_input.c.xy);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<i32> {
    var var_0 = _wgslsmith_div_vec2_f32(arg_0.a.xy, _wgslsmith_f_op_vec2_f32(select(arg_1.wy, vec2<f32>(global1[_wgslsmith_index_u32(~u_input.b, 5u)], arg_1.x), arg_0.b)));
    let var_1 = select(reverseBits(~vec4<u32>(2503u, global2[_wgslsmith_index_u32(40053u, 9u)], 15783u, global2[_wgslsmith_index_u32(39431u, 9u)])), min(vec4<u32>(~4294967295u, 33064u, 1u, 4294967295u), _wgslsmith_sub_vec4_u32(min(vec4<u32>(u_input.b, u_input.b, global2[_wgslsmith_index_u32(u_input.b, 9u)], arg_0.c.x), vec4<u32>(global2[_wgslsmith_index_u32(arg_0.c.x, 9u)], 121206u, 4294967295u, u_input.b)), ~vec4<u32>(arg_0.c.x, global2[_wgslsmith_index_u32(arg_0.c.x, 9u)], u_input.b, u_input.b))), any(vec2<bool>(true, true))) << (vec4<u32>(4294967295u, 38794u, global2[_wgslsmith_index_u32(arg_0.c.x, 9u)], ~global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 9u)] << (_wgslsmith_mod_u32(1u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 9u)], 9u)] % 32u), arg_0.c.x ^ 1u) % 32u)) % vec4<u32>(32u));
    var var_2 = vec2<u32>(~(~1u), 1u);
    var var_3 = Struct_2(arg_0);
    global1 = array<f32, 5>();
    return u_input.c.yz ^ vec2<i32>(countOneBits(_wgslsmith_sub_i32(firstTrailingBit(arg_0.d.x), max(2147483647i, var_3.a.d.x))), -52052i);
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: u32) -> Struct_4 {
    global1 = array<f32, 5>();
    global2 = array<u32, 9>();
    return Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1 * global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2, 9u)], 5u)]), -1833f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 5u)]))), false, ~(~select(vec3<u32>(6289u, u_input.b, u_input.b), vec3<u32>(global2[_wgslsmith_index_u32(1u, 9u)], u_input.b, global2[_wgslsmith_index_u32(arg_2, 9u)]), global4[_wgslsmith_index_u32(u_input.b, 13u)])), -(~arg_0)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(global2[_wgslsmith_index_u32(arg_2, 9u)]), global2[_wgslsmith_index_u32(4294967295u, 9u)], 79286u, 13163u), vec4<u32>(~4294967295u, u_input.b << (1u % 32u), u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2, 9u)], 9u)] & 0u)), ~(global2[_wgslsmith_index_u32(35127u, 9u)] | (arg_2 ^ u_input.b))), 1864f);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_2(Struct_1(vec3<f32>(1855f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 5u)] - arg_3.x) - _wgslsmith_div_f32(arg_3.x, 333f)), arg_3.x), arg_2.b, arg_1, u_input.c.yx));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.a - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.a.a - _wgslsmith_f_op_vec3_f32(arg_3 - arg_2.a))))));
    var var_2 = func_5(abs(func_4(func_3(vec4<u32>(arg_2.c.x, arg_1.x, var_0.a.c.x, arg_1.x), func_2(false), _wgslsmith_div_f32(var_1.x, 1183f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1815f, -481f, 464f, arg_3.x), vec4<f32>(arg_3.x, -1005f, -341f, 485f), vec4<bool>(arg_2.b, global4[_wgslsmith_index_u32(1u, 13u)], var_0.a.b, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, -1050f, var_0.a.a.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-457f, 398f, -657f, global1[_wgslsmith_index_u32(arg_1.x, 5u)])))))), _wgslsmith_f_op_f32(-652f * arg_2.a.x), _wgslsmith_sub_u32(arg_1.x, (14112u ^ (global2[_wgslsmith_index_u32(arg_1.x, 9u)] ^ 41703u)) | min(abs(32397u), ~10165u)));
    global3 = ((vec2<i32>(-1i) * -vec2<i32>(var_2.a.d.x, global3.x)) & ~var_0.a.d) | vec2<i32>(-_wgslsmith_mod_i32(1i, _wgslsmith_add_i32(-29889i, u_input.c.x)), arg_2.d.x);
    let var_3 = any(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 5u)] < var_0.a.a.x, true, func_4(func_5(u_input.c.yy, var_2.a.a.x, global2[_wgslsmith_index_u32(var_2.b.x, 9u)]).a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1020f, 704f, 1000f, -1409f))).x < arg_2.d.x));
    return func_5(var_2.a.d, -723f, ~62542u).b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(4294967295u, 0u, 64064u)) << (vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(func_1(vec2<bool>(global4[_wgslsmith_index_u32(121u, 13u)], global4[_wgslsmith_index_u32(u_input.b, 13u)]), vec3<u32>(41848u, global2[_wgslsmith_index_u32(12512u, 9u)], 10243u), Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], -658f, -1175f), global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38200u, 9u)], 13u)], vec3<u32>(global2[_wgslsmith_index_u32(1u, 9u)], 42153u, global2[_wgslsmith_index_u32(57318u, 9u)]), vec2<i32>(global3.x, u_input.c.x)), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(38252u, 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)])), 9u)], 9u)], 4294967295u, select(1u, 9976u, global4[_wgslsmith_index_u32(0u, 13u)])) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.b, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)])), func_3(reverseBits(vec4<u32>(38134u, global2[_wgslsmith_index_u32(4294967295u, 9u)], u_input.b, 4294967295u)), func_2(global4[_wgslsmith_index_u32(u_input.b, 13u)]), global1[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12550u, 9u)], 9u)], 5u)], _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1632f, 165f, global1[_wgslsmith_index_u32(13750u, 5u)], -1772f)))).c)));
    global0 = array<Struct_5, 5>();
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1216f, global1[_wgslsmith_index_u32(66401u, 5u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(69742u, 9u)], 5u)], global1[_wgslsmith_index_u32(32128u, 5u)])))))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 5u)], -995f, global1[_wgslsmith_index_u32(18856u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)]))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, global1[_wgslsmith_index_u32(21214u, 5u)], -741f, -1687f))), vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 5u)], global1[_wgslsmith_index_u32(1u, 5u)], -1063f, global1[_wgslsmith_index_u32(4294967295u, 5u)]), !vec4<bool>(global4[_wgslsmith_index_u32(14249u, 13u)], true, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 13u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7963u, 9u)], 13u)]))))))));
    let var_2 = vec4<f32>(1f, -201f, global1[_wgslsmith_index_u32(firstTrailingBit(~reverseBits(_wgslsmith_mult_u32(20963u, var_0.x))), 5u)], -258f);
    global2 = array<u32, 9>();
    var var_3 = 513f;
    let var_4 = vec4<u32>(34243u, ~_wgslsmith_dot_vec3_u32(func_3(vec4<u32>(4294967295u, 44379u, 99743u, 11299u), func_2(global4[_wgslsmith_index_u32(0u, 13u)]), _wgslsmith_f_op_f32(var_2.x + 636f), var_1).c, countOneBits(~vec3<u32>(1u, 130233u, u_input.b))), ~(~(u_input.b ^ (4294967295u ^ u_input.b))), ~u_input.b);
    var var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(max(var_4.x, abs(_wgslsmith_add_u32(~var_4.x, ~8362u))), _wgslsmith_f_op_f32(floor(-135f)), func_5(func_4(func_3(var_4, Struct_3(var_1.xz), -679f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 9u)], 5u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 9u)], 5u)], 1239f) - vec4<f32>(var_1.x, var_1.x, var_1.x, -651f))), var_1), -663f, _wgslsmith_mod_u32(_wgslsmith_mod_u32(104482u, func_3(vec4<u32>(1u, var_4.x, u_input.b, var_0.x), Struct_3(var_1.xx), global1[_wgslsmith_index_u32(u_input.b, 5u)], var_2).c.x), 0u)).a.a.xz, var_0.zz);
}

