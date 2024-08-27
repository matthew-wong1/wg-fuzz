struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-1473f, -407f), vec2<f32>(-477f, 510f), vec2<f32>(919f, -225f));

var<private> global1: array<vec4<u32>, 4>;

var<private> global2: array<f32, 8> = array<f32, 8>(253f, -1349f, -698f, 1640f, 505f, 479f, 662f, 161f);

var<private> global3: vec3<f32> = vec3<f32>(850f, -1067f, -781f);

var<private> global4: array<u32, 21>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_3(_wgslsmith_clamp_i32(firstTrailingBit(0i), u_input.b, -(~63740i)), 237f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], 1000f, -989f, global2[_wgslsmith_index_u32(u_input.c.x, 8u)]) + vec4<f32>(-704f, global3.x, 1966f, global2[_wgslsmith_index_u32(65195u, 8u)]))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1683f, 725f, global3.x, 1000f), vec4<f32>(678f, global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(6874u, 8u)], global3.x)))))), true);
    var_0 = Struct_3(u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-var_0.c.x)) - global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 8032u), _wgslsmith_sub_u32(u_input.c.x, 0u)), min(u_input.c.x, 1u) ^ abs(u_input.c.x)), 8u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1080f, global3.x, global3.x, global2[_wgslsmith_index_u32(1u, 8u)]), vec4<f32>(1106f, var_0.c.x, global3.x, global2[_wgslsmith_index_u32(0u, 8u)])))))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c.x * var_0.b))), _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), !((true | any(vec3<bool>(var_0.d, false, true))) || !var_0.d));
    global4 = array<u32, 21>();
    let var_1 = Struct_1(vec3<f32>(2800f, -101f, _wgslsmith_f_op_f32(select(-1234f, global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(2828u, u_input.c.x), 8u)], all(select(vec3<bool>(true, true, var_0.d), vec3<bool>(true, var_0.d, false), var_0.d))))), 1038f, (var_0.d || false) || !var_0.d);
    var var_2 = Struct_3(-40017i, global3.x, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1618f - var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1232f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24121u, 21u)], 8u)] - 867f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-var_1.a.x)))), 2126f), false);
    return !(!vec2<bool>(var_2.d, var_2.d));
}

fn func_2() -> u32 {
    var var_0 = vec2<u32>(global4[_wgslsmith_index_u32(u_input.c.x, 21u)], max(0u, reverseBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)])));
    var var_1 = !func_3();
    global4 = array<u32, 21>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global2[_wgslsmith_index_u32(var_0.x, 8u)]))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1656f, -1728f, global2[_wgslsmith_index_u32(0u, 8u)]), vec3<f32>(global3.x, -1000f, 122f))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_f_op_f32(abs(-1081f)), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.c.x, 8u)], -1516f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1526f) - _wgslsmith_f_op_f32(sign(global3.x)))))), true);
    var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(121334u, 859u), 8u)], _wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-var_2.a.x)) * var_2.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(180f))), _wgslsmith_f_op_f32(global3.x + 1867f)))), global3.x, any(!(!vec4<bool>(var_2.c, true, var_1.x, false))));
    return 4294967295u;
}

fn func_1(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = u_input.c.ywz;
    global1 = array<vec4<u32>, 4>();
    let var_1 = max(var_0.yz, vec2<u32>(_wgslsmith_mult_u32(reverseBits(~arg_2), func_2()), 84111u));
    var var_2 = Struct_4(-1i, true, ~vec4<i32>(0i, arg_0.c.x, -10315i, 19000i) >> (select(vec4<u32>(var_0.x, 0u, 4294967295u, 1u), firstLeadingBit(global1[_wgslsmith_index_u32(118765u, 4u)]), !(!vec4<bool>(arg_3.c, false, arg_0.b, false))) % vec4<u32>(32u)), arg_3);
    var_2 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b), 263f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(714f)) - _wgslsmith_div_f32(global3.x, arg_0.d.a.x)))) > _wgslsmith_f_op_f32(trunc(1f));
}

