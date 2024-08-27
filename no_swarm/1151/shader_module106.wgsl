struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, true), vec2<u32>(0u, 0u));

var<private> global1: array<Struct_2, 24>;

var<private> global2: vec4<u32> = vec4<u32>(12249u, 0u, 21998u, 23891u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> vec4<bool> {
    var var_0 = ~_wgslsmith_add_u32(1u, 1u) < _wgslsmith_sub_u32(1u, _wgslsmith_add_u32(reverseBits(global0.b.x) | countOneBits(global2.x), reverseBits(1u)));
    var var_1 = select(arg_0.x, -arg_0.x, true);
    let var_2 = Struct_1(vec3<bool>(!(!(!global0.a.x)), any(select(select(vec4<bool>(false, global0.a.x, global0.a.x, false), vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(false, global0.a.x, global0.a.x, false)), select(vec4<bool>(false, false, false, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x), false), !vec4<bool>(false, global0.a.x, true, global0.a.x))), true), _wgslsmith_sub_vec2_u32(u_input.c.xy, firstTrailingBit(u_input.c.yw)));
    let var_3 = global0.a.x;
    let var_4 = var_2;
    return !(!vec4<bool>(global0.a.x, global0.a.x, true, (var_2.a.x & false) != (arg_1 <= var_2.b.x)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = Struct_1(select(select(select(vec3<bool>(false, true, global0.a.x), select(vec3<bool>(false, true, false), vec3<bool>(global0.a.x, global0.a.x, global0.a.x), global0.a), !global0.a), vec3<bool>(true, false, false), !select(vec3<bool>(false, global0.a.x, global0.a.x), global0.a, vec3<bool>(true, true, global0.a.x))), vec3<bool>((u_input.b >= u_input.b) || global0.a.x, any(global0.a), true), all(vec3<bool>(!global0.a.x, true, all(vec4<bool>(true, true, false, false))))), vec2<u32>(39307u, _wgslsmith_dot_vec3_u32(global2.wwz, _wgslsmith_add_vec3_u32(global2.xyx, reverseBits(vec3<u32>(global0.b.x, 0u, 66311u))))));
    var var_1 = Struct_2(arg_0.a);
    var var_2 = global0.a.zx;
    var var_3 = Struct_1(!global0.a, vec2<u32>(u_input.d.x, ~(~global0.b.x)));
    global1 = array<Struct_2, 24>();
    return func_3(~vec3<i32>(u_input.b ^ u_input.b, 15616i, ~u_input.b) | ~(-vec3<i32>(0i, 52289i, 1i)), 41543u);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec3<u32>) -> u32 {
    var var_0 = vec3<u32>(global0.b.x, ~12842u, global0.b.x);
    var var_1 = func_2(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_2.a, vec4<f32>(arg_2.a.x, arg_2.a.x, 196f, -1879f), arg_1.x)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(681f, -1077f, arg_2.a.x, arg_2.a.x))))), _wgslsmith_div_vec3_f32(arg_2.a.xyz, arg_2.a.yzy), arg_2);
    global2 = vec4<u32>(~(~(~51434u)), ~var_0.x, 4294967295u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.x, _wgslsmith_div_u32(arg_3.x, arg_3.x)), _wgslsmith_clamp_u32(countOneBits(14617u), _wgslsmith_mult_u32(arg_0.x, global0.b.x), reverseBits(arg_3.x))), 1u));
    let var_2 = -27165i;
    global2 = _wgslsmith_add_vec4_u32(u_input.c, ~(~(~(~u_input.c))));
    return ~66411u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<bool>(false, 4294967295u >= global2.x, false), vec2<u32>(firstTrailingBit(~global0.b.x | ~global0.b.x), max(func_1(u_input.c, vec2<bool>(true, global0.a.x), Struct_2(vec4<f32>(321f, -1172f, 2081f, -1172f)), global2.zxy), _wgslsmith_dot_vec2_u32(global2.ww, global2.xz)) << (_wgslsmith_sub_u32(global0.b.x, 1u) % 32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1442f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -114f)))) * _wgslsmith_div_f32(_wgslsmith_div_f32(-1899f, 623f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2370f + -113f), -413f, true))));
    var var_2 = 0u;
    let var_3 = global0.a;
    var_0 = Struct_1(!var_0.a, ~(~_wgslsmith_div_vec2_u32(abs(global0.b), ~vec2<u32>(u_input.a, global0.b.x))));
    var_0 = Struct_1(!(!global0.a), countOneBits(vec2<u32>(countOneBits(20680u), global0.b.x)) << (vec2<u32>(u_input.a, var_0.b.x) % vec2<u32>(32u)));
    var var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(1u, ~(var_0.b.x ^ 1u), global2.x) & ~(~vec3<u32>(u_input.a, 0u, global2.x)), ~global2.wwx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-797f * -1644f))), 1i >> (firstLeadingBit(global0.b.x) % 32u), reverseBits(~(28062u << (1u % 32u)) & u_input.a), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_1, var_1)))), _wgslsmith_f_op_f32(var_1 - var_1), var_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-202f, 1838f, var_1)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -418f, var_1) * vec3<f32>(676f, 333f, var_1))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(-239f + -135f), _wgslsmith_f_op_f32(f32(-1f) * -752f), var_1));
}

