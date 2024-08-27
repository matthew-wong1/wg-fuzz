struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 21>;

var<private> global1: f32 = -1245f;

var<private> global2: array<Struct_1, 20>;

var<private> global3: array<u32, 29>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    var var_0 = -1426f;
    let var_1 = countOneBits(~firstTrailingBit(~vec2<u32>(u_input.a.x, u_input.a.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xy) - _wgslsmith_f_op_vec2_f32(-arg_0.zx))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-343f, arg_0.x) + _wgslsmith_f_op_vec2_f32(-arg_0.yz)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.zy, vec2<f32>(-1000f, arg_0.x), false))))), arg_0.yy, ~u_input.d >= _wgslsmith_dot_vec4_i32(max(max(vec4<i32>(0i, u_input.d, -1i, -5888i), vec4<i32>(-38401i, u_input.e.x, u_input.b.x, -1i)), ~vec4<i32>(-11165i, u_input.d, 2147483647i, -19433i)), vec4<i32>(0i, u_input.b.x, 40021i, 1i) | firstLeadingBit(vec4<i32>(u_input.d, u_input.d, 1i, 1i)))));
    let var_3 = Struct_2(global2[_wgslsmith_index_u32(var_1.x, 20u)], 38566u, vec2<bool>(any(vec3<bool>(u_input.c == u_input.c, true, true)), !(!select(true, false, false))));
    var var_4 = vec2<i32>(-1i) * -firstTrailingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_3.a.b.x, u_input.d), vec2<i32>(var_3.a.a, u_input.b.x)), -vec2<i32>(u_input.d, u_input.d), u_input.e.yy));
    return _wgslsmith_add_u32(4294967295u, var_3.b);
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1090f * 943f)) + _wgslsmith_f_op_f32(f32(-1f) * -310f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(461f, 960f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1380f, 575f)))))));
    var var_0 = u_input.a.xx;
    var var_1 = Struct_5(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-290f)), 1f, -856f))), 4294967295u);
    var var_2 = arg_0;
    let var_3 = Struct_4(!vec3<bool>(arg_0.a.x != all(vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_0.a.x)), arg_0.a.x, arg_0.a.x), _wgslsmith_add_i32(u_input.e.x, ~(~arg_2) | (i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-635f, -311f, -487f, 1501f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-634f, -1176f, -1838f, 2061f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1893f, -1000f, 282f, 1384f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2154f, -1211f, -913f, 1684f) * vec4<f32>(885f, -1192f, 168f, -963f)))))));
    return var_2.c;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = reverseBits(min(~abs(arg_3.a.b.x), firstLeadingBit(_wgslsmith_sub_i32(-3610i, -1i))));
    var var_1 = arg_1.c;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1000f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-110f, -803f, arg_1.a.x)) * 1003f))));
    var var_2 = Struct_2(Struct_1(arg_0.x, ~func_2(arg_2, _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(arg_1.c.c, arg_2.d.c)), arg_1.d.b.x).b, min(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(75349u, 29u)], 29u)], _wgslsmith_dot_vec2_u32(~u_input.a.zx, _wgslsmith_div_vec2_u32(u_input.a.xz, vec2<u32>(0u, 4294967295u))))), _wgslsmith_dot_vec2_u32(u_input.a.xy ^ ~u_input.a.yy, ~(~u_input.a.yy)) >> ((0u & firstTrailingBit(~0u)) % 32u), vec2<bool>((_wgslsmith_dot_vec4_i32(arg_3.a.b, arg_2.d.b) > -u_input.b.x) || true, true));
    let var_3 = vec3<i32>(1i, firstTrailingBit(4956i), _wgslsmith_dot_vec3_i32(vec3<i32>(~(var_1.a << (4294967295u % 32u)), countOneBits(-1i), -var_2.a.b.x), _wgslsmith_add_vec3_i32(var_2.a.b.wxx, select(var_2.a.b.wwy, ~vec3<i32>(u_input.b.x, -24923i, arg_0.x), vec3<bool>(false, arg_2.a.x, false)))));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 503f, 293f, -553f)))))))));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: Struct_5) -> Struct_1 {
    global3 = array<u32, 29>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(656f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.x, arg_1.c.x))))));
    let var_0 = Struct_3(arg_1.a.xx, func_2(Struct_3(arg_1.a.zy, select(u_input.e, vec3<i32>(u_input.d, -20179i, u_input.d), vec3<bool>(arg_1.a.x, false, false)) << (~vec3<u32>(u_input.c, 4294967295u, 0u) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 20u)], global2[_wgslsmith_index_u32(52427u, 20u)], arg_1.b), select(global3[_wgslsmith_index_u32(~arg_2.b >> (_wgslsmith_sub_u32(u_input.a.x, global3[_wgslsmith_index_u32(13300u, 29u)]) % 32u), 29u)], _wgslsmith_div_u32(67752u, _wgslsmith_mod_u32(arg_2.b, 0u)), 1i != _wgslsmith_div_i32(u_input.b.x, 10605i)), 2147483647i).b.yyz, global2[_wgslsmith_index_u32(4294967295u, 20u)], func_2(Struct_3(!vec2<bool>(false, arg_1.a.x), -abs(vec3<i32>(1i, arg_1.b, u_input.b.x)), global2[_wgslsmith_index_u32(max(u_input.c, 51257u & u_input.a.x), 20u)], func_2(Struct_3(arg_1.a.zy, vec3<i32>(-39498i, -3816i, arg_1.b), Struct_1(0i, vec4<i32>(2147483647i, arg_1.b, -2147483647i, -60819i), 1u), Struct_1(0i, vec4<i32>(0i, u_input.d, arg_1.b, u_input.b.x), u_input.a.x), -946i), _wgslsmith_mod_u32(u_input.c, arg_2.b), arg_1.b ^ -2147483647i), arg_1.b), arg_2.a, u_input.d), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d, arg_1.b) ^ vec2<i32>(arg_1.b, u_input.e.x), firstTrailingBit(vec2<i32>(u_input.d, arg_1.b))), -1i));
    let var_1 = arg_1.c.wzx;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1446f + _wgslsmith_f_op_f32(f32(-1f) * -2055f))), var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x)))))));
    return Struct_1(var_0.d.b.x, var_0.c.b, ~_wgslsmith_mult_u32(func_2(Struct_3(arg_1.a.xz, vec3<i32>(u_input.b.x, u_input.e.x, u_input.e.x), Struct_1(24268i, vec4<i32>(arg_1.b, -8249i, -36407i, -2147483647i), 29722u), var_0.d, 2147483647i), abs(arg_2.a), _wgslsmith_clamp_i32(20156i, arg_1.b, -16614i)).c, abs(~4294967295u)));
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<u32>, 21>();
    let var_0 = 1788f;
    let var_1 = ~(~(5449u & firstLeadingBit(u_input.c << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 29u)] % 32u))));
    let var_2 = -674f;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, var_0, 3005f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1068f, 119f, -207f) - vec4<f32>(var_2, var_0, var_2, var_2))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, 1018f, var_0, var_0) - vec4<f32>(-897f, var_2, -851f, var_2))))))) * vec4<f32>(306f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(-1481f + -1054f)) - _wgslsmith_f_op_f32(-1398f - _wgslsmith_div_f32(-1227f, 434f))), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-var_0)));
    return func_5(true, Struct_4(vec3<bool>(any(vec4<bool>(false, true, true, false)), false, true), u_input.d, _wgslsmith_f_op_vec4_f32(func_4(vec4<i32>(_wgslsmith_add_i32(u_input.b.x, u_input.d), countOneBits(-1i), abs(u_input.e.x), -u_input.d), Struct_3(vec2<bool>(true, true), _wgslsmith_sub_vec3_i32(u_input.e, vec3<i32>(1i, u_input.e.x, -7547i)), func_2(Struct_3(vec2<bool>(false, true), u_input.e, global2[_wgslsmith_index_u32(var_1, 20u)], Struct_1(9381i, vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1, 29u)], 29u)]), u_input.b.x), u_input.a.x, 2147483647i), global2[_wgslsmith_index_u32(~u_input.a.x, 20u)], u_input.d), Struct_3(vec2<bool>(true, true), ~vec3<i32>(u_input.e.x, 21182i, u_input.d), func_2(Struct_3(vec2<bool>(true, true), u_input.e, global2[_wgslsmith_index_u32(var_1, 20u)], global2[_wgslsmith_index_u32(0u, 20u)], u_input.b.x), 39049u, u_input.e.x), func_2(Struct_3(vec2<bool>(true, true), vec3<i32>(33243i, 2406i, u_input.b.x), global2[_wgslsmith_index_u32(u_input.c, 20u)], global2[_wgslsmith_index_u32(1u, 20u)], u_input.d), 62294u, -86105i), -16133i & u_input.e.x), Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1, 4294967295u, var_1), 20u)], var_1, vec2<bool>(true, true))))), Struct_5(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(var_1, 29u)], func_2(Struct_3(vec2<bool>(true, true), vec3<i32>(0i, 1i, -11230i), global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(var_1, 20u)], 0i), 21510u, -19044i).c), func_2(Struct_3(vec2<bool>(true, true), u_input.e ^ vec3<i32>(u_input.d, 2147483647i, -1i), func_2(Struct_3(vec2<bool>(true, true), vec3<i32>(2147483647i, -542i, 5265i), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1, 29u)], 29u)], 20u)], Struct_1(u_input.e.x, vec4<i32>(u_input.d, 2147483647i, u_input.b.x, 1i), 26865u), -2147483647i), 5650u, u_input.d), Struct_1(u_input.d, vec4<i32>(0i, 41834i, u_input.d, u_input.b.x), var_1), -10494i), u_input.a.x, 1i).c));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 29>();
    let var_0 = Struct_2(func_1(), _wgslsmith_dot_vec2_u32(~vec2<u32>(22029u, global3[_wgslsmith_index_u32(41566u, 29u)]) >> (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u)), vec2<u32>(~(~5078u), 4294967295u)), select(vec2<bool>(true, true), vec2<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), false))), select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, any(vec2<bool>(true, true))))));
    global2 = array<Struct_1, 20>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(741f + -2050f));
    let var_2 = Struct_3(!select(var_0.c, vec2<bool>(all(vec4<bool>(true, var_0.c.x, false, var_0.c.x)), true), !var_0.c), vec3<i32>(-func_5(all(var_0.c), Struct_4(vec3<bool>(false, true, var_0.c.x), -1i, vec4<f32>(-452f, -676f, 2012f, -984f)), Struct_5(global3[_wgslsmith_index_u32(39394u, 29u)], var_0.b)).a, var_0.a.b.x, 25045i), func_2(Struct_3(select(!vec2<bool>(var_0.c.x, true), vec2<bool>(var_0.c.x, var_0.c.x), vec2<bool>(true, true)), vec3<i32>(_wgslsmith_mult_i32(var_0.a.b.x, -2147483647i), abs(u_input.e.x), ~var_0.a.a), Struct_1(_wgslsmith_dot_vec4_i32(var_0.a.b, var_0.a.b), ~vec4<i32>(u_input.d, u_input.b.x, 1i, var_0.a.a), var_0.b | global3[_wgslsmith_index_u32(var_0.a.c, 29u)]), func_1(), -reverseBits(0i)), ~(~(~17859u)), ~min(1i, -2147483647i) & ~u_input.d), Struct_1(-14217i, vec4<i32>(var_0.a.b.x, _wgslsmith_div_i32(var_0.a.a, 2147483647i >> (var_0.a.c % 32u)), -1i, 14841i), _wgslsmith_div_u32(~_wgslsmith_mult_u32(4294967295u, var_0.b), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(u_input.a.x, 29u)], 0u), 29u)])), ~(-41199i));
    var var_3 = var_0.a.c >> (51687u % 32u);
    let var_4 = _wgslsmith_f_op_f32(-2267f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(212f * _wgslsmith_f_op_f32(1000f - 556f)) - -544f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(751f, -1000f, var_2.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(784f, 2124f), vec2<f32>(1111f, -1038f), true))))))), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(firstLeadingBit(68605u), var_0.a.c), var_0.b));
}

