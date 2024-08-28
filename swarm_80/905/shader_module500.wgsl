struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, true), false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    global1 = vec3<f32>(1658f, -1078f, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(sign(global1.x)))));
    var var_0 = u_input.c.xz;
    var var_1 = 1i;
    var_1 = ~_wgslsmith_add_i32(-(-u_input.a.x << (firstLeadingBit(global0.x) % 32u)), max(reverseBits(-10419i), firstTrailingBit(76030i)));
    let var_2 = -(min(firstTrailingBit(select(vec3<i32>(u_input.a.x, u_input.d, u_input.a.x), u_input.a, vec3<bool>(global2.b, false, false))), firstLeadingBit(u_input.a)) | vec3<i32>(abs(_wgslsmith_mult_i32(-42831i, u_input.a.x)), u_input.a.x, -17867i));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(450f, 826f, global1.x, 1456f), vec4<f32>(313f, 198f, global1.x, global1.x), vec4<bool>(false, global2.a.x, global2.a.x, global2.b))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, -110f, global1.x, -1433f)))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    let var_0 = vec3<f32>(364f, -559f, 1937f);
    var var_1 = select(select(!vec3<bool>(true, !global2.a.x, true), !vec3<bool>(select(false, arg_0.x, arg_0.x), arg_0.x & true, all(vec3<bool>(global2.b, false, false))), !(!all(vec4<bool>(arg_0.x, true, false, global2.b)))), !select(vec3<bool>(0u <= arg_2, false, true), !select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, false, arg_0.x), vec3<bool>(false, false, true)), select(!vec3<bool>(global2.b, global2.b, global2.a.x), select(vec3<bool>(false, true, true), vec3<bool>(true, true, global2.a.x), vec3<bool>(true, arg_0.x, global2.a.x)), true)), ~(~u_input.a.x) <= _wgslsmith_div_i32(_wgslsmith_mult_i32(-19752i, 1i), 1i ^ _wgslsmith_div_i32(58171i, u_input.d)));
    let var_2 = Struct_1(!(!arg_0), any(vec3<bool>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -71132i) >= firstTrailingBit(u_input.d), global2.a.x, global2.b)));
    let var_3 = var_2.b;
    let var_4 = max(abs(select(select(_wgslsmith_div_vec2_i32(vec2<i32>(57636i, u_input.a.x), vec2<i32>(-2147483647i, u_input.a.x)), u_input.a.xz, arg_0.x | var_2.b), vec2<i32>(0i, -1970i), var_2.a)), vec2<i32>(-u_input.a.x, select(u_input.d, -19184i | u_input.a.x, all(vec4<bool>(var_1.x, var_3, true, var_2.b))) ^ -u_input.d));
    return _wgslsmith_f_op_f32(sign(var_0.x));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    let var_0 = ~u_input.c.wy;
    global2 = Struct_1(global2.a, true);
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, global1.x, global1.x)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(func_4(select(vec2<bool>(global2.b, false), global2.a, global2.a), _wgslsmith_f_op_vec4_f32(func_3()), var_0.x, vec4<f32>(global1.x, -1244f, global1.x, global1.x))), 415f)), true));
    global0 = u_input.c.xy;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1185f, global1.x, global1.x) - vec4<f32>(global1.x, -310f, global1.x, 1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(882f, -769f, -1000f, global1.x) * vec4<f32>(1168f, global1.x, 1097f, global1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-602f, global1.x, -692f, 890f))))) - vec4<f32>(_wgslsmith_f_op_f32(sign(global1.x)), 1907f, global1.x, 1514f))));
    return global2.b;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = u_input.c.yw;
    global0 = ~abs(u_input.b.xx);
    global2 = Struct_1(!select(!global2.a, select(!vec2<bool>(true, global2.a.x), !arg_0.a, any(vec4<bool>(arg_0.b, true, false, true))), vec2<bool>(true, !arg_0.b)), !arg_0.a.x);
    let var_1 = vec3<f32>(1362f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_4(vec2<bool>(true, true), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(step(global1.x, 1000f)), _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(global1.x * global1.x)), ~22431u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, global1.x, -488f, -333f)))))))), global1.x);
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f)))), 602f);
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = select(vec3<bool>(1135f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -584f)), 0u <= ~global0.x, all(select(global2.a, select(global2.a, global2.a, arg_0), arg_1.yz))), vec3<bool>(arg_1.x, true || (45822u != global0.x), global2.a.x), arg_1.zzy);
    let var_1 = func_5(Struct_1(select(vec2<bool>(func_2(vec3<i32>(-1i, u_input.d, u_input.a.x)), false), vec2<bool>(any(vec2<bool>(true, arg_0)), all(vec3<bool>(global2.b, false, var_0.x))), false), false), -(u_input.a.x & ~45017i) | -firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.d), vec2<i32>(u_input.d, u_input.a.x))), ((abs(u_input.a.x) << (~u_input.b.x % 32u)) ^ u_input.d) | ~u_input.a.x);
    var var_2 = var_1;
    let var_3 = global1.x;
    var var_4 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-2336f, _wgslsmith_f_op_f32(global1.x * 940f)) * global1.zx);
    var var_1 = ~vec4<u32>(~global0.x >> ((global0.x << (23760u % 32u)) % 32u), 1u << (u_input.b.x % 32u), select(20132u, 0u, global2.b), ~global0.x);
    let var_2 = func_1(true, vec4<bool>(true, global2.b, select(global2.a.x, true, true) & global2.b, false));
    let var_3 = 1u;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1306f), var_0.x, -934f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(-global1.x), var_0.x) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2577f, global1.x, var_0.x), vec3<f32>(129f, var_0.x, -1559f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(648f, 987f, 890f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec2_f32(ceil(var_0)));
}

