struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> bool {
    let var_0 = Struct_1(countOneBits(min(vec2<i32>(firstTrailingBit(2147483647i), 0i), min(firstTrailingBit(vec2<i32>(13300i, 9293i)), vec2<i32>(34987i, 0i)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-103f, -1379f)))))));
    var var_1 = !((all(vec4<bool>(false, false, true, false)) || false) || !(!any(vec4<bool>(false, false, false, false))));
    let var_2 = var_0.a.x;
    var var_3 = Struct_3(u_input.a.x & _wgslsmith_clamp_u32(25997u, ~12761u, 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(var_0.b)))))) - vec2<f32>(_wgslsmith_div_f32(var_0.b.x, 234f), var_0.b.x)), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), abs(~(u_input.a >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))))));
    let var_4 = Struct_2(-1i, var_0, var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2079f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1112f - var_3.b.x))))));
    return true;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 4898u), vec4<u32>(u_input.a.x, 28304u, u_input.a.x, 16103u)), u_input.a.x), ~u_input.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(404f + _wgslsmith_f_op_f32(max(573f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1754f - -1222f) - _wgslsmith_div_f32(295f, -1171f))))));
    var var_2 = ~vec4<i32>(-12163i >> (max(var_0, 4294967295u) % 32u), -2147483647i, 0i, ~7161i) >> (vec4<u32>(1u, ~_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 49572u, var_0), vec3<u32>(var_0, u_input.a.x, u_input.a.x))), 1u, ~select(u_input.a.x, 33887u, true)) % vec4<u32>(32u));
    var var_3 = all(vec3<bool>(func_3(), 32258u <= max(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(var_0, 69487u)), abs(var_0)), true));
    let var_4 = countOneBits(select(~reverseBits(var_0 | var_0), ~u_input.a.x, false));
    return Struct_1(abs(vec2<i32>(-2147483647i, 25576i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1817f)), -1440f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))))));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(1i);
    var var_1 = vec2<bool>(!all(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), 4294967295u <= _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(6917u, u_input.a.x))), firstLeadingBit(u_input.a.x)));
    var_1 = vec2<bool>(select(any(select(select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(true, var_1.x, var_1.x, true), false), vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(true, true, true, true))), all(select(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(true, true, true, true))), select(!var_1.x, var_1.x, false)), var_1.x);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_0.b.x)))) <= _wgslsmith_f_op_f32(sign(-1733f));
    var_1 = select(vec2<bool>(true, ((var_0.a.x >> (u_input.a.x % 32u)) & 1i) > var_0.a.x), vec2<bool>(func_3(), var_1.x), !var_1.x);
    return Struct_3(30298u ^ (24095u ^ u_input.a.x), _wgslsmith_div_vec2_f32(var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(-41629i).b - vec2<f32>(-3547f, var_0.b.x)))), ~_wgslsmith_div_vec2_u32(~u_input.a, ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true & all(!vec2<bool>(u_input.a.x <= 0u, false));
    let var_1 = func_1();
    var var_2 = Struct_5(vec2<i32>(min(~1i, -max(-2147483647i, 68936i)), _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -18634i, 5676i, -27090i), vec4<i32>(30178i, 2147483647i, -2147483647i, -17847i)), ~(-1i)), -39992i)), func_2(-7961i), vec4<i32>(min(2147483647i, 0i), ~(~12343i), 17131i, func_2(abs(-32756i)).a.x) & (_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -21222i, -24887i, 9653i), vec4<i32>(67709i, -20058i, -2147483647i, 2147483647i), vec4<i32>(81702i, -1i, -1i, -1i)), vec4<i32>(-2147483647i, 2147483647i, 38238i, 0i) >> (vec4<u32>(var_1.c.x, var_1.c.x, u_input.a.x, 0u) % vec4<u32>(32u))) | _wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, -12272i, -19482i, 0i), vec4<i32>(64822i, -2147483647i, 27905i, 1i))), Struct_2(i32(-1i) * -2147483647i, func_2(-20937i), Struct_1(vec2<i32>(_wgslsmith_div_i32(0i, 2147483647i), ~1i), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1773f, -442f), var_1.b)), _wgslsmith_f_op_vec2_f32(round(var_1.b))))), var_1.b.x));
    var_2 = Struct_5(-var_2.c.zw, var_2.b, vec4<i32>(var_2.c.x, countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, var_2.d.c.a.x, var_2.a.x), var_2.c.zzx, vec3<i32>(7285i, -2147483647i, var_2.c.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, var_2.c.x, var_2.a.x), vec3<i32>(var_2.b.a.x, 2147483647i, var_2.b.a.x)))), ~_wgslsmith_add_i32(var_2.b.a.x, 8790i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.a.x, 5690i), vec2<i32>(-1i, var_2.c.x))), Struct_2(var_2.c.x, func_2(func_2(reverseBits(var_2.d.a)).a.x), Struct_1(abs(~vec2<i32>(-25520i, var_2.d.c.a.x)), var_2.d.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.x))) * _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(132f + var_1.b.x)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-316f, 537f, var_1.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, 397f, 3005f) + vec3<f32>(var_1.b.x, var_2.d.c.b.x, var_2.d.c.b.x))))))));
    var var_4 = func_2(var_2.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x, 14600u, u_input.a.x);
}

