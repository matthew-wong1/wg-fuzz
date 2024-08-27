struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-268f, arg_0.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, 2080f), vec2<f32>(arg_0.a, -727f), false))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, -904f) * vec2<f32>(425f, arg_0.a))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> f32 {
    let var_0 = all(select(vec4<bool>(u_input.c.x != 20908u, any(vec3<bool>(true, true, true)) | true, true, !(1i < u_input.d.x)), vec4<bool>(true, max(0u, u_input.a) == ~arg_1.b.b, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)), 822f >= _wgslsmith_div_f32(arg_1.a, -631f)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true))))));
    global0 = array<i32, 20>();
    let var_1 = any(select(select(!select(vec2<bool>(false, var_0), vec2<bool>(true, var_0), vec2<bool>(var_0, var_0)), vec2<bool>(var_0, all(vec4<bool>(false, false, false, var_0))), select(select(vec2<bool>(true, var_0), vec2<bool>(false, true), var_0), select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0)), any(vec2<bool>(var_0, false)))), vec2<bool>(true, _wgslsmith_f_op_f32(max(338f, arg_0.x)) != _wgslsmith_f_op_f32(-arg_0.x)), vec2<bool>(true | var_0, ~1u > (0u & arg_1.b.d))));
    let var_2 = vec2<u32>(1u, abs(arg_1.b.d));
    global0 = array<i32, 20>();
    return 654f;
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-245f)) + _wgslsmith_f_op_f32(floor(-2321f))) + _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(772f, Struct_1(u_input.d.xx, 0u, global0[_wgslsmith_index_u32(u_input.c.x, 20u)], u_input.a, -1i)), true)), Struct_3(1918f, Struct_1(u_input.d.yx, 20003u, global0[_wgslsmith_index_u32(3183u, 20u)], u_input.b.x, u_input.d.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(895f))) * -871f), all(vec3<bool>(any(vec4<bool>(true, false, true, false)), true, true)))), Struct_1(select(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global0[_wgslsmith_index_u32(u_input.c.x, 20u)]), firstLeadingBit(min(vec2<i32>(-2147483647i, -2776i), u_input.d.yy)), false), min(~38708u & (u_input.a ^ u_input.c.x), u_input.a | ~4294967295u), countOneBits(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 20u)] ^ abs(global0[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_add_u32(u_input.a, u_input.c.x) | ~1u, _wgslsmith_dot_vec3_i32(u_input.d, u_input.d)));
    let var_1 = ~(~u_input.c);
    let var_2 = Struct_2(true);
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(282f, 1000f) - vec2<f32>(var_0.a, -1089f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-121f, var_0.a)))), vec2<f32>(1f, 1f))));
    var_0 = Struct_3(var_0.a, Struct_1(u_input.d.zy, 51960u, i32(-1i) * -2147483647i, countOneBits(u_input.b.x), var_0.b.a.x));
    return u_input.d.zz << (~firstTrailingBit(u_input.b >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_3 {
    let var_0 = Struct_1(-func_2(), arg_2.d, _wgslsmith_mod_i32(firstLeadingBit(-6814i), -global0[_wgslsmith_index_u32(0u, 20u)]), 5073u, -2147483647i);
    var var_1 = abs(u_input.c.zzx);
    var var_2 = _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~(~12207u), 20u)], u_input.d.x) << (~var_1.x % 32u);
    var var_3 = u_input.b.x;
    var_3 = _wgslsmith_sub_u32(var_0.b, arg_2.d);
    return Struct_3(836f, arg_2);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(_wgslsmith_clamp_u32(arg_2.b.d, u_input.b.x, 0u), _wgslsmith_clamp_u32(arg_0.d, 38234u, arg_2.b.d), select(41107u, 1u, arg_3.a)), u_input.c.zyz), firstLeadingBit(~(~u_input.c.zyw))), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.b, 39496u), vec2<u32>(arg_0.d, u_input.a)), abs(arg_2.b.d) >> ((0u << (u_input.c.x % 32u)) % 32u)));
    global0 = array<i32, 20>();
    var var_1 = ~(vec3<u32>(~min(4294967295u, arg_2.b.d), var_0, u_input.b.x) << (u_input.c.xzy % vec3<u32>(32u)));
    var_1 = max(vec3<u32>(var_0, firstLeadingBit(5347u), 1u), _wgslsmith_mod_vec3_u32(~u_input.c.xzz, _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 59435u), vec3<u32>(0u, arg_0.d, 38772u)), ~(u_input.c.wzz & vec3<u32>(4294967295u, 4294967295u, 0u)))));
    var var_2 = false;
    return ~firstTrailingBit(~_wgslsmith_sub_vec4_i32(vec4<i32>(-18925i, -16474i, 36900i, u_input.d.x), vec4<i32>(23957i, -35952i, arg_0.c, 0i))) & ~(select(vec4<i32>(0i, arg_0.c, arg_0.a.x, u_input.d.x), -vec4<i32>(arg_0.c, arg_2.b.e, -3668i, arg_0.e), !vec4<bool>(arg_3.a, false, true, arg_3.a)) | ~countOneBits(vec4<i32>(-1i, u_input.d.x, global0[_wgslsmith_index_u32(var_1.x, 20u)], -30260i)));
}

