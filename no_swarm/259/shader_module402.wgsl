struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 22>;

var<private> global1: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(16695u, 37622u, 17786u, 0u), vec4<u32>(53613u, 0u, 0u, 4294967295u), vec4<u32>(0u, 4853u, 44015u, 4294967295u), vec4<u32>(1u, 0u, 23431u, 65842u), vec4<u32>(21440u, 53076u, 10412u, 88210u), vec4<u32>(0u, 45342u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 26165u, 1u), vec4<u32>(4294967295u, 32794u, 26452u, 1u), vec4<u32>(27009u, 1u, 0u, 59701u), vec4<u32>(37574u, 59231u, 16953u, 50248u), vec4<u32>(109407u, 0u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 13604u, 0u, 1629u), vec4<u32>(1u, 37995u, 4294967295u, 45007u), vec4<u32>(1u, 111438u, 23109u, 1u), vec4<u32>(49541u, 0u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, 1u, 21389u), vec4<u32>(83765u, 4294967295u, 31324u, 1u), vec4<u32>(4294967295u, 1u, 0u, 3958u), vec4<u32>(22197u, 12426u, 13449u, 1u), vec4<u32>(1u, 78404u, 35164u, 820u), vec4<u32>(4294967295u, 43512u, 1u, 1u), vec4<u32>(84998u, 58456u, 0u, 0u), vec4<u32>(0u, 42359u, 27607u, 46841u), vec4<u32>(103518u, 12826u, 31300u, 1u), vec4<u32>(0u, 36133u, 54056u, 4294967295u), vec4<u32>(43332u, 0u, 4294967295u, 4294967295u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    let var_0 = select(~max(_wgslsmith_div_u32(4294967295u, 1u), reverseBits(5946u)) <= ~u_input.a.x, true, false);
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1747f + _wgslsmith_f_op_f32(683f * -356f)), -216f))));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> i32 {
    global0 = array<vec2<bool>, 22>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-645f + _wgslsmith_f_op_f32(1306f + arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 1203f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    var_0 = vec2<f32>(564f, 1000f);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, 189f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-935f, 854f) - vec2<f32>(991f, var_0.x)))) * _wgslsmith_f_op_vec2_f32(func_3())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1829f, -1535f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_0)))))));
    var var_2 = Struct_3(vec3<i32>(_wgslsmith_div_i32(arg_1.x, ~(i32(-1i) * -45409i)), -2443i, arg_1.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) * -1335f), _wgslsmith_f_op_f32(min(1501f, _wgslsmith_f_op_f32(arg_0 * 678f))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), 1492f)), _wgslsmith_f_op_f32(-var_0.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(403f, _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(1584f - 648f))), arg_0));
    return -(-80090i >> (_wgslsmith_sub_u32(4294967295u, (u_input.a.x & 906u) & abs(4256u)) % 32u));
}

fn func_1() -> u32 {
    let var_0 = Struct_2(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(func_2(1000f, vec2<i32>(0i, -38002i)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 4363i, -51574i, 1i), vec4<i32>(51254i, 0i, 69284i, -522i))), 55786i), -_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, 31739i, 2408i)), vec3<i32>(-43839i, 12765i, 26949i)), -(~2147483647i), 40931i >> (~u_input.a.x % 32u)));
    let var_1 = Struct_3(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(var_0.a.yz | var_0.a.yy, vec2<i32>(2791i, -2147483647i & var_0.a.x)), _wgslsmith_div_i32(var_0.a.x, countOneBits(abs(var_0.a.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(-934f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(233f, 1000f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-813f))))), vec3<f32>(_wgslsmith_f_op_f32(floor(-794f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -673f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), -198f)));
    let var_2 = Struct_4(false);
    global0 = array<vec2<bool>, 22>();
    let var_3 = var_1;
    return _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(588u, 26u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)])), vec4<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x & u_input.a.x, 1u)), countOneBits(~vec4<u32>(u_input.a.x, 0u, ~1u, u_input.a.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: u32) -> vec2<f32> {
    let var_0 = Struct_3(~reverseBits(reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, 22812i, arg_0.x), vec3<i32>(arg_2, -41811i, 1i)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1494f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1146f))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2083f + -1000f), 1f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-601f)) * 1210f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-414f, -367f), _wgslsmith_f_op_f32(-683f - 1000f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-306f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-549f)))), 623f));
    global0 = array<vec2<bool>, 22>();
    global0 = array<vec2<bool>, 22>();
    var var_1 = Struct_2(max(vec4<i32>(~25230i, ~arg_0.x, var_0.a.x, arg_2), vec4<i32>(_wgslsmith_clamp_i32(1030i << (arg_3 % 32u), var_0.a.x | -46746i, _wgslsmith_mult_i32(1i, arg_2)), _wgslsmith_sub_i32(0i, _wgslsmith_div_i32(1i, arg_2)), i32(-1i) * -arg_2, ~arg_0.x | -1i)));
    var var_2 = vec4<u32>(23259u << (min(u_input.a.x, 4294967295u) % 32u), abs(arg_3), 3115u, ~countOneBits(~0u)) & ~(~countOneBits(~vec4<u32>(arg_3, 1380u, u_input.a.x, arg_3)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(-235f, -1000f));
    let var_1 = u_input.a.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(-vec2<i32>(_wgslsmith_mult_i32(0i, 5194i), _wgslsmith_clamp_i32(-16724i, 36423i, -45374i)), true & !all(vec3<bool>(true, false, false)), 1i, func_1())));
    var var_3 = vec3<i32>(min(-58827i, reverseBits(1i)), countOneBits(max(-_wgslsmith_add_i32(1i, 0i), 1i)), -2147483647i);
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x * var_2.a.x) * var_2.a.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.a.x)))), _wgslsmith_f_op_f32(trunc(var_2.a.x))));
    global1 = array<vec4<u32>, 26>();
    global1 = array<vec4<u32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a.x), var_2.a.x)), var_3.x);
}

