struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
    c: Struct_2,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_2;

var<private> global2: u32 = 1u;

var<private> global3: array<bool, 21> = array<bool, 21>(true, false, true, false, true, true, true, true, true, false, false, true, false, false, false, true, true, true, false, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: bool) -> vec2<f32> {
    let var_0 = Struct_5(!select(select(vec4<bool>(global0.x, false, global0.x, true), !vec4<bool>(false, false, global3[_wgslsmith_index_u32(arg_2, 21u)], global0.x), global0.x), vec4<bool>(arg_3, true, true, any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], false, false))), true), global3[_wgslsmith_index_u32(u_input.a.x, 21u)], arg_0.a, global0.x, arg_1);
    let var_1 = -884f;
    global1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.a.a) + _wgslsmith_f_op_f32(step(-671f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_0.e.a.a));
    global1 = Struct_2(var_1);
    var var_2 = Struct_5(vec4<bool>(true, false, 250f == _wgslsmith_f_op_f32(-var_0.c.a), true), true, Struct_2(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a) + var_0.e.a.a))), false && all(var_0.a.wx), arg_1);
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-860f, -1189f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(552f, 356f) - vec2<f32>(-1806f, var_2.c.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e.a.a, 1137f) + vec2<f32>(arg_1.a.a, var_0.e.a.a))))))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(516f, 1000f)), _wgslsmith_f_op_vec2_f32(func_3(Struct_3(arg_2), Struct_3(Struct_2(global1.a)), 1u, true))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-437f, -123f), vec2<f32>(-459f, -886f), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-499f, -1000f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(810f, 788f) + vec2<f32>(1000f, -1000f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1524f, var_0.a), vec2<f32>(156f, 249f))))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(638f, 1408f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, global1.a) - vec2<f32>(1156f, -571f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1483f, 991f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.a, arg_2.a), vec2<f32>(-586f, -226f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.a, var_0.a), vec2<f32>(214f, arg_2.a), vec2<bool>(true, global0.x)))))));
    var var_2 = Struct_1(arg_1 ^ _wgslsmith_mod_i32(arg_1, 1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(104f, -197f, 1659f, global1.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 862f, -1000f, -931f) + vec4<f32>(643f, 942f, -756f, 1346f)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-868f, 1611f, -1000f, -3291f) - vec4<f32>(-205f, 1108f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-arg_2.a)))));
    global1 = arg_2;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global1.a)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a + var_2.b.x), global1.a)) - -691f));
    return -1078f;
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> Struct_5 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(1000f * 838f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - 376f) + global1.a))))), _wgslsmith_f_op_f32(-1158f - _wgslsmith_f_op_f32(func_2(any(vec2<bool>(false, arg_1)), min(_wgslsmith_mult_i32(1i, -1i), min(48488i, 1i)), Struct_2(global1.a)))), 517f);
    var var_1 = Struct_4(var_0.wzx, Struct_1(reverseBits(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-19043i, -1i, 0i), vec3<i32>(4617i, -2147483647i, -2147483647i)), ~(-1i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1373f, var_0.x, -544f, var_0.x) * vec4<f32>(var_0.x, global1.a, var_0.x, global1.a))) * _wgslsmith_div_vec4_f32(vec4<f32>(global1.a, -652f, 1391f, -577f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a, global1.a, global1.a, global1.a)))))));
    var var_2 = vec4<u32>(u_input.b | 1u, u_input.a.x, u_input.a.x, 44509u);
    var var_3 = 0u;
    var var_4 = false;
    return Struct_5(vec4<bool>(global0.x, true, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.b.a, 6811i, var_1.b.a, -5419i), vec4<i32>(var_1.b.a, 1i, var_1.b.a, 2147483647i) | vec4<i32>(-7118i, 45037i, 1i, -1i)) != _wgslsmith_mult_i32(-11022i, var_1.b.a), select(false, arg_0.x, arg_0.x)), var_1.b.a > _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, 96474i >> (u_input.b % 32u)), _wgslsmith_mult_i32(var_1.b.a & -1268i, -2147483647i)), Struct_2(var_0.x), !select(firstTrailingBit(u_input.b) <= var_2.x, !(!arg_0.x), var_1.b.a != _wgslsmith_mult_i32(var_1.b.a, var_1.b.a)), Struct_3(Struct_2(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-104f, _wgslsmith_f_op_f32(-global1.a)), -472f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a)) - _wgslsmith_div_f32(-1511f, 152f))))));
    let var_1 = func_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-2385f)), global1.a))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a - global1.a), global1.a)));
    var var_2 = _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(13823i, _wgslsmith_div_i32(1i, 1i) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-5307i, -2147483647i, -27416i, 44309i), vec4<i32>(-2147483647i, 2147483647i, -1i, 23483i)), -vec4<i32>(1i, -14880i, 2147483647i, 0i))));
    var var_3 = -vec4<i32>(8691i, firstLeadingBit(-2147483647i) >> (u_input.a.x % 32u), _wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -1i, 2147483647i), vec4<i32>(2147483647i, -1i, 10960i, -2147483647i)), 27284i), _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(41423i, 2985i), vec2<i32>(6900i, -26729i)), -63181i), i32(-1i) * -1i));
    global2 = ~1u;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1634f, -970f, global1.a, global1.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1497f, -355f, 136f, -208f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a, _wgslsmith_f_op_f32(-global1.a), 836f, _wgslsmith_f_op_f32(floor(global1.a)))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.a, var_1.c.a, var_1.e.a.a, global1.a))))))));
    let var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_3.x, firstLeadingBit(var_3.x)));
}

