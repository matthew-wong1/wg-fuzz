struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: array<i32, 21>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global1 = array<i32, 21>();
    let var_0 = 167f;
    global1 = array<i32, 21>();
    let var_1 = firstLeadingBit(_wgslsmith_div_u32(u_input.b.x, ~u_input.b.x) >> (u_input.d % 32u)) << (8893u % 32u);
    let var_2 = vec3<i32>(-8027i, _wgslsmith_sub_i32(u_input.c, -8691i), -1i);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1519f * _wgslsmith_f_op_f32(-var_0)), var_0));
}

fn func_2() -> Struct_3 {
    global1 = array<i32, 21>();
    var var_0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1286f))) - _wgslsmith_f_op_f32(func_3())));
    let var_1 = abs(max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.b.x) ^ vec2<u32>(u_input.d, u_input.b.x), ~u_input.b, vec2<u32>(0u, 95348u)), ~(~u_input.b) & (select(vec2<u32>(14947u, u_input.d), u_input.b, true) | vec2<u32>(2916u, u_input.b.x))));
    var var_2 = Struct_3(true, firstLeadingBit(_wgslsmith_add_u32(firstTrailingBit(var_1.x), u_input.b.x)) | u_input.d, false, 2147483647i);
    var var_3 = Struct_4(Struct_3(all(!vec3<bool>(var_2.c, false, var_2.a)), _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(93754u, 0u, 1u)), ~vec3<u32>(u_input.b.x, var_2.b, 7248u)), 0u <= (select(4294967295u, 0u, true) >> (~4294967295u % 32u)), ~1i), u_input.a.yz, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f)), -1661f)), 301f, _wgslsmith_f_op_f32(f32(-1f) * -880f)), 1i, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.d, ~1u << (~u_input.b.x % 32u)), _wgslsmith_mult_u32(4294967295u, u_input.d)));
    return var_3.a;
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    global0 = array<Struct_3, 7>();
    let var_0 = arg_0.c;
    var var_1 = _wgslsmith_dot_vec4_i32(max(vec4<i32>(-2147483647i, arg_0.b.x, u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], -14818i))), (vec4<i32>(arg_0.a.d, 25687i, global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 36971i) >> (vec4<u32>(0u, 60950u, u_input.d, arg_0.e) % vec4<u32>(32u))) >> ((vec4<u32>(arg_0.a.b, 0u, arg_0.a.b, 0u) & vec4<u32>(arg_0.e, u_input.d, 69703u, u_input.b.x)) % vec4<u32>(32u))) >> (~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, arg_0.e, 1u), vec4<u32>(u_input.d, u_input.b.x, 44206u, 4294967295u))) % vec4<u32>(32u)), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -31301i, u_input.c, _wgslsmith_sub_i32(-1017i, 0i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -4437i, 1i, arg_0.b.x), vec4<i32>(21403i, arg_0.a.d, -24173i, -1i)))));
    global0 = array<Struct_3, 7>();
    var var_2 = -vec3<i32>(min(~global1[_wgslsmith_index_u32(u_input.b.x, 21u)] << (_wgslsmith_add_u32(arg_0.a.b, arg_0.e) % 32u), -u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(0i, 9760i), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(4294967295u, 21u)], u_input.a.x)) | 68986i, arg_0.a.d);
    return Struct_2(3683i, select(vec3<bool>(any(select(vec4<bool>(true, arg_0.a.a, arg_0.a.a, true), vec4<bool>(true, false, arg_0.a.c, false), true)), select(arg_0.d <= u_input.a.x, true, true), all(select(vec3<bool>(arg_0.a.a, arg_0.a.c, true), vec3<bool>(true, false, arg_0.a.a), vec3<bool>(true, true, false)))), select(select(vec3<bool>(arg_0.a.c, false, false), !vec3<bool>(arg_0.a.c, false, false), !arg_0.a.a), vec3<bool>(arg_0.a.c, true, any(vec4<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.c, arg_0.a.c))), arg_0.a.c), select(select(vec3<bool>(arg_0.a.c, arg_0.a.c, arg_0.a.c), !vec3<bool>(false, true, arg_0.a.a), select(vec3<bool>(arg_0.a.a, false, true), vec3<bool>(true, false, false), vec3<bool>(false, arg_0.a.c, true))), vec3<bool>(!arg_0.a.a, true, arg_0.a.c), !vec3<bool>(arg_0.a.c, arg_0.a.c, true))), Struct_1(vec2<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-524f - arg_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_f_op_f32(ceil(var_0.x)))), vec4<u32>(67049u, ~max(0u, arg_0.e), max(~u_input.b.x, u_input.b.x), 4294967295u), ~(~(~vec3<u32>(u_input.d, u_input.d, 9725u))), firstTrailingBit(firstTrailingBit(vec3<u32>(arg_0.e, u_input.b.x, 23621u))), ~(~vec4<u32>(1u, 0u, arg_0.e, arg_0.e) & ~vec4<u32>(u_input.b.x, 44537u, 4294967295u, u_input.b.x))), Struct_1(_wgslsmith_div_vec2_f32(arg_0.c.xz, arg_0.c.yz), vec4<u32>(1u, 4294967295u, _wgslsmith_sub_u32(u_input.d, 10910u), arg_0.a.b) | vec4<u32>(1u, _wgslsmith_mult_u32(46271u, arg_0.a.b), 1u, _wgslsmith_div_u32(57901u, arg_0.a.b)), countOneBits(vec3<u32>(u_input.b.x, ~arg_0.a.b, firstTrailingBit(4294967295u))), abs(~(~vec3<u32>(arg_0.e, 21660u, 18937u))), vec4<u32>(~u_input.d, arg_0.a.b, ~arg_0.e, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.e, 4294967295u, arg_0.a.b), firstTrailingBit(vec3<u32>(31700u, arg_0.e, arg_0.a.b))))));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    var var_0 = arg_0.d;
    global1 = array<i32, 21>();
    var var_1 = arg_0;
    let var_2 = -2147483647i;
    return func_4(Struct_4(func_2(), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(45859i, -9921i, global1[_wgslsmith_index_u32(0u, 21u)]), arg_1), u_input.a.yy), vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-183f)) + _wgslsmith_f_op_f32(func_3())), var_1.c.a.x), abs(37149i), ~(~31203u)));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> f32 {
    global0 = array<Struct_3, 7>();
    global1 = array<i32, 21>();
    var var_0 = arg_0.d.e.x;
    var var_1 = func_1(arg_0, _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(arg_0.a, 16199i)) << (~vec2<u32>(2370u, arg_2.c.x) % vec2<u32>(32u)), ~vec2<i32>(global1[_wgslsmith_index_u32(~u_input.d, 21u)], ~u_input.e))).c.d.xz;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-937f)))) - -1129f), 696f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2140f)) * 825f) * _wgslsmith_f_op_f32(-1f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 21>();
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-735f, 2360f)) - -461f) * _wgslsmith_f_op_f32(func_5(func_1(Struct_2(-15409i, vec3<bool>(false, true, false), Struct_1(vec2<f32>(-686f, 1895f), vec4<u32>(u_input.d, 49629u, u_input.b.x, 4294967295u), vec3<u32>(u_input.d, 4294967295u, u_input.d), vec3<u32>(74487u, 0u, u_input.b.x), vec4<u32>(0u, u_input.d, 67178u, 0u)), Struct_1(vec2<f32>(336f, -206f), vec4<u32>(u_input.d, u_input.d, 0u, u_input.d), vec3<u32>(u_input.b.x, 49554u, u_input.d), vec3<u32>(u_input.d, 24880u, 0u), vec4<u32>(u_input.b.x, 53017u, 0u, 1u))), u_input.a.x), -909f, Struct_1(vec2<f32>(1076f, -1409f), vec4<u32>(1u, u_input.b.x, 1u, u_input.d), vec3<u32>(31208u, u_input.d, u_input.d), vec3<u32>(4294967295u, u_input.d, u_input.b.x), vec4<u32>(27839u, 43043u, u_input.b.x, u_input.d))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(461f)) + _wgslsmith_f_op_f32(-561f - 521f)), _wgslsmith_f_op_f32(f32(-1f) * -1268f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-818f))), _wgslsmith_f_op_f32(func_4(Struct_4(global0[_wgslsmith_index_u32(1u, 7u)], u_input.a.yx, vec3<f32>(599f, -1500f, -1000f), -2147483647i, 31591u)).d.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1683f - 1854f))))));
    var var_1 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(_wgslsmith_div_u32(u_input.b.x, 4294967295u)), ~u_input.d << (6688u % 32u), 3594u, 5047u), ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.d, u_input.d, u_input.d, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(14281u, 19300u, 47443u, u_input.d), vec4<u32>(u_input.b.x, u_input.b.x, u_input.d, 12915u), vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x)))), 7u)], -(-u_input.a.yy << (reverseBits(u_input.b) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(var_0.wxy * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_2(u_input.c, vec3<bool>(false, false, false), Struct_1(var_0.xx, vec4<u32>(20819u, u_input.b.x, u_input.b.x, u_input.d), vec3<u32>(u_input.b.x, u_input.d, 14375u), vec3<u32>(64111u, 3430u, u_input.b.x), vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x)), Struct_1(var_0.xz, vec4<u32>(u_input.d, u_input.d, 1u, u_input.b.x), vec3<u32>(14911u, 0u, 23149u), vec3<u32>(30220u, u_input.b.x, 4294967295u), vec4<u32>(u_input.d, 0u, u_input.d, 1u))), var_0.x, Struct_1(vec2<f32>(386f, var_0.x), vec4<u32>(38592u, u_input.b.x, u_input.b.x, 31322u), vec3<u32>(882u, u_input.d, u_input.b.x), vec3<u32>(u_input.b.x, 191482u, 0u), vec4<u32>(u_input.d, 77141u, 27443u, u_input.b.x)))) - _wgslsmith_f_op_f32(max(-1710f, 620f))), var_0.x, -452f)), global1[_wgslsmith_index_u32(u_input.d, 21u)], _wgslsmith_mult_u32(~(~firstTrailingBit(u_input.d)), ~u_input.b.x | select(u_input.d, 38603u, var_0.x < 751f)));
    let var_2 = func_2().a & var_1.a.c;
    global0 = array<Struct_3, 7>();
    let var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1610f, _wgslsmith_f_op_f32(f32(-1f) * -1484f), _wgslsmith_f_op_f32(f32(-1f) * -1063f)), var_1.b, -2147483647i, u_input.a);
}

