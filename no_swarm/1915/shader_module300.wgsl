struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(vec2<bool>(false, false), 27984i, false), Struct_2(vec2<bool>(false, false), 40329i, false), Struct_2(vec2<bool>(false, false), -45399i, true), Struct_2(vec2<bool>(true, false), 22432i, false), Struct_2(vec2<bool>(true, true), -40338i, false), Struct_2(vec2<bool>(true, true), 0i, true), Struct_2(vec2<bool>(false, false), -16749i, true), Struct_2(vec2<bool>(true, false), -14634i, false), Struct_2(vec2<bool>(false, false), 1i, false), Struct_2(vec2<bool>(true, true), -23851i, true), Struct_2(vec2<bool>(true, false), 17870i, false), Struct_2(vec2<bool>(false, true), i32(-2147483648), false));

var<private> global1: Struct_4;

var<private> global2: array<bool, 3> = array<bool, 3>(false, false, false);

var<private> global3: array<f32, 21>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = ~(u_input.c << ((~(~vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x)) << (min(select(u_input.c, u_input.c, global1.b.a.a), select(vec4<u32>(u_input.a.x, 12588u, u_input.a.x, 0u), u_input.d, true)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = vec3<f32>(298f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.a.b.x - _wgslsmith_f_op_f32(1000f * global1.b.a.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(339f))));
    global2 = array<bool, 3>();
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1068f + global3[_wgslsmith_index_u32(u_input.c.x, 21u)]))), global1.b.a.b.x)), var_1.x, global3[_wgslsmith_index_u32(u_input.c.x, 21u)]) * vec4<f32>(-325f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-187f)) * 416f))), _wgslsmith_f_op_f32(sign(global1.b.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(862f)))))));
    global2 = array<bool, 3>();
    return i32(-1i) * -max(2147483647i, 4630i);
}

fn func_2() -> vec4<f32> {
    let var_0 = vec2<i32>(~25355i, ~2147483647i);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, 1u), 12u)];
    let var_2 = Struct_1(var_1.c, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.a.b.x, global3[_wgslsmith_index_u32(4294967295u, 21u)])), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global1.b.a.b), vec2<f32>(global1.b.a.b.x, -2011f)))))));
    let var_3 = ~u_input.b;
    let var_4 = Struct_2(var_1.a, func_3(-vec4<i32>(-2147483647i, -19326i, _wgslsmith_mod_i32(var_1.b, 1907i), var_0.x)), !var_2.a);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1783f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(16947u, 21u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -642f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(1u, 21u)])) + global3[_wgslsmith_index_u32(0u, 21u)]))), var_2.b.x, global3[_wgslsmith_index_u32(21124u, 21u)]);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<f32>, arg_3: u32) -> Struct_4 {
    var var_0 = Struct_4(countOneBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b.x, 1i, -32812i), min(vec4<i32>(global1.b.b, 11596i, global1.b.b, -19490i), vec4<i32>(1i, 33158i, 1i, -2147483647i))), global1.a)), Struct_3(arg_0, ~_wgslsmith_add_i32(global1.b.b ^ 10579i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.b.b, global1.b.b, -18477i, 0i), vec4<i32>(global1.b.b, u_input.b.x, 2147483647i, u_input.b.x)))));
    global1 = Struct_4(var_0.b.b, Struct_3(Struct_1(global2[_wgslsmith_index_u32(arg_3, 3u)], _wgslsmith_f_op_vec2_f32(min(global1.b.a.b, vec2<f32>(1454f, -492f)))), u_input.b.x));
    var var_1 = Struct_4(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-4976i, 0i, var_0.b.b, global1.a), vec4<i32>(1i, -1i, 2147483647i, -5596i)) << (~vec4<u32>(arg_3, u_input.d.x, u_input.d.x, u_input.a.x) % vec4<u32>(32u)), min(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.b, global1.a, -1i, u_input.b.x), vec4<i32>(global1.b.b, 0i, -1i, -2147483647i)), vec4<i32>(var_0.a, var_0.a, var_0.a, u_input.b.x) << (u_input.d % vec4<u32>(32u)))), var_0.b);
    var var_2 = min(var_1.a & _wgslsmith_div_i32(var_1.a >> (min(4294967295u, u_input.c.x) % 32u), -u_input.b.x), _wgslsmith_mult_i32(var_1.a, -35342i));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.a.b.x)) - 212f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(84114u, 21u)] - _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(arg_3, 21u)]))))), global3[_wgslsmith_index_u32(46347u, 21u)]);
    return Struct_4(u_input.b.x, global1.b);
}

