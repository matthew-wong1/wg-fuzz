struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1113f;

var<private> global1: f32 = -1800f;

var<private> global2: array<u32, 31>;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(1u, 10625u));

var<private> global4: array<u32, 26> = array<u32, 26>(40477u, 0u, 4294967295u, 1u, 4294967295u, 23184u, 1u, 84147u, 58312u, 15725u, 0u, 1u, 62499u, 41179u, 53652u, 4294967295u, 1u, 4294967295u, 1u, 0u, 0u, 43055u, 4294967295u, 4294967295u, 83244u, 34985u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = ~(~vec2<i32>(arg_2, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, arg_2, arg_2, arg_2), vec4<i32>(-34303i, arg_2, arg_2, arg_2)), arg_2)));
    return Struct_1(~(~select(vec2<u32>(global3.a.x, 15055u), vec2<u32>(22585u, u_input.a.x), false)) ^ _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(67499u, 4294967295u)), ~global3.a), vec2<u32>(43607u, 4294967295u) ^ u_input.a));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_4(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(19634i, -11276i)), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, 32057i))))), arg_0.b, Struct_2(select(vec4<bool>(true, true, !arg_0.b.a.x, arg_0.a.x < -669f), !select(vec4<bool>(false, true, arg_0.b.e.x, true), vec4<bool>(arg_0.b.d.x, arg_0.b.a.x, false, arg_0.b.e.x), arg_0.b.a), select(arg_0.b.e, arg_0.b.e, select(vec4<bool>(true, false, false, arg_0.b.e.x), vec4<bool>(false, arg_0.b.a.x, arg_0.b.d.x, arg_0.b.d.x), arg_0.b.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.a.x, 290f))), arg_0.b.b)), func_1(_wgslsmith_f_op_f32(-arg_0.b.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a.x, -402f))), firstTrailingBit(-16232i)), arg_0.b.a.yx, arg_0.b.a));
    return _wgslsmith_f_op_f32(ceil(arg_0.a.x));
}

fn func_2(arg_0: i32) -> bool {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(1301f, -914f, 1539f), Struct_2(vec4<bool>(true, true, true, false), vec2<f32>(263f, 1295f), Struct_1(global3.a), vec2<bool>(false, false), vec4<bool>(false, true, false, false)), Struct_1(vec2<u32>(0u, u_input.a.x)), ~vec2<u32>(30858u, 4294967295u), func_1(392f, -639f, arg_0)))))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1299f, 140f, 1656f, 767f) - vec4<f32>(-421f, 330f, -2601f, 456f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(163f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -910f), 1110f)))));
    global2 = array<u32, 31>();
    var var_1 = vec4<i32>(arg_0, -abs(arg_0), arg_0, min(0i, firstTrailingBit(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(arg_0, 11362i)))));
    global2 = array<u32, 31>();
    return -20322i != _wgslsmith_dot_vec4_i32(~(-vec4<i32>(var_1.x, -29396i, arg_0, 0i)) | -vec4<i32>(arg_0, arg_0, 2147483647i, var_1.x), select(vec4<i32>(0i, var_1.x, abs(arg_0), 1i), abs(vec4<i32>(55381i, 2147483647i, -33242i, 1i)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: bool, arg_1: bool) -> StorageBuffer {
    var var_0 = Struct_5(u_input.a.x, 1i, Struct_4(1i >> (_wgslsmith_mult_u32(u_input.a.x, firstTrailingBit(global2[_wgslsmith_index_u32(1u, 31u)])) % 32u), Struct_2(!select(vec4<bool>(true, arg_1, arg_1, arg_0), vec4<bool>(false, false, arg_0, arg_1), vec4<bool>(arg_0, false, true, arg_0)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1219f, 750f), vec2<f32>(1000f, 281f), arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1132f, 954f)))), func_1(_wgslsmith_f_op_f32(-2751f + 1117f), 342f, _wgslsmith_clamp_i32(11138i, -9133i, -1i)), vec2<bool>(!arg_1, true), vec4<bool>(arg_1, any(vec3<bool>(true, true, true)), true, false)), Struct_2(!vec4<bool>(false, arg_0, arg_0, false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1037f) - vec2<f32>(-1433f, -163f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(914f, -934f))), func_1(988f, -1173f, -2147483647i), select(!vec2<bool>(arg_1, arg_0), !vec2<bool>(arg_1, arg_0), all(vec3<bool>(arg_1, arg_1, arg_1))), vec4<bool>(false | arg_1, arg_1, all(vec2<bool>(arg_1, arg_0)), arg_1 | false))));
    var var_1 = -487f;
    var var_2 = vec2<bool>(false, var_0.c.c.e.x);
    let var_3 = any(select(vec3<bool>(false, false, all(!var_0.c.b.e)), select(vec3<bool>(false, !arg_0, !arg_0), vec3<bool>(var_0.c.c.b.x == 1000f, any(var_0.c.b.a.wy), true), var_0.c.c.a.wwy), var_0.c.c.a.xzy));
    let var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, var_0.c.b.b.x, var_0.c.c.b.x), vec3<f32>(-879f, var_0.c.b.b.x, var_0.c.c.b.x))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c.c.b.x, 1000f, 1049f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(637f, var_0.c.c.b.x, var_0.c.b.b.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(779f, 179f, var_0.c.c.b.x))))), Struct_2(vec4<bool>(!arg_0 || (var_0.b == var_0.b), func_2(_wgslsmith_mod_i32(-1i, -2147483647i)), false, false), _wgslsmith_f_op_vec2_f32(var_0.c.b.b * vec2<f32>(var_0.c.c.b.x, _wgslsmith_f_op_f32(floor(var_0.c.c.b.x)))), var_0.c.b.c, !vec2<bool>(any(var_0.c.c.a), false), select(select(vec4<bool>(arg_0, arg_1, arg_1, false), select(vec4<bool>(arg_1, var_0.c.c.e.x, var_3, var_2.x), var_0.c.c.a, false), vec4<bool>(arg_1, var_2.x, true, var_3)), vec4<bool>(arg_1, arg_1, false, any(vec2<bool>(false, true))), select(select(var_0.c.c.a, vec4<bool>(true, var_0.c.b.a.x, arg_0, var_3), var_0.c.c.e), vec4<bool>(var_0.c.c.d.x, false, false, false), all(var_0.c.c.e.zw)))), func_1(_wgslsmith_f_op_f32(var_0.c.c.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(393f)) * _wgslsmith_div_f32(var_0.c.b.b.x, var_0.c.b.b.x))), var_0.c.c.b.x, ~select(_wgslsmith_mult_i32(32118i, -63043i), var_0.c.a, arg_0)), var_0.c.b.c.a, func_1(var_0.c.b.b.x, 714f, abs(_wgslsmith_mod_i32(~var_0.c.a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, 31170i), vec2<i32>(19406i, 1i))))));
    return StorageBuffer(-abs(_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, 49733i, 2147483647i, 1i), -vec4<i32>(-63557i, var_0.b, var_0.c.a, var_0.c.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global3 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-276f - 1462f), -1230f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(479f, 1280f))) * 1507f))), _wgslsmith_f_op_f32(143f * -908f), -1i);
    global0 = -1000f;
    let x = u_input.a;
    s_output = func_4(!(!any(vec4<bool>(true, false, true, var_0))), func_2(15713i));
}

