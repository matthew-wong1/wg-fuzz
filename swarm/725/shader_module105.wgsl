struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1026f, -424f, !(-3370i < u_input.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1414f, 1365f)), _wgslsmith_f_op_f32(max(-1203f, 1279f)), true))))), all(select(vec2<bool>(-2147483647i <= u_input.b.x, false), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, false), true), vec2<bool>(u_input.a.x != u_input.a.x, true))), vec3<bool>(true, u_input.a.x > ~(19165u >> (u_input.a.x % 32u)), true), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a.x, 4294967295u, ~u_input.a.x), u_input.a.wzz, any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true))), vec3<u32>(u_input.a.x, 1u, 1u << (u_input.a.x % 32u))));
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, 62651u), _wgslsmith_mod_u32(6643u, 50560u))) << (u_input.a.zx % vec2<u32>(32u)), vec2<u32>(~var_0.e >> (~(u_input.a.x | var_0.e) % 32u), 4294967295u));
    global0 = ~firstTrailingBit(1u);
    var var_1 = select(firstLeadingBit(u_input.a), abs(vec4<u32>(u_input.a.x, firstTrailingBit(~79773u), abs(_wgslsmith_mult_u32(48159u, 19933u)), reverseBits(1u))), vec4<bool>(any(var_0.d), var_0.c, true, u_input.d <= u_input.b.x));
    var var_2 = _wgslsmith_add_i32(8386i, ~(~(~u_input.d)));
    return -vec4<i32>(2147483647i, -_wgslsmith_mult_i32(u_input.d << (var_0.e % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 0i), vec2<i32>(u_input.e, 30426i))), u_input.c, -21227i);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = func_3();
    var_0 = max(firstLeadingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(18414i, -2147483647i, u_input.b.x, u_input.e) & vec4<i32>(-10262i, u_input.b.x, 0i, u_input.c), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, -14480i))), vec4<i32>(-15278i, u_input.c, var_0.x, -2147483647i ^ (u_input.b.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(9096i, u_input.e), u_input.b))));
    global0 = u_input.a.x;
    var var_1 = (u_input.c != _wgslsmith_mult_i32(var_0.x, countOneBits(0i))) | true;
    var_0 = ~(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, u_input.c, 2147483647i, -2147483647i), vec4<i32>(var_0.x, u_input.e, var_0.x, u_input.d), vec4<i32>(u_input.c, u_input.d, -6954i, u_input.d)) << (vec4<u32>(1u, 0u, 0u, 1u) % vec4<u32>(32u))) >> (~(~_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(48137u, arg_0, arg_0, arg_0), vec4<u32>(37407u, arg_0, 18952u, 26596u))) % vec4<u32>(32u)));
    return Struct_1(-875f, -1000f, true, !vec3<bool>(!any(vec2<bool>(false, false)), any(vec2<bool>(true, true)), true), arg_0);
}

fn func_1(arg_0: vec3<f32>) -> f32 {
    var var_0 = func_2(~u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + -859f);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(512f * _wgslsmith_f_op_f32(abs(-1988f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + -104f) + _wgslsmith_f_op_f32(f32(-1f) * -552f)), false, vec3<bool>(var_0.c, var_0.d.x, all(vec3<bool>(var_0.c, var_0.c, false))), var_0.e));
    var var_3 = arg_0.yx;
    var var_4 = Struct_1(var_2.a.a, -2221f, (max(_wgslsmith_mod_u32(7249u, var_2.a.e), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)) & 4294967295u) >= max(_wgslsmith_mult_u32(var_2.a.e, _wgslsmith_div_u32(58384u, 4294967295u)), countOneBits(var_0.e)), var_2.a.d, select(~firstLeadingBit(var_0.e), ~(~1u), _wgslsmith_f_op_f32(-var_2.a.a) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a.b)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 18178u;
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -772f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -774f) + -103f) * _wgslsmith_f_op_f32(func_1(vec3<f32>(550f, 1000f, 1656f)))) + 348f));
    let var_1 = Struct_3(u_input.a.x, -2147483647i, _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.a.x, 19958u)), ~vec2<u32>(u_input.a.x, u_input.a.x)), ~u_input.a.zw));
    let var_2 = true;
    let var_3 = 4294967295u;
    global0 = ~61815u;
    let var_4 = Struct_4(countOneBits(select(vec3<i32>(u_input.b.x, -39259i, var_1.b) << (u_input.a.yyz % vec3<u32>(32u)), select(vec3<i32>(u_input.d, var_1.b, u_input.d), ~vec3<i32>(var_1.b, u_input.c, var_1.b), select(false, var_2, var_2)), !select(vec3<bool>(true, true, var_2), vec3<bool>(var_2, false, true), vec3<bool>(true, var_2, true)))), reverseBits(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(521f)) * _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0 + -340f))), vec3<f32>(_wgslsmith_f_op_f32(-func_2(_wgslsmith_clamp_u32(1u, 1u, 52162u)).a), -459f, _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(1812f, var_0, var_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 342f) + vec3<f32>(var_0, -203f, var_0)))))));
}