fn func_4(arg_0: bool) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global2[_wgslsmith_index_u32(u_input.c.x, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]) - vec3<f32>(1188f, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 21u)], 8u)], -987f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1483f, -300f, 1324f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, 1000f) * vec3<f32>(global3.x, global3.x, -1556f)), false))) * vec3<f32>(-1136f, 205f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-224f * global3.x), global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(69491u, 21u)] << (68963u % 32u), 21u)], 8u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1501f))), true);
    let var_1 = abs(vec2<u32>(~1u << (func_2() % 32u), u_input.c.x));
    var_0 = Struct_1(_wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_0.a)) - vec3<f32>(_wgslsmith_f_op_f32(global3.x - -1000f), _wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(605f - global3.x)))), -975f, all(select(select(select(vec3<bool>(true, false, var_0.c), vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(arg_0, false, var_0.c), vec3<bool>(arg_0, var_0.c, var_0.c), vec3<bool>(false, arg_0, true))), select(!vec3<bool>(false, arg_0, false), !vec3<bool>(true, var_0.c, var_0.c), !vec3<bool>(var_0.c, true, false)), !vec3<bool>(false, arg_0, arg_0))));
    global1 = array<vec4<u32>, 4>();
    let var_2 = Struct_4(-u_input.a.x, false, countOneBits(-countOneBits(-vec4<i32>(u_input.b, -52452i, u_input.d.x, -2147483647i))), Struct_1(var_0.a, global3.x, true));
    return ~u_input.d.x;
}

fn func_5(arg_0: i32) -> Struct_4 {
    let var_0 = min(-firstLeadingBit(_wgslsmith_add_i32(~u_input.a.x, u_input.b)), 0i);
    let var_1 = Struct_4(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(var_0, 470i), select(var_0, var_0, true), 2147483647i)), ~reverseBits(u_input.e)), false, max(select(select(vec4<i32>(arg_0, arg_0, var_0, -19710i), vec4<i32>(20912i, arg_0, -2147483647i, -1i) << (vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, global4[_wgslsmith_index_u32(4294967295u, 21u)]) % vec4<u32>(32u)), true), select(vec4<i32>(38857i, 1i, var_0, 0i), vec4<i32>(-1837i, u_input.b, 15228i, u_input.b), true), vec4<bool>(true, true, true, true)), reverseBits(vec4<i32>(47215i, _wgslsmith_clamp_i32(var_0, u_input.b, arg_0), ~(-2147483647i), -2147483647i | u_input.d.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(16087u, 8u)], 823f, 733f))), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~2538u, ~global4[_wgslsmith_index_u32(36180u, 21u)]), 8u)], select(true, u_input.c.x < 15291u, global3.x <= global3.x) || true));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstLeadingBit(22181u), 8u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~4294967295u, 8u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-538f)), _wgslsmith_f_op_f32(-838f - global2[_wgslsmith_index_u32(u_input.c.x, 8u)]))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x))), _wgslsmith_f_op_f32(round(-782f)), global3.x))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(countOneBits(53615u), 8u)]), !all(vec2<bool>(true, var_1.b)));
    let var_3 = Struct_4(6560i, true, ~vec4<i32>(_wgslsmith_mult_i32(u_input.a.x >> (global4[_wgslsmith_index_u32(15093u, 21u)] % 32u), var_0), arg_0, var_0, arg_0), Struct_1(var_2.a, var_1.d.a.x, var_2.c));
    let var_4 = var_3;
    return Struct_4(arg_0, true, var_3.c, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, _wgslsmith_f_op_f32(f32(-1f) * -1703f), _wgslsmith_f_op_f32(1038f - -328f))), _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2371f)) - _wgslsmith_f_op_f32(var_2.b * var_2.b))), false));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 8u)]))));
    return StorageBuffer(_wgslsmith_div_vec2_i32(arg_0.c.zy, ~(min(vec2<i32>(-1i, -2147483647i), vec2<i32>(arg_0.a, -2147483647i)) << ((vec2<u32>(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]) ^ u_input.c.zw) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(func_4(func_1(Struct_4(u_input.b, false, vec4<i32>(u_input.e.x, 18093i, 16355i, 1i), Struct_1(vec3<f32>(-627f, 882f, global2[_wgslsmith_index_u32(33869u, 8u)]), global2[_wgslsmith_index_u32(18101u, 8u)], false)), countOneBits(vec4<i32>(2147483647i, 26256i, u_input.d.x, -1i)), u_input.c.x | u_input.c.x, Struct_1(vec3<f32>(1000f, 462f, global3.x), 1026f, true)))), Struct_4(u_input.a.x, true, vec4<i32>(-1i) * -(~vec4<i32>(-38791i, u_input.d.x, 62198i, u_input.e.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-133f, global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(u_input.c.x, 8u)]))), _wgslsmith_f_op_f32(f32(-1f) * -277f), global2[_wgslsmith_index_u32(1u, 8u)] < global3.x)), func_5(-u_input.e.x).d, Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.x, global3.x), vec2<f32>(1719f, global2[_wgslsmith_index_u32(4325u, 8u)]), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(u_input.c.x, 3u)] * global0[_wgslsmith_index_u32(u_input.c.x, 3u)]))), func_5(60260i).d, !select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(false, false, false, false), func_3().x), 0u | global4[_wgslsmith_index_u32(u_input.c.x, 21u)]));
}

