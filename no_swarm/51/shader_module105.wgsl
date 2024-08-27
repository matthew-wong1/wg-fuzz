struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1092f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(339f, -563f) + vec2<f32>(795f, -2507f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(645f, -1209f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1240f)), 635f) * vec2<f32>(559f, _wgslsmith_f_op_f32(1551f + 1797f)))));
    var var_1 = u_input.b.x;
    let var_2 = ~1u;
    var_1 = _wgslsmith_mult_i32(23810i, ~u_input.a.x);
    let var_3 = all(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), u_input.b.x == u_input.b.x)));
    return 1u;
}

fn func_2(arg_0: vec4<f32>) -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(17762u, 1u, 15723u), vec3<u32>(4294967295u, 0u, 44988u)), 5208u), select(57682u, 30250u, any(vec3<bool>(true, true, true)))), arg_0.zyw, all(vec2<bool>(true, false)), vec4<bool>(true, true || any(vec4<bool>(false, false, false, false)), arg_0.x == arg_0.x, true), _wgslsmith_f_op_vec2_f32(-arg_0.zy)), Struct_1(func_3(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 204f, -782f)))) * arg_0.www), false, select(vec4<bool>(true, true, true, true), vec4<bool>(false, all(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, false, false)), true), true), _wgslsmith_f_op_vec2_f32(-arg_0.yx)), vec3<bool>(!any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), (-u_input.a.x ^ _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)) >= u_input.a.x, all(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false))), -firstLeadingBit(u_input.b.x));
    let var_1 = select(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(16808u, var_0.b.a, 27237u, 1u), vec4<u32>(var_0.b.a, var_0.a.a, var_0.b.a, var_0.b.a), vec4<u32>(var_0.b.a, 57529u, var_0.a.a, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(8141u, 4294967295u, var_0.a.a, 252u), vec4<u32>(1u, var_0.b.a, var_0.b.a, var_0.b.a), vec4<u32>(87493u, var_0.a.a, var_0.b.a, 122274u))) | var_0.a.a), _wgslsmith_add_vec2_u32(abs(reverseBits(vec2<u32>(1u, 4294967295u))) >> ((_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.b.a, 42854u), vec2<u32>(0u, var_0.a.a), vec2<u32>(33251u, 33087u)) & vec2<u32>(var_0.a.a, var_0.a.a)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(22145u, var_0.a.a) | vec2<u32>(var_0.a.a, var_0.b.a), firstTrailingBit(vec2<u32>(21787u, var_0.b.a))) ^ ~(~vec2<u32>(0u, var_0.a.a))), !vec2<bool>(all(!vec4<bool>(false, var_0.a.c, var_0.b.c, var_0.a.d.x)), var_0.c.x));
    var var_2 = ~abs(abs(vec3<u32>(var_1.x >> (var_0.b.a % 32u), var_0.a.a, max(2658u, var_0.b.a))));
    var var_3 = var_0.b.e.x;
    var var_4 = var_0;
    return _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.a.a, var_4.a.a, ~48025u) << (vec3<u32>(_wgslsmith_add_u32(var_4.b.a, ~var_4.b.a), ~abs(4294967295u), firstLeadingBit(var_4.a.a)) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(39818u, var_4.a.a, 4294967295u), vec3<u32>(var_2.x, 4294967295u, var_1.x))), vec3<u32>(66580u, var_4.a.a, var_2.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(491f, -1253f, -719f, 1419f))) >> (vec3<u32>(0u, 4294967295u, 1u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 67285u, 1u), false), vec3<u32>(1u, 1u, 1u)), reverseBits(abs(vec3<u32>(4294967295u, 32916u, 23288u))))), min(4294967295u, min(26810u, 1u) & min(9617u, _wgslsmith_clamp_u32(1u, 51150u, 0u))));
    var var_1 = _wgslsmith_sub_vec2_u32(~select(select(~vec2<u32>(43383u, 3411u), select(vec2<u32>(27278u, 72127u), vec2<u32>(0u, 20620u), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), true)), vec2<u32>(1u, 1u), all(vec4<bool>(true, true, true, true))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 0u)), 1u));
    let var_2 = Struct_2(Struct_1(~firstLeadingBit(var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-290f, -1180f, 1627f) * vec3<f32>(480f, 642f, 365f))), true, !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), var_1.x > 38027u), vec2<f32>(1f, 1f)), Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, var_1.x), vec3<u32>(var_1.x, 4294967295u, 1u)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * 1878f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-331f)), 115f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - -1293f)))), true, select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), all(vec4<bool>(false, false, true, false))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, false), var_1.x >= var_1.x), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1613f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(711f, 2176f)))))), !vec3<bool>(true, abs(78233i) < u_input.a.x, true), -(u_input.b.x ^ (~(-1i) | (1i << (var_1.x % 32u)))));
    let var_3 = var_2.d;
    var_0 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.x, _wgslsmith_mod_u32(firstTrailingBit(4294967295u), 4294967295u | var_2.a.a)), var_1.x);
    return Struct_1(~(reverseBits(54046u) ^ var_1.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1138f)), var_2.b.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -185f)), var_2.b.b.x, _wgslsmith_f_op_f32(-var_2.a.e.x)), !(var_2.c.x || (982f >= _wgslsmith_f_op_f32(floor(var_2.b.e.x)))), var_2.b.d, var_2.b.b.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(countOneBits(-82214i));
    var var_1 = func_1();
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1().b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.e.x)) * var_1.e.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1308f) + _wgslsmith_f_op_f32(select(var_2.b.x, 1961f, var_1.d.x))));
    let var_4 = !vec3<bool>(true, var_2.c, var_1.d.x);
    var_1 = func_1();
    let var_5 = _wgslsmith_div_vec2_f32(var_1.e, _wgslsmith_f_op_vec2_f32(floor(var_1.e)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(select(u_input.b.x, u_input.a.x, func_1().d.x), -20619i, select(~(~u_input.b.x), u_input.b.x, var_2.d.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(812f, var_1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.e.x, var_1.e.x)))))), ~(-2147483647i), var_1.b.zy);
}

