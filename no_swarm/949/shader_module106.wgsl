struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(6981u, 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_3) -> f32 {
    global0 = _wgslsmith_sub_vec2_u32(u_input.a.yz, ~(~(~vec2<u32>(4294967295u, 29466u))));
    return _wgslsmith_f_op_f32(-arg_0.a.x);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: bool) -> i32 {
    let var_0 = Struct_2(arg_2, _wgslsmith_mod_i32(1i & _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(1i, 1i, -1i, 2147483647i)), -vec4<i32>(-16036i, -49406i, -1i, 0i)), -((-2147483647i << (global0.x % 32u)) ^ countOneBits(2147483647i))), true, Struct_1(_wgslsmith_mod_i32(~(-21468i), -39961i) << (arg_1 % 32u)));
    let var_1 = 3378u;
    global0 = firstLeadingBit(select(~min(abs(u_input.a.wy), ~u_input.a.wy), vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, 35044u), u_input.a)), arg_1), var_0.a | all(!vec2<bool>(false, arg_2))));
    let var_2 = u_input.a;
    global0 = abs(reverseBits(reverseBits(vec2<u32>(var_1, abs(var_1)))));
    return -1i;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> i32 {
    let var_0 = -reverseBits(func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(Struct_3(vec4<f32>(-458f, 205f, -1448f, -1070f)))))), reverseBits(0u), u_input.b > global0.x));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(floor(594f)))))))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-314f + _wgslsmith_f_op_f32(f32(-1f) * -421f))))));
    var var_2 = Struct_1(~28697i);
    global0 = min(u_input.a.ww, u_input.a.wx);
    let var_3 = arg_0;
    return 6308i;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(773f + _wgslsmith_f_op_f32(step(-1047f, 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-542f * _wgslsmith_f_op_f32(-2123f + -479f)) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1155f, 123f), -625f))), -512f));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(min(var_0.a, var_0.a)));
    global0 = vec2<u32>(1u, countOneBits(~9983u));
    let var_1 = Struct_4(Struct_2(any(!select(vec2<bool>(false, arg_1), vec2<bool>(false, arg_1), vec2<bool>(true, arg_2.c))), arg_2.b, true, Struct_1(arg_2.d.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-464f)))) + _wgslsmith_f_op_f32(round(var_0.a.x))));
    var var_2 = u_input.c.xz;
    return Struct_2(true, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.b, 11225i, 75111i, arg_0.d.a) << (u_input.a % vec4<u32>(32u)), vec4<i32>(var_1.a.b, arg_0.b, -2147483647i, arg_0.d.a)), vec4<i32>(-1i, arg_0.d.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, -28619i, arg_2.d.a, -1i), vec4<i32>(arg_0.d.a, 1i, var_1.a.d.a, arg_0.d.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(36139i, arg_0.d.a), vec2<i32>(arg_2.b, arg_0.d.a)))), abs(-2147483647i) ^ var_1.a.b), true, arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-751f, -665f, _wgslsmith_f_op_f32(f32(-1f) * -233f), _wgslsmith_f_op_f32(f32(-1f) * -587f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1413f, 921f, -557f, 320f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(968f, -517f, 1484f, -396f), vec4<f32>(-450f, 1709f, 809f, -752f)))))));
    var var_1 = !(!vec3<bool>(true, (u_input.b <= global0.x) && true, true));
    global0 = u_input.c.xx;
    let var_2 = func_4(Struct_2(false | all(!vec4<bool>(true, false, var_1.x, true)), 1i | func_1(max(vec3<i32>(-1i, 1i, -14720i), vec3<i32>(-1i, 0i, -12073i)), Struct_2(var_1.x, 28615i, true, Struct_1(1i)), !vec2<bool>(var_1.x, var_1.x)), var_1.x, Struct_1(10271i)), all(select(var_1.xx, var_1.yz, (var_1.x && var_1.x) || true)), Struct_2(true, firstTrailingBit(-24014i), true | !var_1.x, Struct_1(max(-1i, func_1(vec3<i32>(-2147483647i, 2147483647i, 2147483647i), Struct_2(true, -2147483647i, false, Struct_1(2147483647i)), var_1.xy)))));
    let var_3 = 4968u;
    let var_4 = Struct_2(false, 35370i | func_1(vec3<i32>(var_2.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b, var_2.b, 1137i), vec3<i32>(var_2.d.a, var_2.b, var_2.d.a)), -var_2.b), var_2, var_1.xx), any(!(!vec4<bool>(false, false, var_2.a, var_2.a))) | all(select(select(var_1.yy, var_1.yx, var_2.a), vec2<bool>(var_1.x, false), true)), var_2.d);
    let var_5 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(866f, var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -1343f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zwz, reverseBits(u_input.a.yyx) << ((vec3<u32>(var_3, 86885u, 1u) ^ vec3<u32>(u_input.d, 1u, global0.x)) % vec3<u32>(32u))), 0u, _wgslsmith_add_u32(var_3, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(37702u, 1u), vec2<u32>(u_input.c.x, global0.x)))), ~(_wgslsmith_clamp_u32(global0.x, global0.x, var_3) & var_3)), select(_wgslsmith_mod_vec4_u32(~min(vec4<u32>(u_input.e, global0.x, 3426u, 0u), vec4<u32>(var_3, 1759u, global0.x, 41084u)), ~vec4<u32>(global0.x, 1u, var_3, var_3)), _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(0u, global0.x, ~global0.x, 3484u)), false));
}

