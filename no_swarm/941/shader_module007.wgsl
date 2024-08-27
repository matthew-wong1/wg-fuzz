struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<bool>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<f32>(-2177f, 1000f), 845f, vec2<bool>(true, true), 3100i, -1i), Struct_1(vec2<f32>(1470f, 160f), 125f, vec2<bool>(true, true), i32(-2147483648), i32(-2147483648)), Struct_1(vec2<f32>(599f, 546f), -385f, vec2<bool>(false, true), 9886i, 58326i), Struct_1(vec2<f32>(-2044f, -1676f), -997f, vec2<bool>(true, true), i32(-2147483648), 2147483647i), Struct_1(vec2<f32>(-136f, 535f), -859f, vec2<bool>(true, false), 2147483647i, -48711i), Struct_1(vec2<f32>(-903f, -1000f), 1699f, vec2<bool>(false, false), -5480i, i32(-2147483648)), Struct_1(vec2<f32>(-167f, -1233f), -1177f, vec2<bool>(false, false), -322i, -49666i), Struct_1(vec2<f32>(-149f, 1688f), -531f, vec2<bool>(false, false), -1i, 47680i), Struct_1(vec2<f32>(465f, 518f), 483f, vec2<bool>(false, false), i32(-2147483648), 0i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    var var_0 = global1[_wgslsmith_index_u32(u_input.b | ~23927u, 9u)];
    let var_1 = Struct_1(global0.a, _wgslsmith_f_op_f32(-719f * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-829f, var_0.b), _wgslsmith_f_op_f32(-var_0.a.x), !all(vec3<bool>(arg_0, false, var_0.c.x))))), vec2<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1276f + global0.b))) < _wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(sign(-696f)))), true), abs(-((global0.e & -1i) << (~21319u % 32u))), ~var_0.e ^ -50957i);
    var var_2 = var_1;
    global1 = array<Struct_1, 9>();
    let var_3 = vec3<i32>(~1987i, -abs(~(~24051i)), global0.d ^ var_1.d);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -739f), 134f, _wgslsmith_f_op_f32(-var_1.b), 1499f), vec4<f32>(_wgslsmith_div_f32(-443f, 295f), _wgslsmith_f_op_f32(trunc(-669f)), _wgslsmith_f_op_f32(round(1027f)), -1920f))));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<i32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -404f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-928f, -1119f))))))), !global0.c));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1075f, -1477f, -267f, var_0.x) * vec4<f32>(var_0.x, arg_1, var_0.x, var_0.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, 832f, -144f, 1530f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(127f, arg_1, 445f, arg_1)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.x, var_0.x, -1659f, -2294f), vec4<f32>(1750f, -1061f, -817f, global0.b)))))), !select(vec4<bool>(false && global0.c.x, arg_0.x || false, true, global0.c.x || arg_0.x), select(select(vec4<bool>(true, global0.c.x, true, false), vec4<bool>(global0.c.x, true, false, arg_0.x), vec4<bool>(global0.c.x, false, false, arg_0.x)), vec4<bool>(true, true, false, false), false), any(!vec3<bool>(false, global0.c.x, false)))));
    var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-global0.b), 143f, _wgslsmith_f_op_f32(-arg_1));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.b, _wgslsmith_f_op_f32(-1040f + 2575f)))))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -146f)), global0.c, abs(-9751i), -20432i);
    var_1 = vec4<f32>(var_0.x, -412f, arg_1, _wgslsmith_f_op_f32(select(608f, _wgslsmith_f_op_f32(sign(1000f)), any(select(vec4<bool>(global0.c.x, true, arg_0.x, var_2.c.x), select(vec4<bool>(arg_0.x, global0.c.x, false, arg_0.x), vec4<bool>(false, var_2.c.x, global0.c.x, global0.c.x), arg_0.x), true)))));
    return abs(vec3<u32>(~select(min(u_input.b, u_input.b), 1u, global0.c.x || var_2.c.x), firstLeadingBit(u_input.b) | ~(~47320u), ~(~u_input.b << (1u % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>) -> vec2<i32> {
    global1 = array<Struct_1, 9>();
    let var_0 = ~max(vec4<u32>(~(~arg_2.x), arg_2.x, ~76739u, ~(~1u)), vec4<u32>(~u_input.b, _wgslsmith_mod_u32(firstTrailingBit(u_input.b), u_input.b << (15371u % 32u)), 1u, _wgslsmith_div_u32(arg_2.x & 0u, u_input.b >> (0u % 32u))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 301f))), global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -664f), select(select(vec2<bool>(!global0.c.x, all(vec4<bool>(arg_0.c.x, arg_0.c.x, false, true))), vec2<bool>(true, true), true), arg_0.c, true), 0i, i32(-1i) * -firstTrailingBit(abs(arg_0.e)));
    let var_2 = ~vec4<i32>(-u_input.a.x, ~_wgslsmith_div_i32(u_input.c.x, arg_1) >> (var_0.x % 32u), firstLeadingBit(abs(~29360i)), max(min(30652i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d, -9847i, 2147483647i, -1i), vec4<i32>(arg_1, arg_0.e, u_input.a.x, global0.e))) ^ -2147483647i);
    var var_3 = _wgslsmith_f_op_vec4_f32(func_3(true));
    return abs(-firstTrailingBit(var_2.yw));
}

