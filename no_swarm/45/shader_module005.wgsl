struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(3548u, 4294967295u), vec2<u32>(40204u, 19161u), vec2<u32>(0u, 38847u), vec2<u32>(1u, 56052u), vec2<u32>(76729u, 1399u), vec2<u32>(7897u, 100316u), vec2<u32>(1u, 24902u), vec2<u32>(4294967295u, 9555u), vec2<u32>(5319u, 0u), vec2<u32>(40770u, 4294967295u), vec2<u32>(59070u, 1u), vec2<u32>(1u, 1u), vec2<u32>(22853u, 1u), vec2<u32>(52763u, 0u), vec2<u32>(4294967295u, 16680u), vec2<u32>(20416u, 56850u), vec2<u32>(77483u, 0u), vec2<u32>(33436u, 0u), vec2<u32>(66839u, 77885u), vec2<u32>(97476u, 0u), vec2<u32>(57311u, 78573u), vec2<u32>(36869u, 35897u), vec2<u32>(1838u, 37771u), vec2<u32>(1u, 25148u), vec2<u32>(4294967295u, 8518u), vec2<u32>(49768u, 0u), vec2<u32>(4294967295u, 36701u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<bool>) -> bool {
    let var_0 = u_input.a;
    return any(!arg_2) | all(vec4<bool>(arg_0.b || arg_0.b, true, arg_0.b, arg_0.b));
}

fn func_2() -> vec4<bool> {
    global0 = array<vec2<u32>, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-779f, 765f, 567f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1398f), -918f, 234f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1567f, 395f, 272f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(110f, -1183f, 165f) + vec3<f32>(1151f, -1796f, -2310f))))))));
    let var_1 = Struct_2(vec2<bool>(any(vec2<bool>(all(vec4<bool>(false, true, true, false)), true)), all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), _wgslsmith_div_u32(1u, ~1u), 64078i);
    var var_2 = _wgslsmith_dot_vec2_u32(~global0[_wgslsmith_index_u32(~var_1.b, 27u)], ~select(vec2<u32>(var_1.b, ~var_1.b), ~(vec2<u32>(0u, var_1.b) << (vec2<u32>(0u, var_1.b) % vec2<u32>(32u))), vec2<bool>(any(vec3<bool>(var_1.a.x, false, var_1.a.x)), u_input.a < 2147483647i)));
    let var_3 = var_1.b;
    return vec4<bool>(any(var_1.a), true, false, !(!func_3(Struct_3(vec3<f32>(-1348f, -1025f, var_0.x), var_1.a.x), Struct_3(vec3<f32>(-793f, var_0.x, -647f), true), vec3<bool>(var_1.a.x, false, false))));
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1435f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1170f) + _wgslsmith_f_op_f32(f32(-1f) * -598f)), _wgslsmith_f_op_f32(342f * _wgslsmith_f_op_f32(-238f * 176f))))));
    global0 = array<vec2<u32>, 27>();
    return select(func_2(), !(!vec4<bool>(true, true, true, func_3(Struct_3(var_0, false), Struct_3(vec3<f32>(1080f, 935f, var_0.x), false), vec3<bool>(true, false, true)))), !func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true), func_1())), !any(vec3<bool>(true, true, true)) || true), firstTrailingBit(~61879u), -_wgslsmith_sub_i32(u_input.a, (u_input.a & u_input.a) | ~u_input.a));
    let var_1 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-479f, -639f, 380f), vec3<f32>(-170f, -1369f, 404f), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-774f, 325f, 379f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-700f - 1123f), -990f, _wgslsmith_f_op_f32(452f + 1000f)))), true);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * 966f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-627f))), -315f)), _wgslsmith_f_op_f32(-var_1.a.x) == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_1.a.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -160f))))), ~52695u << (var_0.b % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -394f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.x, 766f))) - _wgslsmith_f_op_f32(abs(var_1.a.x)))), 4783u);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -113f);
    let var_4 = Struct_3(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.x))), 852f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))), false);
    var_0 = Struct_2(vec2<bool>(!(!var_4.b && false), true), ~1u, u_input.a);
    global0 = array<vec2<u32>, 27>();
    var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_4.a.x), 1368f)), _wgslsmith_f_op_f32(-var_4.a.x), 1260f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.d, _wgslsmith_f_op_f32(-var_4.a.x)) * var_1.a.x)), ~abs(-1i & var_0.c) != _wgslsmith_dot_vec4_i32(select(_wgslsmith_mult_vec4_i32(vec4<i32>(-31853i, -17584i, 2147483647i, var_0.c), vec4<i32>(u_input.a, -7929i, var_0.c, var_0.c)), reverseBits(vec4<i32>(-1i, 0i, u_input.a, 2147483647i)), all(vec4<bool>(var_0.a.x, false, var_0.a.x, var_2.b))), ~(~vec4<i32>(var_0.c, -3777i, 2147483647i, u_input.a))), ~var_2.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(615f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1138f - var_1.a.x) + 2055f))), _wgslsmith_add_u32(0u, var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(616f - var_4.a.x), var_2.a.x)));
}

