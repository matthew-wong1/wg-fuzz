struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(-562f);

var<private> global2: vec3<f32> = vec3<f32>(1315f, 303f, 166f);

var<private> global3: array<vec2<i32>, 30>;

var<private> global4: vec2<f32> = vec2<f32>(-933f, 471f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec2<f32> {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -575f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -2104f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-560f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a))));
    var var_0 = -3893i;
    global3 = array<vec2<i32>, 30>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.yz, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1110f, global2.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(203f, global1.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1584f, global4.x)))), !((1i != u_input.d.x) && true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global2.x, 1000f, false))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x + global4.x)))));
    global2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -475f, -691f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-285f, arg_0, -769f), vec3<f32>(global2.x, global1.a, 678f))))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-123f + -476f) + -1955f))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_1(-2612f);
    var var_1 = !(!vec3<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false))), false, any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)))));
    global3 = array<vec2<i32>, 30>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a)) - global2.x));
    var var_3 = arg_1.x;
    return _wgslsmith_div_f32(global2.x, var_0.a);
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-867f - -1024f);
    var var_1 = 887f;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(trunc(global4.x))), abs(firstTrailingBit(select(vec3<i32>(-41300i, 1178i, u_input.d.x), vec3<i32>(u_input.d.x, -27634i, -90113i), vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global4.x, -765f) - vec3<f32>(global4.x, -2228f, global2.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-430f, -1577f, 879f), vec3<f32>(330f, var_0, -458f), vec3<bool>(false, false, true))))))), _wgslsmith_f_op_f32(116f - global1.a), -344f);
    global3 = array<vec2<i32>, 30>();
    global2 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_1(1347f, Struct_1(1751f))).x, _wgslsmith_f_op_f32(round(-206f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) + -1402f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1294f)))));
    return vec2<bool>((_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 1u), _wgslsmith_sub_u32(u_input.b.x, 55297u)) >> (~(~u_input.a.x) % 32u)) <= 15940u, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(4294967295u, 4294967295u, u_input.c.x);
    global4 = _wgslsmith_f_op_vec2_f32(select(global2.zx, _wgslsmith_f_op_vec2_f32(func_1(622f, Struct_1(1607f))), !(!func_2())));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x + global2.x))), global4.x))));
    let var_2 = vec3<i32>(-24459i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(10443i, firstTrailingBit(1i)), 2147483647i), -u_input.d.x);
    let var_3 = var_1;
    global3 = array<vec2<i32>, 30>();
    var var_4 = any(vec4<bool>(true, (_wgslsmith_f_op_f32(-var_1.a) >= -785f) || true, any(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), true), true)), !(func_2().x == select(false, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(567f, global4.x, var_3.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global4.x, 2199f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, global2.x, global2.x))))))), -1067f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global4.x)))), 1104f, _wgslsmith_f_op_vec2_f32(step(global2.xy, vec2<f32>(global1.a, _wgslsmith_div_f32(global4.x, global4.x)))));
}

