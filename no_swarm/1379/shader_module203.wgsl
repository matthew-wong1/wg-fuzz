struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-966f * -2456f)), _wgslsmith_f_op_f32(-arg_0.d.x));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_dot_vec2_i32(firstLeadingBit(firstTrailingBit(~vec2<i32>(1i, 1i))), abs(vec2<i32>(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.b, var_1.b), vec3<i32>(13688i, var_1.b, var_1.b)))));
    var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1368f, _wgslsmith_f_op_f32(floor(var_1.d.x)), -1105f, arg_0.d.x)))));
    return vec3<bool>(true, false, !select(all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), true, true));
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> Struct_3 {
    let var_0 = Struct_1(arg_1.c, !all(select(func_3(arg_1), vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1598f)))))), ~u_input.c);
    var var_1 = vec2<bool>(var_0.b && false, any(!(!(!vec4<bool>(false, false, var_0.b, var_0.b)))));
    var var_2 = ~arg_1.b;
    return Struct_3(select(func_3(arg_1), !func_3(Struct_4(var_0.d, 32967i, arg_1.c, vec3<f32>(arg_0, -376f, -1098f))), func_3(arg_1)), var_0.b, true);
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<bool>(true, false, !(all(vec3<bool>(true, true, true)) & !all(vec3<bool>(false, false, false))));
    var var_1 = u_input.a.xy;
    return func_2(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -482f) - _wgslsmith_f_op_f32(max(-649f, -1012f))), 1f)), Struct_4(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_1.x, u_input.c.x), 5721u, 114038u), ~(vec3<u32>(u_input.b, var_1.x, 12140u) >> (vec3<u32>(4294967295u, u_input.a.x, u_input.c.x) % vec3<u32>(32u)))), min(max(select(2147483647i, 2147483647i, true), ~1i), -1i), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 1u, var_1.x, u_input.c.x), _wgslsmith_sub_vec4_u32(vec4<u32>(92629u, 79362u, u_input.a.x, u_input.c.x), vec4<u32>(0u, 0u, 4294967295u, var_1.x)), select(vec4<u32>(var_1.x, 47656u, u_input.a.x, 0u), vec4<u32>(u_input.b, 8847u, var_1.x, var_1.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false))), ~_wgslsmith_add_vec4_u32(vec4<u32>(53720u, u_input.b, 60388u, var_1.x), vec4<u32>(11051u, u_input.b, 3359u, var_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1199f, _wgslsmith_div_f32(-1114f, -238f), 638f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var_0 = vec3<u32>(u_input.c.x, var_0.x, max(countOneBits(20652u), 38063u));
    var_0 = ~min(u_input.c, ~u_input.a);
    var_0 = min(vec3<u32>(66196u, ~(~(~24069u)), u_input.c.x), vec3<u32>(u_input.c.x, 1u, var_0.x));
    var var_1 = func_1();
    var_0 = u_input.a;
    var var_2 = Struct_1(abs(~(~vec4<u32>(49410u, var_0.x, 0u, 42006u) ^ ~vec4<u32>(97809u, 0u, 0u, 47607u))), select(true, func_1().a.x, false), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2461f))), 1018f) - 436f), u_input.c);
    let var_3 = u_input.a.xz;
    var_1 = func_2(-674f, Struct_4((~vec3<u32>(var_3.x, 16288u, var_3.x) >> (~var_2.d % vec3<u32>(32u))) >> (vec3<u32>(~u_input.c.x, var_2.d.x & var_0.x, 33662u) % vec3<u32>(32u)), _wgslsmith_div_i32(~(~1i), 1i), vec4<u32>(u_input.a.x, 0u & var_3.x, ~0u, var_0.x << (1u % 32u)), vec3<f32>(var_2.c, _wgslsmith_f_op_f32(min(1f, 270f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.c, 2513f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-390f, var_2.c), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-657f, var_2.c)))), 0i, vec4<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 1u)), var_3), u_input.c.x, ~var_3.x, var_3.x));
}

