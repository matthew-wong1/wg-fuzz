struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23>;

var<private> global1: array<bool, 23> = array<bool, 23>(true, true, false, true, true, true, false, false, true, true, true, true, true, false, true, true, true, false, false, false, false, true, false);

var<private> global2: array<bool, 8>;

var<private> global3: array<bool, 31> = array<bool, 31>(true, false, true, true, false, true, true, true, true, false, true, false, false, true, true, true, false, true, true, false, false, false, false, true, false, true, false, true, false, true, true);

var<private> global4: array<bool, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: vec4<bool>) -> vec4<bool> {
    global1 = array<bool, 23>();
    var var_0 = arg_0;
    let var_1 = Struct_1(var_0.a, vec4<bool>(~var_0.d.x >= reverseBits(~arg_0.d.x), true, var_0.b.x, true), ~var_0.c, ~u_input.a.zxy);
    global2 = array<bool, 8>();
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.x)))), 1066f), vec4<bool>(all(vec4<bool>(all(var_0.b), global1[_wgslsmith_index_u32(43021u, 23u)] & true, true, true)), u_input.b.x > 1u, 10431i < _wgslsmith_clamp_i32(14543i | var_0.d.x, -var_1.d.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 20525i, 60997i, var_1.d.x))), var_1.b.x), select(var_0.c, vec4<u32>(_wgslsmith_mult_u32(var_1.c.x, arg_0.c.x), _wgslsmith_mult_u32(var_1.c.x, 29900u), min(65751u, var_1.c.x), min(var_1.c.x, arg_0.c.x)) ^ ~(~var_0.c), var_1.b), select(~reverseBits(~var_0.d), _wgslsmith_add_vec3_i32(-(~u_input.a.wyx), max(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.d.x, -1i, 0i), arg_0.d), vec3<i32>(arg_0.d.x, 37441i, var_1.d.x))), var_0.b.wwz));
    return select(select(select(!vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.c.x, 8u)], true, arg_3.x), select(!var_2.b, vec4<bool>(true, false, false, global4[_wgslsmith_index_u32(arg_0.c.x, 13u)]), arg_0.b.x), false), vec4<bool>(true, true, any(vec3<bool>(true, var_2.b.x, global4[_wgslsmith_index_u32(u_input.b.x, 13u)])), all(!vec4<bool>(true, var_1.b.x, false, var_0.b.x))), any(!(!arg_0.b.xww))), !var_2.b, !(!(!vec4<bool>(false, arg_0.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(var_2.c.x, 23u)]))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    let var_0 = any(select(select(select(arg_2.b.zw, arg_1.b.wy, !global3[_wgslsmith_index_u32(arg_2.c.x, 31u)]), select(vec2<bool>(true, arg_2.b.x), arg_1.b.xy, vec2<bool>(true, global4[_wgslsmith_index_u32(arg_2.c.x, 13u)])), any(vec3<bool>(true, false, global2[_wgslsmith_index_u32(13559u, 8u)]))), !(!vec2<bool>(arg_2.b.x, false)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(83212u, 46923u), 23u)]));
    let var_1 = arg_2;
    let var_2 = Struct_1(vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-1407f - 1836f)), select(vec4<bool>(arg_2.b.x || !var_1.b.x, false, true, all(vec2<bool>(global4[_wgslsmith_index_u32(42826u, 13u)], false))), vec4<bool>(!global3[_wgslsmith_index_u32(arg_3, 31u)] && !global1[_wgslsmith_index_u32(25692u, 23u)], !any(var_1.b.xx), !global4[_wgslsmith_index_u32(1u, 13u)] & any(vec4<bool>(true, arg_1.b.x, var_0, global1[_wgslsmith_index_u32(arg_2.c.x, 23u)])), true), vec4<bool>(true || all(arg_1.b.xw), true, true, true)), ~vec4<u32>(~arg_1.c.x, var_1.c.x >> (arg_2.c.x % 32u), _wgslsmith_mod_u32(reverseBits(4294967295u), _wgslsmith_add_u32(27883u, 43978u)), _wgslsmith_sub_u32(max(arg_2.c.x, var_1.c.x), ~4294967295u)), vec3<i32>(-9915i, _wgslsmith_div_i32(~(-37608i), -1i ^ var_1.d.x), 27293i));
    let var_3 = var_1.b.x;
    var var_4 = select(arg_1.b.wx, arg_1.b.xy, true);
    return select(select(!(!(!vec4<bool>(var_4.x, true, global1[_wgslsmith_index_u32(var_1.c.x, 23u)], global1[_wgslsmith_index_u32(arg_1.c.x, 23u)]))), vec4<bool>(arg_1.b.x, arg_0, true, any(select(arg_2.b.wy, arg_1.b.wz, var_1.b.yx))), vec4<bool>(arg_1.b.x, !(!var_3), all(vec4<bool>(false, var_0, true, true)), arg_1.a.x < _wgslsmith_f_op_f32(-var_1.a.x))), !vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.d.x, 2147483647i), vec2<i32>(2147483647i, 0i)) != -1i, any(var_1.b.xyz), !(var_2.c.x >= var_1.c.x), arg_1.b.x), var_1.b);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    return Struct_1(vec2<f32>(-591f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(380f, -1092f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-467f))))), select(!vec4<bool>(true, all(global0[_wgslsmith_index_u32(0u, 23u)]), true, true), func_4(!(global2[_wgslsmith_index_u32(u_input.b.x, 8u)] && true), Struct_1(vec2<f32>(207f, -309f), func_3(Struct_1(vec2<f32>(-305f, -737f), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 23u)], false, global1[_wgslsmith_index_u32(arg_0.x, 23u)]), vec4<u32>(u_input.b.x, arg_0.x, arg_0.x, 32906u), u_input.a.zzw), vec2<f32>(464f, 1756f), vec4<bool>(global4[_wgslsmith_index_u32(39669u, 13u)], false, global3[_wgslsmith_index_u32(arg_0.x, 31u)], global2[_wgslsmith_index_u32(0u, 8u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 31u)], false, false)), ~vec4<u32>(1u, u_input.b.x, u_input.b.x, 31475u), u_input.a.zxw), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-437f, 905f)), vec4<bool>(true, true, global2[_wgslsmith_index_u32(0u, 8u)], true), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.b.x, arg_0.x, arg_0.x, u_input.b.x), ~vec3<i32>(-2147483647i, 63460i, u_input.a.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, 68426u, 0u), arg_0), arg_0)), !select(!vec4<bool>(false, false, false, global4[_wgslsmith_index_u32(u_input.b.x, 13u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 8u)], global2[_wgslsmith_index_u32(111451u, 8u)], false), true)), abs(vec4<u32>(~(~4294967295u), _wgslsmith_add_u32(select(u_input.b.x, 36955u, global3[_wgslsmith_index_u32(747u, 31u)]), _wgslsmith_div_u32(u_input.b.x, 13061u)), 37017u, _wgslsmith_div_u32(~1u, _wgslsmith_mod_u32(1u, arg_0.x)))), vec3<i32>(min(7265i, _wgslsmith_clamp_i32(u_input.a.x, 16615i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -16902i, u_input.a.x), u_input.a.zxx))), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(27294i, u_input.a.x), u_input.a.xx)), i32(-1i) * -9428i));
}

