struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 7> = array<i32, 7>(2147483647i, 1i, -1i, -32273i, 0i, 23081i, 256i);

var<private> global2: array<Struct_5, 3>;

var<private> global3: array<Struct_3, 24>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: bool, arg_1: f32) -> vec4<bool> {
    global3 = array<Struct_3, 24>();
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)))))))));
    var var_1 = 68417u;
    let var_2 = !select(vec4<bool>(_wgslsmith_mult_u32(u_input.a, 16852u) < u_input.a, true, true, arg_0), !select(select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(false, arg_0, arg_0, false)), vec4<bool>(false, arg_0, true, false), vec4<bool>(arg_0, arg_0, arg_0, true)), false);
    var_1 = ~max(1u, ~u_input.a);
    return vec4<bool>(true, arg_0, !any(var_2), countOneBits(-32962i | min(global1[_wgslsmith_index_u32(0u, 7u)], 25208i)) < ~(-2511i));
}

fn func_3() -> f32 {
    global2 = array<Struct_5, 3>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), u_input.a);
    global0 = all(vec3<bool>(-countOneBits(2147483647i) != _wgslsmith_sub_i32(0i << (var_0.b % 32u), -29009i | u_input.c), !(any(vec2<bool>(false, false)) || false), all(vec2<bool>(true, true))));
    let var_1 = Struct_2(var_0, -(~min(-463i, global1[_wgslsmith_index_u32(~u_input.a, 7u)])), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, ~var_0.b, min(var_0.b, var_0.b)), vec3<u32>(59410u, 4294967295u & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.b, 4294967295u), vec3<u32>(2351u, u_input.a, 1u)), ~15023u)), any(!vec4<bool>(27315u != u_input.a, true, true, true)), !(!select(true, true, true)));
    global2 = array<Struct_5, 3>();
    return _wgslsmith_f_op_f32(min(var_1.a.a.x, var_0.a.x));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1309f))), _wgslsmith_f_op_f32(round(-246f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(478f, -565f, 241f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1064f, -1173f, -1787f) + vec3<f32>(1337f, 708f, 1476f)))))), ~(~u_input.a));
    var var_1 = global2[_wgslsmith_index_u32(var_0.b, 3u)];
    global1 = array<i32, 7>();
    global2 = array<Struct_5, 3>();
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), var_0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_0.a.x)))))), Struct_2(Struct_1(vec3<f32>(-728f, 1342f, _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)), ~4294967295u), u_input.b.x, vec3<u32>(4294967295u, ~(~var_0.b), select(4294967295u, 89146u, true) ^ 1u), select(!any(vec4<bool>(var_1.a.x, false, false, true)), true, !var_1.a.x), all(!select(var_1.a, vec3<bool>(arg_0, var_1.a.x, arg_0), var_1.a.x))), reverseBits(firstTrailingBit(u_input.a)));
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3()), arg_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1652f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(abs(-2604f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))))));
    global2 = array<Struct_5, 3>();
    let var_1 = arg_3.zxz;
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.x * arg_0.a.a.x)), _wgslsmith_f_op_f32(abs(arg_0.a.a.x)), var_0.x, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, 950f), 786f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(970f, -514f)))), arg_0.a.a.x, arg_0.a.a.x)));
    var var_3 = func_2(arg_0.e);
    return arg_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = ~abs(vec3<u32>(7687u << (0u % 32u), firstLeadingBit(arg_0.b), _wgslsmith_sub_u32(u_input.a, arg_0.b)) << (vec3<u32>(arg_1, max(arg_1, u_input.a), u_input.a | arg_1) % vec3<u32>(32u)));
    global1 = array<i32, 7>();
    global0 = any(select(select(func_1(func_1(true, arg_0.a.x).x, 470f).zw, vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, arg_0.a.x >= arg_0.a.x), func_1(all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(arg_0.a.x + 563f)).yw), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true))))));
    let var_1 = Struct_3(vec3<f32>(1084f, _wgslsmith_f_op_f32(func_3()), 893f), Struct_2(func_4(Struct_2(arg_0, u_input.b.x, _wgslsmith_sub_vec3_u32(var_0, var_0), any(vec3<bool>(true, true, true)), true), var_0, _wgslsmith_dot_vec2_u32(var_0.zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1, 4294967295u), vec2<u32>(u_input.a, 0u), var_0.zx)), func_1(false, _wgslsmith_f_op_f32(func_3()))), -2147483647i, var_0 & (firstTrailingBit(var_0) | var_0), all(vec2<bool>(true, false)), select(any(vec4<bool>(false, true, true, true)), true, false)), select(arg_0.b, var_0.x, true));
    var var_2 = Struct_4(func_2(!var_1.b.e));
    return Struct_2(func_2(-895f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * 1648f))), 35722i, ~(~(~(~var_1.b.c))), -(-13534i & _wgslsmith_add_i32(global1[_wgslsmith_index_u32(0u, 7u)], 0i)) == 1i, var_1.b.b > (u_input.c >> (1u % 32u)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: f32) -> Struct_4 {
    return Struct_4(arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_5, 3>();
    global0 = false || !(!any(func_1(false, -1442f)));
    global2 = array<Struct_5, 3>();
    global1 = array<i32, 7>();
    var var_0 = func_6(func_5(func_4(Struct_2(func_2(false), u_input.c, reverseBits(vec3<u32>(26074u, 1u, u_input.a)), false, true), vec3<u32>(abs(u_input.a), 0u, 10490u), ~u_input.a, select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, false, false), u_input.a > u_input.a)), select(39929u, u_input.a, (u_input.a | 0u) != min(u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(622f, 143f, -1875f), vec3<f32>(1724f, 1229f, 935f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1517f, -221f, -528f))) - vec3<f32>(_wgslsmith_f_op_f32(-1246f - 381f), _wgslsmith_f_op_f32(f32(-1f) * -479f), _wgslsmith_f_op_f32(step(-497f, 3048f))))), func_5(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 450f, 1568f) - vec3<f32>(-868f, -1482f, -1765f))), _wgslsmith_dot_vec3_u32(vec3<u32>(33776u, 42030u, u_input.a), vec3<u32>(0u, u_input.a, u_input.a))), 78701u & _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, u_input.a, 34269u)), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1205f, 683f, -626f) - vec3<f32>(110f, 2890f, -420f)), vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-546f, 2083f, 523f)))), vec2<f32>(func_5(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1067f, -845f, 236f) - vec3<f32>(-1076f, 1633f, 233f)), ~u_input.a), ~u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1793f, -505f, 399f))).a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -659f)), -826f);
    var var_1 = !vec3<bool>(true, !(func_2(false).b <= var_0.a.b), true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(var_0.a.b, 7u)], max(u_input.b.x, global1[_wgslsmith_index_u32(var_0.a.b, 7u)]))), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, ~_wgslsmith_add_u32(u_input.a, var_0.a.b)), 7u)], _wgslsmith_add_vec3_u32(~vec3<u32>(var_0.a.b, 0u, 1u), vec3<u32>(u_input.a, min(1u, var_0.a.b), reverseBits(u_input.a))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.a.x, -300f) + _wgslsmith_f_op_f32(var_0.a.a.x * var_0.a.a.x)), _wgslsmith_f_op_f32(2084f * -518f)))), abs(_wgslsmith_add_vec2_u32((vec2<u32>(0u, 4294967295u) & vec2<u32>(19263u, var_0.a.b)) & vec2<u32>(37170u, 4294967295u), ~(~vec2<u32>(u_input.a, 30600u)))));
}

