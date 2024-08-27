struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec4<bool>,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10>;

var<private> global1: vec3<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    global1 = ~(-_wgslsmith_sub_vec3_i32(-vec3<i32>(-13625i, arg_0.b.x, u_input.a), vec3<i32>(global1.x, -34657i, global1.x))) >> (~(~u_input.b) % vec3<u32>(32u));
    global0 = array<vec2<bool>, 10>();
    let var_0 = Struct_3(920f, firstTrailingBit(~select(u_input.b, ~vec3<u32>(22009u, arg_0.c.x, 3881u), vec3<bool>(false, false, true))), Struct_2(false), select(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true)), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true))), vec4<bool>(true, false, arg_1.x >= ~arg_1.x, false), true), -firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-2147483647i, 0i), ~arg_0.b.x)));
    var var_1 = arg_0.c.x;
    global0 = array<vec2<bool>, 10>();
    return ~firstTrailingBit(~(~(~arg_1.x)));
}

fn func_2(arg_0: i32) -> u32 {
    global0 = array<vec2<bool>, 10>();
    global1 = vec3<i32>(1i, -_wgslsmith_clamp_i32(1i, u_input.a, ~u_input.a), 22801i);
    var var_0 = Struct_1(abs(u_input.c), global1.zx, _wgslsmith_add_vec2_u32(~vec2<u32>(0u, func_3(Struct_1(u_input.b.x, global1.yz, vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(7997u, u_input.c))), vec2<u32>(4294967295u, ~u_input.b.x)));
    var var_1 = Struct_2(_wgslsmith_div_i32(var_0.b.x, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-22017i, u_input.a), vec2<i32>(u_input.a, -76352i), global0[_wgslsmith_index_u32(1u, 10u)]), -var_0.b)) < ~var_0.b.x);
    var_1 = Struct_2(all(vec2<bool>(!var_1.a, true)));
    return 4294967295u;
}

fn func_1() -> Struct_5 {
    let var_0 = true;
    global1 = ~_wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(global1.x | global1.x), _wgslsmith_clamp_i32(1i, -1967i, 0i) << (func_2(global1.x) % 32u), -2147483647i), (-vec3<i32>(-44530i, 58971i, global1.x) << (~u_input.b % vec3<u32>(32u))) << (vec3<u32>(51893u & u_input.b.x, 1811u, u_input.c ^ 1u) % vec3<u32>(32u)));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u), ~u_input.b), ~_wgslsmith_clamp_u32(u_input.b.x, ~(~2423u), (1u & u_input.b.x) | abs(u_input.b.x)));
    let var_2 = Struct_4(1u, vec4<bool>(!select(!var_0, -2147483647i == u_input.a, select(var_0, var_0, true)), var_0, true, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-541f, -927f))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(1807f - var_2.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.c.x - 1077f)))))), _wgslsmith_clamp_vec3_u32(u_input.b, ~reverseBits(select(u_input.b, vec3<u32>(u_input.c, var_1.x, 1u), true)), max(abs(u_input.b), u_input.b) & _wgslsmith_div_vec3_u32(~u_input.b, ~u_input.b)), Struct_2(any(!select(var_2.b.yxw, var_2.b.wzy, var_2.b.xxx))), select(!select(select(vec4<bool>(true, false, var_2.b.x, var_2.b.x), vec4<bool>(var_2.b.x, false, var_2.b.x, false), var_0), var_2.b, any(var_2.b)), var_2.b, true), 14157i);
    return Struct_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(668f, _wgslsmith_f_op_f32(-313f - -1460f), var_3.a, _wgslsmith_f_op_f32(floor(var_3.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, var_2.c.x, var_2.c.x, -591f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-304f, var_2.c.x, -381f, var_3.a))))), select(var_3.d, !(!vec4<bool>(var_3.d.x, var_3.c.a, var_0, var_2.b.x)), true))), _wgslsmith_f_op_f32(sign(-770f)), var_3.c);
}

fn func_4(arg_0: Struct_5) -> i32 {
    var var_0 = Struct_1(~(~1u), select(-(~min(vec2<i32>(2147483647i, -15932i), global1.yy)), global1.yy, !select(vec2<bool>(false, arg_0.c.a), vec2<bool>(arg_0.c.a, false), true)), abs(~(~vec2<u32>(u_input.b.x, u_input.b.x))));
    let var_1 = var_0.a;
    global1 = ~firstLeadingBit(~(~vec3<i32>(u_input.a, var_0.b.x, 0i)));
    global1 = firstTrailingBit(abs(-_wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, 2950i, 2147483647i), max(vec3<i32>(47684i, var_0.b.x, var_0.b.x), vec3<i32>(u_input.a, global1.x, 2147483647i)), ~vec3<i32>(14918i, 7289i, 1i))));
    let var_2 = countOneBits((-vec4<i32>(-68481i, 13170i, u_input.a, var_0.b.x) | _wgslsmith_sub_vec4_i32(select(vec4<i32>(global1.x, 4962i, var_0.b.x, global1.x), vec4<i32>(var_0.b.x, var_0.b.x, 0i, -35982i), true), ~vec4<i32>(39668i, 1945i, 25096i, -33295i))) & select(-(~vec4<i32>(global1.x, -1i, var_0.b.x, global1.x)), abs(~vec4<i32>(global1.x, u_input.a, global1.x, 1i)), all(!vec3<bool>(arg_0.c.a, true, true))));
    return max(1i ^ _wgslsmith_sub_i32(-3291i & global1.x, -2147483647i), _wgslsmith_sub_i32((0i ^ var_0.b.x) >> (_wgslsmith_div_u32(~1u, reverseBits(u_input.b.x)) % 32u), firstLeadingBit(max(global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, 27812i, u_input.a), var_2.zxx)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(func_4(func_1()), u_input.a, u_input.a, global1.x);
    var var_1 = global1.x;
    let var_2 = vec4<u32>(~max(u_input.c, 4294967295u) & 25110u, u_input.b.x, func_3(Struct_1(u_input.b.x ^ u_input.c, vec2<i32>(-19363i, -21364i), u_input.b.yx >> (u_input.b.yy % vec2<u32>(32u))), u_input.b.zx), 43673u) | vec4<u32>(u_input.b.x ^ 106918u, ~func_2(abs(-20360i)), u_input.c, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b.x, 76200u), countOneBits(abs(u_input.c)), 39698u));
    let var_3 = select(global0[_wgslsmith_index_u32(u_input.c, 10u)], global0[_wgslsmith_index_u32(u_input.c, 10u)], vec2<bool>(true, !any(vec2<bool>(true, true))));
    let var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~func_4(Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(628f, -894f, 1476f, 1574f)), -462f, func_1().c)));
}

