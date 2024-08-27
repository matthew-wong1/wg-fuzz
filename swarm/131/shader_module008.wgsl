struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = !vec4<bool>(true, any(vec2<bool>(any(vec3<bool>(arg_0.x, false, true)), arg_0.x)), true, all(!arg_0));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1299f, -1355f), _wgslsmith_f_op_f32(-348f - -718f), -1185f, _wgslsmith_f_op_f32(min(143f, -202f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1443f, 1448f, 177f, -834f) + vec4<f32>(191f, -1914f, 243f, -442f))))) - vec4<f32>(_wgslsmith_f_op_f32(-371f - _wgslsmith_f_op_f32(f32(-1f) * -1340f)), _wgslsmith_f_op_f32(abs(921f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(258f, -767f))), -333f))));
    global0 = array<vec3<bool>, 15>();
    let var_2 = 35998u;
    global0 = array<vec3<bool>, 15>();
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.a, max(_wgslsmith_mult_i32(u_input.b, -1i), ~31121i)), u_input.b, u_input.a), countOneBits(min(vec3<i32>(max(u_input.a, -2147483647i), u_input.a, min(18587i, u_input.a)), min(~vec3<i32>(1i, -1i, u_input.a), vec3<i32>(2147483647i, u_input.b, -1i)))), ~vec3<i32>(~2147483647i, i32(-1i) * -19798i, -u_input.a) & _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -28228i, u_input.a), vec3<i32>(1i, 1i, 24460i)), -vec3<i32>(u_input.b, 23470i, 29958i)), ~firstLeadingBit(vec3<i32>(u_input.b, u_input.b, u_input.b))));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec3<f32>) -> bool {
    var var_0 = arg_0.a;
    let var_1 = -func_3(var_0.c, arg_0.b);
    var var_2 = -2223f;
    var var_3 = 4294967295u;
    let var_4 = _wgslsmith_mult_i32(~_wgslsmith_mult_i32(arg_0.c, -47547i) ^ _wgslsmith_clamp_i32(63965i, _wgslsmith_mod_i32(-44837i, -1i), abs(u_input.a)), _wgslsmith_mult_i32((firstTrailingBit(-2147483647i) & (i32(-1i) * -6079i)) & -firstLeadingBit(u_input.a), -44453i));
    return true == (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-124f)) + 1000f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1346f)))) * 1326f));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_1(~firstTrailingBit(vec2<u32>(1u, 1u)), vec2<u32>(~1u, 1u), select(select(!(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), vec4<bool>(func_2(Struct_3(Struct_1(vec2<u32>(48002u, 0u), vec2<u32>(0u, 4294967295u), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), Struct_1(vec2<u32>(1u, 3857u), vec2<u32>(56181u, 4294967295u), vec4<bool>(true, arg_0.x, arg_0.x, true)), arg_1, vec2<f32>(402f, 435f)), false, vec3<f32>(-212f, 1000f, 335f)), !arg_0.x, any(vec4<bool>(false, arg_0.x, true, false)), all(global0[_wgslsmith_index_u32(25609u, 15u)])), any(select(arg_0, vec2<bool>(arg_0.x, true), false))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), arg_0.x), !vec4<bool>(arg_0.x, false, arg_0.x, true), select(vec4<bool>(true, true, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0.x)), select(vec4<bool>(all(arg_0), true, !arg_0.x, true), vec4<bool>(true, arg_0.x, true, false), vec4<bool>(true, true, arg_0.x, false))));
    global0 = array<vec3<bool>, 15>();
    let var_1 = Struct_3(Struct_1(~(~(~var_0.b)), ~vec2<u32>(var_0.b.x, var_0.b.x ^ var_0.b.x), !(!select(var_0.c, vec4<bool>(true, false, false, false), var_0.c))), Struct_1(~(~var_0.b >> (vec2<u32>(67785u, 16490u) % vec2<u32>(32u))), ~select(_wgslsmith_div_vec2_u32(var_0.a, var_0.b), abs(var_0.a), var_0.c.yw), select(vec4<bool>(true, !var_0.c.x, true, true), select(!vec4<bool>(false, false, true, var_0.c.x), vec4<bool>(true, arg_0.x, true, true), var_0.c), var_0.c.x)), _wgslsmith_mod_i32(max(u_input.a, arg_1), _wgslsmith_clamp_i32(arg_1, abs(-69708i ^ u_input.b), -arg_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1077f), _wgslsmith_f_op_f32(f32(-1f) * -1568f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 1687f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-564f, 1806f), _wgslsmith_div_vec2_f32(vec2<f32>(-829f, -510f), vec2<f32>(-381f, -665f)))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-119f, 150f)))))));
    global0 = array<vec3<bool>, 15>();
    var var_2 = -2147483647i;
    return Struct_2(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<bool>(!(~u_input.b < 0i), any(vec4<bool>(any(vec3<bool>(false, false, false)), true, true, true))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~(vec3<i32>(1i, u_input.b, u_input.a) | vec3<i32>(u_input.a, u_input.b, 1i)), select(-vec3<i32>(37176i, u_input.a, -24613i), _wgslsmith_clamp_vec3_i32(vec3<i32>(13490i, -37186i, 1i), vec3<i32>(1i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.a, 13566i)), !global0[_wgslsmith_index_u32(1u, 15u)])), firstTrailingBit(_wgslsmith_clamp_i32(-9020i, 17078i, -2147483647i)) & _wgslsmith_div_i32(~(-20536i), u_input.b)));
    let var_1 = Struct_3(Struct_1(var_0.a.a, var_0.a.b, var_0.a.c), var_0.a, ~u_input.a >> (abs(~var_0.a.b.x & _wgslsmith_div_u32(var_0.a.a.x, var_0.a.a.x)) % 32u), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -858f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-702f)) - -398f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(-246f, -957f))));
    let var_2 = Struct_3(Struct_1(~(~var_0.a.a), vec2<u32>(_wgslsmith_mult_u32(var_0.a.a.x, 4294967295u), ~_wgslsmith_mod_u32(26720u, 1u)), !select(!var_1.b.c, vec4<bool>(true, var_0.a.c.x, true, var_0.a.c.x), vec4<bool>(true, var_1.a.c.x, var_0.a.c.x, false))), func_1(vec2<bool>(var_0.a.c.x, false), -21828i).a, max(-1i >> (min(1u, ~var_0.a.b.x) % 32u), _wgslsmith_div_i32(-u_input.a, firstTrailingBit(1i) << (var_0.a.b.x % 32u))), var_1.d);
    var var_3 = u_input.a;
    var var_4 = vec4<i32>(u_input.b, _wgslsmith_sub_i32(var_1.c, var_1.c), -(~(-47757i)), _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c, 34540i, var_2.c, -696i), vec4<i32>(-60842i, u_input.b, var_1.c, var_1.c)), _wgslsmith_mod_i32(1i, 7628i)) << (4294967295u % 32u)) | ~(-_wgslsmith_mult_vec4_i32(~vec4<i32>(20704i, -27542i, 29011i, var_2.c), abs(vec4<i32>(var_1.c, -2147483647i, 1i, u_input.a))));
    var_3 = 27139i;
    global0 = array<vec3<bool>, 15>();
    var var_5 = false;
    var_5 = all(func_1(!vec2<bool>(var_1.a.c.x, var_2.b.c.x & true), var_4.x >> (~(~var_2.a.b.x) % 32u)).a.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a.x, max((vec2<i32>(var_1.c, -2147483647i) ^ vec2<i32>(-1i, u_input.b)) | vec2<i32>(-var_4.x, func_3(var_2.a.c, var_0.a).x), select(vec2<i32>(-2147483647i, ~8899i), var_4.yz, var_2.a.c.x)));
}

