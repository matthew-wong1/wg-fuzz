struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true));

var<private> global1: u32 = 28923u;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<bool>) -> f32 {
    var var_0 = Struct_1(29532i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 1000f, 1000f), vec3<f32>(-741f, 1000f, 530f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-679f, -265f, 976f)))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 595f, 338f, -247f), vec4<f32>(-500f, -706f, 504f, -1601f), vec4<bool>(arg_1.x, true, false, arg_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-508f, -849f, 222f, -1124f)))) * vec4<f32>(-1079f, _wgslsmith_f_op_f32(1486f - _wgslsmith_f_op_f32(-636f - -509f)), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -992f)))), any(arg_1.xzx), -30544i);
    var var_1 = u_input.a.x;
    global1 = _wgslsmith_div_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(14702u, min(0u, 36420u)), firstLeadingBit(1u)), ~76930u);
    var var_2 = arg_0;
    let var_3 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-336f, var_0.b.x, var_0.c.x)), _wgslsmith_f_op_vec3_f32(-var_0.c.xww))), vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x), 1474f)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(797f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, var_0.c.x)))), _wgslsmith_f_op_f32(select(-2303f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -217f), 823f, true)), all(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1343f)), 1000f), arg_0.x, u_input.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1370f))))) + var_0.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = ~countOneBits(vec4<u32>(1u, ~(~4294967295u), 80898u, 4294967295u));
    let var_1 = select(!(!select(!vec2<bool>(true, arg_0.d), vec2<bool>(arg_2.d, false), select(vec2<bool>(false, arg_3.d), vec2<bool>(false, true), arg_2.d))), vec2<bool>(!(select(true, arg_2.d, true) || true), select(arg_2.b.x >= _wgslsmith_f_op_f32(exp2(arg_2.b.x)), true, true)), true);
    global0 = array<vec4<bool>, 13>();
    let var_2 = Struct_1(_wgslsmith_mult_i32(44859i, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2840i, arg_3.e) << (vec2<u32>(var_0.x, 10224u) % vec2<u32>(32u)), -u_input.a.wy))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_3.c.zww)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b.x)) * arg_2.b.x), _wgslsmith_f_op_f32(-389f - arg_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b.x)) - arg_0.b.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-145f, _wgslsmith_f_op_f32(func_3(vec2<bool>(var_1.x, true), global0[_wgslsmith_index_u32(var_0.x, 13u)])), _wgslsmith_f_op_f32(sign(-346f)), arg_0.b.x))))), true, firstTrailingBit(u_input.a.x));
    global0 = array<vec4<bool>, 13>();
    return var_0.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<f32>) -> Struct_1 {
    global0 = array<vec4<bool>, 13>();
    let var_0 = all(!vec2<bool>(arg_1, arg_1));
    let var_1 = Struct_1(max(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 51208i) & -vec3<i32>(u_input.a.x, 16821i, -2147483647i), abs(u_input.a.ywy)), countOneBits(u_input.a.x) ^ (1i | u_input.a.x)), arg_3.xyw, _wgslsmith_f_op_vec4_f32(-arg_2), arg_1, i32(-1i) * -8698i);
    let var_2 = _wgslsmith_add_vec4_u32(arg_0, max(select(_wgslsmith_div_vec4_u32(~vec4<u32>(39729u, arg_0.x, 46151u, arg_0.x), arg_0), arg_0, global0[_wgslsmith_index_u32(~arg_0.x, 13u)]), _wgslsmith_div_vec4_u32(countOneBits(~vec4<u32>(95u, 3972u, arg_0.x, 19456u)), _wgslsmith_mod_vec4_u32(select(arg_0, arg_0, vec4<bool>(true, true, arg_1, false)), arg_0))));
    let var_3 = vec4<u32>(4294967295u, 0u, ~arg_0.x, func_4(Struct_1(var_1.a, var_1.c.xzw, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(345f, arg_3.x, 137f, 582f)))), !var_0, var_1.e), u_input.a.x, Struct_1(var_1.e & var_1.a, vec3<f32>(var_1.c.x, -793f, _wgslsmith_div_f32(arg_2.x, 829f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, var_1.c.x, arg_3.x, 262f))), !(30639i > var_1.a), -var_1.e >> (_wgslsmith_dot_vec3_u32(var_2.zwz, arg_0.wzw) % 32u)), Struct_1(countOneBits(reverseBits(2147483647i)), vec3<f32>(-471f, _wgslsmith_f_op_f32(floor(850f)), _wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), vec4<bool>(false, true, false, var_1.d)))), arg_3, true, ~max(-36406i, var_1.e))));
    return Struct_1(1i, var_1.c.zyz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.c.x, -1254f, var_1.b.x, -1334f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(626f, arg_2.x, var_1.b.x, var_1.b.x), arg_3, any(vec2<bool>(arg_1, var_1.d)))), !(!vec4<bool>(var_0, false, false, false))))), any(!vec3<bool>(var_1.d, false, true)), -reverseBits(abs(var_1.e) << (4294967295u % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    return Struct_1(1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.b, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.c.x, -697f, 2587f), _wgslsmith_f_op_vec3_f32(-arg_2.b))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * arg_0.c.x), arg_2.c.x, 659f), arg_2.d, ~firstLeadingBit(-1i));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.x)) + arg_0.b.x);
    var var_1 = arg_0;
    var var_2 = Struct_1(-1i, arg_0.b, _wgslsmith_f_op_vec4_f32(-var_1.c), false, _wgslsmith_dot_vec3_i32(~(-_wgslsmith_mult_vec3_i32(u_input.a.zyz, u_input.a.wxy)), vec3<i32>(_wgslsmith_mult_i32(min(var_1.e, 3469i), ~var_1.a), u_input.a.x, _wgslsmith_div_i32(arg_0.a, ~2147483647i))));
    let var_3 = func_5(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(1289f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.c.x))), -546f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1299f, _wgslsmith_f_op_f32(-679f + -2109f), 215f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.c.zzy - arg_0.c.wzx)))), func_2(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(62910u, 34402u, 52605u, 1u), vec4<u32>(0u, 31535u, 100788u, 2812u)), true, var_2.c, vec4<f32>(_wgslsmith_f_op_f32(1f - 504f), -316f, var_2.c.x, -572f)), _wgslsmith_div_vec4_i32(abs(-vec4<i32>(arg_0.e, -49196i, 1i, var_2.e) & u_input.a), (u_input.a ^ _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(32176i, 2147483647i, var_2.a, 1i), vec4<i32>(0i, arg_0.a, 2147483647i, var_1.e))) >> (countOneBits(firstLeadingBit(vec4<u32>(11710u, 44728u, 1u, 74702u))) % vec4<u32>(32u))));
    var var_4 = vec3<u32>(_wgslsmith_dot_vec2_u32(min(vec2<u32>(4294967295u, 0u) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 55230u), vec2<u32>(28199u, 4294967295u), vec2<u32>(20734u, 764u)), reverseBits(max(vec2<u32>(0u, 87872u), vec2<u32>(49607u, 4294967295u)))), ~max(~vec2<u32>(13278u, 1u), max(vec2<u32>(23560u, 31441u), vec2<u32>(1u, 1u)))), 4294967295u, (abs(func_4(Struct_1(var_3.a, vec3<f32>(541f, 357f, -220f), vec4<f32>(var_1.b.x, 697f, 1096f, -613f), var_2.d, 2147483647i), u_input.a.x, Struct_1(var_2.e, var_3.c.ywy, vec4<f32>(var_0, arg_0.c.x, -110f, var_3.c.x), var_3.d, 1001i), Struct_1(var_3.a, var_3.b, var_2.c, arg_0.d, var_1.e))) & 59816u) ^ firstTrailingBit(0u << (_wgslsmith_dot_vec3_u32(vec3<u32>(19049u, 51196u, 1u), vec3<u32>(1u, 0u, 1u)) % 32u)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i ^ _wgslsmith_div_i32(-46599i ^ countOneBits(func_1(Struct_1(2147483647i, vec3<f32>(858f, 462f, -819f), vec4<f32>(1121f, -604f, -1000f, -1000f), true, u_input.a.x))), ~reverseBits(_wgslsmith_add_i32(0i, 2442i)));
    let var_1 = select(select(global0[_wgslsmith_index_u32(1u, 13u)], vec4<bool>(true, true, all(vec2<bool>(false, false)) || (u_input.a.x <= var_0), false), !(!global0[_wgslsmith_index_u32(1u, 13u)])), vec4<bool>(true, true, true, true), vec4<bool>(func_2(vec4<u32>(20337u, 12117u, 0u, 57984u), false, vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(1093f, -193f, -1000f, 1215f)).e < -_wgslsmith_mult_i32(var_0, u_input.a.x), true, false, func_5(func_5(Struct_1(var_0, vec3<f32>(-531f, -923f, 2209f), vec4<f32>(357f, 2060f, -1242f, 468f), true, u_input.a.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1135f, -1236f, -1220f))), func_5(Struct_1(-1i, vec3<f32>(507f, 580f, -391f), vec4<f32>(946f, 912f, -1455f, 122f), true, u_input.a.x), vec3<f32>(156f, 557f, 1573f), Struct_1(1i, vec3<f32>(871f, -366f, 829f), vec4<f32>(499f, 1406f, -300f, 609f), true, var_0), vec4<i32>(u_input.a.x, var_0, var_0, -1i)), vec4<i32>(-771i, var_0, u_input.a.x, 39765i)), vec3<f32>(1f, 1f, 1f), func_2(vec4<u32>(36274u, 91736u, 4294967295u, 30851u), any(vec2<bool>(false, true)), _wgslsmith_div_vec4_f32(vec4<f32>(1045f, -1000f, 308f, 542f), vec4<f32>(384f, -316f, -1181f, 836f)), vec4<f32>(-262f, -1508f, 1309f, -741f)), u_input.a).d));
    let var_2 = ~_wgslsmith_add_u32(1u, reverseBits(1u));
    var var_3 = var_1.zz;
    var var_4 = ~abs(~vec2<u32>(var_2, ~var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(113f * _wgslsmith_f_op_f32(f32(-1f) * -1641f))))), _wgslsmith_sub_i32(u_input.a.x, firstTrailingBit(2147483647i)), _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(-29710i, u_input.a.x, u_input.a.x, 67287i), vec4<i32>(var_0, -20372i, var_0, 1i))), u_input.a));
}

