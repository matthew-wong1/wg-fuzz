struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<u32>(17291u, 4294967295u)), Struct_1(vec2<u32>(25479u, 4294967295u)), Struct_1(vec2<u32>(35455u, 37026u)), Struct_1(vec2<u32>(18419u, 43508u)), Struct_1(vec2<u32>(1u, 10959u)), Struct_1(vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(0u, 62324u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(66194u, 100727u)), Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(1u, 29797u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(82736u, 27292u)), Struct_1(vec2<u32>(21609u, 16848u)), Struct_1(vec2<u32>(4294967295u, 32947u)), Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(25331u, 7393u)), Struct_1(vec2<u32>(3980u, 0u)), Struct_1(vec2<u32>(16922u, 4294967295u)), Struct_1(vec2<u32>(17997u, 4294967295u)), Struct_1(vec2<u32>(60301u, 23486u)), Struct_1(vec2<u32>(17905u, 26095u)), Struct_1(vec2<u32>(4294967295u, 4245u)));

var<private> global1: i32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: vec4<i32>) -> bool {
    var var_0 = ~vec3<u32>(arg_2.x, 1u, 41126u);
    var var_1 = arg_1.x;
    let var_2 = vec4<bool>(true, true, true, true);
    return var_2.x;
}

fn func_3(arg_0: u32) -> vec3<f32> {
    var var_0 = Struct_2(vec3<bool>(select(true, true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(382f)))) >= 659f, (-u_input.d | abs(u_input.d)) >= -1i), global0[_wgslsmith_index_u32(arg_0 >> (arg_0 % 32u), 27u)], (_wgslsmith_clamp_i32(u_input.c.x, max(u_input.b.x, u_input.b.x), ~1665i) | _wgslsmith_add_i32(25715i, _wgslsmith_div_i32(u_input.b.x, 2147483647i))) > -61799i, false);
    let var_1 = vec2<u32>(~(~countOneBits(4294967295u)), 0u & arg_0);
    global1 = u_input.c.x ^ u_input.d;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-102f, _wgslsmith_f_op_f32(step(-1932f, -115f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-364f, -1253f, false))), -916f) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(244f, _wgslsmith_f_op_f32(f32(-1f) * -303f), _wgslsmith_f_op_f32(select(-159f, 800f, true)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(-595f, -381f)), _wgslsmith_div_f32(-1358f, 641f), _wgslsmith_f_op_f32(f32(-1f) * -1160f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(594f, -464f, arg_0.x, 1000f) + vec4<f32>(489f, arg_0.x, 1000f, 808f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, -1404f, -183f, arg_0.x)), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1188f, 1386f, arg_0.x, 343f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 207f, -2202f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 224f, arg_0.x, arg_0.x) + vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), select(select(vec4<bool>(arg_1, true, false, true), vec4<bool>(false, arg_1, true, true), true), select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(false, true, arg_1, false), vec4<bool>(false, arg_1, arg_1, arg_1)), !vec4<bool>(arg_1, arg_1, arg_1, arg_1)))), select(!select(vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(true, false, arg_1, arg_1), arg_1), !vec4<bool>(false, true, true, arg_1), false))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_vec3_f32(func_3(0u)).x, arg_0.x, -324f)))));
    var var_1 = Struct_2(!select(vec3<bool>(true, true, true), !select(vec3<bool>(arg_1, true, false), vec3<bool>(false, true, false), arg_1), !select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, true, false))), Struct_1(~vec2<u32>(1u, _wgslsmith_div_u32(24179u, 1u))), true & select(true, arg_1, arg_1), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1149f, _wgslsmith_f_op_f32(select(1337f, arg_0.x, true))))) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + -343f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))))));
    global0 = array<Struct_1, 27>();
    let var_2 = vec4<bool>(true, true, true, true);
    var var_3 = abs(~(~vec3<u32>(24897u, 86027u, 141587u)) ^ (select(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_1.b.a.x, 21988u), vec3<u32>(var_1.b.a.x, 28228u, var_1.b.a.x)), select(vec3<u32>(4396u, var_1.b.a.x, 0u), vec3<u32>(var_1.b.a.x, var_1.b.a.x, var_1.b.a.x), arg_1), false) & vec3<u32>(var_1.b.a.x, var_1.b.a.x, ~var_1.b.a.x)));
    return vec4<f32>(1128f, arg_0.x, 102f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(round(2127f)))))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(1u)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, 2630f, -263f)))))), arg_1));
    global1 = u_input.a.x;
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0.b.a.x, arg_0.b.a.x, 104694u) << (vec3<u32>(arg_0.b.a.x, 26441u, 12490u) % vec3<u32>(32u)), reverseBits(reverseBits(vec3<u32>(358u, 2834u, arg_0.b.a.x)))), reverseBits(abs(~vec3<u32>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x)))) | reverseBits(0u);
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_4(var_0.wxz, true && any(vec4<bool>(arg_0.a.x, false, false, arg_0.a.x)))).zwz), -1i, u_input.a.wyw);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstLeadingBit(u_input.a.x);
    let var_0 = 430f;
    global0 = array<Struct_1, 27>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, -1000f), vec2<f32>(-1238f, var_0))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(417f, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(248f, var_0))))));
    let var_2 = true | ((true & any(vec3<bool>(true, true, false))) | true);
    let var_3 = func_2(Struct_2(select(vec3<bool>(true, func_1(30225u, vec4<f32>(var_0, -1337f, 351f, var_1.x), vec3<u32>(0u, 60815u, 28005u), vec4<i32>(-6405i, 0i, u_input.a.x, 347i)), var_2), select(!vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, true, var_2), vec3<bool>(false, true, false)), true), Struct_1(vec2<u32>(1u, 1u)), false, false), (true != (var_2 != !var_2)) && !((var_2 == false) || true), -937f);
    var var_4 = var_2;
    var var_5 = vec2<i32>(u_input.d, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, ~_wgslsmith_div_u32(~(~var_3), abs(_wgslsmith_mult_u32(18275u, var_3))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1, var_1) * _wgslsmith_f_op_vec2_f32(var_1 * var_1)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1755f)), vec2<f32>(-577f, var_1.x), select(vec2<bool>(false, var_2), vec2<bool>(true, var_2), true))))) * var_1), 0u, abs(var_5.x));
}

