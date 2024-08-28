struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<u32, 23>;

var<private> global3: vec4<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<u32> {
    global2 = array<u32, 23>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f)), reverseBits(u_input.c), ~countOneBits(-2147483647i), ~(1u & select(u_input.b.x, 50274u, false)), -596f), -1i);
    let var_1 = var_0;
    global2 = array<u32, 23>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.a), -1979f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.a.a, var_1.a.a))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, 1000f)))), global3.x)));
    return _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.a.b, var_1.a.b), firstTrailingBit(~reverseBits(vec3<u32>(var_0.a.d, var_0.a.d, 1u) | vec3<u32>(var_1.a.b.x, 0u, 31174u))));
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 21>();
    var var_0 = Struct_2(~vec2<u32>(u_input.d.x, select(4294967295u, 111356u, false) << (~u_input.a % 32u)), abs(vec3<i32>(~(i32(-1i) * -47829i), 1i, countOneBits(38933i))), u_input.c, ~(~(~global2[_wgslsmith_index_u32(countOneBits(47070u), 23u)])));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(304f - -1920f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1740f))))), func_3(), ~_wgslsmith_div_i32(var_0.b.x, var_0.b.x), global2[_wgslsmith_index_u32(select(~1u, _wgslsmith_mult_u32(17647u, 0u), any(vec4<bool>(global3.x, false || global3.x, all(vec4<bool>(global3.x, false, global3.x, global3.x)), any(global3.wzy)))), 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1137f)) * 1095f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-767f * 1068f)))));
    var var_2 = var_0.b.zy;
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.e))), var_1.e)), ~(var_0.c >> (~vec3<u32>(var_1.b.x, 74538u, var_1.d) % vec3<u32>(32u))), var_0.b.x, var_1.b.x, -476f), 12239i);
    return var_3.a;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(func_2(), -1i);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-250f + var_0.a.a)), var_0.a.a, _wgslsmith_f_op_f32(max(var_0.a.a, _wgslsmith_f_op_f32(-var_0.a.a)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.e, -1090f, var_0.a.e)), vec3<f32>(1364f, var_0.a.e, _wgslsmith_f_op_f32(-var_0.a.a))))) - vec3<f32>(var_0.a.e, var_0.a.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-851f - var_0.a.a) + _wgslsmith_f_op_f32(sign(var_0.a.a))) - 1285f)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(540f * var_0.a.e)))))), _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -2524f), -505f);
    var var_3 = global0[_wgslsmith_index_u32(abs(~((~var_0.a.d & global2[_wgslsmith_index_u32(4294967295u, 23u)]) ^ var_0.a.b.x)), 10u)];
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_0.a.e), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_2.x)))), _wgslsmith_f_op_f32(-496f + _wgslsmith_f_op_f32(sign(397f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(573f, var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, -1000f, 951f, var_1.x))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-972f, -1635f, var_1.x, var_2.x), vec4<f32>(var_1.x, var_1.x, var_0.a.a, var_1.x)))) + vec4<f32>(_wgslsmith_div_f32(var_2.x, var_1.x), _wgslsmith_f_op_f32(floor(var_2.x)), -1978f, -760f)), global3.x)));
    return Struct_1(1012f, _wgslsmith_mod_vec3_u32(firstLeadingBit(abs(~vec3<u32>(1u, 1u, 0u))), vec3<u32>(u_input.d.x, ~(15792u << (1u % 32u)), firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27342u, 23u)] & u_input.b.x, 23u)]))), ~(~(~var_0.a.c)), ~var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.e + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(149f + var_0.a.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    let var_1 = func_1();
    global3 = !(!vec4<bool>(global3.x, true, true, global3.x));
    let var_2 = Struct_3(func_2(), -var_1.c);
    global3 = select(!select(select(!vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(true, global3.x, global3.x, false), var_1.b.x > var_1.d), !select(vec4<bool>(global3.x, global3.x, global3.x, true), vec4<bool>(global3.x, true, true, true), true), select(!vec4<bool>(false, global3.x, true, true), !vec4<bool>(true, global3.x, global3.x, true), true)), select(select(vec4<bool>(!global3.x, global3.x, true, true), !select(vec4<bool>(global3.x, false, global3.x, false), vec4<bool>(true, true, global3.x, false), false), all(global3.zzy) || (global3.x | false)), select(!vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, !global3.x, global3.x, global3.x), select(vec4<bool>(false, false, true, true), vec4<bool>(false, global3.x, global3.x, global3.x), !vec4<bool>(false, global3.x, global3.x, true))), select(vec4<bool>(global3.x || global3.x, true, true, !global3.x), !(!vec4<bool>(global3.x, global3.x, global3.x, global3.x)), vec4<bool>(-2147483647i < var_1.c, true && global3.x, true, global3.x && false))), select(vec4<bool>(!global3.x, false, true, !(var_2.a.c < var_0)), select(vec4<bool>(false, global3.x, global3.x, any(global3.xyy)), select(vec4<bool>(false, global3.x, global3.x, false), !vec4<bool>(global3.x, false, global3.x, global3.x), !vec4<bool>(false, true, global3.x, global3.x)), ~19844u <= select(47713u, 6487u, true)), vec4<bool>(global3.x, global3.x, global3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, var_1.c, -2147483647i), vec3<i32>(82709i, 52158i, var_0)) < _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b, 17532i, 3944i), vec3<i32>(var_1.c, 8960i, 1i)))));
    var var_3 = func_2();
    var_3 = Struct_1(598f, firstTrailingBit(var_1.b), 1974i, 0u, _wgslsmith_f_op_f32(var_3.e + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.e))));
    global0 = array<Struct_2, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b.x);
}

