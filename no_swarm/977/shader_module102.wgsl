struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<f32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    let var_0 = -12464i;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(arg_0.x))) - _wgslsmith_f_op_f32(f32(-1f) * -438f))), _wgslsmith_f_op_vec2_f32(-arg_0), Struct_1(vec4<u32>(abs(u_input.d), u_input.d, 1u, u_input.d), false, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -1539f, arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -547f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, -1498f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1229f, arg_0.x, 175f), vec3<f32>(arg_0.x, 463f, arg_0.x))))), all(vec4<bool>(true, true, true, true))));
    global0 = true;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -741f);
    let var_3 = Struct_4(53123u, Struct_1(var_1.c.a, true, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_1.c.c))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 257f, 451f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c.d)), true)), true));
    return select(vec3<bool>(true, select(countOneBits(var_0), var_0 & u_input.c.x, true) < u_input.a.x, !(false || !var_3.b.b)), !vec3<bool>(firstTrailingBit(36742u) >= countOneBits(u_input.d), var_3.b.e, true), select(select(!select(vec3<bool>(var_3.b.b, true, var_3.b.e), vec3<bool>(false, var_1.c.e, true), true), vec3<bool>(var_1.c.b, all(vec3<bool>(var_3.b.e, true, false)), arg_0.x <= arg_0.x), !select(vec3<bool>(true, var_3.b.e, var_3.b.e), vec3<bool>(true, var_1.c.b, var_3.b.b), vec3<bool>(false, false, false))), vec3<bool>(!var_1.c.b, all(select(vec2<bool>(true, var_3.b.b), vec2<bool>(var_3.b.e, var_3.b.b), true)), true), ~40965u != ~u_input.d));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(19219u, Struct_1(~vec4<u32>(u_input.d & u_input.d, 18663u >> (u_input.d % 32u), select(21261u, 4294967295u, false), 4294967295u), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1065f, 1000f)), -822f, 1f, _wgslsmith_f_op_f32(-1233f * -1000f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -350f, -300f), vec3<f32>(2206f, -304f, -1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(702f, 361f, -305f))), true)), true));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1155f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-362f + var_0.b.d.x) - 437f)), _wgslsmith_f_op_f32(f32(-1f) * -309f), var_0.b.c.x, -557f));
    var var_2 = -1000f;
    var var_3 = !func_3(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.c.x + var_0.b.d.x), _wgslsmith_f_op_f32(var_1.x + var_0.b.c.x))), _wgslsmith_div_f32(-870f, _wgslsmith_f_op_f32(-var_0.b.d.x))));
    let var_4 = var_1.x;
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1121f), -576f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(1172f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) + _wgslsmith_f_op_f32(-var_4))))), Struct_1(_wgslsmith_sub_vec4_u32(select(var_0.b.a, var_0.b.a, true), var_0.b.a), var_0.b.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(var_1)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_0.b.c.x, -638f, var_4) * var_0.b.c))), select(select(vec4<bool>(var_3.x, var_3.x, true, false), vec4<bool>(true, var_3.x, true, true), vec4<bool>(var_3.x, false, false, false)), select(vec4<bool>(true, var_3.x, var_0.b.b, true), vec4<bool>(true, true, false, var_0.b.b), vec4<bool>(true, var_0.b.b, true, true)), !var_0.b.e))), _wgslsmith_f_op_vec3_f32(exp2(var_1.zzw)), any(!vec3<bool>(var_3.x, false, true))));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: i32, arg_3: f32) -> bool {
    global0 = true;
    var var_0 = func_2();
    var var_1 = ~(vec2<u32>(1u, select(_wgslsmith_clamp_u32(0u, var_0.c.a.x, var_0.c.a.x), func_2().c.a.x, true)) & _wgslsmith_mult_vec2_u32(var_0.c.a.xy, ~vec2<u32>(u_input.d, 0u)));
    let var_2 = func_2();
    var var_3 = var_0.c.a.x;
    return all(select(vec2<bool>(select(var_0.c.e, false, var_1.x >= u_input.d), !var_0.c.b), !(!(!vec2<bool>(var_2.c.b, true))), !(!var_2.c.b) && true));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>) -> Struct_2 {
    global0 = true;
    let var_0 = u_input.a;
    var var_1 = vec2<u32>(1u, select(_wgslsmith_mod_u32(~0u, u_input.d), select(~4294967295u, _wgslsmith_sub_u32(u_input.d, 23387u) ^ _wgslsmith_mod_u32(4294967295u, u_input.d), true), arg_1.x < 470i));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-640f + arg_0) + arg_0))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(528f, arg_0), func_2().b, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1523f) * vec2<f32>(arg_0, arg_0)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -540f) + vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_f32(trunc(arg_0)) > -220f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(-1341f)), _wgslsmith_f_op_f32(f32(-1f) * -1367f)))))), func_2().c);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1237f, -135f) * -1744f), 1000f))), select(u_input.a.yzw, _wgslsmith_mult_vec3_i32(~u_input.e, firstTrailingBit(u_input.e)), func_1(u_input.a.x, vec3<i32>(22340i, 0i, -24177i), u_input.e.x, _wgslsmith_f_op_f32(-841f - -711f))) & firstTrailingBit(u_input.a.zxz));
    var var_1 = _wgslsmith_f_op_vec2_f32(var_0.c.d.xy - vec2<f32>(func_4(var_0.c.c.x, vec3<i32>(firstTrailingBit(0i), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), ~16670i)).c.d.x, -346f));
    let var_2 = Struct_2(var_1.x, vec2<f32>(var_0.b.x, 1141f), var_0.c);
    let var_3 = vec4<i32>(u_input.e.x, u_input.b.x, ~1i, ~(-2147483647i << (0u % 32u)));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1283f), _wgslsmith_f_op_f32(-func_4(var_1.x, vec3<i32>(36917i, -3158i, 0i)).c.d.x))), 1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -916f))), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(max(1f, 2066f)))) - var_2.c.c);
    let var_5 = countOneBits(vec4<i32>(min(max(-1i, ~1i), var_3.x), -1i, -2147483647i, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(29503u ^ ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_2.c.a.zy, vec2<u32>(44580u, 8524u), vec2<u32>(4294967295u, 4294967295u)), var_2.c.a.yw), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-569f + 2137f), -977f), abs(_wgslsmith_add_u32(1u, abs(~1u))));
}

