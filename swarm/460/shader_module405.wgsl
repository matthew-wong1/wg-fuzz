struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(19388u, 0u, 1u), vec3<u32>(4294967295u, 48849u, 11090u), vec3<u32>(18999u, 0u, 1u), vec3<u32>(47662u, 32168u, 37737u), vec3<u32>(4294967295u, 8439u, 1u), vec3<u32>(129293u, 1u, 73543u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(15167u, 14272u, 41870u), vec3<u32>(1u, 76319u, 1u), vec3<u32>(59786u, 32704u, 4294967295u), vec3<u32>(1u, 29045u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 22762u, 18780u), vec3<u32>(4294967295u, 56468u, 55366u), vec3<u32>(0u, 4294967295u, 83174u), vec3<u32>(1u, 0u, 53633u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(0u, 51397u, 1u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> f32 {
    global0 = array<vec3<u32>, 18>();
    global0 = array<vec3<u32>, 18>();
    var var_0 = any(!vec2<bool>(arg_1.c.x, _wgslsmith_f_op_f32(step(arg_0, -1196f)) == _wgslsmith_f_op_f32(arg_0 + arg_2)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(2260f, 2209f, true)), _wgslsmith_f_op_f32(select(-394f, arg_2, arg_1.c.x))));
    let var_2 = var_1.x;
    return -1625f;
}

fn func_3() -> vec2<bool> {
    let var_0 = -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(42020i, u_input.a.x, 2147483647i, u_input.a.x), -vec4<i32>(u_input.a.x, 2147483647i, 0i, u_input.a.x)), vec4<i32>(u_input.a.x, select(-2147483647i, 19160i, true), 1i, 1i)), ~u_input.a.x);
    return vec2<bool>(true == ((1f > _wgslsmith_f_op_f32(round(-152f))) == any(vec4<bool>(false, true, false, true))), !(-1070f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-269f)) * _wgslsmith_f_op_f32(floor(-1933f)))));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(reverseBits(~u_input.a));
    var var_1 = Struct_1(!vec3<bool>(_wgslsmith_f_op_f32(-1810f - 849f) == _wgslsmith_f_op_f32(func_2(-486f, Struct_1(vec3<bool>(true, false, false), vec4<i32>(46806i, u_input.a.x, 1i, 0i), vec2<bool>(true, false)), 1745f)), all(vec4<bool>(true, true, true, true)), false), countOneBits(countOneBits(-vec4<i32>(var_0.a.x, u_input.a.x, -1i, -43461i) >> (~vec4<u32>(15517u, 80432u, u_input.b, 0u) % vec4<u32>(32u)))), select(func_3(), vec2<bool>(true, true), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), true)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(724f, -1569f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(259f - -875f), _wgslsmith_div_f32(1162f, -116f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(774f, _wgslsmith_f_op_f32(f32(-1f) * -641f))))) - _wgslsmith_f_op_f32(-1825f + _wgslsmith_f_op_f32(1f * 157f)));
    let var_3 = Struct_1(select(select(var_1.a, !vec3<bool>(true, var_1.a.x, var_1.c.x), all(vec2<bool>(var_1.a.x, var_1.a.x))), var_1.a, !vec3<bool>(var_1.b.x > -13080i, select(false, true, false), var_1.c.x)), _wgslsmith_add_vec4_i32(-var_1.b, reverseBits(var_1.b)), vec2<bool>(true, (_wgslsmith_f_op_f32(max(-485f, var_2)) != var_2) != !var_1.c.x));
    let var_4 = var_3;
    return Struct_3(max(var_0.a, -countOneBits(u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(_wgslsmith_sub_i32(abs(-u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.xy) & _wgslsmith_mult_i32(-1i, 30434i)), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -954i), -vec4<i32>(-48578i, 0i, 2147483647i, 2147483647i), vec4<bool>(true, true, true, true)), vec4<i32>(min(59750i, -5053i), _wgslsmith_sub_i32(u_input.a.x, -16614i), ~(-1i), abs(u_input.a.x)))));
    global0 = array<vec3<u32>, 18>();
    global0 = array<vec3<u32>, 18>();
    global0 = array<vec3<u32>, 18>();
    var var_1 = Struct_3(vec3<i32>(-1i, var_0, ~abs(2147483647i)));
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i), -431f, vec2<i32>(-(61570i ^ _wgslsmith_clamp_i32(-2147483647i, u_input.a.x, -13267i)), countOneBits(i32(-1i) * -41639i)), 1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_div_vec4_f32(vec4<f32>(-822f, -181f, 1805f, 1851f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-515f, 1522f, -720f, -440f), vec4<f32>(-396f, -1015f, 240f, -405f), vec4<bool>(true, false, false, false))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-373f, -222f, -1225f, 1416f), vec4<f32>(1434f, -1000f, -552f, -1002f), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(353f, 1460f, -866f, 102f)))), true))));
}

