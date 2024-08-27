struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(0i, 2147483647i, 13127i, -34061i, -1i, 0i, -64169i, 1i, 56293i, 0i, 2147483647i, 8804i, -36860i);

var<private> global1: array<u32, 6>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> vec3<f32> {
    global1 = array<u32, 6>();
    global1 = array<u32, 6>();
    global0 = array<i32, 13>();
    let var_0 = u_input.b.yy;
    let var_1 = arg_1.c.xx;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.d.x * arg_1.a.x), arg_1.d.x, 208f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(arg_1.d)))))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1170f))), _wgslsmith_clamp_vec4_i32(u_input.a, -_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a), vec4<i32>(abs(u_input.a.x), firstLeadingBit(1i), _wgslsmith_sub_i32(u_input.c.x, 1i), u_input.a.x)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(876f, -1044f, 1330f) - _wgslsmith_f_op_vec3_f32(func_3(u_input.d, Struct_1(vec2<f32>(-2873f, 201f), vec4<i32>(0i, u_input.c.x, u_input.a.x, global0[_wgslsmith_index_u32(1u, 13u)]), vec3<bool>(false, false, true), vec3<f32>(1000f, -477f, 1893f), vec3<bool>(true, true, false)), u_input.a.xx, u_input.c.x)))), !vec3<bool>(true, u_input.d.x != 63003u, true)), ~firstLeadingBit(1i), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 2147483647i != u_input.a.x), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), true));
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(2405f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) + var_0.a.a.x)) + _wgslsmith_f_op_vec2_f32(var_0.a.a + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.d.x, 647f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, var_0.a.a.x)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.a.d.zz)) + vec2<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) + _wgslsmith_f_op_f32(min(1552f, -1104f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-var_0.a.a.x)), 1944f)));
    var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.d.x))), var_0.a.b, select(select(vec3<bool>(false, var_0.c.x, var_0.c.x), !var_0.a.e, var_0.c), select(vec3<bool>(var_0.c.x, false, var_0.c.x), !var_0.a.e, global1[_wgslsmith_index_u32(u_input.d.x, 6u)] == 2525u), var_0.a.c), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f) + _wgslsmith_div_f32(var_1.x, var_1.x)), 1222f, 295f), select(!(!var_0.a.e), vec3<bool>(34022i != u_input.a.x, false, all(vec2<bool>(false, var_0.a.c.x))), !vec3<bool>(var_0.c.x, var_0.a.c.x, true))), _wgslsmith_dot_vec4_i32(-(~(u_input.a & vec4<i32>(-26339i, -20994i, var_0.a.b.x, 0i))), u_input.a), vec3<bool>(-(var_0.a.b.x ^ u_input.a.x) <= -46906i, all(var_0.a.e.yz), false));
    let var_3 = var_2.x;
    return var_0.a;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = max(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], u_input.d.x);
    var var_1 = arg_1.e.x & any(vec3<bool>(true & (arg_1.c.x & false), !(arg_1.c.x & false), true));
    let var_2 = arg_1.d;
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(757f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))));
    var var_4 = func_2();
    return var_2.x;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = array<i32, 13>();
    global1 = array<u32, 6>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1001f);
    var var_1 = false;
    let var_2 = _wgslsmith_mult_i32(func_2().b.x, ((i32(-1i) * -global0[_wgslsmith_index_u32(16804u, 13u)]) << (~global1[_wgslsmith_index_u32(reverseBits(u_input.d.x), 6u)] % 32u)) ^ select(-arg_3.b.x & -9916i, _wgslsmith_clamp_i32(~global0[_wgslsmith_index_u32(arg_0, 13u)], _wgslsmith_mult_i32(-2147483647i, u_input.a.x), 58359i), any(select(vec4<bool>(arg_2.c.x, arg_3.c.x, true, arg_3.e.x), vec4<bool>(false, false, arg_2.e.x, false), false))));
    return abs(-35788i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 6>();
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    let var_0 = func_4(u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(step(1379f, _wgslsmith_f_op_f32(abs(-669f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1686f, 278f)), 381f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2478f + 806f), _wgslsmith_f_op_f32(round(169f))))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1291f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.a.x, Struct_1(vec2<f32>(1215f, -508f), u_input.a, vec3<bool>(true, false, true), vec3<f32>(121f, 546f, -953f), vec3<bool>(false, true, true)))) * _wgslsmith_f_op_f32(trunc(-989f)))), vec4<i32>(~max(global0[_wgslsmith_index_u32(7617u, 13u)], u_input.a.x), -_wgslsmith_clamp_i32(-1i, 9800i, global0[_wgslsmith_index_u32(1u, 13u)]), global0[_wgslsmith_index_u32(1u, 13u)], 2663i), vec3<bool>(true, true, false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(759f, -828f, -517f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-774f, -1000f, -1000f) + vec3<f32>(1142f, 2401f, 1108f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1088f, -1297f, -815f) - vec3<f32>(-1798f, -1000f, -1639f)))), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(816f, 679f), vec2<f32>(506f, -387f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-2207f, 2379f) * vec2<f32>(-578f, 233f))))), vec4<i32>(-57745i, ~global0[_wgslsmith_index_u32(firstTrailingBit(44615u), 13u)], global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 6u)], 13u)], -1i), vec3<bool>(all(func_2().e), true, false), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1198f, -490f, -584f))))), func_2().c));
    var var_1 = func_2();
    global1 = array<u32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, -2147483647i, ~abs(_wgslsmith_add_u32(~0u, u_input.b.x)));
}