fn func_1() -> vec2<f32> {
    let var_0 = -838f;
    global0 = array<vec3<bool>, 23>();
    var var_1 = func_2(select(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), ~vec3<u32>(33033u, 85365u, u_input.b.x)), (vec3<u32>(1u, 35119u, u_input.b.x) ^ vec3<u32>(77493u, 4294967295u, u_input.b.x)) << ((vec3<u32>(0u, 1u, u_input.b.x) ^ vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(abs(~u_input.b.x), 23u)]) & ~(~vec3<u32>(4294967295u, 59537u, u_input.b.x) & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 22870u), vec3<u32>(1u, 30001u, 4294967295u))));
    global0 = array<vec3<bool>, 23>();
    let var_2 = global4[_wgslsmith_index_u32(~var_1.c.x, 13u)];
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) + _wgslsmith_f_op_vec2_f32(-var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 8>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1123f, 1066f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1748f, -136f))) - _wgslsmith_f_op_vec2_f32(func_1())))), select(func_4(all(global0[_wgslsmith_index_u32(u_input.b.x, 23u)]), Struct_1(vec2<f32>(1442f, -258f), select(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(45246u, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], true, global4[_wgslsmith_index_u32(4294967295u, 13u)], false), global4[_wgslsmith_index_u32(u_input.b.x, 13u)]), ~vec4<u32>(0u, u_input.b.x, 1u, 58562u), ~u_input.a.xww), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(423f, 809f)), !vec4<bool>(global4[_wgslsmith_index_u32(98843u, 13u)], true, false, false), vec4<u32>(u_input.b.x, u_input.b.x, 76355u, 1u) ^ vec4<u32>(1u, 4294967295u, u_input.b.x, u_input.b.x), vec3<i32>(u_input.a.x, u_input.a.x, 13212i) >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), u_input.b.x), vec4<bool>(true, true, true, true), vec4<bool>(global3[_wgslsmith_index_u32(countOneBits(24305u), 31u)], !global1[_wgslsmith_index_u32(46387u, 23u)], any(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], global4[_wgslsmith_index_u32(37777u, 13u)], global4[_wgslsmith_index_u32(u_input.b.x, 13u)], global2[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(u_input.b.x, 31u)], true, true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 31u)], global4[_wgslsmith_index_u32(0u, 13u)], true, true))), global4[_wgslsmith_index_u32(1u, 13u)])), vec4<u32>(select(~u_input.b.x, abs(75405u), global4[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 13u)]), abs(countOneBits(u_input.b.x)), u_input.b.x, u_input.b.x) << (~vec4<u32>(firstLeadingBit(6908u), 31036u, 0u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(17412u, u_input.b.x))) % vec4<u32>(32u)), _wgslsmith_mod_vec3_i32(u_input.a.wxx, _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -1i), u_input.a.xyx) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 27245u)) % vec3<u32>(32u)), min(max(vec3<i32>(u_input.a.x, 2147483647i, -1i), u_input.a.xyz), -vec3<i32>(0i, u_input.a.x, u_input.a.x)))));
    global2 = array<bool, 8>();
    global0 = array<vec3<bool>, 23>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(var_0.a)), select(var_0.b, vec4<bool>(true, var_0.b.x, any(var_0.b), select(false & global3[_wgslsmith_index_u32(u_input.b.x, 31u)], false, var_0.b.x)), vec4<bool>(var_0.b.x, !global3[_wgslsmith_index_u32(func_2(var_0.c.zyw).c.x, 31u)], !global2[_wgslsmith_index_u32(~0u, 8u)], true)), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.c.x, 1u), 48954u), ~var_0.c.x, ~max(u_input.b.x << (1u % 32u), firstTrailingBit(u_input.b.x)), 4294967295u), ~(-vec3<i32>(-u_input.a.x, _wgslsmith_div_i32(-70435i, var_0.d.x), -u_input.a.x)));
    var var_2 = Struct_1(var_1.a, vec4<bool>(global3[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(var_1.c.x)), 31u)], var_0.b.x, !var_0.b.x, all(func_4(true, var_0, Struct_1(vec2<f32>(-460f, -1282f), vec4<bool>(var_1.b.x, false, var_0.b.x, var_0.b.x), var_0.c, vec3<i32>(17196i, -26889i, -5733i)), 2010u))), vec4<u32>(0u, u_input.b.x, var_0.c.x, firstLeadingBit(_wgslsmith_mult_u32(44475u, firstTrailingBit(var_0.c.x)))), select(vec3<i32>(-34130i, var_0.d.x, u_input.a.x), var_1.d, !((global3[_wgslsmith_index_u32(u_input.b.x, 31u)] & false) & select(false, false, global3[_wgslsmith_index_u32(4294967295u, 31u)]))));
    let var_3 = func_2(vec3<u32>(var_1.c.x, min(61817u, 1u) ^ u_input.b.x, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, _wgslsmith_mult_vec4_i32(-vec4<i32>(0i, var_0.d.x, 1i, var_3.d.x), _wgslsmith_sub_vec4_i32(~(u_input.a ^ vec4<i32>(52959i, var_1.d.x, var_0.d.x, var_2.d.x)), -(u_input.a & vec4<i32>(var_0.d.x, -2147483647i, -2147483647i, -2147483647i)))));
}

