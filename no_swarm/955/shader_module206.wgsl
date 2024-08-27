struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<u32, 30>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<i32> {
    global1 = array<u32, 30>();
    global1 = array<u32, 30>();
    global1 = array<u32, 30>();
    let var_0 = arg_2;
    global0 = _wgslsmith_f_op_vec3_f32(select(arg_1.zyw, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_1.wyz, vec3<f32>(global0.x, -300f, global0.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1000f, -296f) * arg_1.wzy) - arg_1.wyx)), vec3<f32>(global0.x, global0.x, -1388f), true)), all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, true), vec2<bool>(true, true))) || (u_input.a > arg_2.a.x)));
    return var_0.a.xwx << (~(~(~vec3<u32>(4294967295u, 4294967295u, 23549u)) & ~_wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], 25436u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)]), vec3<u32>(22891u, 35124u, u_input.b))) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = func_3(max(countOneBits(abs(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20471u, 30u)], 30u)], u_input.b))), abs(~(~arg_2.zx))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, global0.x, -2189f, -1369f), vec4<f32>(615f, global0.x, -233f, global0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -765f, global0.x, global0.x) + vec4<f32>(-1199f, global0.x, -793f, 1029f)))))), arg_0);
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(777f)), _wgslsmith_f_op_f32(floor(global0.x)))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))))));
    let var_1 = Struct_1(vec4<i32>(var_0.x, var_0.x, u_input.a, var_0.x));
    let var_2 = 1u;
    return arg_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = arg_1;
    let var_1 = -select(~reverseBits(~16512i), ~(~(~(-1i))), arg_0.x);
    var var_2 = _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(25182u), 30u)], 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)]);
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -736f, 1685f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1361f, 2424f, -510f) + vec3<f32>(global0.x, 937f, global0.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 732f, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(347f, 1335f, 131f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-338f, global0.x, -104f)))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, -1975f)), _wgslsmith_f_op_f32(f32(-1f) * -929f), _wgslsmith_f_op_f32(select(-593f, 1890f, true)))))));
    let var_3 = func_2(Struct_1(var_0.a), ~(~abs(_wgslsmith_mod_i32(-2147483647i, 15028i))), ~reverseBits(~abs(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], 15216u, u_input.c))), vec2<bool>(any(select(vec2<bool>(false, false), arg_0.zy, select(arg_0.xz, arg_0.zy, true))), false));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-278f, global0.x)) + global0.x), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-478f)) + 668f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, -488f), vec3<f32>(global0.x, 1380f, 605f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2057f, 481f, -107f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, global0.x))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, global0.x, 2738f))), vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(-1000f, -1050f, global0.x), false)), vec3<f32>(-345f, 225f, 1958f)))))));
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, -1207f), -236f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1544f, -952f, 1923f)), _wgslsmith_f_op_vec3_f32(func_4(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), func_2(Struct_1(vec4<i32>(-1i, u_input.a, 23365i, u_input.a)), 2147483647i, vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 30u)], 30u)], global1[_wgslsmith_index_u32(0u, 30u)], 1u), vec2<bool>(true, false))))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1089f), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -461f))))));
    let var_0 = true;
    let var_1 = _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(countOneBits(select(vec2<u32>(54172u, global1[_wgslsmith_index_u32(25692u, 30u)]), vec2<u32>(global1[_wgslsmith_index_u32(34690u, 30u)], 0u), vec2<bool>(var_0, var_0))), ~(~vec2<u32>(17115u, global1[_wgslsmith_index_u32(11098u, 30u)]))), vec2<u32>(max(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(36416u, 30u)], 8595u, 4294967295u), vec4<u32>(26635u, 1u, global1[_wgslsmith_index_u32(u_input.c, 30u)], u_input.b), true), vec4<u32>(51999u, u_input.c, 5540u, 1u)), _wgslsmith_mod_u32(1u, 0u ^ global1[_wgslsmith_index_u32(43418u, 30u)])), ~(~u_input.b)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, _wgslsmith_f_op_f32(459f + global0.x), -1170f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1870f, global0.x, 269f), vec3<f32>(1863f, global0.x, global0.x)))), (u_input.a > 28451i) || false)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(vec3<bool>(var_0, var_0, var_0), Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)))))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(-global0.x), -1750f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1277f, -1121f, -490f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -589f), -1323f, global0.x))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(select(abs(u_input.a), u_input.a, (func_1() || func_1()) != true), firstTrailingBit(_wgslsmith_add_i32(-u_input.a, 14508i) >> (_wgslsmith_mod_u32(1u, 34742u) % 32u)), ~(~(-2147483647i)) | _wgslsmith_mult_i32(-12239i, -(u_input.a | u_input.a)));
    var var_1 = select(!vec3<bool>(true, _wgslsmith_f_op_f32(step(global0.x, 1037f)) <= 363f, true), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), select(true, !(113f > global0.x), false), true));
    global1 = array<u32, 30>();
    let var_2 = global0.x;
    global1 = array<u32, 30>();
    let var_3 = _wgslsmith_add_u32(~(_wgslsmith_sub_u32(u_input.b, 1u) & _wgslsmith_dot_vec3_u32(vec3<u32>(26979u, global1[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4092u, 30u)], 30u)], 30u)], 30u)], 30u)], 30u)]), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(u_input.b, 30u)], 34425u))) & ((u_input.c | ~u_input.b) ^ u_input.b), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(32690u, global1[_wgslsmith_index_u32(u_input.c, 30u)], u_input.c), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(u_input.b, 30u)], u_input.b), vec3<u32>(18687u, 0u, 41368u))) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(85611u, 9588u, 137527u), vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(1u, 30u)], u_input.c)), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(var_3, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(var_3, 30u)], 1u), firstTrailingBit(vec3<u32>(u_input.c, 14930u, 29068u))), firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3, 30u)], 30u)]) ^ ~u_input.c, 1u)), ~12380u, _wgslsmith_mult_vec2_i32(vec2<i32>(-_wgslsmith_mod_i32(u_input.a, var_0.x), var_0.x), _wgslsmith_clamp_vec2_i32(abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -50548i), vec2<i32>(var_0.x, var_0.x))), vec2<i32>(7256i, u_input.a) | vec2<i32>(u_input.a, var_0.x), -select(vec2<i32>(u_input.a, u_input.a), var_0.yy, var_1.x))));
}

