struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32) -> u32 {
    var var_0 = 71258u;
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1511f, -1544f, -2011f), vec3<f32>(2729f, -476f, 557f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-968f, 328f, -144f) - vec3<f32>(1000f, 174f, -810f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-140f * _wgslsmith_f_op_f32(577f - _wgslsmith_f_op_f32(step(168f, -887f)))), -258f, 1000f));
    let var_3 = any(select(arg_1, !select(arg_1, arg_1, vec2<bool>(true, true)), vec2<bool>(true, true))) && (_wgslsmith_add_i32(1i, -1i) >= arg_2);
    var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(868f, -872f, var_2.x)))))));
    return 2084u;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = true;
    let var_1 = Struct_2(vec4<u32>(~_wgslsmith_dot_vec3_u32(~arg_0, _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, u_input.a.x, 1u), arg_0)), 0u, reverseBits(~1u), _wgslsmith_clamp_u32(78592u, ~72555u, abs(1u))));
    var_0 = all(vec2<bool>(~(38016u >> (arg_0.x % 32u)) == func_3(Struct_1(0u, vec4<i32>(-1i, 11241i, 13972i, 2147483647i)), vec2<bool>(false, true), _wgslsmith_div_i32(10520i, -1i)), true));
    var_0 = !(((-507f > _wgslsmith_f_op_f32(round(-388f))) | true) || true);
    var_0 = ~78840u != _wgslsmith_mod_u32(~(min(arg_0.x, var_1.a.x) ^ 53223u), ~(6275u & u_input.c.x));
    return Struct_1(_wgslsmith_mod_u32(arg_0.x, 0u), vec4<i32>(1i, ~1i, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1432i), vec2<i32>(0i, 15567i))), abs(_wgslsmith_div_i32(_wgslsmith_add_i32(-1i, 34589i), 1i))));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = func_2(~countOneBits(arg_2 | firstLeadingBit(arg_2)));
    var var_1 = all(arg_3);
    let var_2 = any(!vec4<bool>(false, arg_3.x, true, true));
    let var_3 = _wgslsmith_div_f32(-1267f, _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3292f + -1000f)))));
    var_1 = var_2;
    return Struct_1(u_input.a.x, -vec4<i32>(~countOneBits(-49775i), var_0.b.x, _wgslsmith_dot_vec2_i32(abs(var_0.b.xw), firstTrailingBit(vec2<i32>(var_0.b.x, 0i))), func_2(~vec3<u32>(889u, 23321u, u_input.a.x)).b.x));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1759f, _wgslsmith_f_op_f32(ceil(-2736f)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1788f, -1167f)))))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, 9375i == arg_2.x), true))));
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(~arg_1, u_input.a.x), select(_wgslsmith_sub_vec2_u32(select(~u_input.c, vec2<u32>(arg_0.a, arg_0.a), vec2<bool>(true, false)), ~vec2<u32>(u_input.a.x, 4294967295u)), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c, select(vec2<u32>(u_input.c.x, 0u), u_input.a, vec2<bool>(true, false))), 0u), true));
    var_1 = ~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), max(u_input.a, ~u_input.c)));
    var var_2 = Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(46707u, _wgslsmith_div_u32(1u, 88016u)), _wgslsmith_div_u32(~arg_1, func_3(Struct_1(9549u, arg_0.b), vec2<bool>(true, true), 2147483647i)), 1u << (~u_input.a.x % 32u), u_input.b ^ arg_1), ~(~vec4<u32>(47969u, 57997u, u_input.a.x, var_1.x)) << (countOneBits(~vec4<u32>(1u, var_1.x, 40010u, 1u)) % vec4<u32>(32u))));
    var_1 = select(firstTrailingBit(vec2<u32>(~(55096u >> (var_2.a.x % 32u)), select(1u, 19061u, true))), u_input.c, any(vec2<bool>(true, false)));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<i32>(16844i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1952i), vec2<i32>(-11761i, -1i)))) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(351f, vec2<f32>(-866f, 835f), vec3<u32>(0u, u_input.b, u_input.a.x), vec3<bool>(true, false, false)), u_input.a.x << (u_input.b % 32u), -vec2<i32>(-2147483647i, 28521i))))), _wgslsmith_add_vec4_u32(vec4<u32>(~(u_input.c.x | u_input.b), 17815u, ~14980u | ~u_input.c.x, u_input.c.x), ~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 0u, 1u, 67503u), ~vec4<u32>(4294967295u, 26706u, 0u, u_input.b))));
}

