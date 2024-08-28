struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, -22431i, 57189i);

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(889f)), Struct_2(Struct_1(353f)), Struct_2(Struct_1(936f)), Struct_2(Struct_1(319f)), Struct_2(Struct_1(-1216f)), Struct_2(Struct_1(2699f)), Struct_2(Struct_1(1235f)), Struct_2(Struct_1(1700f)), Struct_2(Struct_1(-255f)), Struct_2(Struct_1(379f)), Struct_2(Struct_1(-1880f)), Struct_2(Struct_1(1000f)), Struct_2(Struct_1(-551f)), Struct_2(Struct_1(821f)), Struct_2(Struct_1(-500f)), Struct_2(Struct_1(299f)));

var<private> global2: array<Struct_3, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, _wgslsmith_mult_u32(31482u >> (~u_input.b % 32u), _wgslsmith_mult_u32(40210u, ~u_input.b))), 10u)];
    global2 = array<Struct_3, 10>();
    global2 = array<Struct_3, 10>();
    global2 = array<Struct_3, 10>();
    let var_1 = var_0.d;
    return -var_0.e.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<bool>) -> f32 {
    global2 = array<Struct_3, 10>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.a)), -923f, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.c.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.b.a))))))));
    var var_1 = _wgslsmith_f_op_f32(ceil(var_0));
    let var_2 = Struct_4(arg_1.d.a, _wgslsmith_f_op_vec4_f32(exp2(arg_1.c)), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))), !arg_1.a.x);
    global1 = array<Struct_2, 16>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(select(-648f, -223f, false))), _wgslsmith_f_op_f32(-2228f * -473f))))));
}

fn func_1() -> f32 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, true), Struct_3(vec4<bool>(false, true, false, false), Struct_1(365f), vec4<f32>(-903f, 410f, 1129f, -642f), Struct_2(Struct_1(669f)), vec3<i32>(var_0, var_0, 1i)), vec2<bool>(false, false))) + -1268f))), -629f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1108f - 208f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(467f * -124f))))));
    global0 = min(vec3<i32>(-(~_wgslsmith_div_i32(global0.x, -1i)), -(32974i << (u_input.b % 32u)), u_input.a), min(~(vec3<i32>(1i, 1i, 2147483647i) | (vec3<i32>(0i, u_input.a, var_0) << (vec3<u32>(1u, u_input.b, u_input.b) % vec3<u32>(32u)))), vec3<i32>(57591i, _wgslsmith_add_i32(var_0, 2147483647i), abs(0i)) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(34880u, u_input.b, 4294967295u), vec3<u32>(8862u, u_input.b, u_input.b)) | ~vec3<u32>(u_input.b, 1u, 0u)) % vec3<u32>(32u))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1050f))), _wgslsmith_f_op_f32(var_1.x * 462f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(796f, 1030f, -228f, var_2.a.a) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 248f, var_2.a.a, var_2.a.a), vec4<f32>(var_1.x, -1000f, var_1.x, var_1.x))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(any(vec3<bool>(true, true, true)) == true, true, _wgslsmith_add_u32(42632u, 0u) == abs(~select(u_input.b, u_input.b, false)));
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1709f, 668f), vec2<f32>(_wgslsmith_f_op_f32(-611f - _wgslsmith_f_op_f32(abs(-1094f))), 2451f), var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(988f + -635f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1720f) * -503f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -745f)), _wgslsmith_f_op_f32(floor(-299f))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(357f)) - var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1317f * -829f) * _wgslsmith_f_op_f32(select(-880f, var_1.x, var_0.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1.x))))));
    let var_2 = Struct_1(-1736f);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, var_2.a))), vec2<f32>(var_2.a, var_2.a)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, var_1.x))) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, -1701f), vec2<f32>(598f, var_1.x))), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.a, 1000f), vec2<f32>(var_2.a, -1000f))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * var_2.a), var_1.x) * _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(func_1())));
    let var_4 = !select(select(!select(var_0.yz, vec2<bool>(var_0.x, var_0.x), var_0.yz), select(select(var_0.yy, var_0.xx, var_0.x), select(vec2<bool>(var_0.x, true), var_0.yx, vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(var_0.x, false), var_0.x)), false), select(var_0.zx, vec2<bool>(any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), var_0.x), true), !var_0.zz);
    global2 = array<Struct_3, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-336f + var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(804f + var_3.x))), var_2.a, reverseBits(vec4<u32>(u_input.b | _wgslsmith_mod_u32(7004u, u_input.b), ~(~u_input.b), 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(4596u, 0u), vec2<u32>(u_input.b, u_input.b))))), u_input.b);
}

