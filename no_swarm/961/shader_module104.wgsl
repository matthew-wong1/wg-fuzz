struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(873f, -230f) + vec2<f32>(737f, -599f))) + vec2<f32>(_wgslsmith_f_op_f32(-804f * 1000f), 1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2019f, 157f)), vec2<f32>(182f, -217f)) * vec2<f32>(_wgslsmith_f_op_f32(-1343f - -2564f), 427f))));
    var var_1 = arg_0.b;
    let var_2 = arg_0.b;
    var var_3 = ~select(_wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_div_vec3_u32(vec3<u32>(30938u, 0u, 0u), u_input.c)), ~reverseBits(firstTrailingBit(arg_0.b.a)), var_0.x >= var_0.x);
    let var_4 = vec2<bool>(!(!any(!vec4<bool>(arg_0.a, arg_0.a, false, false))), any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(arg_0.c, arg_0.a), true)) || arg_0.c);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-344f, var_0.x, 283f, 491f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1422f, 1000f, var_0.x, -2252f) + vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f))))));
}

fn func_2() -> i32 {
    global0 = all(vec2<bool>(!(u_input.a < reverseBits(u_input.b)), true));
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(any(vec4<bool>(true, true, false, true)), Struct_1(2741u, vec2<i32>(-34837i, 0i)), true)))))));
    let var_1 = Struct_2(all(select(vec3<bool>(true, true, all(vec2<bool>(true, false))), vec3<bool>(any(vec2<bool>(false, true)), true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, false, true), true))), Struct_1(31231u >> (_wgslsmith_div_u32(countOneBits(u_input.c.x), firstTrailingBit(u_input.b)) % 32u), vec2<i32>(0i, -firstLeadingBit(0i))), any(!vec4<bool>(true, false, any(vec4<bool>(false, true, false, false)), true)));
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, -1000f), -406f, _wgslsmith_f_op_f32(round(-898f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-110f * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(461f, var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1303f, var_0.x), _wgslsmith_f_op_f32(-var_0.x)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(all(vec3<bool>(true, var_1.a, var_1.a)), Struct_1(abs(0u), var_1.b.b << (u_input.c.xz % vec2<u32>(32u))), true))));
    return -52280i & var_1.b.b.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: bool) -> bool {
    let var_0 = arg_0.zy;
    global0 = arg_2;
    return any(select(select(vec3<bool>(false, any(vec2<bool>(arg_2, arg_2)), true), select(select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(true, true, arg_2), vec3<bool>(true, true, arg_2)), vec3<bool>(true, true, true), arg_2), select(select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, true, true), true), vec3<bool>(false, false, false), 792f >= arg_1)), !select(!vec3<bool>(false, false, arg_2), !vec3<bool>(true, arg_2, arg_2), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, true, arg_2))), any(select(select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(false, arg_2, false), arg_2), select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(true, arg_2, false), vec3<bool>(arg_2, arg_2, true)), vec3<bool>(true, true, arg_2)))));
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_2(func_4(vec4<i32>(func_2(), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), ~(-1i) >> (u_input.b % 32u), ~(~1i)), -2048f, true || any(vec4<bool>(true, true, true, true))), Struct_1(~(~(~13660u)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 2175i)))), all(vec2<bool>(any(vec3<bool>(false, true, true)), false)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1156f * 847f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(144f, -1000f, var_0.c)), -1641f))) + 658f) <= _wgslsmith_f_op_f32(min(219f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f) + -272f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1829f, -1000f)))));
    var var_1 = var_0.c;
    var var_2 = var_0.b.b;
    var var_3 = Struct_1(u_input.b, firstTrailingBit(var_0.b.b));
    return ~countOneBits(~firstTrailingBit(vec4<u32>(var_3.a, u_input.a, 1u, var_0.b.a)));
}

fn func_5(arg_0: vec4<u32>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_2(select(arg_2, false, true), arg_3, arg_2);
    let var_1 = arg_0.x;
    global0 = !select(false, arg_2, any(select(select(vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(arg_2, false, true, false), var_0.c), !vec4<bool>(arg_2, var_0.c, false, var_0.a), var_0.a && arg_2)));
    global0 = !(~var_0.b.b.x == arg_3.b.x);
    let var_2 = firstLeadingBit(arg_0);
    return ~func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-func_5(func_1(), u_input.c.x, true, Struct_1(0u, vec2<i32>(3775i, 34415i))) << (max(1u, 2726u) % 32u));
    global0 = any(vec3<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)), true, all(vec2<bool>(true, true))));
    var var_1 = vec4<u32>(firstTrailingBit(min(57532u, abs(u_input.a))), min(max(7824u, ~u_input.c.x), ~(~(1u >> (u_input.a % 32u)))), abs(~(~52405u ^ (12526u << (u_input.c.x % 32u)))), 88618u);
    var var_2 = Struct_2(false, Struct_1((u_input.c.x & 34433u) >> (0u % 32u), abs(firstTrailingBit(vec2<i32>(2147483647i, 33343i))) << (var_1.yw % vec2<u32>(32u))), all(vec2<bool>(true, true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(676f)))), _wgslsmith_f_op_f32(-710f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1130f, -538f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-328f, -336f), vec2<f32>(-189f, 336f), var_2.a)) * vec2<f32>(245f, 2054f))), !select(vec2<bool>(var_2.c, false), !vec2<bool>(var_2.a, true), select(vec2<bool>(false, false), vec2<bool>(true, var_2.c), vec2<bool>(true, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(min(func_1(), ~(~vec4<u32>(var_2.b.a, 76325u, 74349u, var_2.b.a))), ~_wgslsmith_clamp_vec4_u32(max(vec4<u32>(var_1.x, var_1.x, var_2.b.a, u_input.c.x), vec4<u32>(var_1.x, var_1.x, 47969u, var_1.x)), ~vec4<u32>(47869u, 1u, var_1.x, 12997u), ~vec4<u32>(60726u, var_1.x, 71655u, u_input.b)), select(select(select(vec4<bool>(var_2.c, true, false, var_2.c), vec4<bool>(var_2.c, true, false, false), vec4<bool>(true, false, false, var_2.a)), select(vec4<bool>(false, false, var_2.c, false), vec4<bool>(var_2.c, true, var_2.c, var_2.a), vec4<bool>(true, true, true, var_2.c)), !vec4<bool>(var_2.c, var_2.a, true, var_2.a)), !vec4<bool>(var_2.a, var_2.a, var_2.c, false), var_2.c)), min(-9718i, 68381i));
}

