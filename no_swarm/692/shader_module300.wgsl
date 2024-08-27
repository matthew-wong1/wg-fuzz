struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20>;

var<private> global1: array<vec2<i32>, 22>;

var<private> global2: array<bool, 3>;

var<private> global3: array<Struct_2, 26>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = u_input.a;
    return -22561i;
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    let var_1 = vec2<bool>(reverseBits(u_input.c.x) != ~reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, 2147483647i), u_input.c)), select(!((true && var_0) & any(vec3<bool>(true, true, false))), true, true));
    let var_2 = vec3<i32>(~func_3(Struct_3(~53048u, !vec3<bool>(var_0, var_1.x, false), Struct_1(vec2<bool>(var_1.x, false), vec4<i32>(u_input.a.x, u_input.c.x, u_input.b, -31177i), 0u), Struct_1(vec2<bool>(var_1.x, false), u_input.c, 1u))), u_input.a.x, _wgslsmith_mult_i32(u_input.c.x, max(u_input.a.x, max(~32754i, 15712i))));
    var var_3 = !select(!vec4<bool>(all(vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(43879u, 3u)])), select(var_0, false, var_0), any(vec2<bool>(false, false)), u_input.b == var_2.x), select(!select(vec4<bool>(var_0, false, true, var_1.x), vec4<bool>(var_0, global2[_wgslsmith_index_u32(4294967295u, 3u)], true, true), vec4<bool>(var_0, var_0, var_0, global2[_wgslsmith_index_u32(0u, 3u)])), select(vec4<bool>(var_1.x, false, var_0, true), vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(1u, 3u)]), global2[_wgslsmith_index_u32(firstTrailingBit(1u), 3u)]), !var_0), true);
    var var_4 = Struct_2(vec2<i32>(var_2.x, 0i), var_2.x, Struct_1(select(select(!vec2<bool>(var_3.x, true), var_3.xz, select(var_3.xy, vec2<bool>(var_0, var_0), var_3.yy)), !select(vec2<bool>(true, var_0), var_3.xz, true), select(var_1, select(vec2<bool>(var_1.x, var_3.x), var_3.zy, vec2<bool>(true, false)), var_1)), ~(-vec4<i32>(u_input.c.x, -11278i, -39115i, -18822i)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_mod_u32(min(~4294967295u, firstTrailingBit(32078u)), 1u)));
    return var_4.c;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>) -> f32 {
    var var_0 = 79935i;
    var var_1 = Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0, arg_2.x) >> (((vec2<u32>(0u, arg_1.c.c) << (vec2<u32>(arg_1.c.c, arg_1.c.c) % vec2<u32>(32u))) << (countOneBits(vec2<u32>(7743u, 5132u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(arg_2.x, 18903i), abs(30125i))), 1i, Struct_1(!func_2().a, vec4<i32>(~arg_0, _wgslsmith_div_i32(-2147483647i, max(11288i, 1i)), -1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(58753i, 1i, 17816i), arg_1.c.b.zyx, false), ~u_input.c.xyx)), ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_1.c.c, 21480u, 27661u, 5116u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c.c, arg_1.c.c, arg_1.c.c, 1u), vec4<u32>(arg_1.c.c, arg_1.c.c, 1u, 29745u)))));
    var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~(~(vec3<u32>(arg_1.c.c, 1u, var_1.c.c) >> (vec3<u32>(var_1.c.c, 20989u, 0u) % vec3<u32>(32u)))), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(arg_1.c.c, 1u, var_1.c.c)) | _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.c.c, 4294967295u, 4294967295u), vec3<u32>(60846u, var_1.c.c, arg_1.c.c)), vec3<u32>(~297u, 4294967295u, 0u))), 26u)];
    let var_2 = func_2();
    var var_3 = var_1.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) + 720f);
}

