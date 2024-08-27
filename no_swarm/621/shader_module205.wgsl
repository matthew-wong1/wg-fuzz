struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(470f, 2425f, -639f, 1000f);

var<private> global1: array<i32, 2>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = Struct_2(select((-1i == _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], -1i, u_input.b, global1[_wgslsmith_index_u32(u_input.a, 2u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], -23933i, global1[_wgslsmith_index_u32(8529u, 2u)], -37361i))) == true, any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true)), true));
    var var_1 = 1i;
    let var_2 = Struct_3(Struct_1(false), Struct_2(all(!(!vec3<bool>(var_0.a, true, var_0.a)))), u_input.a);
    var_1 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(672f, global0.x, -640f, -140f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) * vec4<f32>(global0.x, 645f, 176f, global0.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 766f, -1146f, -1490f))))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(427f, global0.x, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -604f) + _wgslsmith_div_f32(-202f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) - _wgslsmith_f_op_f32(-445f - global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(182f + -1322f) * _wgslsmith_f_op_f32(-1236f * global0.x)), _wgslsmith_f_op_f32(global0.x * global0.x), global0.x))));
    return ~(~1u);
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: i32) -> u32 {
    var var_0 = ~(~4294967295u);
    let var_1 = Struct_3(Struct_1(any(select(select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(arg_1, true, true, true)), select(vec4<bool>(false, arg_1, false, false), vec4<bool>(false, arg_1, true, true), false), arg_1))), Struct_2(((arg_2 <= arg_2) & any(vec4<bool>(false, false, arg_1, false))) != true), _wgslsmith_mod_u32(4294967295u, 59151u));
    let var_2 = var_1;
    var var_3 = arg_2;
    var var_4 = var_2;
    return func_3() << ((_wgslsmith_mult_u32(0u, reverseBits(~u_input.a)) << (~_wgslsmith_div_u32(~var_2.c, 54394u & var_4.c) % 32u)) % 32u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(round(433f)) == -1204f, countOneBits(u_input.b), arg_0.x);
    let var_1 = Struct_4(Struct_2(var_0.a), arg_2, Struct_2(true), global0.x);
    let var_2 = func_4((-_wgslsmith_clamp_vec2_i32(vec2<i32>(-62657i, 1i), vec2<i32>(arg_0.x, -2147483647i), vec2<i32>(arg_0.x, var_0.b)) ^ -arg_0) >> (~reverseBits(vec2<u32>(13857u, u_input.a)) % vec2<u32>(32u)), true, _wgslsmith_dot_vec4_i32(-(vec4<i32>(var_0.c, -20985i, 29814i, global1[_wgslsmith_index_u32(u_input.a, 2u)]) | vec4<i32>(arg_0.x, 0i, global1[_wgslsmith_index_u32(35889u, 2u)], 6839i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-52204i, global1[_wgslsmith_index_u32(u_input.a, 2u)], u_input.b, 2147483647i), vec4<i32>(2147483647i, var_0.c, 43942i, arg_0.x))) & _wgslsmith_div_i32(~global1[_wgslsmith_index_u32(func_3(), 2u)], countOneBits(1i)));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -850f);
    var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-568f)), global0.x))) * var_1.d)));
    return select(~u_input.b, -5999i, all(vec4<bool>(var_0.a, false && !arg_1.x, arg_1.x, -2102f > _wgslsmith_f_op_f32(trunc(var_1.d)))));
}

fn func_1(arg_0: Struct_2) -> bool {
    let var_0 = vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 2u)], 50872i, -u_input.b, ~func_2(firstTrailingBit(vec2<i32>(0i, u_input.b)), select(vec3<bool>(arg_0.a, true, false), vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(false, arg_0.a, false)), vec3<bool>(arg_0.a, arg_0.a, false)) & 45087i);
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1000f, global0.x, -645f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 1069f))) * vec4<f32>(622f, _wgslsmith_f_op_f32(-1000f - global0.x), 937f, _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -705f, 948f, 185f) - vec4<f32>(201f, -556f, -242f, 475f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, -385f, -963f, 1300f))))))))));
    var var_1 = abs(0u ^ u_input.a);
    let var_2 = _wgslsmith_add_u32(1u & ~(~56728u & ~u_input.a), u_input.a);
    var var_3 = Struct_1(any(vec2<bool>(!(arg_0.a || false), true)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(true));
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(max(global0.x, -1531f)))), _wgslsmith_div_f32(global0.x, 1134f)) - _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -1074f)))), global0.x, 181f);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 836f) - -587f), _wgslsmith_f_op_f32(f32(-1f) * -546f), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))));
    var var_1 = 64894i;
    let var_2 = Struct_2(!(!select(true, false, any(vec4<bool>(true, true, false, true)))));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(global0.x * 463f), global0.x, _wgslsmith_f_op_f32(sign(122f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(432f, 838f, global0.x, 2301f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(857f, 1145f, 558f, -1512f) - vec4<f32>(global0.x, 818f, -1322f, global0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(598f, -363f, -361f, global0.x)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -1334f, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -2641f, global0.x, 1879f) * vec4<f32>(932f, global0.x, -661f, -1335f))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -591f, global0.x, global0.x))), vec4<f32>(_wgslsmith_f_op_f32(global0.x * 1568f), _wgslsmith_f_op_f32(-global0.x), 1613f, _wgslsmith_f_op_f32(280f + -366f))))), !(!select(!vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a), !vec4<bool>(var_2.a, var_2.a, true, false), global1[_wgslsmith_index_u32(u_input.a, 2u)] >= global1[_wgslsmith_index_u32(1u, 2u)]))));
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(select(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(22550u, 2u)]), vec2<i32>(0i, -18023i)), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_3, u_input.a), 2u)], true), -_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(abs(var_3), 2u)], global1[_wgslsmith_index_u32(~var_3, 2u)], _wgslsmith_dot_vec3_i32(vec3<i32>(20678i, 1i, 2147483647i), vec3<i32>(u_input.b, -2147483647i, global1[_wgslsmith_index_u32(u_input.a, 2u)]))), _wgslsmith_mod_i32(~(-40415i), u_input.b), select(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(45566u, var_3), 2u)], u_input.b, global0.x > global0.x) ^ 10623i), ~0u, firstLeadingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(7850u, 23474u)), ~vec2<u32>(var_3, 77461u)), ~vec2<u32>(4294967295u, 18342u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - 1119f))), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -145f))))));
}