fn func_6(arg_0: vec4<i32>) -> f32 {
    global0 = array<i32, 20>();
    var var_0 = ~select(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, u_input.d.x, global0[_wgslsmith_index_u32(50977u, 20u)]) ^ u_input.d, vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], 40387i, u_input.d.x)), ~vec3<i32>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], 11368i)), -func_5(func_1(false, u_input.c, Struct_1(arg_0.ww, 1u, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 8330u, global0[_wgslsmith_index_u32(u_input.a, 20u)])).b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-162f, -741f, 626f, -986f) - vec4<f32>(-2218f, 596f, 1276f, 266f)), func_1(true, vec4<u32>(38549u, u_input.a, 19616u, u_input.b.x), Struct_1(vec2<i32>(arg_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), 4294967295u, -2147483647i, u_input.c.x, 0i)), Struct_2(true)).wwx, true);
    global0 = array<i32, 20>();
    let var_1 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b.x, firstTrailingBit(u_input.a) | u_input.a, 1u), u_input.b.x);
    let var_2 = Struct_4(vec2<f32>(-187f, -277f));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -764f) - var_2.a.x) - -1401f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(func_6(func_5(Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]), 0u, u_input.d.x, u_input.b.x, global0[_wgslsmith_index_u32(u_input.a, 20u)]), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-819f, -302f, 268f, 2625f))), func_1(true, u_input.c, Struct_1(u_input.d.yx, u_input.c.x, global0[_wgslsmith_index_u32(1u, 20u)], 26817u, global0[_wgslsmith_index_u32(1u, 20u)])), Struct_2(true)) & abs(~vec4<i32>(3845i, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], u_input.d.x, global0[_wgslsmith_index_u32(141520u, 20u)])))), func_1(true, select(u_input.c, vec4<u32>(func_1(false, vec4<u32>(1u, u_input.a, 18129u, u_input.a), Struct_1(u_input.d.yy, 0u, u_input.d.x, u_input.b.x, 1i)).b.b, _wgslsmith_add_u32(u_input.a, u_input.c.x), _wgslsmith_add_u32(u_input.a, u_input.a), abs(4294967295u)), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), true)), Struct_1(~u_input.d.xx, u_input.c.x, -2147483647i, u_input.c.x, func_1(true, u_input.c << (vec4<u32>(u_input.a, 51544u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), Struct_1(u_input.d.xy, 108133u, -38834i, 4294967295u, 2147483647i)).b.c)).b);
    let var_1 = u_input.c.wwy;
    var var_2 = var_0.b;
    let var_3 = Struct_2(all(vec4<bool>(true, true, true, true)));
    var_2 = Struct_1(firstLeadingBit(abs(vec2<i32>(var_0.b.c, var_0.b.a.x)) << (countOneBits(~var_1.zx) % vec2<u32>(32u))), var_0.b.d, _wgslsmith_dot_vec2_i32(select(reverseBits(-u_input.d.yz), vec2<i32>(global0[_wgslsmith_index_u32(54068u, 20u)], 0i), true), var_2.a), var_0.b.d ^ func_1(true, vec4<u32>(var_1.x, 1927u, ~var_0.b.d, var_1.x), Struct_1(u_input.d.yx, 1u, _wgslsmith_sub_i32(var_0.b.a.x, -2147483647i), 49614u ^ var_0.b.d, i32(-1i) * -16901i)).b.d, -32875i);
    var_2 = var_0.b;
    global0 = array<i32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zzw, countOneBits(_wgslsmith_clamp_vec2_u32(min(u_input.b, u_input.b), var_1.yx, u_input.b)) << (vec2<u32>(countOneBits(_wgslsmith_mult_u32(4294967295u, 1u)), abs(_wgslsmith_dot_vec3_u32(var_1, u_input.c.yzw))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -899f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) - vec2<f32>(1000f, -1218f))) - vec2<f32>(-196f, 882f)) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(186f, -852f)), vec2<f32>(1312f, var_0.a)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1098f, var_0.a))), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, var_0.a), vec2<f32>(var_0.a, var_0.a)))))));
}

