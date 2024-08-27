struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> f32 {
    var var_0 = u_input.a;
    return -1065f;
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = -abs(abs(-36133i));
    var var_1 = -63012i;
    var_1 = u_input.a.x;
    var_1 = -53225i;
    let var_2 = select(vec3<bool>(all(vec4<bool>(true, true, true, true)), !all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), false), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), all(vec2<bool>(false, true))), !vec3<bool>(true, any(vec3<bool>(false, true, false)), true), true), false);
    return vec4<bool>(select(true & any(!vec4<bool>(true, var_2.x, false, true)), var_2.x, !((var_2.x & false) | var_2.x)), all(vec4<bool>(var_2.x, true, var_2.x, var_2.x || var_2.x)) && any(vec3<bool>(true, true, true & var_2.x)), var_2.x, true);
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: bool, arg_3: f32) -> vec3<i32> {
    var var_0 = Struct_1(arg_2, abs(min(_wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(u_input.c.x, u_input.d)), -36602i)));
    let var_1 = Struct_4(firstTrailingBit(-firstTrailingBit(abs(vec3<i32>(var_0.b, var_0.b, 34105i)))), firstLeadingBit(~min(vec2<u32>(22053u, u_input.b), vec2<u32>(23824u, 4294967295u))));
    var var_2 = arg_1.wxy;
    var var_3 = Struct_3(countOneBits(_wgslsmith_div_u32(arg_0, select(firstLeadingBit(arg_0), var_1.b.x, all(arg_1.wyw)))), countOneBits(~vec2<i32>(var_1.a.x, abs(var_1.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-231f, arg_3, false)))))), Struct_2(abs(~u_input.a), arg_1.zwz, arg_3, Struct_1(!arg_1.x, 0i), Struct_1(all(arg_1), -(~1i))));
    var_2 = vec3<bool>(false, var_3.d.e.a, all(select(var_2.yx, !vec2<bool>(false, var_2.x), select(var_2.xy, !vec2<bool>(false, arg_1.x), all(vec4<bool>(var_2.x, true, false, var_0.a))))));
    return vec3<i32>(-2147483647i | u_input.a.x, min(-1i, 43006i), _wgslsmith_clamp_i32(~(-1i & ~var_3.d.a.x), i32(-1i) * -_wgslsmith_mod_i32(var_3.d.e.b, -8039i), var_3.d.e.b));
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_mult_u32(1u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u) & vec2<u32>(u_input.b, 29090u), reverseBits(vec2<u32>(0u, u_input.b))) | u_input.b, 60489u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1258f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1000f, 960f, true))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -134f)))));
    var var_2 = Struct_4(vec3<i32>(u_input.d, -44392i, u_input.c.x) | func_4(~u_input.b >> ((55935u ^ var_0) % 32u), select(func_3(vec4<i32>(3187i, 27093i, 26072i, 0i), vec2<f32>(894f, var_1)), vec4<bool>(true, true, true, true), true), false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1 * -1157f), var_1))), vec2<u32>(reverseBits(29807u), ~6000u));
    let var_3 = abs(u_input.d & firstLeadingBit(u_input.d | (22529i ^ u_input.c.x)));
    var var_4 = Struct_1(any(!func_3(~vec4<i32>(var_2.a.x, -14815i, 41467i, var_3), vec2<f32>(var_1, var_1)).yw), 1i);
    return Struct_4(var_2.a, vec2<u32>(0u, firstLeadingBit(~var_2.b.x << (~39803u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(121f, -252f, -1729f);
    let var_1 = func_1();
    var var_2 = Struct_3(min(4294967295u, func_1().b.x), ~max(abs(_wgslsmith_sub_vec2_i32(var_1.a.zx, vec2<i32>(0i, var_1.a.x))), vec2<i32>(-43349i, func_1().a.x)), _wgslsmith_f_op_f32(var_0.x * var_0.x), Struct_2(var_1.a.yx, vec3<bool>(true, any(vec2<bool>(true, true)), all(vec2<bool>(true, true))), var_0.x, Struct_1(false, _wgslsmith_div_i32(-25817i, -2986i)), Struct_1((var_1.b.x > var_1.b.x) | true, reverseBits(min(14166i, var_1.a.x)))));
    let var_3 = Struct_2(~max(~vec2<i32>(-1i, var_1.a.x), var_2.d.a) & u_input.c, select(func_3(reverseBits(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.c.x)), vec2<f32>(_wgslsmith_div_f32(var_0.x, -450f), var_2.c)).yzy, !select(!vec3<bool>(var_2.d.d.a, var_2.d.d.a, true), func_3(vec4<i32>(0i, var_2.b.x, 1i, -1393i), vec2<f32>(var_0.x, var_2.c)).xww, true), var_2.d.b.x), var_0.x, var_2.d.e, Struct_1(any(!func_3(vec4<i32>(0i, var_2.b.x, var_1.a.x, 20544i), var_0.xy)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-57562i, var_2.d.a.x), vec2<i32>(var_2.d.a.x, 0i), vec2<i32>(var_1.a.x, 0i)), max(u_input.c, var_1.a.yz)), 0i)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-180f, var_3.c, var_2.c))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(598f, var_0.x, var_2.d.c)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-236f, 1000f, var_0.x), vec3<f32>(var_0.x, var_2.d.c, 1592f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(select(var_1.a, vec3<i32>(0i, 2147483647i, var_2.b.x), vec3<bool>(var_3.b.x, true, var_3.d.a)), var_1.a), reverseBits(select(vec3<i32>(var_3.e.b, 44563i, 14398i), -var_1.a, select(var_3.b, vec3<bool>(true, var_2.d.d.a, var_2.d.b.x), false)))), 0i);
}

