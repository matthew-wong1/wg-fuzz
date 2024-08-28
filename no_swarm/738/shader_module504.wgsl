struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
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

var<private> global0: vec3<i32> = vec3<i32>(-1i, 0i, 0i);

var<private> global1: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: bool, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 634f, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))), arg_1) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_f_op_f32(-928f + arg_0.x), _wgslsmith_f_op_f32(514f + arg_0.x), arg_1))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(1367f * -480f), _wgslsmith_f_op_f32(-arg_0.x), 1f));
    let var_1 = Struct_2(firstLeadingBit(max(_wgslsmith_dot_vec2_i32(global0.zz, global0.zz), -_wgslsmith_sub_i32(-6117i, -2147483647i))), min(u_input.d, ~vec3<i32>(_wgslsmith_clamp_i32(u_input.c, 6427i, 0i), 1i, -2147483647i)), select(vec3<bool>(!(!arg_2), !(-29083i != global0.x), !arg_2), select(select(!vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, true, true), all(vec4<bool>(false, arg_2, arg_2, arg_2))), !(!vec3<bool>(arg_2, false, true)), select(!vec3<bool>(arg_2, true, false), select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(true, false, false), false), u_input.a < arg_3)), select(arg_2 & (u_input.a == 99921u), any(!vec4<bool>(arg_2, arg_2, arg_2, arg_2)), !arg_2)), vec3<bool>(true, arg_2 | (_wgslsmith_f_op_f32(-arg_1) <= _wgslsmith_f_op_f32(exp2(var_0.x))), all(!vec2<bool>(arg_2, arg_2))), Struct_1(vec3<bool>(false, false, any(select(vec4<bool>(arg_2, true, false, false), vec4<bool>(true, false, arg_2, false), vec4<bool>(arg_2, false, arg_2, arg_2))))));
    let var_2 = vec4<i32>(-2147483647i, reverseBits(i32(-1i) * -10262i), 70153i, u_input.d.x);
    let var_3 = var_1;
    let var_4 = vec2<i32>(-(firstTrailingBit(0i) & countOneBits(-2147483647i)), _wgslsmith_add_i32(30912i | min(_wgslsmith_div_i32(var_1.b.x, global0.x), 2147483647i), ~abs(_wgslsmith_sub_i32(u_input.b.x, 2147483647i))));
    return 1000f;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = u_input.a;
    var var_1 = Struct_3(-1514f);
    global0 = u_input.d;
    let var_2 = u_input.b;
    var var_3 = vec4<bool>(arg_3.a.x & (u_input.a == 1u), false, all(vec4<bool>(false, select(arg_3.a.x, false, any(arg_3.a)), arg_0.a.x, arg_0.a.x)), false);
    return 407f;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_1(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(false, false, false), 69726u <= u_input.a)), -107f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2148f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(-961f, -362f), -327f, false, 4294967295u)) * -1166f)), Struct_1(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(ceil(-1414f)));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f - 336f), -315f)))));
    global1 = 24625u;
    let var_1 = any(vec3<bool>(true || !any(vec2<bool>(false, false)), select(true, true, true) != true, !(!all(vec3<bool>(true, true, true)))));
    let var_2 = vec4<u32>(reverseBits(19726u), 51877u, u_input.a, firstTrailingBit(abs(~(~u_input.a))));
    return _wgslsmith_mult_i32(countOneBits(_wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, u_input.c), vec3<i32>(u_input.b.x, 38599i, -2147483647i))), -15464i, global0.x)), u_input.b.x);
}

fn func_5(arg_0: u32, arg_1: i32) -> Struct_2 {
    var var_0 = true;
    let var_1 = Struct_2(138i, u_input.d, !select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, any(vec2<bool>(false, false)), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), !(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))), Struct_1(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(212f - 721f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1367f)))))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(floor(var_2.a)));
    global0 = firstTrailingBit(u_input.d);
    return Struct_2(~max(~(-25581i), arg_1), _wgslsmith_add_vec3_i32(reverseBits(~_wgslsmith_div_vec3_i32(u_input.d, var_1.b)), vec3<i32>(abs(1i), global0.x, i32(-1i) * -52540i)), var_1.e.a, var_1.d, var_1.e);
}

fn func_1() -> bool {
    let var_0 = func_5(~1u, _wgslsmith_mult_i32(-(~func_2()), u_input.d.x));
    let var_1 = -abs(vec4<i32>(_wgslsmith_add_i32(u_input.c, var_0.b.x), ~global0.x, 0i, -27460i) | vec4<i32>(select(var_0.a, u_input.c, false), 19490i, _wgslsmith_add_i32(global0.x, 0i), 1i));
    global0 = select(u_input.d << (~firstLeadingBit(vec3<u32>(0u, 19604u, u_input.a)) % vec3<u32>(32u)), -u_input.d, u_input.a != u_input.a);
    var var_2 = -u_input.d;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(298f * _wgslsmith_f_op_f32(-319f + 124f)));
    return var_0.e.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(all(vec2<bool>(all(vec3<bool>(false, true, false)), true)), !(!all(vec3<bool>(true, false, true))), true));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-106f * _wgslsmith_f_op_f32(f32(-1f) * -342f)) - _wgslsmith_f_op_f32(ceil(1000f))) * -493f));
    var var_2 = func_1();
    let var_3 = func_5(~42328u, 2147483647i ^ _wgslsmith_mult_i32(_wgslsmith_div_i32(-15678i, _wgslsmith_add_i32(global0.x, -80680i)), -2147483647i)).e;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a));
}

