struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 23>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = abs(firstTrailingBit(u_input.c ^ ~u_input.c));
    global1 = !global2.a;
    var var_1 = Struct_4(~reverseBits(vec4<u32>(arg_0.a.x, var_0.x, 96015u, u_input.a)) >> (u_input.c % vec4<u32>(32u)), ~(~60974u) | countOneBits(u_input.c.x), global1.x, vec3<i32>(abs(-min(1i, 0i)), 193i, -10291i));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(614f - arg_0.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.d.x, 1717f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2176f, -309f)))) * -308f));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f)))), global2.d.x) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + -560f) + _wgslsmith_div_f32(-262f, -920f))), arg_0.b.x));
    return countOneBits(var_1.a.zy ^ vec2<u32>(1u, 32060u));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_2 {
    let var_0 = min(min((func_3(Struct_3(u_input.b.yw, global2.e.www)) << (max(u_input.b.xx, u_input.c.xw) % vec2<u32>(32u))) & vec2<u32>(~u_input.c.x, ~u_input.a), vec2<u32>(~u_input.c.x, 77027u) >> (firstLeadingBit(u_input.b.yy ^ u_input.b.ww) % vec2<u32>(32u))), select(vec2<u32>(53502u, _wgslsmith_mult_u32(1u, abs(79300u))), vec2<u32>(global2.c, u_input.a), global2.a));
    return Struct_2(!select(global2.a.x, global2.b, true), 4294967295u);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_4) -> vec4<u32> {
    var var_0 = Struct_2(true, 0u);
    var var_1 = all(global2.a);
    var_0 = func_2(-5561i ^ firstTrailingBit(_wgslsmith_add_i32(~(-11914i), arg_3.d.x & arg_3.d.x)), global2.e.x);
    let var_2 = Struct_4(arg_3.a, ~(~var_0.b), _wgslsmith_dot_vec3_u32(max(u_input.b.wzz, vec3<u32>(var_0.b, var_0.b, 1u)), ~vec3<u32>(arg_3.a.x, 0u, 4294967295u)) < ~var_0.b, arg_3.d);
    global1 = !vec2<bool>(!(!(!arg_3.c)), global2.b);
    return _wgslsmith_mod_vec4_u32(vec4<u32>(abs(arg_1.x), arg_1.x, var_0.b, _wgslsmith_mult_u32(global2.c, 1u)) | ~(vec4<u32>(14867u, arg_3.b, arg_3.b, 62288u) >> (u_input.b % vec4<u32>(32u))), reverseBits(vec4<u32>(1u, 10053u, 56856u, global2.c))) ^ max(u_input.c, vec4<u32>(~1u, 0u >> (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(33032u, global2.c, arg_3.b, arg_0.x), var_2.a), ~4294967295u));
}

