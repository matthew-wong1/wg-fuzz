struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<u32>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 20>;

var<private> global2: array<bool, 13>;

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(-1552f, 49577u, -1000f), Struct_2(818f, 8780u, -135f), Struct_2(128f, 4294967295u, 1000f), Struct_2(430f, 41756u, -210f), Struct_2(1000f, 23252u, -163f), Struct_2(-145f, 4294967295u, -834f), Struct_2(666f, 18212u, 515f), Struct_2(342f, 6149u, -1000f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-393f - _wgslsmith_f_op_f32(545f + _wgslsmith_f_op_f32(arg_0.c + -503f))) * arg_0.a), ~_wgslsmith_dot_vec4_u32(u_input.b, ~(~u_input.b)), arg_0.a);
    return u_input.b;
}

fn func_2() -> vec4<f32> {
    var var_0 = 866f;
    let var_1 = _wgslsmith_add_vec4_u32(select(countOneBits(func_3(Struct_2(369f, 6153u, -817f), vec4<bool>(global2[_wgslsmith_index_u32(34833u, 13u)], true, false, global2[_wgslsmith_index_u32(0u, 13u)]))), vec4<u32>(2848u, global1[_wgslsmith_index_u32(reverseBits(73020u), 20u)], (u_input.a ^ global1[_wgslsmith_index_u32(9033u, 20u)]) ^ ~u_input.a, countOneBits(38510u) | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5720u, 20u)], 20u)], 22536u), u_input.b.xzz)), !vec4<bool>(!global2[_wgslsmith_index_u32(u_input.a, 13u)], any(vec2<bool>(true, true)), all(vec4<bool>(true, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 20u)], 13u)], true, global2[_wgslsmith_index_u32(u_input.a, 13u)])), false)), countOneBits(u_input.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1140f, -298f, _wgslsmith_f_op_f32(531f + 807f), 806f), vec4<f32>(-611f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -362f), -969f), vec4<bool>(true, any(vec3<bool>(false, false, global2[_wgslsmith_index_u32(var_1.x, 13u)])), select(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28694u, 20u)], 13u)], global2[_wgslsmith_index_u32(20370u, 13u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(275u, 20u)], 13u)]), true))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1034f, -1084f, -803f, 519f))))))));
    let var_3 = 1i >> (global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(u_input.b.x | 35616u, ~4294967295u, _wgslsmith_clamp_u32(60578u, u_input.a, u_input.a)), _wgslsmith_sub_u32(0u, countOneBits(global1[_wgslsmith_index_u32(~var_1.x, 20u)]))), 20u)] % 32u);
    let var_4 = 1u;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2) + vec4<f32>(-1314f, var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_2.x)))));
}

fn func_1() -> Struct_4 {
    global2 = array<bool, 13>();
    global1 = array<u32, 20>();
    global0 = -1910f;
    var var_0 = _wgslsmith_sub_vec4_i32(reverseBits(-vec4<i32>(22982i, u_input.c, u_input.d.x, u_input.d.x)) ^ vec4<i32>(-2147483647i, -1i, -2147483647i, 19522i), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.c, -7993i, 60440i, 34360i), vec4<i32>(~u_input.e.x, u_input.e.x, _wgslsmith_div_i32(u_input.c, 36259i), ~(-6502i)))) << (select(reverseBits(u_input.b), vec4<u32>(u_input.a, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(84366u, 20u)], 20u)], ~global1[_wgslsmith_index_u32(1u, 20u)], ~36349u) & countOneBits(~u_input.b), 1459f < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1033f, 1973f))))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -966f) - _wgslsmith_f_op_f32(1000f * -420f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -622f))))), _wgslsmith_f_op_vec4_f32(func_2())));
    return Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(func_2()).x), vec2<u32>(~u_input.a, 4294967295u) | ((vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 20u)], 20u)], 7742u) ^ u_input.b.ww) & u_input.b.yw), vec3<u32>(u_input.b.x, abs(reverseBits(global1[_wgslsmith_index_u32(36046u, 20u)])), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u << (u_input.a % 32u), 20u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4657u, 68602u), 20u)])), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(529f))), ~_wgslsmith_mult_u32(u_input.b.x, 1u), -695f), 1095f));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    let var_0 = arg_1.a;
    var var_1 = true;
    let var_2 = -2147483647i;
    var var_3 = max(vec2<i32>(_wgslsmith_mod_i32(u_input.c, firstLeadingBit(_wgslsmith_div_i32(u_input.d.x, 20250i))), -29759i), vec2<i32>(abs(~(~(-2147483647i))), 1i));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.a), -308f, -720f, 1000f);
    return Struct_1(-1753f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_4(false, func_1()), reverseBits(~u_input.b.wy), u_input.b.zyx | u_input.b.xyx, global3[_wgslsmith_index_u32(u_input.a, 8u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-721f + _wgslsmith_f_op_f32(min(2620f, 412f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2()).x)))));
    var var_1 = !vec4<bool>(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.c, -43196i), u_input.c << (13539u % 32u)) == u_input.c, false, all(vec3<bool>(12162i <= u_input.e.x, global2[_wgslsmith_index_u32(var_0.d.b, 13u)], global2[_wgslsmith_index_u32(54196u, 13u)])), true);
    global1 = array<u32, 20>();
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-765f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.a)) * _wgslsmith_f_op_f32(578f - 1206f))))), _wgslsmith_dot_vec3_u32(abs(select(var_0.c, var_0.c, var_1.xww)), select(var_0.c, func_3(global3[_wgslsmith_index_u32(u_input.b.x, 8u)], vec4<bool>(global2[_wgslsmith_index_u32(var_0.c.x, 13u)], true, var_1.x, var_1.x)).wyw, select(var_1.ywx, vec3<bool>(false, true, false), global2[_wgslsmith_index_u32(4294967295u, 13u)]))) >= 40562u));
    let var_3 = !(!var_1.ww);
    var_0 = Struct_3(var_0.a, ~vec2<u32>(func_1().a.d.b, u_input.a), ~_wgslsmith_mult_vec3_u32(vec3<u32>(~global1[_wgslsmith_index_u32(1u, 20u)], 0u, abs(0u)), ~vec3<u32>(16758u, 6777u, 63051u)), func_1().a.d, _wgslsmith_f_op_f32(678f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-705f + _wgslsmith_f_op_f32(-var_0.d.a)), 1f)));
    global1 = array<u32, 20>();
    let var_4 = (vec3<i32>(-1i) * -vec3<i32>(1i, 24489i, u_input.e.x)) ^ -firstLeadingBit(_wgslsmith_div_vec3_i32(-vec3<i32>(4764i, -2147483647i, u_input.c), _wgslsmith_div_vec3_i32(vec3<i32>(16286i, u_input.c, u_input.d.x), vec3<i32>(-1i, u_input.c, u_input.e.x))));
    let var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(max(-(~(-93771i)), u_input.c), -58025i));
}

