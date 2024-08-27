struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<u32>(28276u, 7383u), vec4<bool>(true, true, false, false), vec2<f32>(1207f, -545f), vec2<f32>(628f, 417f), 19279i), Struct_1(vec2<u32>(2554u, 0u), vec4<bool>(false, true, true, false), vec2<f32>(1676f, 879f), vec2<f32>(-2175f, 1048f), -56364i), Struct_1(vec2<u32>(36498u, 34110u), vec4<bool>(true, true, false, true), vec2<f32>(-1000f, 461f), vec2<f32>(404f, 332f), -30850i), Struct_1(vec2<u32>(1u, 0u), vec4<bool>(true, false, false, true), vec2<f32>(-102f, 815f), vec2<f32>(-1191f, -1217f), -17370i), Struct_1(vec2<u32>(22143u, 34832u), vec4<bool>(true, true, true, true), vec2<f32>(777f, -285f), vec2<f32>(176f, 647f), -7147i), Struct_1(vec2<u32>(71072u, 43454u), vec4<bool>(true, false, false, true), vec2<f32>(-159f, -500f), vec2<f32>(-549f, 168f), 1i), Struct_1(vec2<u32>(21011u, 1u), vec4<bool>(true, true, false, false), vec2<f32>(-394f, 134f), vec2<f32>(609f, 1000f), -55917i), Struct_1(vec2<u32>(22199u, 72190u), vec4<bool>(false, false, false, true), vec2<f32>(-2180f, 432f), vec2<f32>(-1347f, 642f), -18040i), Struct_1(vec2<u32>(6808u, 49562u), vec4<bool>(false, true, false, false), vec2<f32>(-921f, -1796f), vec2<f32>(-134f, -252f), -22847i), Struct_1(vec2<u32>(1u, 2150u), vec4<bool>(true, false, false, false), vec2<f32>(-1562f, -822f), vec2<f32>(666f, -140f), -1i));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> f32 {
    let var_0 = all(vec2<bool>(true, !(~4294967295u > u_input.d)));
    global0 = array<Struct_1, 10>();
    let var_1 = arg_2.xx;
    var var_2 = u_input.c.zy;
    var_2 = vec2<i32>(var_2.x, _wgslsmith_dot_vec4_i32(max(vec4<i32>(-1i, -2147483647i, arg_2.x, u_input.c.x), vec4<i32>(u_input.c.x, arg_2.x, -2147483647i, 46608i) << (vec4<u32>(arg_1.x, u_input.d, 0u, u_input.a) % vec4<u32>(32u))) ^ min(~vec4<i32>(var_2.x, arg_2.x, arg_2.x, var_2.x), _wgslsmith_mult_vec4_i32(vec4<i32>(7989i, var_1.x, -2147483647i, -28717i), vec4<i32>(arg_2.x, u_input.c.x, 30250i, 2147483647i))), _wgslsmith_mod_vec4_i32(~vec4<i32>(-34754i, arg_2.x, 36585i, 18429i), -vec4<i32>(var_2.x, -25336i, -1i, var_2.x) >> (firstTrailingBit(vec4<u32>(45510u, arg_1.x, 933u, 0u)) % vec4<u32>(32u)))));
    return -416f;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = Struct_1(u_input.e.xz, !(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-245f, -988f), vec2<f32>(470f, 1799f))))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2422f, -1204f) * vec2<f32>(412f, -227f)))) - vec2<f32>(1f, _wgslsmith_f_op_f32(612f - 1000f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1403f, 3203f) - vec2<f32>(-155f, -1422f)), vec2<f32>(-299f, -1519f), any(vec4<bool>(true, false, true, false)))) - vec2<f32>(1f, 1f))), arg_0.x);
    global0 = array<Struct_1, 10>();
    var var_1 = Struct_1(~abs(vec2<u32>(countOneBits(77131u), max(u_input.b, var_0.a.x))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1492f))) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x, var_0.b.x)), true, !any(var_0.b), var_0.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(354f, 899f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(var_0.c))))))), vec2<f32>(_wgslsmith_f_op_f32(1539f * var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(var_0.c.x, 488f, var_0.d.x, var_0.c.x), vec2<u32>(9755u, 1334u), u_input.c))) + -1558f)), _wgslsmith_sub_i32(-27734i, countOneBits(arg_0.x)));
    var_1 = Struct_1(var_0.a, var_1.b, var_0.c, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(481f, var_1.c.x)))), var_0.c.x))), var_1.e);
    let var_2 = abs(var_1.a.x);
    return var_0.c.x;
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-706f, -375f, 167f, 912f))) + vec4<f32>(-1188f, -945f, -962f, 1000f)), vec4<f32>(_wgslsmith_div_f32(1159f, 544f), -1252f, _wgslsmith_div_f32(-781f, -1224f), _wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 1i), vec4<i32>(-14097i, u_input.c.x, u_input.c.x, u_input.c.x)))))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-393f)), _wgslsmith_f_op_f32(round(-1583f)), -637f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-759f, -352f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1898f, -1957f, 159f, -1785f) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-1796f)), 1454f, _wgslsmith_f_op_f32(select(2774f, 880f, arg_0.x)), -1242f)) - vec4<f32>(717f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-159f)))), _wgslsmith_f_op_f32(f32(-1f) * -721f), _wgslsmith_f_op_f32(f32(-1f) * -1084f))));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 10u)];
    let var_2 = Struct_1(_wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.x, u_input.d), var_1.a, u_input.e.yx), max(u_input.e.yx, var_1.a)), ~(~(vec2<u32>(u_input.a, 0u) ^ vec2<u32>(1u, var_1.a.x)))), vec4<bool>(any(!select(var_1.b, vec4<bool>(arg_0.x, false, arg_0.x, false), var_1.b)), any(vec3<bool>(var_1.b.x, true, true)), var_1.b.x, !(!var_1.b.x) & true), var_0.zw, var_1.d, _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(13512i, u_input.c.x, -14766i)), var_1.e | 2147483647i), reverseBits(0i)) & var_1.e);
    var var_3 = Struct_1(~vec2<u32>((1u << (u_input.a % 32u)) & 35128u, var_2.a.x), !var_2.b, var_0.xw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-var_2.d.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -400f)) + var_2.c)), ~u_input.c.x);
    let var_4 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, var_1.a.x, 6042u), _wgslsmith_mult_u32(var_1.a.x, 6818u)), vec2<u32>(0u, var_3.a.x)) >> (var_2.a % vec2<u32>(32u)), vec4<bool>(all(var_2.b.yzw), arg_0.x, false, var_3.b.x), var_2.d, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(var_3.d)))), 1i);
    return _wgslsmith_f_op_f32(abs(-1458f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 10>();
    var var_0 = Struct_1(select(u_input.e.yx, _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.d ^ u_input.e.x), ~min(u_input.e.zz, u_input.e.zx)), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true))), vec4<bool>(true, any(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), (firstTrailingBit(u_input.c.x) >= -1i) | true, !all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-604f)), 1635f))), 1530f), vec2<f32>(_wgslsmith_f_op_f32(-1097f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-878f - 1311f), _wgslsmith_f_op_f32(sign(-363f)))), -1322f), u_input.c.x);
    global0 = array<Struct_1, 10>();
    let var_1 = select(~select(vec2<i32>(-42006i, ~var_0.e), u_input.c.yz, !(!vec2<bool>(false, var_0.b.x))), u_input.c.xy, true);
    let var_2 = ~firstLeadingBit(vec3<u32>(47102u, min(_wgslsmith_div_u32(var_0.a.x, var_0.a.x), _wgslsmith_div_u32(128177u, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.a.x, u_input.a, 1u), vec4<u32>(8620u, 0u, 33208u, 36468u) << (vec4<u32>(var_0.a.x, u_input.a, 65093u, u_input.d) % vec4<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(!vec3<bool>(true, false, var_0.b.x))) - -1868f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) + -1774f)))) - var_0.d.x);
    let var_4 = global0[_wgslsmith_index_u32(1u, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(max(-751f, var_0.c.x)), _wgslsmith_f_op_f32(-var_3))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(825f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -730f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(518f, var_4.c.x))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(select(var_4.b.zzz, vec3<bool>(var_4.b.x, true, true), var_4.b.wyx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)))), _wgslsmith_f_op_f32(-887f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_4.c.x, var_0.d.x)), _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(637f, -1187f) - _wgslsmith_f_op_f32(step(493f, var_0.c.x)))), _wgslsmith_div_f32(var_4.d.x, _wgslsmith_f_op_f32(func_2(-vec4<i32>(-4217i, var_0.e, u_input.c.x, u_input.c.x), vec4<i32>(var_1.x, var_1.x, 1i, 26712i) >> (vec4<u32>(u_input.a, u_input.e.x, var_2.x, 25092u) % vec4<u32>(32u)))))), _wgslsmith_div_f32(890f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(183f)), -821f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1277f, var_0.c.x, -794f, var_3) - vec4<f32>(var_0.d.x, -837f, 510f, -1000f)), var_2.yz, select(vec3<i32>(1i, var_0.e, -30098i), u_input.c, var_0.b.wyz))), var_3)), ~vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(u_input.e, var_2), max(24034u, 0u)) | ~vec3<u32>(abs(0u), abs(8788u), u_input.e.x));
}

