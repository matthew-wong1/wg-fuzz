struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<bool>,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>, arg_3: vec4<u32>) -> u32 {
    var var_0 = arg_0;
    let var_1 = arg_0;
    return ~var_0.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: vec3<u32>) -> vec4<f32> {
    let var_0 = vec4<u32>(~(~11441u), u_input.d, 0u << (1u % 32u), ~(~func_3(Struct_1(arg_0.a, arg_0.a.x, vec2<bool>(true, true), vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x), arg_0.e), all(vec2<bool>(true, arg_0.c.x)), select(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, false), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), true), ~arg_0.a)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_0.d.x));
    global0 = arg_0.e.x;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, arg_0.d.x, 888f, var_1.x) * vec4<f32>(arg_0.d.x, 109f, 441f, 851f)) - _wgslsmith_f_op_vec4_f32(-arg_0.d))))));
}

fn func_1() -> vec4<f32> {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.d, 2138u, u_input.a, 12483u)), vec4<u32>(4294967295u, ~u_input.d, 4294967295u, u_input.a))), _wgslsmith_mod_u32(abs(u_input.d), abs(1u)), vec2<bool>(!all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1863f - -896f) + _wgslsmith_f_op_f32(1088f + 1000f)), -1190f, _wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(-241f * -570f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec4<u32>(u_input.a, u_input.d, 1u, 108971u), u_input.d, vec2<bool>(false, false), vec4<f32>(-1262f, -761f, -200f, -347f), vec4<i32>(-2147483647i, 1i, 19851i, 1i)), vec2<u32>(u_input.a, u_input.d), vec3<i32>(2147483647i, -1i, 5925i), vec3<u32>(20721u, 0u, 0u)))))), -vec4<i32>(41257i, ~(-19203i), firstTrailingBit(u_input.e.x ^ u_input.e.x), _wgslsmith_sub_i32(firstLeadingBit(32450i), min(u_input.b.x, u_input.b.x))));
    var var_1 = Struct_3(Struct_2(any(vec4<bool>(var_0.c.x, u_input.d == var_0.a.x, any(var_0.c), any(vec3<bool>(true, var_0.c.x, var_0.c.x)))), var_0.c, _wgslsmith_f_op_vec4_f32(abs(var_0.d))), Struct_1(reverseBits(~reverseBits(var_0.a)), (44615u ^ ~var_0.a.x) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, u_input.a), var_0.a.zy) % 32u), vec2<bool>(!var_0.c.x == var_0.c.x, var_0.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.d.x, 548f, var_0.d.x, -971f)))) - var_0.d), vec4<i32>(u_input.b.x, -5826i, abs(var_0.e.x), var_0.e.x)), var_0.e.x, vec3<u32>(15812u, var_0.b, u_input.a));
    var var_2 = _wgslsmith_mult_i32(u_input.e.x, _wgslsmith_dot_vec3_i32(min(vec3<i32>(countOneBits(var_1.c), -15497i ^ u_input.c, u_input.e.x), abs(countOneBits(vec3<i32>(11790i, var_0.e.x, var_0.e.x)))), var_1.b.e.xzx));
    global0 = ~(-53516i);
    global0 = u_input.e.x;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.c.x * 2407f)))), 162f, _wgslsmith_f_op_f32(ceil(var_0.d.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1041f, var_1.b.d.x)))) + -252f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(-(~abs(u_input.c)));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())))));
    var var_1 = _wgslsmith_clamp_i32(-28465i, ~_wgslsmith_sub_i32(max(-u_input.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(24995i, 2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.e.x, u_input.b.x, 26115i, -1i))), 2147483647i), countOneBits(firstLeadingBit(-2754i)));
    let var_2 = -2147483647i;
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(496f, 172f, var_0.x, -912f));
    global0 = firstTrailingBit(-8113i);
    let var_3 = vec2<f32>(413f, 932f);
    let var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.a, min(4294967295u, ~3981u)));
}

