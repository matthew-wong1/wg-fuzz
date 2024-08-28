struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2480f;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> bool {
    global0 = -821f;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, -245f, arg_0, arg_0))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, 124f, 1287f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -433f, arg_0)), vec4<bool>(false, false, true, false))) - vec4<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(step(548f, -1246f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1290f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, -326f, arg_0, 1000f)))))));
    var var_1 = true;
    global0 = arg_0;
    var var_2 = any(vec2<bool>(any(vec4<bool>(true, true, true, true)), -2147483647i != reverseBits(u_input.b.x))) | false;
    return any(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    var var_0 = arg_0;
    let var_1 = !select(!all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)))), func_3(446f, ~vec4<u32>(arg_2.x, 16984u, arg_2.x, 1u)) & (arg_3.b.x == 31010i));
    var var_2 = arg_0;
    var_2 = Struct_2(~(-1i));
    var var_3 = vec3<f32>(1000f, _wgslsmith_div_f32(923f, _wgslsmith_f_op_f32(369f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-494f)) * _wgslsmith_f_op_f32(step(566f, 459f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * -1775f)));
    return arg_3.b.x;
}

fn func_1() -> f32 {
    let var_0 = -875f;
    var var_1 = countOneBits(28712i);
    let var_2 = Struct_2(u_input.a.x | _wgslsmith_dot_vec2_i32(vec2<i32>(func_2(Struct_2(u_input.c), vec3<u32>(58488u, 0u, 44107u), vec3<u32>(45528u, 55522u, 1u), Struct_1(u_input.b, u_input.b)), 21690i), vec2<i32>(-1i) * -vec2<i32>(18168i, 2147483647i)));
    var_1 = u_input.b.x;
    var var_3 = Struct_3(470f, -1598f, Struct_2(~(-1i) & _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, u_input.b), _wgslsmith_mult_vec3_i32(u_input.b, u_input.b))), _wgslsmith_f_op_f32(f32(-1f) * -1137f) != var_0);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(266f * 696f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -858f)) - 486f)));
    let var_0 = Struct_3(-115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(973f + _wgslsmith_f_op_f32(select(1686f, 1230f, true))))), Struct_2(u_input.a.x), all(vec2<bool>(true, any(vec4<bool>(false, false, true, false)))) && true);
    var var_1 = 17925u;
    var_1 = ~reverseBits(~(~100799u));
    let var_2 = Struct_1(-(u_input.b | countOneBits(u_input.b & vec3<i32>(-2147483647i, var_0.c.a, 39435i))), u_input.b);
    global0 = _wgslsmith_f_op_f32(-var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1080f - 1203f), _wgslsmith_f_op_f32(func_1()), -311f, _wgslsmith_f_op_f32(floor(var_0.b)))), vec4<f32>(-1063f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -661f) - _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(sign(-1066f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(482f, var_0.a, var_0.b) * vec3<f32>(551f, 366f, var_0.b))))))), -39301i, 1u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(588f + var_0.a)))))));
}