fn func_5(arg_0: vec2<i32>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(179f * -308f)))), global0.c, func_4(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, max(_wgslsmith_dot_vec4_u32(vec4<u32>(62148u, 3980u, u_input.b, 36049u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), abs(0u))), 9u)], u_input.a.x, vec3<u32>(firstLeadingBit(reverseBits(u_input.b)), u_input.b & ~u_input.b, ~u_input.b)).x, _wgslsmith_sub_i32(func_4(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 9u)], ~_wgslsmith_sub_i32(arg_0.x, -2147483647i), vec3<u32>(~u_input.b, max(u_input.b, u_input.b), ~u_input.b)).x, -u_input.d));
    let var_1 = global0.c.x;
    var var_2 = firstLeadingBit(min(~_wgslsmith_add_u32(11955u, 46477u), ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b, 57604u), ~u_input.b, u_input.b)));
    var_2 = _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(4294967295u, 0u, 792u)) & vec3<u32>(u_input.b, u_input.b, u_input.b), countOneBits(~(~(~vec3<u32>(4294967295u, 4294967295u, u_input.b)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(var_0.c.x)).xx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-544f * var_0.b) * _wgslsmith_f_op_f32(f32(-1f) * -752f)), _wgslsmith_f_op_f32(ceil(-274f))))), global0.c, max(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_0, min(u_input.a.yy, u_input.c)), -(global0.e ^ -28650i)), _wgslsmith_mult_i32(var_0.e >> (u_input.b % 32u), 50075i)), var_0.d);
    return vec4<u32>(~1u, ~4294967295u, ~17045u >> (~(u_input.b << (_wgslsmith_mult_u32(26131u, u_input.b) % 32u)) % 32u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(790u, 58147u))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_5(func_4(Struct_1(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1325f), !global0.c, min(-1i, 1i), firstLeadingBit(global0.e)), 1i, firstTrailingBit(func_2(vec2<bool>(true, global0.c.x), 484f, vec4<i32>(31496i, global0.e, -17197i, u_input.d))))), func_5(-_wgslsmith_clamp_vec2_i32(vec2<i32>(30390i, -1i), vec2<i32>(-1i, 0i) | vec2<i32>(u_input.c.x, arg_1.e), max(vec2<i32>(u_input.c.x, 0i), vec2<i32>(0i, 1i))))), 9u)];
    global0 = arg_1;
    var var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a * var_0.a) - _wgslsmith_f_op_vec2_f32(var_0.a * arg_1.a))) - _wgslsmith_f_op_vec2_f32(floor(global0.a))), _wgslsmith_f_op_f32(min(var_0.b, global0.a.x)), !select(select(select(arg_0.yy, global0.c, vec2<bool>(false, var_0.c.x)), !arg_1.c, arg_2), vec2<bool>(34460i <= var_0.d, -28590i != var_1.e), any(!arg_0.yww)), global0.e, global0.e);
    var_0 = global1[_wgslsmith_index_u32(u_input.b, 9u)];
    return Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_2.a))), _wgslsmith_f_op_f32(trunc(-785f)), var_1.c, func_4(global1[_wgslsmith_index_u32(~(~50232u), 9u)], global0.e, vec3<u32>(~(~30484u), abs(4294967295u), 67216u)).x, _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(min(vec4<i32>(global0.e, var_0.d, -1i, 3518i), vec4<i32>(-47514i, var_0.e, u_input.a.x, -22384i)), -vec4<i32>(-1i, -2147483647i, global0.e, -2147483647i)), -select(vec4<i32>(-35762i, var_1.e, 23501i, 0i), vec4<i32>(var_2.d, -675i, 2459i, arg_1.d) << (vec4<u32>(1u, u_input.b, 66179u, u_input.b) % vec4<u32>(32u)), arg_3)));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3;
    var var_1 = func_1(!(!select(select(vec4<bool>(arg_1.c.x, global0.c.x, arg_3.c.x, true), vec4<bool>(false, false, false, true), true), vec4<bool>(false, arg_3.c.x, true, arg_3.c.x), arg_3.c.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1611f, -679f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_2.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(553f, -945f)))), 2160f, vec2<bool>(true, true), 2147483647i, 1i), false, vec4<bool>(true, arg_2.c.x, global0.c.x, arg_2.c.x));
    let var_2 = max(44817i, 0i);
    let var_3 = vec2<u32>(~(~1u) >> (_wgslsmith_mod_u32(u_input.b, 81135u) % 32u), ~31493u) << (min(firstLeadingBit(vec2<u32>(u_input.b, 0u) | firstLeadingBit(vec2<u32>(98185u, u_input.b))), vec2<u32>(_wgslsmith_add_u32(~1u, reverseBits(0u)), ~u_input.b)) % vec2<u32>(32u));
    global1 = array<Struct_1, 9>();
    return -(~(arg_3.e & arg_0) << (u_input.b % 32u)) & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.d), vec2<i32>(~(var_0.e << (15206u % 32u)), firstTrailingBit(_wgslsmith_sub_i32(var_0.d, arg_1.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(0u, 9u)];
    global1 = array<Struct_1, 9>();
    let var_1 = ~firstTrailingBit(~select(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), ~vec4<u32>(1u, u_input.b, 69399u, 31195u), vec4<bool>(false, false, true, global0.c.x)));
    global1 = array<Struct_1, 9>();
    var var_2 = countOneBits(-reverseBits(vec4<i32>(0i, -2147483647i, u_input.c.x, 0i)) << ((var_1 & var_1) % vec4<u32>(32u))) >> (vec4<u32>(~countOneBits(u_input.b), abs(var_1.x), 12824u, _wgslsmith_mult_u32(u_input.b, u_input.b)) % vec4<u32>(32u));
    let var_3 = -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, _wgslsmith_mod_i32(-57882i, u_input.c.x), 0i, firstTrailingBit(4440i)), reverseBits(firstTrailingBit(vec4<i32>(0i, global0.e, var_0.d, var_0.e)))), global0.e, global0.e, func_6(var_2.x, func_1(vec4<bool>(true, false, false, false), global1[_wgslsmith_index_u32(5475u, 9u)], false, !vec4<bool>(global0.c.x, false, var_0.c.x, true)), func_1(select(vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, false), var_0.c.x), Struct_1(vec2<f32>(var_0.b, global0.b), -974f, var_0.c, var_0.e, var_0.d), var_0.c.x, select(vec4<bool>(false, true, true, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, global0.c.x, false), vec4<bool>(var_0.c.x, true, global0.c.x, true))), global1[_wgslsmith_index_u32(u_input.b & var_1.x, 9u)]));
    let var_4 = global1[_wgslsmith_index_u32(113008u, 9u)];
    var var_5 = !select(vec4<bool>(all(!vec4<bool>(var_4.c.x, var_0.c.x, var_0.c.x, true)), true, true, true), select(select(!vec4<bool>(true, true, var_0.c.x, var_4.c.x), !vec4<bool>(var_4.c.x, var_0.c.x, var_4.c.x, true), any(vec3<bool>(false, var_4.c.x, var_0.c.x))), !vec4<bool>(true, true, var_0.c.x, true), any(vec2<bool>(true, var_0.c.x))), !(!vec4<bool>(global0.c.x, true, true, var_4.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.ww, global0.e, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b ^ ~var_1.x, _wgslsmith_mod_u32(17867u, 68145u)), max(var_1.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(4015u, var_1.x, 1u), abs(vec3<u32>(var_1.x, u_input.b, u_input.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-642f - _wgslsmith_f_op_f32(sign(var_0.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1745f), 1000f));
}

