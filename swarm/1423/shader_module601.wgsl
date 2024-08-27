struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), 77627u, _wgslsmith_sub_u32(u_input.a, 1u), u_input.a), ~_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 0u, 46163u), vec4<u32>(u_input.a, 4516u, u_input.a, u_input.a), vec4<bool>(true, true, false, true)), vec4<u32>(1u, u_input.a, u_input.a, 44309u))));
    var var_1 = Struct_4(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b, u_input.b, -2147483647i) << (vec3<u32>(var_0.a.x, 30093u, reverseBits(u_input.a)) % vec3<u32>(32u)), vec3<i32>(abs(u_input.b), 29801i, min(u_input.b, u_input.b))), var_0, Struct_2(countOneBits(vec2<u32>(1u, ~u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1676f, 392f)))))), var_0, vec3<bool>(!(u_input.a > u_input.a), false, true), _wgslsmith_f_op_f32(floor(252f))));
    var var_2 = Struct_2(vec2<u32>(68217u, max(var_1.c.c.a.x, var_1.b.a.x) >> (u_input.a % 32u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.c.b.x + var_1.c.b.x), _wgslsmith_f_op_f32(-var_1.c.b.x)) * var_1.c.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.c.b)), var_1.c.b), select(vec2<bool>(var_1.c.d.x, false), var_1.c.d.zy, vec2<bool>(var_1.c.d.x, var_1.c.d.x)))), Struct_1(var_1.b.a), var_1.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1152f) - _wgslsmith_f_op_f32(f32(-1f) * -690f)) * var_1.c.b.x)));
    var var_3 = Struct_2(~(~vec2<u32>(var_1.b.a.x, var_0.a.x)), var_1.c.b, var_2.c, !select(select(var_1.c.d, select(var_2.d, var_2.d, var_2.d), false), select(vec3<bool>(var_1.c.d.x, var_2.d.x, true), vec3<bool>(false, var_1.c.d.x, false), vec3<bool>(true, true, true)), !select(var_1.c.d, vec3<bool>(true, var_1.c.d.x, var_1.c.d.x), var_2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e * var_2.b.x)));
    var var_4 = u_input.a;
    return 1f > var_2.e;
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = select(!(!any(vec4<bool>(true, true, true, true))), true, false || !(true != func_3()));
    let var_1 = select(~_wgslsmith_mult_vec4_u32(vec4<u32>(63980u, 74228u, 43203u, u_input.a), select(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 9983u, 4294967295u, 0u), var_0)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), reverseBits(u_input.a), 1u & u_input.a), vec4<u32>(~1u, _wgslsmith_mult_u32(u_input.a, 1u), 8851u, ~u_input.a)), true) | vec4<u32>(u_input.a, ~(~(u_input.a << (0u % 32u))), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 63338u, u_input.a, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 23274u, 1426u, u_input.a), vec4<u32>(1u, 5665u, 1u, u_input.a))) & u_input.a);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1099f + -1000f) - _wgslsmith_f_op_f32(abs(-1275f))) + 1038f);
    global0 = array<Struct_3, 21>();
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1086f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(384f, -831f))), 119f)));
    return u_input.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = arg_0.x;
    var var_1 = 1f;
    var var_2 = ~u_input.a;
    let var_3 = global0[_wgslsmith_index_u32(0u ^ u_input.a, 21u)];
    var var_4 = arg_1;
    return func_2(Struct_3(16008i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(131f, -1366f) + vec2<f32>(_wgslsmith_f_op_f32(round(-2002f)), 684f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-694f * 487f)) * _wgslsmith_f_op_f32(sign(-385f)))), -(~u_input.b));
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    global0 = array<Struct_3, 21>();
    let var_1 = ~73634u;
    let x = u_input.a;
    s_output = StorageBuffer(~111144u, vec4<f32>(_wgslsmith_f_op_f32(select(-1402f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_div_f32(-111f, 561f))), (u_input.a < var_1) | false)), -646f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1086f, -880f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1317f, -837f)))), -1000f), ~_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(u_input.b, u_input.b, u_input.b)), countOneBits(vec3<i32>(0i, u_input.b, u_input.b)), -vec3<i32>(0i, -528i, 1i)) << (~(~vec3<u32>(98092u, 44156u, u_input.a)) % vec3<u32>(32u)), u_input.b ^ 4316i, ~abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-17229i, 34601i) << (vec2<u32>(var_0, var_0) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(u_input.b, u_input.b)))));
}

