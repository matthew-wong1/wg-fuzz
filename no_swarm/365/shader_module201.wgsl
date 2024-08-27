struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30>;

var<private> global1: vec2<f32>;

var<private> global2: u32 = 401u;

var<private> global3: bool = false;

var<private> global4: i32 = -16187i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_3(true, 1099f);
    return Struct_2(-arg_3.x);
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> u32 {
    return abs(abs(101543u));
}

fn func_1() -> vec3<f32> {
    let var_0 = u_input.a;
    let var_1 = ~(~(-35088i));
    var var_2 = _wgslsmith_sub_vec3_i32(~reverseBits(abs(_wgslsmith_add_vec3_i32(vec3<i32>(-43285i, u_input.c, -39648i), vec3<i32>(var_1, var_0, -31938i)))), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-2147483647i >> (u_input.b.x % 32u), var_0), var_0, _wgslsmith_mult_i32(var_0, _wgslsmith_sub_i32(32418i, -1i))), ~vec3<i32>(1i, min(u_input.c, 12273i), _wgslsmith_div_i32(var_0, 2147483647i))));
    global4 = abs(_wgslsmith_clamp_i32(select(-1i, -2147483647i, true), _wgslsmith_mult_i32(var_0, -u_input.a), firstTrailingBit(~32844i)) >> ((func_3(func_2(33735i, Struct_3(true, -990f), Struct_1(vec2<bool>(true, false)), vec4<i32>(10145i, var_1, 2147483647i, var_2.x)), _wgslsmith_f_op_f32(trunc(900f))) | func_3(func_2(var_0, Struct_3(false, -1648f), Struct_1(vec2<bool>(true, true)), vec4<i32>(0i, 15761i, u_input.c, 0i)), _wgslsmith_f_op_f32(-781f + -193f))) % 32u));
    var var_3 = _wgslsmith_clamp_u32(u_input.b.x, global0[_wgslsmith_index_u32(22636u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * vec3<f32>(1000f, global1.x, -1403f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1001f, -1108f, -111f)))), vec3<f32>(_wgslsmith_f_op_f32(select(1752f, _wgslsmith_f_op_f32(f32(-1f) * -228f), true)), -824f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x + -233f), _wgslsmith_f_op_f32(global1.x * -968f))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, -341f, -212f), vec3<f32>(1000f, global1.x, global1.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -437f, -1000f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, global1.x, 843f), vec3<f32>(-678f, global1.x, global1.x))))), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<f32>, arg_3: vec2<bool>) -> vec4<u32> {
    var var_0 = Struct_1(select(vec2<bool>(arg_3.x, arg_3.x), arg_3, true));
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(f32(-1f) * -1665f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(675f * arg_2.x) - _wgslsmith_f_op_f32(-arg_1)))) == _wgslsmith_f_op_f32(-1147f - -701f), false, true);
    let var_2 = arg_0.wyx;
    global0 = array<u32, 30>();
    let var_3 = true;
    return ~vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, u_input.b.x), u_input.b.x), 30u)] | firstTrailingBit(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], 30u)])), ~global0[_wgslsmith_index_u32(abs(min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 30u)], 30u)], 4294967295u)), 30u)], _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(60470u, _wgslsmith_add_u32(78734u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = i32(-1i) * -_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, u_input.a, 22137i, 29414i), -vec4<i32>(u_input.a, u_input.c, -1i, -2147483647i), vec4<bool>(true, true, true, true)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(2147483647i, 2147483647i, -26366i, 1i), vec4<i32>(-14i, -2147483647i, u_input.a, u_input.c), true), vec4<i32>(14839i, u_input.a, u_input.a, 1i)));
    var var_0 = func_4(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec2<bool>(false, true)), true, all(vec3<bool>(false, false, false)), true)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false), _wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1230f, global1.x, global1.x)))), _wgslsmith_f_op_vec3_f32(func_1()))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, u_input.b.x >= global0[_wgslsmith_index_u32(u_input.d.x, 30u)]), !all(vec3<bool>(false, true, true))), vec2<bool>(false, global1.x != _wgslsmith_f_op_f32(f32(-1f) * -585f)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, false), true), all(vec3<bool>(true, true, true)))));
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-768f, -452f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(871f, global1.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-208f, global1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.x, 401f))) + vec2<f32>(1000f, 533f)))));
    global3 = all(vec3<bool>(any(vec2<bool>(false, true)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), !select(true, true, false))) && select(false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(939f))) > global1.x);
    let var_1 = u_input.d.zy;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_1()).xy * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, global1.x), vec2<f32>(358f, global1.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(u_input.a & u_input.c, 1i >> (1u % 32u)) >> (_wgslsmith_mult_vec2_u32(select(vec2<u32>(var_1.x, u_input.b.x), vec2<u32>(var_0.x, 40869u), true), firstLeadingBit(vec2<u32>(var_1.x, 0u))) % vec2<u32>(32u)), abs(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.c), vec2<i32>(u_input.a, -1i), vec2<i32>(-1i, 43567i)))));
}

