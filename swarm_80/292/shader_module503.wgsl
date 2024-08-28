struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -136f;

var<private> global1: array<f32, 6> = array<f32, 6>(-1985f, -1000f, 198f, -1137f, 120f, -453f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> u32 {
    return ~25821u;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> vec4<bool> {
    var var_0 = Struct_1(~firstLeadingBit(arg_2.a));
    var var_1 = arg_2;
    var var_2 = vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_3, func_3(_wgslsmith_mod_i32(-2147483647i, 1i), Struct_1(-43016i), ~vec3<i32>(var_1.a, -5660i, u_input.b), -117f)), 6u)], global1[_wgslsmith_index_u32(33431u, 6u)])));
    let var_3 = vec4<u32>(0u, 16402u & ~arg_3, u_input.a, ~(func_3(arg_2.a, arg_2, select(vec3<i32>(arg_2.a, 29524i, u_input.b), vec3<i32>(u_input.b, -2147483647i, var_1.a), false), 731f) << (_wgslsmith_mod_u32(0u, ~arg_0) % 32u)));
    var_1 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(abs(reverseBits(vec2<i32>(0i, -26806i))), countOneBits(vec2<i32>(var_0.a, var_1.a))), ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(u_input.b, var_1.a)))));
    return select(!select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, any(vec4<bool>(false, false, true, true)), arg_2.a > var_0.a), vec4<bool>(all(vec3<bool>(false, true, true)), any(vec2<bool>(false, false)), var_3.x >= 1u, true)), vec4<bool>(!all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), false, _wgslsmith_f_op_f32(710f * global1[_wgslsmith_index_u32(u_input.a << (47026u % 32u), 6u)]) < global1[_wgslsmith_index_u32(1u, 6u)], true), !(-u_input.b <= _wgslsmith_div_i32(-arg_2.a, u_input.b)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: i32) -> Struct_1 {
    var var_0 = func_4(func_3(select(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, 10220i, u_input.b) >> (vec4<u32>(arg_1, arg_1, 11989u, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(arg_2, 1i, 1i, u_input.b)), true), Struct_1(19939i), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-213i, u_input.b, arg_2), vec3<i32>(arg_2, -1i, u_input.b)), ~_wgslsmith_div_vec3_i32(vec3<i32>(1i, arg_2, u_input.b), vec3<i32>(0i, 11383i, u_input.b))), global1[_wgslsmith_index_u32(4294967295u, 6u)]), u_input.a, Struct_1(~(-reverseBits(-5757i))), 29175u);
    var var_1 = !(all(select(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), true || var_0.x)) & !all(select(var_0.ww, var_0.yw, vec2<bool>(false, var_0.x))));
    let var_2 = vec3<bool>(var_0.x, all(func_4(~(~5236u), func_3(arg_2, Struct_1(arg_2), reverseBits(vec3<i32>(u_input.b, 23467i, 1i)), _wgslsmith_f_op_f32(round(arg_0))), Struct_1(-u_input.b), ~u_input.a).yz), u_input.a < _wgslsmith_add_u32(select(1u, 3155u, var_0.x), min(u_input.a >> (u_input.a % 32u), u_input.a & arg_1)));
    var_0 = vec4<bool>(any(select(var_2, func_4(~7483u, firstTrailingBit(u_input.a), Struct_1(arg_2), 1u | u_input.a).zxz, true)), var_0.x, var_0.x | (-385f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 6u)]) - global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 1u), 6u)])), !all(vec4<bool>(false, !var_2.x, var_2.x, true)));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(426f, _wgslsmith_f_op_f32(floor(663f)))));
    return Struct_1(-83616i);
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = func_2(global1[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_sub_u32(min(u_input.a, u_input.a), 4294967295u), u_input.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-319f, global1[_wgslsmith_index_u32(u_input.a, 6u)], 231f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1[_wgslsmith_index_u32(34683u, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)], -1248f)))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1539f)));
    let var_2 = -799f;
    var var_3 = func_2(var_2, _wgslsmith_div_u32(reverseBits(1u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, 0u))), u_input.a, 17092u)), u_input.b);
    return 39574u & _wgslsmith_mod_u32(u_input.a, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a | _wgslsmith_mod_u32(func_1(false & all(vec4<bool>(false, false, false, true))), 0u), 6u)];
    let var_1 = func_2(global1[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_add_u32(4294967295u, u_input.a), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(3659i, u_input.b), vec2<i32>(u_input.b, -8097i)), vec2<i32>(0i, ~u_input.b)), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(-7606i, u_input.b), ~u_input.b), u_input.b >> (u_input.a % 32u)), 11153i));
    global1 = array<f32, 6>();
    var var_2 = vec3<bool>(any(vec3<bool>(true, any(vec3<bool>(true, false, false)) && true, ~u_input.a < 1u)), true, ~(~41631i) == _wgslsmith_clamp_i32(-30512i, u_input.b, u_input.b));
    global0 = _wgslsmith_f_op_f32(trunc(1200f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(29161u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(39610u, u_input.a), ~vec2<u32>(u_input.a, u_input.a)) % 32u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, 77749u ^ u_input.a), ~1u, _wgslsmith_div_u32(2601u, abs(69173u)))), u_input.a, _wgslsmith_clamp_vec3_i32(abs(~firstTrailingBit(vec3<i32>(-55441i, u_input.b, u_input.b))), vec3<i32>(u_input.b, u_input.b, ~32784i), vec3<i32>(-1i) * -vec3<i32>(var_1.a, u_input.b, -13631i)));
}

