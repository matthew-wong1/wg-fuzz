struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    let var_0 = -10608i;
    let var_1 = vec2<i32>(var_0, u_input.a);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1672f)))), _wgslsmith_f_op_f32(697f * _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_div_f32(-1020f, -935f))), 57548i <= var_1.x);
    var var_3 = _wgslsmith_f_op_f32(sign(224f));
    return i32(-1i) * -2147483647i;
}

fn func_2() -> f32 {
    var var_0 = vec2<bool>(~(func_3(u_input.b.yx) << (~u_input.b.x % 32u)) > _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a >> (_wgslsmith_mod_u32(37190u, u_input.b.x) % 32u)), all(vec2<bool>(true, any(vec4<bool>(true, true, false, false)))));
    var_0 = select(select(vec2<bool>(var_0.x, true), vec2<bool>(true, !var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), !select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x))), select(vec2<bool>(all(vec3<bool>(true, true, true)), true), !(!select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), true)), !vec2<bool>(u_input.a <= u_input.a, !var_0.x)), !(!vec2<bool>(all(vec3<bool>(true, var_0.x, false)), !var_0.x)));
    var_0 = !vec2<bool>(true, all(vec4<bool>(true, true, true, true)));
    let var_1 = vec4<f32>(810f, 1000f, -286f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) - 1f));
    var_0 = vec2<bool>(!var_0.x, var_0.x);
    return -213f;
}

fn func_1() -> i32 {
    let var_0 = ~vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(u_input.b.x) << (_wgslsmith_sub_u32(u_input.b.x, 15338u) % 32u), 70778u), min(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(13209u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(795u, 4294967295u, 13602u, 54174u)), reverseBits(vec4<u32>(u_input.b.x, 3211u, u_input.b.x, u_input.b.x))), u_input.b.x), u_input.b.x);
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(414f, -1243f, _wgslsmith_f_op_f32(-1919f + 642f), _wgslsmith_f_op_f32(func_2())) - vec4<f32>(-850f, _wgslsmith_f_op_f32(trunc(-907f)), _wgslsmith_f_op_f32(floor(-831f)), 1613f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-861f, -887f)))))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(max(-321f, -819f)), _wgslsmith_f_op_f32(func_2()), -593f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-779f)) * _wgslsmith_f_op_f32(abs(-1000f)))), false));
    var var_2 = Struct_1(_wgslsmith_clamp_i32(14658i, countOneBits(~1i), ~(-(u_input.a | u_input.a))), ~_wgslsmith_add_u32(_wgslsmith_add_u32(~u_input.b.x, ~11586u), _wgslsmith_mult_u32(u_input.b.x, 0u) << (_wgslsmith_sub_u32(u_input.b.x, 0u) % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.a.x), var_1.b), countOneBits(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-u_input.a, -11872i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(u_input.a, 29628i)), abs(vec2<i32>(u_input.a, -2147483647i))))), select(select(select(select(vec3<bool>(var_1.c.b, false, var_1.c.b), vec3<bool>(var_1.c.b, false, var_1.c.b), true), select(vec3<bool>(var_1.c.b, false, true), vec3<bool>(true, true, true), false), var_1.c.b), select(!vec3<bool>(var_1.c.b, false, var_1.c.b), vec3<bool>(var_1.c.b, true, var_1.c.b), false), true), !select(select(vec3<bool>(var_1.c.b, var_1.c.b, var_1.c.b), vec3<bool>(var_1.c.b, var_1.c.b, true), vec3<bool>(true, var_1.c.b, var_1.c.b)), !vec3<bool>(true, false, var_1.c.b), select(vec3<bool>(true, var_1.c.b, true), vec3<bool>(false, false, false), var_1.c.b)), false));
    let var_3 = vec2<i32>(var_2.d, _wgslsmith_add_i32(select(_wgslsmith_dot_vec4_i32(~vec4<i32>(33768i, 20788i, u_input.a, 2147483647i), vec4<i32>(var_2.d, u_input.a, u_input.a, 1i) & vec4<i32>(u_input.a, 52988i, 1i, 0i)), 1i, min(u_input.a, 57510i) == reverseBits(var_2.a)), -7697i));
    var var_4 = ~countOneBits(_wgslsmith_mod_u32(27471u, ~u_input.b.x) & ~select(u_input.b.x, var_0.x, false));
    return -9662i >> (u_input.b.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-541f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, 451f)))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -613f));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(step(1554f, -635f)), -107f)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_1.x, var_1.x))), false);
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(func_1(), -1i, ~func_1()), min(_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.a, -1i, -37639i), vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<bool>(var_0, var_2.b, false)), ~vec3<i32>(0i, u_input.a, 45838i)), vec3<i32>(_wgslsmith_clamp_i32(0i, u_input.a, -2147483647i), -1i, abs(-1i)))) & min(u_input.a, _wgslsmith_div_i32(-1335i, ~min(1i, u_input.a)));
    let var_4 = Struct_1(u_input.a, ~1u, var_2.a.x, u_input.a, select(vec3<bool>(!var_2.b, var_0, (4294967295u << (u_input.b.x % 32u)) > u_input.b.x), vec3<bool>(true, var_0, (var_2.b | false) | !var_0), any(!select(vec3<bool>(false, var_2.b, true), vec3<bool>(true, true, true), var_2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec2_i32(-vec2<i32>(var_4.a, -2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(16304i, u_input.a), min(vec2<i32>(var_4.d, -26196i), vec2<i32>(u_input.a, var_4.a)))), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 368u, var_4.b, u_input.b.x), vec4<u32>(60826u, 1u, 1u, var_4.b))), ~reverseBits(vec4<u32>(u_input.b.x, 0u, 25641u, 7085u))), ~abs(vec4<u32>(var_4.b, var_4.b, 0u, u_input.b.x) << (vec4<u32>(52706u, 0u, 4870u, 1u) % vec4<u32>(32u)))), ~vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, var_4.b) >> (u_input.b.yx % vec2<u32>(32u)), u_input.b.yy), firstLeadingBit(var_4.b), u_input.b.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, 289f, var_1.x)) * var_2.a.zwz)))), ~(~firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, 4294967295u, var_4.b)))));
}