fn func_1() -> f32 {
    global3 = array<f32, 21>();
    global1 = func_4(global1.b.a, vec2<bool>(firstLeadingBit(0u) == ~(~u_input.c.x), !global2[_wgslsmith_index_u32(~(~0u), 3u)]), _wgslsmith_f_op_vec4_f32(func_2()), u_input.c.x);
    let var_0 = global1.b;
    var var_1 = ~(~(~(vec3<u32>(42090u, 4294967295u, 30044u) >> (firstLeadingBit(vec3<u32>(u_input.c.x, 12127u, 4294967295u)) % vec3<u32>(32u)))));
    var var_2 = 1u;
    return _wgslsmith_f_op_f32(f32(-1f) * -1243f);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec3<u32>) -> Struct_1 {
    global3 = array<f32, 21>();
    var var_0 = reverseBits(~select(u_input.d, vec4<u32>(0u, ~arg_2.x, ~0u, _wgslsmith_div_u32(arg_2.x, arg_2.x)), vec4<bool>(true, true, true, true)));
    var var_1 = func_4(global1.b.a, vec2<bool>(true, all(!select(vec4<bool>(global1.b.a.a, global2[_wgslsmith_index_u32(u_input.c.x, 3u)], true, global1.b.a.a), vec4<bool>(global1.b.a.a, true, global2[_wgslsmith_index_u32(u_input.a.x, 3u)], global1.b.a.a), vec4<bool>(global1.b.a.a, global1.b.a.a, global2[_wgslsmith_index_u32(29174u, 3u)], true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-627f, -1068f, -1024f, arg_1.x), vec4<f32>(-1000f, 613f, 1698f, arg_1.x))), _wgslsmith_div_vec4_f32(vec4<f32>(601f, global1.b.a.b.x, global1.b.a.b.x, global1.b.a.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-935f, 355f, global1.b.a.b.x, -574f) + vec4<f32>(global3[_wgslsmith_index_u32(20845u, 21u)], global3[_wgslsmith_index_u32(var_0.x, 21u)], -126f, 530f)))))), firstTrailingBit(~_wgslsmith_mod_u32(~26971u, ~u_input.c.x)));
    var_0 = firstLeadingBit(~max(~vec4<u32>(var_0.x, 31333u, var_0.x, 0u), ~vec4<u32>(35010u, var_0.x, 57300u, u_input.d.x)) | vec4<u32>(u_input.a.x, 4294967295u, var_0.x, 1u));
    var var_2 = all(vec3<bool>(select(!global2[_wgslsmith_index_u32(4294967295u, 3u)], any(vec4<bool>(global2[_wgslsmith_index_u32(29464u, 3u)], true, global1.b.a.a, false)), true), ~(~arg_2.x) == (_wgslsmith_mod_u32(18305u, 4294967295u) | ~arg_2.x), global1.b.a.a));
    return Struct_1(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.a.b.x, 307f) * global1.b.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var var_1 = Struct_3(func_5(_wgslsmith_add_vec3_i32(~abs(vec3<i32>(-2147483647i, global1.a, 1i)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(global1.a, u_input.b.x, u_input.b.x), vec3<i32>(2147483647i, global1.b.b, global1.b.b))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_vec4_f32(func_2()).x), global3[_wgslsmith_index_u32(firstLeadingBit(~0u), 21u)]), ~vec3<u32>(5491u, u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(14441u, u_input.c.x), u_input.a))), -5248i << (u_input.d.x % 32u));
    global0 = array<Struct_2, 12>();
    let var_2 = global1.b.a.b.x;
    let var_3 = Struct_4(select(firstTrailingBit(-u_input.b.x), -select(29213i, 13415i ^ global1.a, any(vec2<bool>(global2[_wgslsmith_index_u32(1u, 3u)], false))), any(!select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], true), vec2<bool>(false, global1.b.a.a), false))), func_4(func_4(Struct_1(true, _wgslsmith_div_vec2_f32(global1.b.a.b, vec2<f32>(global3[_wgslsmith_index_u32(22988u, 21u)], global1.b.a.b.x))), vec2<bool>(false, false), _wgslsmith_f_op_vec4_f32(func_2()), countOneBits(_wgslsmith_mod_u32(1u, u_input.a.x))).b.a, select(!select(vec2<bool>(global2[_wgslsmith_index_u32(69447u, 3u)], global2[_wgslsmith_index_u32(u_input.d.x, 3u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 3u)], global1.b.a.a), false), vec2<bool>(false, any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 3u)], false, false, global1.b.a.a))), !global1.b.a.a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], -1162f, global3[_wgslsmith_index_u32(u_input.a.x, 21u)], var_1.a.b.x))) * vec4<f32>(1325f, -1479f, -493f, global3[_wgslsmith_index_u32(u_input.a.x, 21u)])))), ~_wgslsmith_sub_u32(u_input.a.x ^ u_input.a.x, _wgslsmith_sub_u32(12954u, u_input.d.x))).b);
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.b.a.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1770f + _wgslsmith_f_op_f32(-317f - var_1.a.b.x)), 1139f)) + var_3.b.a.b);
    let var_5 = global1.b.a.b;
    global1 = Struct_4(~_wgslsmith_clamp_i32(-global1.b.b, firstLeadingBit(-2147483647i), ~(-var_3.a)), Struct_3(Struct_1(true & global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.c.x), 3u)], _wgslsmith_f_op_vec2_f32(var_3.b.a.b + vec2<f32>(var_1.a.b.x, var_5.x))), 0i));
    global0 = array<Struct_2, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec4<u32>(_wgslsmith_mult_u32(30506u, 0u), u_input.d.x, _wgslsmith_add_u32(1u, u_input.a.x), u_input.d.x)), reverseBits(abs(-u_input.b)), _wgslsmith_mod_vec2_u32(u_input.a, u_input.d.wx));
}

