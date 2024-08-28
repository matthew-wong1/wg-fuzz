struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(-261f, _wgslsmith_f_op_f32(-arg_0))), -158f, -839f, 566f);
    let var_1 = Struct_1(true, _wgslsmith_mod_vec4_u32(~(~u_input.c), abs(u_input.c)), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), u_input.a.x < 16811u), true & (u_input.d >= 27876i)));
    let var_2 = var_0.x;
    let var_3 = firstLeadingBit(-1i);
    var var_4 = vec2<u32>(~min(u_input.c.x, ~0u), abs(countOneBits(~45233u) & var_1.b.x));
    return ~_wgslsmith_add_u32(countOneBits(~1u), ~(~_wgslsmith_sub_u32(var_4.x, 5928u)));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    var var_0 = Struct_1(!(_wgslsmith_f_op_f32(f32(-1f) * -928f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + _wgslsmith_f_op_f32(-1000f + -212f))), u_input.a, !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, true)));
    var var_1 = _wgslsmith_add_i32(arg_0.x, ~(_wgslsmith_add_i32(u_input.d, ~u_input.e.x) << (~_wgslsmith_dot_vec3_u32(var_0.b.www, vec3<u32>(u_input.c.x, u_input.a.x, u_input.b.x)) % 32u)));
    let var_2 = Struct_1(any(!(!vec4<bool>(var_0.a, var_0.c.x, var_0.a, false))), u_input.c, vec3<bool>(var_0.a, true, _wgslsmith_div_i32(-arg_0.x, arg_0.x) >= 19735i));
    var var_3 = ~(~(~_wgslsmith_clamp_u32(~58908u, var_2.b.x, func_3(146f))));
    var var_4 = !var_2.c;
    return var_4.x;
}

fn func_1() -> f32 {
    let var_0 = all(vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), any(vec4<bool>(false, all(vec4<bool>(true, false, true, true)), any(vec4<bool>(true, true, false, false)), true)), func_2(reverseBits(vec3<i32>(-7269i, u_input.e.x, u_input.d) | vec3<i32>(u_input.d, 2147483647i, 29837i)))));
    var var_1 = Struct_1(false | (u_input.e.x <= (-1i ^ (u_input.e.x >> (u_input.a.x % 32u)))), _wgslsmith_mult_vec4_u32(max(~vec4<u32>(4294967295u, 44646u, u_input.a.x, u_input.c.x), _wgslsmith_add_vec4_u32(u_input.a >> (vec4<u32>(4294967295u, 1u, 20465u, u_input.b.x) % vec4<u32>(32u)), u_input.c)), vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.b.x, u_input.a.x, 28265u, 0u)) & ~5179u, ~69472u, u_input.a.x, select(~u_input.b.x, u_input.a.x, true))), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, var_0, false), vec3<bool>(var_0, var_0, false), true), !vec3<bool>(false, var_0, var_0), !vec3<bool>(var_0, var_0, var_0)), firstTrailingBit(94780u) < 4294967295u), vec3<bool>(true, true, -u_input.d > 25424i), select(!(!vec3<bool>(var_0, var_0, false)), !vec3<bool>(true, var_0, true), vec3<bool>(!var_0, var_0, any(vec3<bool>(var_0, var_0, var_0))))));
    var var_2 = Struct_1(any(var_1.c), vec4<u32>(u_input.a.x, 46252u, 4294967295u ^ ((39813u << (u_input.a.x % 32u)) & ~u_input.c.x), var_1.b.x), select(!vec3<bool>(true, true, var_1.a), select(select(!var_1.c, var_1.c, !vec3<bool>(var_0, var_0, true)), var_1.c, !var_0), var_0));
    var var_3 = _wgslsmith_div_u32(~(~firstTrailingBit(var_2.b.x)) | 1u, var_2.b.x);
    let var_4 = 0u;
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-869f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-328f)) + _wgslsmith_f_op_f32(f32(-1f) * -2250f)) + 1134f)));
    let var_1 = abs(u_input.b);
    let var_2 = Struct_1(true, select(firstLeadingBit(u_input.a), u_input.a, true), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))));
    let var_3 = -4149i;
    var var_4 = abs(~(~var_1.x));
    let var_5 = vec2<i32>(abs(u_input.d), 0i);
    let var_6 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -1000f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2346f, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)), vec3<f32>(_wgslsmith_f_op_f32(min(-383f, var_0)), _wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(-var_0)))))));
    var_4 = _wgslsmith_sub_u32(~17182u, ~(~(~_wgslsmith_div_u32(var_1.x, 3069u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.zx, _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -374f), _wgslsmith_div_f32(377f, var_0))))))), var_3, _wgslsmith_f_op_f32(floor(var_0)), u_input.c.yxx);
}

