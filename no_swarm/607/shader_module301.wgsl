struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(2147483647i, 0i));

var<private> global1: vec2<u32>;

var<private> global2: array<vec4<f32>, 7>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    global2 = array<vec4<f32>, 7>();
    global0 = Struct_1(_wgslsmith_div_vec2_i32(global0.a, global0.a));
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1235f, 243f, -446f, 410f) - vec4<f32>(933f, -836f, 220f, 215f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-394f, -1688f, 982f, 495f) - global2[_wgslsmith_index_u32(104940u, 7u)])))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-319f, -1024f, -2647f, 1478f) - vec4<f32>(-1583f, -253f, -878f, 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(116f - -1068f), 1056f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * 640f), -1898f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -565f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1616f)))))));
    global2 = array<vec4<f32>, 7>();
    let var_1 = Struct_2(Struct_1(vec2<i32>((i32(-1i) * -12926i) << (~global1.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, global0.a.x, -1i, 39202i) & vec4<i32>(global0.a.x, 14932i, 2147483647i, 0i), ~vec4<i32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)))));
    return ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(~u_input.a, ~0u), ~(global1.x >> (global1.x % 32u)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = select(u_input.a, _wgslsmith_mod_u32(func_3(), u_input.a), any(vec2<bool>(true, true)));
    global2 = array<vec4<f32>, 7>();
    global2 = array<vec4<f32>, 7>();
    global2 = array<vec4<f32>, 7>();
    let var_1 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), all(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    return Struct_3(global2[_wgslsmith_index_u32(global1.x >> (_wgslsmith_sub_u32(~(global1.x ^ global1.x), ~83945u) % 32u), 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-456f))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(vec2<i32>(firstLeadingBit(arg_2 | arg_2), -(~6696i))));
    var var_1 = 2147483647i;
    var var_2 = global1.x;
    var_2 = _wgslsmith_mult_u32(abs(~0u), ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 4294967295u, 1u), vec3<u32>(4294967295u, u_input.a, 6825u)))));
    var var_3 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_2, firstLeadingBit(var_0.a.a.x)), _wgslsmith_div_i32(var_0.a.a.x, ~(-20504i))), arg_3.yx));
    return var_0.a;
}

fn func_1() -> Struct_1 {
    global1 = select(select(vec2<u32>(37171u, u_input.a) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, u_input.a), vec2<u32>(22979u, global1.x), vec2<u32>(u_input.a, 1u)), vec2<u32>(global1.x, global1.x ^ global1.x), vec2<bool>(true, true)), firstTrailingBit(vec2<u32>(global1.x, 1u) & ~vec2<u32>(37036u, global1.x)), vec2<bool>(true, !any(vec2<bool>(true, false)))) & (abs(~(~vec2<u32>(1u, global1.x))) ^ (vec2<u32>(u_input.a, 55704u) >> (vec2<u32>(u_input.a >> (22644u % 32u), ~50405u) % vec2<u32>(32u))));
    var var_0 = all(!vec3<bool>(true, all(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))));
    global2 = array<vec4<f32>, 7>();
    let var_1 = func_4(all(vec2<bool>(!any(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, false)))), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-293f, 470f, -1235f) - vec3<f32>(-1496f, -422f, 1353f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-819f, 323f, 1522f))) * vec3<f32>(1f, 1f, 1f))), reverseBits(firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, global0.a.x, global0.a.x), vec3<i32>(-2147483647i, -2147483647i, -2147483647i)), -2147483647i))), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.x, global0.a.x, global0.a.x, -2147483647i), ~vec4<i32>(global0.a.x, global0.a.x, 1i, 0i), abs(vec4<i32>(-8492i, -39764i, global0.a.x, global0.a.x))), -(~vec4<i32>(global0.a.x, -20655i, global0.a.x, global0.a.x)) ^ min(vec4<i32>(global0.a.x, 1i, global0.a.x, -48446i) | vec4<i32>(2459i, -2147483647i, global0.a.x, -11775i), max(vec4<i32>(global0.a.x, global0.a.x, 2147483647i, 1i), vec4<i32>(-66158i, 0i, -6813i, global0.a.x))), true));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = Struct_2(func_1());
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -759f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-459f * -949f) - _wgslsmith_f_op_f32(sign(1161f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-105f * 130f))) + func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-132f, -580f, 789f) - vec3<f32>(-894f, -1346f, -603f))).b)));
    let var_2 = false;
    let var_3 = Struct_1(vec2<i32>(-51054i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-75469i, var_0.a.a.x, global0.a.x, var_0.a.a.x), ~vec4<i32>(79245i, 12730i, global0.a.x, -9291i)), _wgslsmith_div_i32(-var_0.a.a.x, ~var_0.a.a.x))));
    var var_4 = vec4<u32>(6024u, ~(1u << (1u % 32u)), _wgslsmith_clamp_u32(1u, ~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, u_input.a, 54358u), vec3<u32>(126630u, u_input.a, 28929u)) ^ firstTrailingBit(global1.x)), countOneBits(59469u)) & vec4<u32>(abs(global1.x), u_input.a, 75728u, _wgslsmith_dot_vec2_u32(vec2<u32>(min(global1.x, 1u), ~u_input.a), ~vec2<u32>(10272u, u_input.a)));
    let var_5 = func_1().a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-243f, _wgslsmith_div_f32(var_1, func_2(vec3<f32>(-579f, var_1, var_1)).a.x), -403f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_1) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 1024f, var_1))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(197f, 1441f, var_1)) - func_2(vec3<f32>(var_1, var_1, var_1)).a.wyw))));
}

