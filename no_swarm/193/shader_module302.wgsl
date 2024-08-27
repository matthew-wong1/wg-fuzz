struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<bool, 9> = array<bool, 9>(false, false, true, true, false, false, true, true, false);

var<private> global2: array<u32, 26> = array<u32, 26>(203u, 0u, 9892u, 7410u, 1u, 7695u, 1u, 97708u, 4294967295u, 23109u, 17810u, 0u, 16080u, 36487u, 4294967295u, 1u, 45224u, 38877u, 4294967295u, 1u, 92092u, 16735u, 36750u, 61861u, 13267u, 4294967295u);

var<private> global3: array<u32, 3> = array<u32, 3>(0u, 4294967295u, 24827u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<f32> {
    var var_0 = _wgslsmith_mod_vec3_u32(firstTrailingBit(select(u_input.e.xyy, vec3<u32>(75694u, 4294967295u, 16980u), true) << (select(u_input.e.zxy, vec3<u32>(64397u, 53917u, 4294967295u), false) % vec3<u32>(32u))) >> (u_input.e.xyw % vec3<u32>(32u)), firstLeadingBit(u_input.e.zww));
    global1 = array<bool, 9>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1304f)), -1948f)), _wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_mod_vec2_i32(u_input.d.ww, -firstLeadingBit(select(vec2<i32>(0i, u_input.b.x), vec2<i32>(u_input.a, -1i), false))), 4294967295u);
    var_1 = Struct_2(vec2<f32>(var_1.a.x, 658f), var_1.a.x, ~vec2<i32>(~var_1.c.x, ~_wgslsmith_div_i32(2147483647i, -1i)), 12885u);
    let var_2 = !select(true, ~4294967295u != var_0.x, _wgslsmith_f_op_f32(round(var_1.b)) < _wgslsmith_f_op_f32(-var_1.b));
    return vec4<f32>(518f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(-var_1.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b, -1603f)) + var_1.a.x))) - _wgslsmith_f_op_f32(ceil(-1377f))), var_1.b);
}

