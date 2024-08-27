struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: bool,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: array<Struct_1, 24>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(2408u, arg_0.x, 76351u)), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(17683u, 13772u, arg_1.d), ~vec3<u32>(u_input.a.x, arg_1.d, 1u)))) & (~4294967295u ^ arg_1.d);
    let var_1 = select(select(!arg_3, select(select(vec4<bool>(arg_2.a, arg_1.a, arg_1.a, false), vec4<bool>(false, false, true, false), true), !vec4<bool>(true, arg_2.a, false, true), !arg_3), vec4<bool>(false, arg_3.x, true, arg_2.a)), arg_3, !(-481f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(3084u, 3u)] - 1278f)))));
    global1 = array<Struct_1, 24>();
    let var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(~arg_2.c | ~arg_1.c, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 14815i), vec2<i32>(u_input.d.x, -1i)) & -57705i), ~(~vec3<i32>(arg_2.c, 8185i, 36551i) >> (~u_input.a.yyw % vec3<u32>(32u)))), abs(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_2.b, u_input.c, arg_1.b), -vec3<i32>(arg_1.b, 26403i, arg_1.c)), ~max(vec3<i32>(1i, arg_2.b, -63196i), vec3<i32>(arg_1.b, arg_1.c, arg_1.b)))));
    let var_3 = arg_2;
    return max(reverseBits(~u_input.b.x) >> (var_0 % 32u), arg_2.d) << (~_wgslsmith_mult_u32(abs(0u), arg_1.d) % 32u);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> u32 {
    global0 = array<f32, 3>();
    var var_0 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(-19295i, arg_0) ^ _wgslsmith_add_i32(2147483647i, arg_0), ~14882i), arg_0), max(~u_input.b.x, ~(u_input.a.x ^ _wgslsmith_clamp_u32(27114u, 0u, 26736u))), u_input.a.x >= _wgslsmith_add_u32(~u_input.b.x, ~u_input.a.x << (u_input.b.x % 32u)), Struct_2(global1[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_clamp_vec2_i32((u_input.d << (vec2<u32>(28165u, 34177u) % vec2<u32>(32u))) >> (vec2<u32>(4294967295u, 61952u) % vec2<u32>(32u)), vec2<i32>(7270i, 1i), u_input.d)), false);
    let var_1 = ~(~(-1i));
    let var_2 = _wgslsmith_mult_vec2_u32(reverseBits(firstTrailingBit(~(vec2<u32>(4294967295u, var_0.d.a.d) >> (vec2<u32>(40825u, u_input.b.x) % vec2<u32>(32u))))), _wgslsmith_clamp_vec2_u32(reverseBits(~vec2<u32>(u_input.a.x, var_0.d.a.d)), u_input.a.wz, u_input.b));
    var var_3 = arg_1.xz;
    return 4294967295u;
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(func_2(u_input.a.wyx, Struct_1(false, u_input.c, 1i, 1u), global1[_wgslsmith_index_u32(0u, 24u)], vec4<bool>(true, false, true, true)) | func_3(13953i, vec4<bool>(true, false, true, false)), 3u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(38115u, 3u)]) + _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.b.x, 3u)])))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)] * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(102770u, 3u)] + 1737f))))), _wgslsmith_f_op_f32(743f + global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 3u)])));
    var var_1 = (abs(u_input.b.x) << (_wgslsmith_div_u32(~(~4294967295u), _wgslsmith_dot_vec4_u32(u_input.a, firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, 62722u)))) % 32u)) ^ 4294967295u;
    let var_2 = -1658f;
    let var_3 = _wgslsmith_add_u32(func_3(i32(-1i) * -84732i, !vec4<bool>(true, any(vec3<bool>(true, false, true)), true, false)), (~1u & _wgslsmith_clamp_u32(func_3(u_input.d.x, vec4<bool>(false, true, true, true)), u_input.b.x, u_input.b.x)) | firstTrailingBit(~_wgslsmith_dot_vec3_u32(u_input.a.zxz, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))));
    let var_4 = !(!any(vec4<bool>(false, true, false, all(vec3<bool>(true, true, true)))));
    return vec4<bool>(var_4, all(vec2<bool>(any(!vec2<bool>(var_4, true)), var_4)), false, func_2(u_input.a.yyy, global1[_wgslsmith_index_u32(28636u, 24u)], Struct_1(false, min(u_input.c, u_input.c), 3274i, ~4294967295u), select(select(vec4<bool>(true, true, var_4, var_4), vec4<bool>(false, true, var_4, false), vec4<bool>(true, false, var_4, false)), !vec4<bool>(true, var_4, var_4, var_4), true)) <= ~u_input.a.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0, arg_0)));
    var var_1 = Struct_1(true || any(!arg_2.zwx), _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(0i, -22229i, -1i)), -_wgslsmith_add_vec3_i32(vec3<i32>(30350i, -2147483647i, arg_1.c), vec3<i32>(arg_1.c, -7043i, arg_1.b))) ^ -2147483647i, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(1i, 2147483647i, 2147483647i)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.c, -1610i, arg_1.c), vec3<i32>(u_input.d.x, -4879i, u_input.d.x) & vec3<i32>(u_input.c, 1i, -15688i)), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(arg_1.b, u_input.c, arg_1.b)), -vec3<i32>(arg_1.c, u_input.d.x, u_input.d.x), select(vec3<i32>(u_input.c, 39061i, u_input.c), vec3<i32>(-59561i, -46026i, -2147483647i), arg_1.a)))), u_input.a.x);
    var var_2 = Struct_1(!all(arg_2.xx) == false, -firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_div_i32(-12345i, var_1.c), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1.c, var_1.b), vec3<i32>(u_input.c, -7535i, var_1.c)))), -43517i ^ arg_1.c, select(max(_wgslsmith_mod_u32(34398u, arg_1.d), 31736u), _wgslsmith_sub_u32(1u, var_1.d), var_1.a));
    var var_3 = vec2<bool>(var_1.a, true);
    var var_4 = 123f;
    return _wgslsmith_clamp_u32(arg_1.d, min(~arg_1.d, u_input.a.x), var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(2147483647i >= _wgslsmith_mod_i32(u_input.c, abs(u_input.c) << (_wgslsmith_mult_u32(31161u, u_input.a.x) % 32u)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.c), u_input.d), (0i >> (u_input.a.x % 32u)) ^ (0i | u_input.d.x)), u_input.d.x, _wgslsmith_dot_vec4_i32(-(vec4<i32>(14841i, u_input.d.x, u_input.c, u_input.d.x) & vec4<i32>(-51703i, u_input.d.x, u_input.d.x, -32172i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.c, 2147483647i, u_input.c), vec4<i32>(15413i, u_input.c, 1i, -2147483647i)))), 2147483647i, u_input.b.x);
    var var_1 = ~u_input.a.xzw;
    global1 = array<Struct_1, 24>();
    var_1 = abs(~vec3<u32>(abs(~0u), u_input.b.x, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1064f, global0[_wgslsmith_index_u32(4294967295u, 3u)])), global1[_wgslsmith_index_u32(26418u, 24u)], func_1())));
    let var_2 = select(abs(max(vec3<i32>(53730i, u_input.d.x, _wgslsmith_div_i32(u_input.d.x, u_input.d.x)), -select(vec3<i32>(var_0.c, 3802i, u_input.d.x), vec3<i32>(1i, u_input.c, var_0.c), false))), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(45579i, -1i, u_input.c)), vec3<i32>(u_input.c, var_0.b, var_0.c)) | abs(min(vec3<i32>(2147483647i, -2147483647i, -12935i), vec3<i32>(-44445i, var_0.b, var_0.c))), select(~abs(vec3<i32>(var_0.b, -1i, u_input.d.x)), reverseBits(vec3<i32>(-2147483647i, -22806i, u_input.d.x)), func_1().xwx)), vec3<bool>(any(!select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, false), var_0.a)), true, !(!select(var_0.a, true, true))));
    var var_3 = Struct_2(Struct_1(var_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, var_2.x), u_input.d), abs(6283i), 68551u), u_input.d);
    let var_4 = vec2<u32>(~_wgslsmith_sub_u32(reverseBits(countOneBits(var_0.d)), var_1.x), abs(~(var_3.a.d | firstTrailingBit(u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(~vec2<i32>(-17417i, var_2.x), u_input.d ^ vec2<i32>(_wgslsmith_sub_i32(var_3.b.x, var_0.b), ~2147483647i)), vec4<i32>(~(var_3.a.b & (2147483647i << (0u % 32u))), u_input.d.x, var_2.x, 1i), abs(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.c, 1i), -46160i), _wgslsmith_add_i32(countOneBits(-1i), firstLeadingBit(var_3.b.x)), 1i)));
}

