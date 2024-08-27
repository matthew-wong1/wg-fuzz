struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<u32, 4> = array<u32, 4>(4294967295u, 69297u, 47021u, 16730u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> f32 {
    global1 = array<u32, 4>();
    var var_0 = Struct_2(arg_0.a);
    let var_1 = true;
    global1 = array<u32, 4>();
    var var_2 = 33850u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(371f)) - 382f);
}

fn func_2() -> u32 {
    var var_0 = -64952i;
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(false))), _wgslsmith_f_op_f32(-global0.x)), global0.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -791f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-427f, global0.x))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(340f, global0.x)))))));
    var_0 = -(~(_wgslsmith_mod_i32(u_input.b | 9723i, u_input.a.x) & ~(u_input.b | u_input.a.x)));
    var var_2 = ~u_input.a.x;
    return _wgslsmith_mod_u32(1u, u_input.c);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> vec2<f32> {
    var var_0 = Struct_1(vec4<bool>(!(11223u >= reverseBits(u_input.d)), false, arg_1.a, false), -(33730i >> (~_wgslsmith_div_u32(arg_2, 4737u) % 32u)), -779f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-901f, 587f, 1204f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) - vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(490f, global0.x, global0.x)))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 1815f, _wgslsmith_f_op_f32(abs(1177f))), vec3<f32>(1f, _wgslsmith_f_op_f32(-global0.x), global0.x), (66091u >= u_input.c) || true))), global0.x);
    let var_1 = select(select(!select(select(var_0.a.xz, vec2<bool>(arg_1.a, var_0.a.x), vec2<bool>(true, arg_0)), select(var_0.a.zy, var_0.a.yx, vec2<bool>(arg_0, var_0.a.x)), all(var_0.a.zz)), var_0.a.yw, !(!(!arg_1.a))), select(vec2<bool>(!var_0.a.x, true), var_0.a.xw, (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 29857u), vec2<u32>(46433u, 1u)) | arg_2) < global1[_wgslsmith_index_u32(u_input.d ^ arg_2, 4u)]), false);
    let var_2 = _wgslsmith_add_i32(max(u_input.a.x, ~(-u_input.a.x << (1u % 32u))), u_input.a.x);
    let var_3 = Struct_1(vec4<bool>(false | !(arg_1.a | var_0.a.x), !any(var_0.a.wx), !(var_0.b != var_0.b) & all(vec4<bool>(arg_1.a, true, arg_1.a, false)), all(var_0.a)), -_wgslsmith_add_i32(2147483647i, _wgslsmith_mod_i32(var_0.b, -2147483647i)), 363f, _wgslsmith_f_op_vec3_f32(max(var_0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(766f, global0.x, 724f))))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1398f)))));
    var var_4 = var_2 << (~20262u % 32u);
    return vec2<f32>(_wgslsmith_f_op_f32(-var_3.c), global0.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(func_4(false, arg_1, 0u & func_2()));
    let var_0 = 566f;
    var var_1 = arg_0;
    global0 = var_1.d.yy;
    var var_2 = Struct_2(true);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(-24765i != func_1(Struct_1(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false), ~u_input.b, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global0.x, global0.x))), global0.x), Struct_2(any(vec3<bool>(true, false, true))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true))));
    global0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 170f), vec2<f32>(453f, global0.x), true));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x)));
    global1 = array<u32, 4>();
    var var_1 = Struct_1(select(select(!(!vec4<bool>(false, false, var_0.a, var_0.a)), vec4<bool>(var_0.a, true, any(vec4<bool>(var_0.a, var_0.a, false, var_0.a)), var_0.a), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, var_0.a, var_0.a), vec4<bool>(var_0.a, true, true, var_0.a), var_0.a), select(vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(true, true, true, var_0.a), vec4<bool>(var_0.a, true, var_0.a, var_0.a)))), vec4<bool>(any(vec4<bool>(var_0.a, var_0.a, true, var_0.a)), var_0.a, true, ~global1[_wgslsmith_index_u32(1u, 4u)] <= ~28471u), var_0.a), u_input.a.x, _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_2(var_0.a))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, global0.x, false)) - global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1739f, global0.x, -103f) - vec3<f32>(109f, -807f, 313f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -350f) - vec3<f32>(1060f, global0.x, global0.x))) * vec3<f32>(global0.x, 1f, _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1106f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x)))));
    var_1 = Struct_1(var_1.a, var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c * -359f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-619f, _wgslsmith_f_op_f32(floor(1603f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.x - var_1.e), 1225f, _wgslsmith_f_op_f32(-var_1.d.x)) - var_1.d) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.e, _wgslsmith_f_op_f32(-var_1.e), _wgslsmith_f_op_f32(f32(-1f) * -486f)), vec3<f32>(1000f, _wgslsmith_f_op_f32(-global0.x), -1871f), !(!var_1.a.wyz)))), _wgslsmith_f_op_f32(var_1.d.x + -1000f));
    var_0 = Struct_2(false);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.d - vec3<f32>(1455f, 873f, var_1.e))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, global0.x, var_1.d.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(var_1.d, vec3<f32>(var_1.e, var_1.e, -271f)), _wgslsmith_f_op_vec3_f32(var_1.d - vec3<f32>(var_1.d.x, var_1.d.x, 169f))))))), var_1.b, reverseBits(-1i), firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], 10523u) | vec3<u32>(5199u, 1794u, global1[_wgslsmith_index_u32(95257u, 4u)])) >> (~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 4u)], u_input.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c, 4294967295u), vec3<u32>(29639u, 0u, 1u), vec3<u32>(u_input.d, 4294967295u, 29751u))) % vec3<u32>(32u)));
}