fn func_2(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 9u)];
    let var_1 = Struct_1(-1516f, _wgslsmith_mult_vec3_u32(u_input.e.zxw, u_input.e.zxx), _wgslsmith_f_op_vec4_f32(func_3()), true, vec2<i32>(-1i, (reverseBits(u_input.b.x) | u_input.a) & -1i));
    let var_2 = false && any(vec3<bool>(true, true, false));
    var var_3 = 21208i;
    global0 = array<u32, 5>();
    return vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], all(vec2<bool>(var_2, var_2)), var_1.b.x < ~(countOneBits(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 26u)]) ^ (global2[_wgslsmith_index_u32(4294967295u, 26u)] << (0u % 32u))), !(!var_1.d));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(ceil(arg_3.b.a.x));
    var var_1 = !(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_3.b.a.x, 453f)))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-558f + _wgslsmith_f_op_f32(step(1334f, arg_1))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 * 2379f)))));
    global1 = array<bool, 9>();
    global3 = array<u32, 3>();
    var_1 = !(!arg_3.a.d);
    return Struct_3(true, true);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    let var_0 = !(!vec3<bool>(0i != abs(u_input.b.x), arg_0.b, (arg_1.e.x ^ 1i) >= _wgslsmith_mult_i32(-13827i, u_input.c.x)));
    var var_1 = Struct_2(arg_1.c.xy, arg_1.a, (abs(vec2<i32>(arg_1.e.x, -59777i) >> (arg_1.b.yz % vec2<u32>(32u))) | ~(~arg_1.e)) << (reverseBits(~vec2<u32>(29037u, 45929u) | u_input.e.xy) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(1u)), 26u)], 26u)]);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -544f)))))), var_1.b);
    var var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b.x, global3[_wgslsmith_index_u32(~(2365u >> (1u % 32u)), 3u)], _wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.e.x & arg_1.b.x, 26u)], _wgslsmith_add_u32(0u, 4294967295u)), _wgslsmith_dot_vec4_u32(u_input.e, u_input.e)) & _wgslsmith_mod_vec4_u32(~u_input.e >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.d, u_input.e.x, var_1.d), vec4<u32>(u_input.e.x, u_input.e.x, 28930u, u_input.e.x)) % vec4<u32>(32u)), firstTrailingBit(u_input.e)), u_input.e);
    global1 = array<bool, 9>();
    return arg_1.a < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-1103f * -611f)))));
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_2) -> StorageBuffer {
    global2 = array<u32, 26>();
    let var_0 = Struct_1(-113f, max(~vec3<u32>(_wgslsmith_mod_u32(51021u, u_input.e.x), ~u_input.e.x, global2[_wgslsmith_index_u32(0u, 26u)]), ~(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, 20118u, 0u), vec3<u32>(24758u, 43210u, arg_3.d)) >> (vec3<u32>(4294967295u, 43583u, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 3u)]) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, -462f, 1000f, arg_3.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.x, -1872f, arg_3.b, arg_3.a.x) * vec4<f32>(arg_3.a.x, arg_3.a.x, -1000f, -692f))))) + vec4<f32>(arg_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b) * arg_3.a.x), arg_3.b, arg_3.b)), _wgslsmith_clamp_u32(~(1u >> (0u % 32u)), min(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_3.d, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], 5u)]), 26u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e.wzx, vec3<u32>(49218u, arg_3.d, global0[_wgslsmith_index_u32(46075u, 5u)])), 5u)]), 1u) < 0u, arg_3.c | (-vec2<i32>(arg_1, arg_1) | arg_3.c));
    var var_1 = Struct_4(var_0, arg_3, -38262i, vec3<u32>(4294967295u, firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(reverseBits(80871u), 26u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 5u)], 26u)], 26u)], 0u, 0u), vec3<u32>(var_0.b.x, var_0.b.x, 0u))), 3u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(57653u, min(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(0u, 26u)]), 3876u), reverseBits(max(875u, 1u))), 5u)]));
    let var_2 = !arg_2.zx;
    var var_3 = abs(var_0.b);
    return StorageBuffer(arg_3.a.x, var_0.e.x);
}

fn func_1(arg_0: vec4<bool>) -> StorageBuffer {
    return func_6(func_5(func_4(select(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(53447u, 9u)], true), func_2(u_input.d.yxy), any(vec3<bool>(true, arg_0.x, true))), 308f, vec2<u32>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 3u)], 5u)], 5u)], u_input.e.x), Struct_4(Struct_1(-170f, vec3<u32>(global2[_wgslsmith_index_u32(5767u, 26u)], 62345u, 0u), vec4<f32>(-202f, -627f, -115f, 1406f), true, u_input.c.zz), Struct_2(vec2<f32>(448f, 614f), 129f, u_input.c.xy, 1u), u_input.b.x, abs(u_input.e.xyx))), Struct_1(1f, ~abs(u_input.e.wwx), vec4<f32>(233f, 612f, _wgslsmith_f_op_f32(f32(-1f) * -888f), _wgslsmith_f_op_f32(f32(-1f) * -375f)), 4294967295u <= global2[_wgslsmith_index_u32(u_input.e.x, 26u)], u_input.d.zx)), abs(-reverseBits(-u_input.c.x)), vec3<bool>(false, arg_0.x, any(arg_0.yz)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1011f, -790f)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1137f), -910f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x), vec2<i32>(-2482i, abs(u_input.a)), 25701u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1073f + 477f) - _wgslsmith_f_op_f32(938f * -1000f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -140f)))) - -1594f), _wgslsmith_div_f32(254f, -236f)));
    var var_1 = _wgslsmith_mult_vec3_i32(~abs(-vec3<i32>(u_input.c.x, u_input.a, u_input.a)), ~u_input.c.wyy);
    global0 = array<u32, 5>();
    let x = u_input.a;
    s_output = func_1(!vec4<bool>(true, _wgslsmith_f_op_f32(ceil(var_0)) == var_0, global1[_wgslsmith_index_u32(27558u, 9u)], true));
}

