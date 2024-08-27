struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17>;

var<private> global1: array<vec2<f32>, 25>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_1 {
    global1 = array<vec2<f32>, 25>();
    global1 = array<vec2<f32>, 25>();
    global1 = array<vec2<f32>, 25>();
    global0 = array<vec3<u32>, 17>();
    global0 = array<vec3<u32>, 17>();
    return Struct_1(-540f, _wgslsmith_f_op_f32(280f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1204f)) - _wgslsmith_f_op_f32(886f + 1000f)))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = ~_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.c, u_input.c)), vec2<u32>(1u, 40440u << (u_input.c % 32u)) >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)), abs(~(~vec2<u32>(u_input.c, u_input.c))));
    var var_1 = vec4<bool>(arg_0, all(select(vec4<bool>(all(vec3<bool>(arg_0, arg_0, arg_0)), !arg_0, true, arg_0), vec4<bool>(any(vec4<bool>(false, true, false, arg_0)), !arg_0, arg_3.b >= -1544f, true), all(select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(false, arg_0, arg_0, false), arg_0)))), false, !arg_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b, 1115f, -934f))) + vec3<f32>(arg_1.a, 1463f, arg_1.b))));
    var var_3 = -_wgslsmith_mod_i32(reverseBits(arg_2.x), _wgslsmith_clamp_i32(-2147483647i, 1i, 2147483647i));
    var_1 = select(!(!vec4<bool>(true, var_1.x, arg_3.b != arg_1.b, true)), !vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -531f) < _wgslsmith_div_f32(-1419f, var_2.x), (arg_2.x | u_input.d) <= arg_2.x, var_1.x, arg_0), 1000f != _wgslsmith_f_op_f32(-184f + var_2.x));
    return _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(64540i, 52172i), (i32(-1i) * -1i) | ~u_input.b), select(~1i, -1i, false));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_1) -> vec2<f32> {
    global0 = array<vec3<u32>, 17>();
    global1 = array<vec2<f32>, 25>();
    global0 = array<vec3<u32>, 17>();
    global0 = array<vec3<u32>, 17>();
    let var_0 = Struct_1(-392f, _wgslsmith_f_op_f32(abs(840f)));
    return vec2<f32>(_wgslsmith_div_f32(arg_3.b, _wgslsmith_f_op_f32(-313f + _wgslsmith_f_op_f32(exp2(func_2().a)))), -168f);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: vec2<f32>, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_2(func_2(), ~u_input.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.x))), 148f, !select(any(vec2<bool>(true, false)), true, true))));
    global1 = array<vec2<f32>, 25>();
    var var_2 = func_2();
    return var_0;
}

fn func_1(arg_0: f32, arg_1: f32) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(1335f - arg_0);
    var var_1 = func_5(~firstTrailingBit(u_input.b), 1179f, _wgslsmith_f_op_vec2_f32(func_4(func_2(), vec3<i32>(func_3(false, Struct_1(arg_1, -277f), vec2<i32>(0i, 2147483647i), Struct_1(arg_1, -970f)), i32(-1i) * -7450i, _wgslsmith_mult_i32(u_input.b, 2282i)) << ((_wgslsmith_mult_vec3_u32(vec3<u32>(42388u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)) & reverseBits(global0[_wgslsmith_index_u32(u_input.c, 17u)])) % vec3<u32>(32u)), Struct_2(Struct_1(-1098f, _wgslsmith_f_op_f32(arg_0 - arg_0)), 59824u), Struct_1(-1454f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_0, 1189f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, -353f, -467f, arg_0)))) + vec4<f32>(-416f, 1220f, _wgslsmith_f_op_f32(f32(-1f) * -2454f), _wgslsmith_f_op_f32(1000f * 627f))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1053f, arg_0, 1177f, _wgslsmith_f_op_f32(-106f + arg_0))))));
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0, 1f)), var_1.a.a), arg_1);
    var_2 = var_1.a;
    var var_3 = Struct_2(var_1.a, var_1.b);
    return ~(~(~vec2<i32>(u_input.b, 1i))) >> (vec2<u32>(min(~u_input.c, 1u | u_input.c), _wgslsmith_clamp_u32(4294967295u, 0u, var_3.b)) % vec2<u32>(32u));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: bool, arg_3: f32) -> bool {
    global0 = array<vec3<u32>, 17>();
    global0 = array<vec3<u32>, 17>();
    global0 = array<vec3<u32>, 17>();
    let var_0 = !(!vec2<bool>(arg_2, -2326f <= _wgslsmith_f_op_f32(arg_3 + arg_3)));
    var var_1 = func_5(4633i, -499f, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-173f * 1f), 1575f)), arg_3), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-735f, arg_3, arg_3, arg_3), vec4<f32>(arg_3, -223f, -1628f, -1000f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3, arg_3, -1000f, 586f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2110f, -888f, -1817f, 1330f))), select(!vec4<bool>(var_0.x, var_0.x, arg_2, false), vec4<bool>(false, var_0.x, false, true), any(vec3<bool>(true, false, arg_2))))))));
    return !(2147483647i > _wgslsmith_mult_i32(arg_0.x, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 25>();
    global0 = array<vec3<u32>, 17>();
    var var_0 = !(!(all(vec3<bool>(true, true, true)) && func_6(func_1(-505f, 744f), _wgslsmith_sub_vec2_i32(vec2<i32>(3216i, u_input.b), vec2<i32>(-2147483647i, 2147483647i)), true, _wgslsmith_f_op_f32(trunc(896f)))));
    var var_1 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(1i, _wgslsmith_mod_i32(0i, u_input.d)), firstLeadingBit(~u_input.b)), u_input.b & _wgslsmith_clamp_i32(u_input.b, _wgslsmith_mod_i32(u_input.d, -36167i), -58999i), 0i), u_input.b);
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -678f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(185f * 1000f)))), _wgslsmith_f_op_f32(276f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1220f) - _wgslsmith_f_op_f32(f32(-1f) * -795f)))), func_5(_wgslsmith_dot_vec4_i32(min(firstLeadingBit(vec4<i32>(u_input.b, u_input.b, -1i, var_1.x)), -vec4<i32>(var_1.x, 20458i, 44443i, var_1.x)), ~vec4<i32>(var_1.x, u_input.b, -1i, var_1.x) << (vec4<u32>(u_input.c, u_input.c, 1u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(549f, 391f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -933f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1258f, -624f, 514f, 2146f), vec4<f32>(1004f, 1121f, 282f, 1468f), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1757f, 1000f, -505f, -1409f))) - vec4<f32>(149f, -159f, -639f, 785f))).a.b);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(vec3<i32>(u_input.d, ~(-1i), u_input.b), vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -6977i, u_input.d), vec3<i32>(u_input.a, -25651i, 7974i)), u_input.a), _wgslsmith_f_op_f32(var_2.a * -531f) >= -1000f)), (abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(1u, u_input.c))) >> (u_input.c % 32u)) & ~(~(~u_input.c)), vec2<i32>(-54718i, ~(-func_1(-377f, 1645f).x)), u_input.c);
}

