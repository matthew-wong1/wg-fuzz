struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<i32>(1i, -3129i, -44118i)), Struct_1(vec3<i32>(-36415i, 0i, 2147483647i)), Struct_1(vec3<i32>(9928i, -23723i, 10230i)), Struct_1(vec3<i32>(2147483647i, 32484i, -49835i)), Struct_1(vec3<i32>(29655i, 14827i, 0i)));

var<private> global2: f32 = -1119f;

var<private> global3: vec4<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<i32>) -> vec3<u32> {
    global1 = array<Struct_1, 5>();
    var var_0 = Struct_1(firstTrailingBit(vec3<i32>(arg_0.a.x, arg_0.a.x, ~arg_1)));
    return u_input.c;
}

fn func_3() -> vec3<u32> {
    var var_0 = abs(0u) | u_input.c.x;
    global0 = -852f;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1097f * global3.x) - _wgslsmith_f_op_f32(global3.x + -677f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(376f)) + _wgslsmith_f_op_f32(171f + global3.x)), _wgslsmith_f_op_f32(ceil(global3.x))))) + global3.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-global3.x)) + _wgslsmith_f_op_f32(round(-496f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(-global3.x))), global3.x)), 1020f, _wgslsmith_f_op_f32(-global3.x)) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-257f, _wgslsmith_f_op_f32(f32(-1f) * -409f), -1221f, _wgslsmith_f_op_f32(floor(3358f))), vec4<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(select(1322f, global3.x, true)), global3.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(abs(1593f)), 1818f, -304f)))));
    let var_2 = firstLeadingBit(_wgslsmith_mod_i32(25661i, u_input.a));
    return abs(vec3<u32>(_wgslsmith_add_u32(87804u, 42977u) | _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), u_input.c.x, 66766u) | _wgslsmith_div_vec3_u32(abs(u_input.c), vec3<u32>(countOneBits(4294967295u), 1u, 47148u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> bool {
    var var_0 = Struct_1(vec3<i32>(-1i) * -(reverseBits(u_input.b.wyz) << (func_3() % vec3<u32>(32u))));
    global1 = array<Struct_1, 5>();
    var var_1 = abs(_wgslsmith_add_vec4_u32(~vec4<u32>(30164u << (arg_0.x % 32u), ~54061u, 4294967295u, ~63077u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 45489u, 24862u, 4294967295u) >> (vec4<u32>(arg_0.x, 1311u, 1u, 69278u) % vec4<u32>(32u)), ~vec4<u32>(u_input.c.x, arg_0.x, 1u, u_input.c.x)) >> (select(_wgslsmith_sub_vec4_u32(vec4<u32>(44242u, 0u, arg_0.x, 52657u), vec4<u32>(29770u, arg_1, 19858u, 909u)), _wgslsmith_mod_vec4_u32(vec4<u32>(42703u, 1u, 17417u, 4294967295u), vec4<u32>(u_input.c.x, arg_0.x, arg_0.x, u_input.c.x)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u))));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(609f, global3.x, arg_3.x, global3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, -738f, -855f, -2493f), vec4<f32>(-858f, arg_3.x, -392f, -650f))))));
    var var_2 = 2147483647i;
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    global2 = global3.x;
    global0 = global3.x;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-452f, _wgslsmith_f_op_f32(ceil(-233f))))));
    var var_0 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(u_input.d, 25847i), (u_input.b.x | _wgslsmith_mult_i32(-23942i, arg_0.a.x)) | arg_0.a.x, 16886i));
    var var_1 = countOneBits(66828u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(~vec3<i32>(_wgslsmith_mod_i32(u_input.d, 36358i), u_input.a, ~u_input.d)), false & !(!(0u >= u_input.c.x)), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(32575u, countOneBits(u_input.c.x)) & u_input.c.x, 5u)], vec4<bool>(false, select(false, true, select(true, any(vec2<bool>(true, false)), true)), true, select(func_2(func_1(Struct_1(u_input.b.zwz), 22609i, vec4<bool>(true, true, false, false), u_input.b.ywz), ~u_input.c.x, global1[_wgslsmith_index_u32(72511u, 5u)], _wgslsmith_f_op_vec2_f32(global3.zx + vec2<f32>(global3.x, global3.x))), all(vec3<bool>(true, true, true)), true || (global3.x > 126f))));
    var var_1 = ~u_input.b.zzx;
    global0 = global3.x;
    var var_2 = -38302i;
    var_1 = vec3<i32>(1i, ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, 1i, var_1.x, 1i)), select(select(u_input.b, vec4<i32>(-14590i, var_1.x, -20968i, var_1.x), true), vec4<i32>(22082i, var_1.x, -2147483647i, var_0.a.x), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false))), abs(-2147483647i));
    let var_3 = func_2(u_input.c, ~(~u_input.c.x), Struct_1(var_0.a), _wgslsmith_f_op_vec2_f32(global3.wx + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.x, 1298f), global3.xw)))), vec2<f32>(_wgslsmith_div_f32(global3.x, global3.x), -598f)))));
    var var_4 = -561f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(1696f, _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -1587f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * global3.x) + global3.x), _wgslsmith_f_op_f32(round(global3.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, global3.x, 864f, -131f), vec4<f32>(-854f, global3.x, 1242f, -512f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, -164f)), vec4<bool>(true, var_3, true, var_3))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, global3.x, -991f, global3.x), vec4<f32>(-679f, global3.x, -987f, global3.x), vec4<bool>(var_3, true, false, var_3))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * -1856f) * _wgslsmith_f_op_f32(f32(-1f) * -214f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-717f, global3.x, _wgslsmith_f_op_f32(f32(-1f) * -929f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-269f, 1312f)))), ~var_0.a.x, var_0.a);
}

