struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    global0 = array<vec3<bool>, 13>();
    let var_0 = abs(1u);
    var var_1 = ~firstTrailingBit(reverseBits(vec3<i32>(u_input.b << (48322u % 32u), ~(-55511i), _wgslsmith_mult_i32(u_input.b, -1i))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1055f);
    let var_3 = -1292f;
    return _wgslsmith_f_op_f32(-var_3);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<u32>) -> vec4<f32> {
    global0 = array<vec3<bool>, 13>();
    let var_0 = select(_wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(42366i), abs(_wgslsmith_add_i32(u_input.b, -1i))), countOneBits(-vec2<i32>(1i, 0i) >> (_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)))), -(~vec2<i32>(i32(-1i) * -546i, min(u_input.b, u_input.b))), !(!vec2<bool>(true, arg_0.c.x)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1608f + _wgslsmith_f_op_f32(arg_0.a + arg_1.x))) * arg_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.d - _wgslsmith_f_op_f32(arg_0.a + arg_1.x)), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(f32(-1f) * -629f))))), -555f);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-279f, 1044f)) * _wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, true))), -590f, arg_0.d, var_1.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) * vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.b.x, 184f, arg_0.c.x)), arg_0.b.x, _wgslsmith_div_f32(-417f, 1042f), _wgslsmith_f_op_f32(f32(-1f) * -405f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-arg_1.yxz);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x * 920f)), -400f, _wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_2.x)))));
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1549f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1286f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1562f, 159f), vec2<f32>(1000f, -1000f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-554f, -1333f), vec2<f32>(-975f, -1046f)))))), global0[_wgslsmith_index_u32(55902u, 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1577f, 1050f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(-136f, 735f), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b.x, var_0.a.b.x)), _wgslsmith_div_vec2_f32(var_0.a.b, var_0.a.b), select(var_0.a.c.xz, var_0.a.c.yx, var_0.a.c.yx))), select(!var_0.a.c, var_0.a.c, true), 455f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(164f, var_0.a.b.x, 1068f, 276f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, -1078f, -724f, var_0.a.b.x)))) * vec4<f32>(var_0.a.d, 2143f, _wgslsmith_f_op_f32(floor(-1331f)), _wgslsmith_f_op_f32(var_0.a.d * -431f))), vec4<u32>(firstLeadingBit(u_input.a.x), ~u_input.a.x, _wgslsmith_mod_u32(0u, u_input.a.x), min(35772u, 28868u)) >> (~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 24396u) % vec4<u32>(32u)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(var_0.a, vec4<f32>(var_0.a.d, var_0.a.b.x, -261f, -215f), vec4<u32>(u_input.a.x, 1u, 4294967295u, 1u))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(783f, 380f, var_0.a.b.x, 296f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b.x, 241f, var_0.a.b.x, 402f) * vec4<f32>(var_0.a.d, var_0.a.a, -681f, var_0.a.d)), vec4<f32>(var_0.a.b.x, 314f, var_0.a.a, var_0.a.d)))))));
    var var_2 = Struct_3(_wgslsmith_dot_vec4_u32(~(~(vec4<u32>(u_input.a.x, 47776u, u_input.a.x, u_input.a.x) | vec4<u32>(81356u, 0u, u_input.a.x, u_input.a.x))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(9503u, u_input.a.x)), 80095u, u_input.a.x, u_input.a.x)), vec4<i32>(~(~(-u_input.b)), u_input.b, u_input.b, min(-(~(-1i)), u_input.b)));
    var_2 = Struct_3(reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a.x, 1u, var_2.a), ~vec4<u32>(0u, var_2.a, u_input.a.x, 71968u))), var_2.b);
    global0 = array<vec3<bool>, 13>();
    return ~vec4<u32>(~u_input.a.x, ~var_2.a, 0u, 3549u);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(reverseBits(_wgslsmith_add_i32(-22923i, u_input.b)), -11585i), 12857i, -arg_0, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(arg_0, 2147483647i, u_input.b, 3837i)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, -1i, 1i, u_input.b), vec4<i32>(u_input.b, u_input.b, 2147483647i, arg_0)), reverseBits(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), false)))) >> (~func_2() % vec4<u32>(32u));
    var_0 = select(~(-min(-vec4<i32>(arg_0, 0i, 0i, 24318i), abs(vec4<i32>(35211i, var_0.x, -2147483647i, -2147483647i)))), vec4<i32>(countOneBits(47132i), var_0.x, u_input.b, (firstLeadingBit(-22106i) ^ _wgslsmith_div_i32(1i, var_0.x)) ^ countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), var_0.yw))), !vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, true));
    global0 = array<vec3<bool>, 13>();
    var var_1 = Struct_3(1u, -(min(firstTrailingBit(vec4<i32>(29829i, arg_0, var_0.x, var_0.x)), vec4<i32>(u_input.b, 16211i, arg_0, u_input.b) << (vec4<u32>(u_input.a.x, 246u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_i32(-vec4<i32>(-29456i, -1i, -8439i, -17987i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.b, 28622i, -1i), vec4<i32>(arg_0, arg_0, 17981i, arg_0)))));
    var var_2 = ~var_0.yx;
    return Struct_1(1656f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1071f, -730f)), 1820f), select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 13u)], global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(132640u, 65939u)), 13u)], (~var_1.a << (~var_1.a % 32u)) <= 4294967295u), 474f);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = select(-2147483647i, u_input.b, true);
    let var_2 = vec2<u32>(59425u, 4294967295u);
    var_1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(reverseBits(u_input.b), u_input.b, u_input.b), _wgslsmith_dot_vec4_i32(abs(max(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, -52086i, 23768i))), ~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) | vec4<i32>(u_input.b, 13465i, u_input.b, -1i)) >> (4294967295u % 32u));
    var var_3 = Struct_3(53221u >> (u_input.a.x % 32u), vec4<i32>(u_input.b, u_input.b, 17439i, u_input.b) << (~vec4<u32>(~1u, ~u_input.a.x, max(4294967295u, var_2.x), min(0u, 59132u)) % vec4<u32>(32u)));
    return func_1(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 13>();
    global0 = array<vec3<bool>, 13>();
    var var_0 = func_5(func_1(~countOneBits(-1i) ^ firstLeadingBit(u_input.b)), vec4<bool>(false, all(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true)), any(vec2<bool>(true, true)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(1794f)), _wgslsmith_f_op_f32(-638f - 623f), _wgslsmith_f_op_f32(1763f - 1000f), _wgslsmith_f_op_f32(max(-1000f, -640f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-875f, -664f, 227f, -805f) * vec4<f32>(1076f, -864f, -900f, 408f))))));
    var var_1 = abs(_wgslsmith_mod_vec2_u32(vec2<u32>(28870u, _wgslsmith_add_u32(abs(u_input.a.x), firstTrailingBit(u_input.a.x))), select(vec2<u32>(4294967295u, 14989u), u_input.a, var_0.c.yz)));
    var var_2 = Struct_2(func_5(Struct_1(-1777f, _wgslsmith_f_op_vec4_f32(func_4(Struct_1(var_0.b.x, var_0.b, vec3<bool>(false, var_0.c.x, true), 1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.d, 1000f, var_0.a) + vec4<f32>(var_0.b.x, -1062f, -1087f, -590f)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, var_1.x, u_input.a.x), vec4<u32>(9133u, u_input.a.x, var_1.x, var_1.x)))).wz, var_0.c, -699f), vec4<bool>(!(var_0.c.x | true), false, select(var_0.c.x, !var_0.c.x, var_1.x >= var_1.x), var_0.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, var_0.a, var_0.b.x, 142f), vec4<f32>(var_0.a, -658f, -279f, var_0.a)) * vec4<f32>(-1419f, -403f, var_0.d, -444f)))));
    var_0 = var_2.a;
    var_0 = Struct_1(-1372f, _wgslsmith_f_op_vec2_f32(trunc(func_1(1i).b)), !select(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a.x, 4294967295u), 13u)], vec3<bool>(all(vec2<bool>(false, var_2.a.c.x)), var_2.a.c.x, false | var_0.c.x), var_2.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-560f + var_0.a))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-726f, _wgslsmith_f_op_f32(func_3()), var_2.a.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(314f * var_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -641f), !(!var_2.a.c.x)))) - vec4<f32>(var_0.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.a, var_0.d)))), _wgslsmith_f_op_f32(var_2.a.b.x - -578f), -1891f));
    global0 = array<vec3<bool>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(0u >> (u_input.a.x % 32u), ~1u, ~(~18691u & select(37961u, var_1.x, var_0.c.x))), firstTrailingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(3383u, var_1.x, var_1.x), vec3<u32>(u_input.a.x, u_input.a.x, var_1.x))), -vec4<i32>(52491i, ~u_input.b, -u_input.b, _wgslsmith_clamp_i32(84i, _wgslsmith_mod_i32(-2147483647i, 27395i), u_input.b)));
}

