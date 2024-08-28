struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(16587u, 55806u, 12843u, 1u, 1u, 575u, 17408u, 49687u, 4294967295u, 1u, 74925u, 3284u, 4294967295u, 1u, 76810u, 38176u, 38165u);

var<private> global1: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(51346i, -25137i, 0i), vec3<i32>(0i, i32(-2147483648), 28308i), vec3<i32>(0i, 1i, -2661i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, -11334i, 2147483647i), vec3<i32>(-37800i, 1i, 21453i), vec3<i32>(0i, 1i, 0i), vec3<i32>(-26506i, -29071i, 24025i), vec3<i32>(0i, i32(-2147483648), 24737i), vec3<i32>(-43149i, 40790i, 0i), vec3<i32>(12314i, 2147483647i, 0i), vec3<i32>(-53814i, 410i, i32(-2147483648)), vec3<i32>(2147483647i, 26885i, -1i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(2147483647i, -19636i, -52764i), vec3<i32>(53004i, 1i, 1i), vec3<i32>(-42670i, 63910i, 32379i), vec3<i32>(-61434i, 42238i, -23245i), vec3<i32>(0i, 1i, 26324i), vec3<i32>(0i, i32(-2147483648), -53238i), vec3<i32>(1i, 23629i, -772i), vec3<i32>(1i, -1i, 0i), vec3<i32>(-43719i, -1i, i32(-2147483648)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec2<i32>) -> f32 {
    global1 = array<vec3<i32>, 23>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))) * arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 + -267f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1979f - 1510f) - _wgslsmith_f_op_f32(trunc(arg_0)))))));
    var var_1 = all(!vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))));
    var_1 = false;
    let var_2 = arg_1.a;
    return _wgslsmith_f_op_f32(-768f + 800f);
}

fn func_2() -> bool {
    var var_0 = 1452f;
    global1 = array<vec3<i32>, 23>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1116f, -907f, 489f, 1722f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), -197f, _wgslsmith_f_op_f32(func_3(-2199f, Struct_3(2147483647i), vec2<i32>(-41570i, 40143i))), _wgslsmith_f_op_f32(f32(-1f) * -585f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1405f, -344f, 590f, -1013f) + vec4<f32>(-1006f, -1415f, -482f, -1635f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -486f, 1115f, 1310f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(451f, -736f, 1206f, 689f)))));
    var var_2 = ~43265u;
    let var_3 = any(select(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), true));
    return countOneBits(reverseBits(max(_wgslsmith_add_i32(-2147483647i, 0i), ~(-57443i)))) < (-reverseBits(1i) | ~_wgslsmith_div_i32(21982i, select(0i, 15620i, var_3)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = func_2();
    var_0 = -671f <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1051f))));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    global1 = array<vec3<i32>, 23>();
    var_0 = all(select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(!all(vec3<bool>(false, false, true)), false, !any(vec3<bool>(true, false, true)), false), !vec4<bool>(all(vec3<bool>(true, true, false)), true, func_2(), any(vec2<bool>(true, true)))));
    return ~vec3<u32>(~4294967295u, firstTrailingBit(_wgslsmith_sub_u32(91215u, u_input.a)), _wgslsmith_sub_u32(1u, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(0i, i32(-1i) * -4132i, abs(_wgslsmith_mod_i32(reverseBits(1i), -(~60246i))));
    global1 = array<vec3<i32>, 23>();
    let var_1 = vec2<bool>(false, all(vec4<bool>(all(vec4<bool>(true, false, false, false)), true, !any(vec4<bool>(true, false, false, false)), false)));
    global1 = array<vec3<i32>, 23>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(643f - -1190f)));
    var var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(~9267u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15989u, 17u)], 17u)]), min(vec3<u32>(25209u, 0u, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 17u)], 63178u, global0[_wgslsmith_index_u32(53979u, 17u)])), !vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 17u)], 17u)], u_input.a, 44949u) | func_1(vec2<f32>(1224f, -580f), var_0.yy, Struct_3(var_0.x))), _wgslsmith_add_u32(firstTrailingBit(u_input.a) | (24781u & global0[_wgslsmith_index_u32(27055u, 17u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 60525u, global0[_wgslsmith_index_u32(4294967295u, 17u)], 22932u), vec4<u32>(1u, 13043u, u_input.a, u_input.a)) & max(u_input.a, global0[_wgslsmith_index_u32(7644u, 17u)]), 17u)]), ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 17u)], 17u)])), 17u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~1u, 17u)], 17u)] & _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 17u)], 17u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 17u)], 17u)]), select(vec4<u32>(u_input.a, 9578u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)]), vec4<u32>(0u, 83055u, 15385u, u_input.a), vec4<bool>(false, false, false, var_1.x))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 0u), 1u), 17u)], func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(max(-1856f, -785f))), -select(vec2<i32>(-1i, var_0.x), vec2<i32>(var_0.x, var_0.x), var_1), Struct_3(select(var_0.x, var_0.x, var_1.x))).x, ~(~47705u)));
    let var_4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))), vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-789f + -485f)), Struct_3(var_0.x), (vec2<i32>(var_0.x, 35849i) | var_0.xy) << (var_3.xy % vec2<u32>(32u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -980f))), -1076f)));
    let var_5 = vec2<bool>(false, var_1.x);
    var var_6 = false && any(vec4<bool>(var_1.x, !var_5.x, all(vec3<bool>(var_1.x, false, var_5.x)), all(!var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_4.x, 768f))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_4.x, 1311f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1285f, -468f))))), _wgslsmith_clamp_vec2_i32(var_0.xz, select(countOneBits(var_0.xx), vec2<i32>(var_0.x, var_0.x) >> (vec2<u32>(global0[_wgslsmith_index_u32(var_3.x, 17u)], u_input.a) % vec2<u32>(32u)), vec2<bool>(true, true)), -vec2<i32>(var_0.x, -1i) ^ -vec2<i32>(2147483647i, var_0.x)), Struct_3(-firstTrailingBit(1i))).x);
}

