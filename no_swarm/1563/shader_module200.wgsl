struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 1185f;

var<private> global2: array<Struct_2, 8>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<bool>) -> vec4<u32> {
    var var_0 = Struct_1(-u_input.a);
    var_0 = Struct_1(global0.a);
    let var_1 = all(arg_0) | any(select(arg_0, !arg_0, arg_0));
    let var_2 = _wgslsmith_sub_i32(global0.a.x << (~reverseBits(1u) % 32u), ~_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.a.x, 14291i), select(var_0.a.xx, vec2<i32>(18359i, 10598i), false)), u_input.a.wz));
    global0 = Struct_1(u_input.a);
    return select(firstTrailingBit(~vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u), !(!var_1)) & ~(~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(4294967295u, 71695u, 1u, 14652u)), abs(vec4<u32>(4294967295u, 11150u, 63037u, 2775u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> vec3<f32> {
    let var_0 = firstTrailingBit(~(~(~4294967295u)));
    let var_1 = Struct_4(Struct_3(!vec4<bool>(true, arg_1.x, false, false), any(select(arg_1, select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x), arg_1.x), arg_1.x)), arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0.d.x, arg_0.d.x, arg_0.d.x)) - vec4<f32>(-1000f, -1785f, arg_0.d.x, arg_0.d.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, 254f, 214f, -1080f)) * vec4<f32>(1000f, 166f, -825f, arg_0.d.x)))));
    var var_2 = var_1.a.c.a;
    let var_3 = 311f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1099f)))) - _wgslsmith_f_op_f32(max(325f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_0.d.x)))))))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.d.x)) * _wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(trunc(var_1.a.d.x)), var_3);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = ~min(1u, ~(~0u));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_3(vec2<bool>(false, true)), vec4<u32>(1u, 1u, 41447u, 3732u)), 8u)], vec3<bool>(false, true, true)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(319f, arg_1, arg_1), vec3<f32>(arg_1, -2590f, -1551f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(365f, arg_1, arg_1))))))));
    let var_2 = reverseBits(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 13103i, u_input.a.x, 75887i)));
    let var_3 = arg_0;
    var_0 = 4294967295u;
    return _wgslsmith_f_op_f32(-arg_1);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_5) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(572f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(331f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(899f * 911f), _wgslsmith_f_op_f32(func_2(arg_1, -543f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1013f), _wgslsmith_f_op_f32(sign(1386f)))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-311f, -928f, -2116f, 277f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-667f, 442f, -456f, 179f))))), vec4<f32>(936f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-785f, -303f) - 780f), _wgslsmith_f_op_f32(-1561f * _wgslsmith_div_f32(-1000f, 605f)), _wgslsmith_div_f32(774f, _wgslsmith_f_op_f32(131f + -135f))))));
    var var_1 = select(vec2<u32>(arg_2.b.x, arg_2.b.x), func_3(!vec2<bool>(arg_0, arg_0)).zy, true);
    let var_2 = ~firstLeadingBit(~abs(arg_2.b.x ^ 0u));
    let var_3 = _wgslsmith_mod_i32(arg_2.a.x, i32(-1i) * -14734i);
    global2 = array<Struct_2, 8>();
    return firstTrailingBit(arg_2.a.x) ^ -1i;
}

fn func_5(arg_0: vec3<i32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1659f)) + _wgslsmith_f_op_f32(-1f)), -1199f));
    global0 = Struct_1(-vec4<i32>(~u_input.a.x, _wgslsmith_mod_i32(-arg_0.x, -2147483647i), abs(select(u_input.a.x, u_input.a.x, true)), u_input.a.x));
    let var_0 = reverseBits(u_input.a.wx);
    var var_1 = ~func_1(true, Struct_1(-u_input.a), Struct_5(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, -41215i, global0.a.x), global0.a.xxy), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 1u, 8077u), ~vec3<u32>(0u, 64610u, 81421u))));
    let var_2 = vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-290f, 1000f)))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-222f, 667f, true)), -1053f), true);
    return Struct_1(-global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1369f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-302f, 818f) * -561f)));
    let var_1 = vec2<f32>(var_0, 1f);
    let var_2 = func_5(vec3<i32>(-14339i, 1i, -_wgslsmith_sub_i32(func_1(true, Struct_1(vec4<i32>(global0.a.x, -33466i, global0.a.x, 2147483647i)), Struct_5(u_input.a.xwx, vec3<u32>(16214u, 4294967295u, 1u))), -2147483647i << (0u % 32u))));
    var var_3 = Struct_3(vec4<bool>(!all(vec2<bool>(true, true)), true, -242f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), true), false, Struct_2(var_2, -(~countOneBits(u_input.a.x)), var_2.a.x, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1007f + var_0), _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(select(937f, _wgslsmith_f_op_f32(abs(-1000f)), true)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-699f + 1593f), _wgslsmith_f_op_f32(980f - var_0), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(var_2, u_input.a.x, u_input.a.x, vec3<f32>(var_1.x, -795f, var_0)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2236f))))));
    global2 = array<Struct_2, 8>();
    var_3 = Struct_3(var_3.a, all(!select(var_3.a.wzx, vec3<bool>(var_3.b, false, false), var_3.a.zww)), Struct_2(Struct_1(global0.a), (reverseBits(0i) | ~u_input.a.x) | -var_2.a.x, var_3.c.b & -33820i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(915f, var_3.c.d.x, 893f) * var_3.d.zxz) - _wgslsmith_f_op_vec3_f32(var_3.c.d - vec3<f32>(174f, -665f, 212f))))), _wgslsmith_div_vec4_f32(var_3.d, vec4<f32>(_wgslsmith_f_op_f32(step(-1142f, _wgslsmith_f_op_f32(min(var_0, var_3.c.d.x)))), -1182f, _wgslsmith_f_op_f32(var_3.c.d.x + _wgslsmith_f_op_f32(-1273f * 367f)), 671f)));
    let var_4 = Struct_5(vec3<i32>(-var_2.a.x, var_3.c.c, var_3.c.a.a.x), ~vec3<u32>(1u, 1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(25689i, ~u_input.a.x | ~_wgslsmith_dot_vec3_i32(global0.a.xyy, vec3<i32>(-6530i, u_input.a.x, 22409i)), var_3.c.c << (1u % 32u)), 10494u, ~vec3<u32>(reverseBits(~var_4.b.x), 4294967295u, var_4.b.x | ~57852u));
}

