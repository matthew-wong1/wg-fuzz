struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30>;

var<private> global1: vec2<i32>;

var<private> global2: bool = false;

var<private> global3: vec3<f32> = vec3<f32>(-138f, -770f, 1286f);

var<private> global4: vec3<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = arg_1;
    global0 = array<vec4<i32>, 30>();
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_1.d.yyy * arg_1.d.wxz))));
    global4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-203f, -342f, false)), -773f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1007f, 137f)) - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - _wgslsmith_f_op_f32(select(var_0.b, var_0.b, arg_2.b))), _wgslsmith_f_op_f32(sign(1688f)), !(!arg_0.x)))));
    var var_1 = ~_wgslsmith_add_i32(19265i, 15678i);
    return _wgslsmith_f_op_f32(exp2(global3.x));
}

fn func_2() -> Struct_1 {
    global4 = vec3<f32>(224f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_f_op_f32(950f + 1000f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), Struct_3(u_input.a, 459f, Struct_1(vec4<i32>(2147483647i, global1.x, global1.x, u_input.a.x), true), vec4<f32>(global4.x, -1000f, global4.x, global3.x)), Struct_1(vec4<i32>(-2147483647i, 2147483647i, -1i, -1i), false), Struct_2(vec2<bool>(true, true), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 30u)], false), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 30u)], true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) * global3.x))));
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global4.x, 1001f))))))));
    var var_0 = Struct_2(select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true, any(vec3<bool>(true, false, true)))), false), Struct_1(abs(global0[_wgslsmith_index_u32(1u, 30u)]), any(vec2<bool>(true, true))), Struct_1(global0[_wgslsmith_index_u32(1u, 30u)] ^ (vec4<i32>(global1.x, -2147483647i, global1.x, -43739i) | _wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(u_input.b, 30u)], global0[_wgslsmith_index_u32(83404u, 30u)])), select(any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), any(vec2<bool>(true, true)), true)));
    let var_1 = Struct_3(~u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(f32(-1f) * -640f))))), Struct_1(global0[_wgslsmith_index_u32(u_input.b, 30u)], true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 1260f, 1381f, global3.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1589f, global3.x), _wgslsmith_f_op_f32(-global4.x), var_0.b.b)), global4.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, global4.x)), _wgslsmith_f_op_f32(global4.x + -893f)))));
    var var_2 = var_1;
    return Struct_1(_wgslsmith_div_vec4_i32(var_2.c.a, vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.a, var_1.a) | 2147483647i, global1.x, -firstLeadingBit(-10831i), var_1.a.x)), var_1.c.b);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>) -> bool {
    var var_0 = select(!(!(!vec2<bool>(arg_0.a.x, false))), select(arg_0.a, arg_0.a, arg_0.c.b), arg_0.a);
    global4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_2), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_2), vec3<f32>(global3.x, 1f, -706f))), !(!(!any(vec4<bool>(arg_0.a.x, true, var_0.x, arg_0.a.x))))));
    var var_1 = abs(_wgslsmith_add_u32(firstTrailingBit(~34491u), 0u) << (reverseBits(0u) % 32u));
    let var_2 = u_input.a.x;
    let var_3 = -2147483647i >> (~(~(22401u | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 3429u, 42001u), vec4<u32>(54147u, u_input.b, u_input.b, 0u)))) % 32u);
    return arg_0.c.b;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<f32>) -> f32 {
    var var_0 = vec2<bool>(func_4(Struct_2(!select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0)), func_2(), func_2()), -max(-14811i, -1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 * arg_2) - arg_2)), arg_0);
    let var_1 = Struct_3(arg_1.yy, arg_2.x, func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(floor(1000f)), -566f, global3.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1835f, 905f, arg_2.x, -788f)))) * vec4<f32>(global4.x, -1888f, _wgslsmith_f_op_f32(380f + _wgslsmith_f_op_f32(-1053f + global4.x)), 1000f)));
    let var_2 = Struct_3(vec2<i32>(var_1.c.a.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-1i, -34264i)), vec2<i32>(~2147483647i, _wgslsmith_add_i32(25945i, arg_1.x)))), global3.x, Struct_1(func_2().a, var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1.d * vec4<f32>(global4.x, arg_2.x, 2132f, global4.x)), vec4<f32>(1353f, arg_2.x, arg_2.x, 2631f), var_1.c.b)) - var_1.d)));
    var var_3 = var_2;
    var_0 = !vec2<bool>(select(all(!vec3<bool>(arg_0, false, false)), var_0.x, true), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), !var_0.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(select(vec3<bool>(true, arg_0, var_0.x), vec3<bool>(true, var_0.x, var_0.x), false), select(vec3<bool>(var_2.c.b, true, var_0.x), vec3<bool>(true, false, false), var_1.c.b), any(vec3<bool>(var_3.c.b, var_1.c.b, var_3.c.b))), var_2, Struct_1(-var_1.c.a, select(var_3.c.b, var_2.c.b, arg_0)), Struct_2(select(vec2<bool>(var_3.c.b, true), vec2<bool>(var_1.c.b, true), vec2<bool>(true, var_1.c.b)), func_2(), Struct_1(var_3.c.a, var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -495f)))), _wgslsmith_f_op_f32(f32(-1f) * -716f), -771f)));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1922f, global4.x, global3.x))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(1864f)), _wgslsmith_f_op_f32(global3.x + global4.x), _wgslsmith_f_op_f32(func_1(false, vec3<i32>(u_input.a.x, 1i, 2147483647i), vec3<f32>(global4.x, global3.x, global3.x)))))));
    var var_0 = func_2();
    let var_1 = Struct_1(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, global1.x, global1.x), vec3<i32>(-2147483647i, global1.x, u_input.a.x)), 23732i, -10764i), reverseBits(var_0.a))), var_0.b);
    let var_2 = _wgslsmith_dot_vec3_i32(~(var_1.a.xww & min(~vec3<i32>(var_0.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-1i, u_input.a.x, 2147483647i))), abs(-vec3<i32>(global1.x, var_1.a.x << (1158u % 32u), u_input.a.x >> (2661u % 32u))));
    var_0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x + global3.x) * _wgslsmith_f_op_f32(global3.x + -1000f)), -628f) * _wgslsmith_f_op_f32(exp2(global4.x))), vec4<f32>(global3.x, -598f, global3.x, -1197f));
}