fn func_1(arg_0: f32) -> vec4<bool> {
    global3 = array<Struct_2, 26>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -35901i, u_input.c.x, u_input.a.x), -vec4<i32>(26766i, 57324i, u_input.c.x, -15244i)), Struct_2(select(u_input.a, global1[_wgslsmith_index_u32(1u, 22u)], vec2<bool>(false, global2[_wgslsmith_index_u32(32693u, 3u)])), i32(-1i) * -1i, func_2()), abs(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(62816u, 5038u), 22u)])))), _wgslsmith_f_op_f32(func_4(~_wgslsmith_sub_i32(1i, -1i), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(27319u, ~firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), ~vec2<u32>(19051u, 36010u))), 26u)], _wgslsmith_mod_vec2_i32(u_input.a, -abs(u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, 870f, true)) + _wgslsmith_f_op_f32(select(-804f, -771f, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0)) + arg_0) * arg_0));
    global3 = array<Struct_2, 26>();
    var var_1 = abs(reverseBits(20588u));
    global3 = array<Struct_2, 26>();
    return !vec4<bool>(func_2().a.x, true, false, all(vec3<bool>(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(~1u, 3u)], any(vec3<bool>(false, false, false)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_3(~0u, !arg_1.xzx, func_2(), Struct_1(vec2<bool>(all(func_1(1196f).yx), global2[_wgslsmith_index_u32(select(0u & arg_2.c, ~4294967295u, false), 3u)]), arg_2.b, ~_wgslsmith_clamp_u32(~arg_2.c, arg_2.c, ~0u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1542f, -203f, 247f, 298f) + vec4<f32>(641f, 232f, -727f, -1128f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-648f, -179f, 137f, 488f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1996f + 1325f)), -802f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-991f, -1385f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -743f))))));
    var var_2 = Struct_3(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(arg_2.c, _wgslsmith_add_u32(~arg_2.c, var_0.d.c)), var_0.a), !(!(!func_1(var_1.x).xzw)), func_2(), Struct_1(vec2<bool>(all(vec4<bool>(var_0.b.x, arg_1.x, false, true)), !(!arg_0.x)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(abs(arg_2.b), vec4<i32>(11407i, var_0.c.b.x, var_0.c.b.x, 0i), vec4<i32>(-4770i, var_0.c.b.x, var_0.d.b.x, -42091i))), var_0.a));
    var var_3 = Struct_3(4294967295u, vec3<bool>(all(select(vec2<bool>(arg_0.x, false), select(var_0.b.yx, vec2<bool>(true, arg_2.a.x), arg_0.x), var_0.b.zx)), !var_2.c.a.x, !all(select(vec4<bool>(false, true, false, false), arg_1, arg_1))), Struct_1(!vec2<bool>(func_1(104f).x, false), ~var_0.d.b, var_0.a >> (~_wgslsmith_mult_u32(arg_2.c, var_2.d.c) % 32u)), func_2());
    let var_4 = !(!all(arg_1) && false);
    return 0u;
}

fn func_6(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = !global2[_wgslsmith_index_u32(arg_1.a >> (countOneBits(abs(arg_1.d.c)) % 32u), 3u)];
    let var_1 = false;
    var var_2 = firstLeadingBit(func_3(arg_1));
    var var_3 = arg_1.c.b.x;
    let var_4 = Struct_1(arg_1.c.a, -firstLeadingBit(u_input.c), ~37018u);
    return Struct_1(!vec2<bool>(var_4.a.x, global2[_wgslsmith_index_u32(arg_1.d.c, 3u)]), vec4<i32>(i32(-1i) * -var_4.b.x, 14880i, firstTrailingBit(-_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(var_4.c, 22u)], u_input.c.wz)), arg_1.c.b.x), arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    let var_0 = Struct_1(vec2<bool>(!(all(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(9495u, 3u)], false)) && true), false), vec4<i32>(u_input.c.x, ~_wgslsmith_dot_vec3_i32(~u_input.c.xyy, u_input.c.zxw), u_input.b, min(u_input.a.x, 2147483647i)), ~0u);
    var var_1 = func_6(864f, Struct_3(func_5(vec2<bool>(all(vec4<bool>(true, var_0.a.x, var_0.a.x, false)), !global2[_wgslsmith_index_u32(1u, 3u)]), func_1(_wgslsmith_f_op_f32(-1692f + -477f)), func_2()), !(!select(vec3<bool>(var_0.a.x, global2[_wgslsmith_index_u32(21310u, 3u)], true), vec3<bool>(var_0.a.x, false, var_0.a.x), var_0.a.x)), func_2(), Struct_1(var_0.a, ~vec4<i32>(u_input.b, u_input.b, var_0.b.x, -32541i), var_0.c)));
    global2 = array<bool, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(-1680f, ~(~vec2<u32>(1u, 5492u) ^ vec2<u32>(var_1.c, 12484u)) & _wgslsmith_sub_vec2_u32(~(vec2<u32>(var_0.c, 0u) >> (vec2<u32>(var_1.c, var_0.c) % vec2<u32>(32u))), vec2<u32>(0u, countOneBits(var_1.c))), var_1.b.x, func_3(Struct_3(~(var_1.c << (var_1.c % 32u)), func_1(_wgslsmith_f_op_f32(133f * -935f)).xzx, func_6(1816f, Struct_3(0u, vec3<bool>(global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)], false), var_0, Struct_1(var_0.a, u_input.c, 15619u))), Struct_1(func_2().a, var_1.b | vec4<i32>(-54828i, u_input.c.x, var_1.b.x, -2147483647i), ~43923u))));
}