fn func_4(arg_0: vec4<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d.x, global2.e.x)) - _wgslsmith_f_op_vec2_f32(max(global2.e.yz, vec2<f32>(global2.d.x, global2.e.x)))) - global2.d)));
    var var_1 = Struct_3(~firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(6822u, 4294967295u), u_input.b.wz)) << (select(vec2<u32>(arg_0.x, _wgslsmith_add_u32(global2.c, arg_0.x)), vec2<u32>(reverseBits(4294967295u), 93509u), true) % vec2<u32>(32u)), global2.e.yxy);
    let var_2 = ((_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), firstTrailingBit(vec3<i32>(0i, 34204i, -3829i))) << (global0[_wgslsmith_index_u32(global2.c, 23u)] % vec3<u32>(32u))) | min((vec3<i32>(-2147483647i, 0i, 35700i) >> (arg_0.wyx % vec3<u32>(32u))) & select(vec3<i32>(-25881i, 9534i, 2147483647i), vec3<i32>(15877i, 54463i, -35703i), global1.x), vec3<i32>(1i, ~(-2726i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -20633i), vec2<i32>(-2147483647i, -52129i))))) & vec3<i32>(1i, 1i, 1i);
    global1 = !(!select(select(!global2.a, vec2<bool>(true, global2.b), vec2<bool>(global1.x, global2.a.x)), vec2<bool>(true, true), global2.a));
    var var_3 = global2.e.yzz;
    return select(vec3<bool>(global1.x, global2.a.x, true), vec3<bool>(global2.b, false, global2.b), all(select(vec3<bool>(false, false, global2.b), !vec3<bool>(false, false, global2.b), vec3<bool>(global2.b, false, global2.a.x))) == false);
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: vec2<bool>) -> Struct_4 {
    global1 = vec2<bool>(_wgslsmith_mod_u32(80691u, func_1(_wgslsmith_mod_vec3_u32(u_input.b.xwx, global0[_wgslsmith_index_u32(u_input.a, 23u)]), _wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(global2.c, 23u)], vec3<u32>(28939u, u_input.a, u_input.b.x)), u_input.a > global2.c, Struct_4(u_input.b, u_input.b.x, global1.x, arg_1)).x) < _wgslsmith_sub_u32(19443u, _wgslsmith_clamp_u32(~u_input.c.x, max(1u, u_input.a), ~u_input.a)), global2.b);
    global1 = arg_3;
    var var_0 = Struct_1(select(vec2<bool>(global2.b, false), vec2<bool>(any(vec3<bool>(true, true, true)), !all(arg_2)), arg_3), arg_2.x, abs(20690u), _wgslsmith_f_op_vec2_f32(-global2.d), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-116f, global2.d.x, 889f, global2.d.x)))) + vec4<f32>(arg_0, 711f, _wgslsmith_f_op_f32(global2.e.x + arg_0), _wgslsmith_f_op_f32(trunc(1209f)))), vec4<f32>(arg_0, arg_0, -496f, _wgslsmith_f_op_f32(trunc(arg_0))))));
    var var_1 = Struct_3(vec2<u32>(_wgslsmith_mod_u32(var_0.c, min(0u, 0u)), _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(global2.c, 23u)], global0[_wgslsmith_index_u32(global2.c, 23u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-444f, arg_0, -179f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.e.xzy))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.e.yyx, _wgslsmith_div_vec3_f32(vec3<f32>(331f, -1192f, arg_0), vec3<f32>(var_0.e.x, 284f, -311f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1338f, 835f, 1772f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.e.x, var_0.e.x, arg_0) * var_0.e.yxy), global2.b)))));
    var var_2 = (vec4<i32>(-abs(36028i), -(~arg_1.x), -11239i | (56776i | arg_1.x), _wgslsmith_mod_i32(-23784i, 2147483647i)) >> (_wgslsmith_add_vec4_u32((vec4<u32>(u_input.a, var_1.a.x, 1u, 4294967295u) << (u_input.c % vec4<u32>(32u))) | ~u_input.b, firstLeadingBit(vec4<u32>(var_1.a.x, global2.c, 0u, u_input.c.x) & u_input.c)) % vec4<u32>(32u))) >> (~vec4<u32>(0u, ~var_0.c, 538u, select(_wgslsmith_div_u32(26309u, var_0.c), var_0.c, func_2(arg_1.x, -396f).a)) % vec4<u32>(32u));
    return Struct_4(vec4<u32>(_wgslsmith_div_u32(21956u, 4294967295u), 1u, 51736u, _wgslsmith_dot_vec3_u32(max(u_input.c.zzx, vec3<u32>(0u, var_0.c, u_input.b.x)), ~global0[_wgslsmith_index_u32(u_input.a, 23u)])) >> (~(~vec4<u32>(62126u, var_0.c, var_1.a.x, global2.c)) % vec4<u32>(32u)), global2.c, countOneBits(u_input.c.x) == _wgslsmith_clamp_u32(5536u, reverseBits(var_1.a.x) | 4294967295u, u_input.b.x), vec3<i32>(countOneBits(var_2.x), -max(1i, var_2.x), 1i | max(var_2.x, 2147483647i)) << (vec3<u32>(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_1.a.x, 4294967295u)), vec2<u32>(4294967295u, u_input.b.x)), max(17984u, u_input.c.x), 13031u) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 23>();
    global0 = array<vec3<u32>, 23>();
    let var_0 = func_5(_wgslsmith_f_op_f32(-global2.e.x), select(_wgslsmith_mult_vec3_i32(vec3<i32>(max(-2147483647i, 30917i), _wgslsmith_div_i32(-6817i, 51098i), 1i), vec3<i32>(59940i, _wgslsmith_dot_vec2_i32(vec2<i32>(6864i, 9035i), vec2<i32>(-1i, 21007i)), 1i)), firstTrailingBit(vec3<i32>(-56633i, -378i >> (global2.c % 32u), _wgslsmith_add_i32(0i, 19464i))), func_4(func_1(~global0[_wgslsmith_index_u32(global2.c, 23u)], vec3<u32>(73452u, 12607u, 1u), any(vec2<bool>(false, false)), Struct_4(vec4<u32>(63163u, 12536u, 4294967295u, 1u), u_input.b.x, global1.x, vec3<i32>(-1i, -27676i, 37035i))))), select(vec4<bool>(true, true, true, false), vec4<bool>(true, u_input.b.x >= u_input.c.x, global1.x, false), !(!vec4<bool>(global2.b, false, true, false))), vec2<bool>(false, false));
    var var_1 = select(select(!(!vec4<bool>(var_0.c, true, false, global1.x)), select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(global2.a.x, global2.a.x, global1.x, global1.x), vec4<bool>(var_0.c, false, global2.a.x, true), true), var_0.c && global1.x), select(select(vec4<bool>(true, false, global2.a.x, true), vec4<bool>(global1.x, true, false, false), vec4<bool>(false, true, global2.a.x, global2.a.x)), vec4<bool>(global1.x, false, false, false), false), true), func_4(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, var_0.a.x, u_input.b.x, global2.c), vec4<u32>(1u, 23854u, 13963u, var_0.a.x))).x), select(!select(vec4<bool>(var_0.c, true, false, var_0.c), select(vec4<bool>(false, true, true, true), vec4<bool>(true, var_0.c, var_0.c, var_0.c), true), select(vec4<bool>(false, var_0.c, false, var_0.c), vec4<bool>(true, false, true, true), var_0.c)), vec4<bool>(!(37939u >= u_input.b.x), var_0.b == var_0.a.x, true, !(-1106f == global2.d.x)), select(!vec4<bool>(true, var_0.c, global1.x, global2.b), vec4<bool>(true, var_0.c, true, all(vec4<bool>(true, true, var_0.c, false))), vec4<bool>(global1.x, global2.b && false, var_0.c, 2300f >= global2.e.x))), true);
    var var_2 = (i32(-1i) * -2147483647i) >> (~(4294967295u | (51391u & u_input.c.x)) % 32u);
    let var_3 = global2.d;
    var_1 = !(!select(vec4<bool>(true, !var_1.x, func_4(var_0.a).x, true), vec4<bool>(var_3.x != -862f, false, !global1.x, true), true));
    global1 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x & 34214i, -55039i);
}

