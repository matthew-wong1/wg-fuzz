struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(-58520i), Struct_3(-1i), Struct_3(-33853i), Struct_3(0i), Struct_3(66793i), Struct_3(4303i), Struct_3(54184i), Struct_3(43552i), Struct_3(0i), Struct_3(5592i), Struct_3(2147483647i), Struct_3(-5709i), Struct_3(-48161i), Struct_3(2147483647i), Struct_3(47757i), Struct_3(-1i), Struct_3(-273i), Struct_3(-31221i), Struct_3(-1i), Struct_3(0i), Struct_3(2147483647i), Struct_3(1i), Struct_3(62707i), Struct_3(1i), Struct_3(i32(-2147483648)), Struct_3(i32(-2147483648)), Struct_3(1i), Struct_3(17665i));

var<private> global1: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(1u, 20016u, 54354u), vec3<u32>(54937u, 29875u, 42992u), vec3<u32>(0u, 77997u, 1u), vec3<u32>(4294967295u, 15940u, 4294967295u), vec3<u32>(39211u, 0u, 35604u), vec3<u32>(15371u, 15912u, 43662u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 59810u, 47190u), vec3<u32>(48927u, 0u, 4294967295u), vec3<u32>(4294967295u, 28025u, 1u), vec3<u32>(4294967295u, 24465u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(31648u, 92397u, 4294967295u), vec3<u32>(4294967295u, 0u, 58091u), vec3<u32>(16590u, 4294967295u, 0u), vec3<u32>(0u, 93790u, 77860u), vec3<u32>(4294967295u, 22144u, 1u), vec3<u32>(0u, 47974u, 1881u), vec3<u32>(90409u, 0u, 1u), vec3<u32>(91505u, 41882u, 43772u), vec3<u32>(1u, 36976u, 35510u), vec3<u32>(0u, 27859u, 4294967295u), vec3<u32>(1u, 4294967295u, 6017u), vec3<u32>(0u, 4520u, 0u), vec3<u32>(4294967295u, 55853u, 57445u), vec3<u32>(33551u, 39130u, 38169u), vec3<u32>(60500u, 1u, 0u), vec3<u32>(55973u, 4294967295u, 19131u), vec3<u32>(73723u, 34525u, 4294967295u));

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-561f, -495f) * vec2<f32>(-1910f, 1198f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(349f, 1172f), vec2<f32>(933f, -1000f), vec2<bool>(false, false)))), vec2<f32>(_wgslsmith_div_f32(-1032f, -319f), 1f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(565f, 526f)))) + vec2<f32>(1531f, _wgslsmith_f_op_f32(max(-1722f, 2171f))))));
    var var_1 = 1u;
    global1 = array<vec3<u32>, 29>();
    global0 = array<Struct_3, 28>();
    var var_2 = -1i < u_input.a;
    return Struct_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.a.x))))))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    return func_2(1010i);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: u32) -> Struct_3 {
    var var_0 = arg_0;
    let var_1 = abs(_wgslsmith_add_vec2_u32(~(~u_input.b), max(vec2<u32>(1u, ~4294967295u), vec2<u32>(abs(31055u), countOneBits(72887u)))));
    var var_2 = func_2(reverseBits(19753i));
    var_2 = func_3(arg_0, u_input.a | ~(-27618i), global0[_wgslsmith_index_u32(44545u, 28u)], -select(0i, -2147483647i, arg_2.x));
    let var_3 = arg_0;
    return Struct_3(u_input.a);
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = func_4(func_3(func_2(abs(u_input.a)), _wgslsmith_mod_i32(0i, -(~(-2147483647i))), global0[_wgslsmith_index_u32(1u, 28u)], abs(-8023i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-817f + arg_0.a), -183f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1294f, -1000f)))), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.a, -1339f))) + vec2<f32>(arg_0.a, 896f)))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, true, true)), vec2<bool>(false, true), vec2<bool>(false, false)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), !(!all(vec3<bool>(true, false, false)))), ~(~(~1u) << (u_input.b.x % 32u)));
    global0 = array<Struct_3, 28>();
    var var_1 = -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -8825i), _wgslsmith_div_vec2_i32(min(firstLeadingBit(vec2<i32>(-1i, 2147483647i)), abs(vec2<i32>(var_0.a, var_0.a))), max(vec2<i32>(0i, var_0.a), vec2<i32>(1i, 1i))));
    var_1 = -37417i;
    var var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1759f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1719f, 1000f)), -1888f)))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = reverseBits(reverseBits(func_1(Struct_1(_wgslsmith_f_op_f32(sign(238f))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(495f, 896f), vec2<f32>(-1000f, 275f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-537f, 194f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1735f, -1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(994f, 683f))), true)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = Struct_1(var_1.x);
    var var_3 = reverseBits(vec4<i32>(_wgslsmith_mod_i32(0i, u_input.a), u_input.a, 30087i, 56774i >> ((~2428u >> ((0u << (u_input.b.x % 32u)) % 32u)) % 32u)));
    let var_4 = ~u_input.b;
    var var_5 = ~func_4(func_2(var_3.x), var_1.zx, vec2<bool>(true, any(vec3<bool>(false, true, true))), ~_wgslsmith_sub_u32(var_4.x, u_input.b.x)).a >> ((u_input.b.x ^ (max(u_input.b.x, 61567u) ^ ~_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(0u, 29u)], vec3<u32>(4294967295u, 10413u, var_4.x)))) % 32u);
    let var_6 = _wgslsmith_mod_i32(-2147483647i, u_input.a);
    let var_7 = _wgslsmith_div_i32(u_input.a, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(reverseBits(15937i), func_4(Struct_2(vec2<f32>(var_1.x, 1000f)), var_1.xx, vec2<bool>(true, true), var_4.x).a, -var_6), 0i)) >= u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, select(~u_input.b.x, countOneBits(u_input.b.x), true)), 55044u, ~(~1u), _wgslsmith_add_u32(1u, 0u)), 38793i);
}

