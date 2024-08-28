struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-152f, 556f, -100f, -1000f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_4(_wgslsmith_clamp_vec3_i32(vec3<i32>((2147483647i ^ arg_1.a.x) >> (4294967295u % 32u), arg_1.a.x, -arg_1.a.x), vec3<i32>(58271i, arg_1.a.x, firstTrailingBit(countOneBits(arg_1.a.x))), select(abs(select(vec3<i32>(arg_1.a.x, arg_1.a.x, 70382i), vec3<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), true)), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -2405i, -11560i), vec3<i32>(arg_1.a.x, arg_1.a.x, 1i))), !select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), false))), _wgslsmith_mod_u32(14305u, (~arg_1.b ^ 1u) << (~(~0u) % 32u)));
    let var_1 = Struct_2(firstTrailingBit(~arg_2.d.x) ^ ~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), arg_2.c, _wgslsmith_div_vec4_u32(arg_2.d, firstLeadingBit(~(~vec4<u32>(4294967295u, arg_2.a, 18885u, var_0.b)))), vec2<u32>(var_0.b, arg_2.e.x));
    var var_2 = Struct_3(vec2<i32>(var_0.a.x, var_0.a.x), Struct_1(_wgslsmith_add_u32(34903u, 1u), _wgslsmith_sub_u32(abs(0u), _wgslsmith_mod_u32(~arg_1.b, ~u_input.a))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + var_1.b)), _wgslsmith_f_op_f32(abs(arg_2.b)), 2212f));
    var var_3 = ~1u;
    var_2 = Struct_3(arg_1.a.yy << (vec2<u32>(_wgslsmith_dot_vec2_u32(arg_2.e, _wgslsmith_add_vec2_u32(vec2<u32>(60146u, 111246u), vec2<u32>(var_2.b.b, 0u))), ~_wgslsmith_clamp_u32(u_input.b, 1u, arg_2.e.x)) % vec2<u32>(32u)), var_2.b, var_2.c);
    return var_2.a.x;
}

fn func_2(arg_0: bool) -> vec2<u32> {
    let var_0 = countOneBits(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(1i, 1i, 1i)), vec3<i32>(func_3(arg_0 | arg_0, Struct_4(vec3<i32>(5754i, 0i, 1556i), u_input.a), Struct_2(u_input.c, 612f, global0.x, vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.c), vec2<u32>(0u, 0u))), ~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-71056i, -22208i, 0i, 1i) << (vec4<u32>(u_input.b, 4294967295u, 1u, u_input.c) % vec4<u32>(32u)), vec4<i32>(23237i, 22337i, 1i, -13122i)))));
    let var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c, u_input.b, 1u)), vec3<u32>(~u_input.a, u_input.a, ~0u)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(15853u, u_input.b, u_input.a)), (vec3<u32>(u_input.a, 4294967295u, 0u) & vec3<u32>(u_input.b, 1u, 4294967295u)) >> (vec3<u32>(u_input.b, u_input.c, u_input.a) % vec3<u32>(32u)))) >> (firstTrailingBit(~0u) % 32u);
    var var_2 = global0.x == global0.x;
    global0 = vec4<f32>(-1143f, 2119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -151f)), global0.x);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-702f + 870f), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x))), global0.x, -183f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -585f))))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x * global0.x))))));
    return ~vec2<u32>(u_input.c, 13217u);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_div_u32(u_input.c, firstTrailingBit(1u)), _wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1016f, 1487f, all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2380f - -846f), global0.x)))), vec4<u32>(_wgslsmith_sub_u32(u_input.b, (u_input.a | 61903u) & 9013u), u_input.c, ~4294967295u, 22510u), abs(_wgslsmith_div_vec2_u32(func_2(true), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.b, u_input.b)))));
    var var_1 = 4576u;
    var_1 = _wgslsmith_mult_u32(_wgslsmith_add_u32(~1u, ~select(~var_0.a, u_input.a, true)), ~(~u_input.c));
    let var_2 = ~vec2<u32>(reverseBits(firstTrailingBit(1u)), 70534u);
    var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0.d.yxx, ~(~countOneBits(var_0.d.yzw))), firstLeadingBit(55009u));
    return Struct_1(0u, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = global0.x;
    var var_2 = func_1();
    var var_3 = ~vec2<u32>(38963u, ~_wgslsmith_mult_u32(countOneBits(u_input.b), u_input.a));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(trunc(-700f)), _wgslsmith_f_op_f32(trunc(global0.x)), -121f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(582f * global0.x), global0.x, 1000f, -2341f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - vec4<f32>(global0.x, -551f, global0.x, 284f)), vec4<f32>(global0.x, -755f, 448f, -201f), true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(779f, -1000f, global0.x, 2229f) - vec4<f32>(-439f, global0.x, 1504f, global0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(global0.x + 649f), global0.x, _wgslsmith_f_op_f32(global0.x * -312f), global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-309f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -100f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_f32(select(global0.x, global0.x, any(vec3<bool>(true, true, false)))), -328f))), _wgslsmith_mod_u32(var_3.x, 0u), firstLeadingBit(~vec2<i32>(~0i, ~(-2147483647i))));
}

