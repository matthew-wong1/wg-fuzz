struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> u32 {
    var var_0 = arg_0 & 11611u;
    var var_1 = vec4<i32>(~(~8627i), -firstLeadingBit(u_input.a.x), _wgslsmith_clamp_i32(1i, 0i, u_input.c.x), ~(((u_input.a.x << (4294967295u % 32u)) ^ _wgslsmith_div_i32(-2147483647i, -2147483647i)) >> (firstTrailingBit(firstLeadingBit(36293u)) % 32u)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(631f, -191f)), 1f, select(arg_1.x, true, arg_1.x)))) + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-277f)))))), u_input.b.x, Struct_1(vec2<bool>(arg_1.x, arg_1.x), 207f, max(countOneBits(-u_input.a.x), u_input.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2445f * 410f), -465f, _wgslsmith_f_op_f32(round(-155f)), 542f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(904f, -2140f, -1354f, 418f)))), vec2<u32>(u_input.b.x, reverseBits(arg_0)) << (vec2<u32>(0u, _wgslsmith_div_u32(2049u, 3653u & u_input.b.x)) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_2.d.zy), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.d.xy - vec2<f32>(737f, -1715f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.c.b)), _wgslsmith_f_op_vec2_f32(-var_2.d.zz))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.d.x, var_2.c.b)))) - _wgslsmith_f_op_vec2_f32(select(var_2.d.yy, var_2.d.ww, arg_1.x))));
    var_0 = arg_0;
    return select(max(min(u_input.b.x, 4294967295u), firstLeadingBit(4294967295u)), 71606u, _wgslsmith_add_i32(~(~(-21153i)), -31787i) < u_input.a.x);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: f32, arg_3: f32) -> Struct_2 {
    let var_0 = func_3(22419u, !vec4<bool>(false, arg_1.x, 1u != u_input.b.x, any(!vec4<bool>(false, arg_1.x, arg_1.x, true))));
    let var_1 = Struct_2(arg_2, ~(_wgslsmith_clamp_u32(~var_0, u_input.b.x, 36219u) ^ _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, var_0), vec3<u32>(var_0, 36458u, 0u)), min(vec3<u32>(4294967295u, 40905u, u_input.b.x), vec3<u32>(var_0, 0u, u_input.b.x)))), Struct_1(select(vec2<bool>(select(arg_1.x, arg_1.x, true), arg_1.x), select(!vec2<bool>(true, arg_1.x), arg_1.xx, arg_1.x), vec2<bool>(!arg_1.x, true)), arg_3, -u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(384f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + arg_2), _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_div_f32(-2240f, _wgslsmith_f_op_f32(sign(-122f))), arg_3)), countOneBits(countOneBits(abs(vec2<u32>(var_0, 56176u)))));
    var var_2 = u_input.c.x;
    let var_3 = var_1.c;
    var_2 = -_wgslsmith_sub_i32(2147483647i, 2147483647i);
    return var_1;
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(128f - _wgslsmith_f_op_f32(-490f * -938f)))), !vec3<bool>(true, 39099i <= _wgslsmith_mult_i32(u_input.a.x, u_input.c.x), false), _wgslsmith_f_op_f32(-373f - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-783f, 877f)))))));
    var var_1 = Struct_1(vec2<bool>(var_0.c.a.x, !any(vec3<bool>(false, true, false))), var_0.a, reverseBits(-41574i) ^ ~_wgslsmith_dot_vec4_i32(~vec4<i32>(38626i, -1i, 0i, u_input.a.x), max(vec4<i32>(-23394i, 65628i, -1i, 22089i), vec4<i32>(1i, -22997i, u_input.a.x, -2147483647i))));
    let var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1511f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f) * -1847f) + 1363f)), !(!vec3<bool>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x)), _wgslsmith_f_op_f32(trunc(var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1110f)) * 797f));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_2(var_0.d.x, select(vec3<bool>(~u_input.b.x > _wgslsmith_add_u32(u_input.b.x, 0u), var_0.c.a.x, !(!var_0.c.a.x)), select(select(vec3<bool>(true, var_0.c.a.x, false), select(vec3<bool>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x), vec3<bool>(var_0.c.a.x, false, false), vec3<bool>(var_0.c.a.x, true, var_0.c.a.x)), !var_0.c.a.x), vec3<bool>(true, var_0.c.a.x, true), any(var_0.c.a)), select(vec3<bool>(var_0.c.a.x & var_0.c.a.x, !var_0.c.a.x, select(false, true, true)), select(!vec3<bool>(var_0.c.a.x, false, var_0.c.a.x), select(vec3<bool>(false, true, false), vec3<bool>(var_0.c.a.x, false, var_0.c.a.x), var_0.c.a.x), !vec3<bool>(var_0.c.a.x, false, false)), all(select(vec4<bool>(var_0.c.a.x, false, var_0.c.a.x, var_0.c.a.x), vec4<bool>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x, true), vec4<bool>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x, false))))), 2923f, var_0.c.b).c;
    let var_2 = Struct_1(var_0.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, var_0.d.x))))), _wgslsmith_add_i32(~(u_input.c.x | _wgslsmith_div_i32(-2147483647i, var_1.c)), _wgslsmith_dot_vec2_i32(-u_input.c >> (var_0.e % vec2<u32>(32u)), abs(_wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(31157i, u_input.a.x))))));
    var var_3 = var_0;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(trunc(1315f)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.e.x, u_input.b.x, 47786u, 4294967295u) & _wgslsmith_div_vec4_u32(vec4<u32>(var_3.e.x, u_input.b.x, 4294967295u, 0u), vec4<u32>(4701u, 45289u, var_0.b, 91551u)), vec4<u32>(var_3.b, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(0u, 1u)), var_3.b, 4294967295u)), ~vec4<u32>(6067u, 63042u >> (0u % 32u), abs(var_3.e.x), _wgslsmith_dot_vec3_u32(vec3<u32>(65575u, 4294967295u, var_3.e.x), vec3<u32>(22755u, u_input.b.x, 4294967295u)))), var_3.c, vec4<f32>(1078f, _wgslsmith_f_op_f32(-1205f - _wgslsmith_f_op_f32(var_1.b * -879f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.b, -511f)) * 1000f) - var_0.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.b))))), vec2<u32>(func_2(-1225f, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) - var_1.b), _wgslsmith_div_f32(var_2.b, var_2.b)).b, ~var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(select(select(u_input.b.x, func_3(41265u, !vec4<bool>(var_0.c.a.x, false, var_1.a.x, var_4.c.a.x)), var_4.c.a.x), func_3(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, var_0.e.x)), ~vec2<u32>(5543u, 0u)), select(select(vec4<bool>(true, true, var_4.c.a.x, true), vec4<bool>(var_3.c.a.x, true, true, true), vec4<bool>(var_3.c.a.x, var_0.c.a.x, var_2.a.x, var_3.c.a.x)), vec4<bool>(var_1.a.x, var_2.a.x, false, true), !var_2.a.x)), false), ~var_4.e.x);
}

