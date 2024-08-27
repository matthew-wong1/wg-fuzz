struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(719f, -588f)) * 215f) - 667f), abs(vec3<u32>(~_wgslsmith_clamp_u32(4294967295u, u_input.a, 70911u), arg_0, u_input.a)), max(u_input.a, ~reverseBits(12967u | u_input.a)));
    let var_1 = Struct_3(~vec4<u32>(_wgslsmith_mult_u32(var_0.b.x, var_0.b.x ^ 0u), arg_0, 1u, 0u), ~abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 53402u), 68264u)));
    var var_2 = var_0.b.x;
    let var_3 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) * -584f)) + _wgslsmith_f_op_f32(abs(var_3.a))));
}

fn func_2() -> f32 {
    global0 = Struct_4(false);
    var var_0 = vec4<i32>(-1i) * -(~u_input.d);
    var var_1 = Struct_4(global0.a);
    var_1 = Struct_4(global0.a);
    let var_2 = var_0.x;
    return _wgslsmith_f_op_f32(-109f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(u_input.a)))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: vec4<f32>) -> Struct_5 {
    let var_0 = -1i;
    return Struct_5(-1372f, Struct_2(~vec3<i32>(-24505i, -u_input.c, u_input.c), _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.a, 5997u, 31664u)), ~(~vec3<u32>(48367u, u_input.a, u_input.a))), ~(-32684i), _wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(abs(-1i), 2147483647i)), Struct_1(1631f, abs(~vec3<u32>(2172u, 8886u, 0u)), firstLeadingBit(~u_input.a))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: Struct_4) -> vec4<f32> {
    let var_0 = 1i;
    var var_1 = arg_1.b.a.x;
    global0 = Struct_4(true);
    let var_2 = vec2<i32>(var_0, 0i | (i32(-1i) * -arg_1.b.c)) >> (vec2<u32>(u_input.a, firstTrailingBit(firstTrailingBit(arg_1.b.b.x) ^ 1u)) % vec2<u32>(32u));
    var var_3 = countOneBits(-_wgslsmith_div_i32(_wgslsmith_mod_i32(~arg_1.b.a.x, -35263i >> (arg_1.b.b.x % 32u)), 1i));
    return vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1228f))))))), _wgslsmith_f_op_f32(func_2()), arg_2.x, 403f);
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(!(!select(vec2<bool>(global0.a, false), vec2<bool>(true, global0.a), any(vec4<bool>(global0.a, global0.a, global0.a, global0.a)))), func_4(u_input.d.x < ~u_input.c, false, false, vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-1864f * _wgslsmith_f_op_f32(f32(-1f) * -2192f)), 1065f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1965f) + _wgslsmith_f_op_f32(f32(-1f) * -364f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1000f)), -506f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-739f, 802f)))), Struct_4(!global0.a)));
    let var_1 = func_4(all(vec3<bool>(!(u_input.b == u_input.d.x), global0.a, global0.a)), var_0.x >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -311f))), all(select(vec3<bool>(all(vec2<bool>(global0.a, false)), any(vec3<bool>(global0.a, global0.a, global0.a)), true), !select(vec3<bool>(true, false, global0.a), vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(global0.a, true, true)), false)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), -2102f, var_0.x, 263f)))))).b;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.e.a))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), 627f)), reverseBits(vec3<u32>(19728u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, var_1.e.c, u_input.a), max(1u, 4294967295u)), firstTrailingBit(var_1.b.x))), u_input.a);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(911f, _wgslsmith_f_op_f32(var_2.a + -440f)) - 205f), 1470f));
    let var_4 = func_4(!any(select(select(vec4<bool>(true, true, true, global0.a), vec4<bool>(global0.a, false, false, global0.a), global0.a), !vec4<bool>(global0.a, true, false, global0.a), vec4<bool>(true, global0.a, global0.a, global0.a))), false, global0.a, var_0).b.e;
    return Struct_4(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(0u);
    global0 = Struct_4(true & all(!vec4<bool>(global0.a, false, false, false)));
    global0 = func_1();
    var var_1 = Struct_1(-505f, _wgslsmith_mult_vec3_u32(select(vec3<u32>(~8773u, ~u_input.a, var_0), reverseBits(countOneBits(vec3<u32>(var_0, var_0, u_input.a))), any(vec2<bool>(global0.a, global0.a))), max(firstTrailingBit(vec3<u32>(1u, u_input.a, 0u)), ~(vec3<u32>(1u, var_0, 0u) | vec3<u32>(var_0, 80120u, u_input.a)))), 1u);
    global0 = Struct_4(all(!select(select(vec3<bool>(true, true, global0.a), vec3<bool>(global0.a, true, true), global0.a), !vec3<bool>(true, false, global0.a), false)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_mult_vec2_i32(firstLeadingBit(select(u_input.d.wz, u_input.d.xw, vec2<bool>(false, global0.a))), vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(14310i, 0i))) | u_input.d.xx, 284f);
}

