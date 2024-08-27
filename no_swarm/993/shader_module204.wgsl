struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: vec3<bool>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1568f;

var<private> global1: bool;

var<private> global2: Struct_3 = Struct_3(vec4<f32>(245f, -2375f, 109f, -413f), -1i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = false;
    var var_1 = ~arg_0.a.c.c;
    var var_2 = u_input.b.x;
    var_1 = firstLeadingBit(~abs(~firstLeadingBit(arg_0.a.d.c)));
    let var_3 = -306f;
    return _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(-21721i, global2.b, u_input.b.x)), abs(u_input.b.zxz)) << (~((0u | arg_0.b) ^ ~(~u_input.c.x)) % 32u);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(global2.a)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2.a, vec4<f32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x))))))), _wgslsmith_dot_vec3_i32(u_input.b.ywx, vec3<i32>(u_input.b.x, -1i, min(reverseBits(u_input.b.x), -global2.b))));
    var var_1 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(func_3(Struct_4(Struct_2(vec4<f32>(-457f, var_0.a.x, var_0.a.x, var_0.a.x), vec2<f32>(global2.a.x, global2.a.x), Struct_1(var_0.a, vec4<i32>(var_0.b, -12157i, u_input.b.x, var_0.b), 0u), Struct_1(vec4<f32>(255f, -247f, 1098f, var_0.a.x), u_input.b, 52664u), 1i), 72021u)) & _wgslsmith_mod_i32(-1i, global2.b), -42774i, ~global2.b >> (1u % 32u), u_input.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, ~u_input.b.x, _wgslsmith_div_i32(-30014i, u_input.b.x), u_input.b.x), vec4<i32>(u_input.b.x & global2.b, reverseBits(var_0.b), 2147483647i, _wgslsmith_mult_i32(global2.b, var_0.b))));
    global1 = arg_0;
    global0 = _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-global2.a.x));
    var var_2 = _wgslsmith_div_u32(u_input.a.x, countOneBits(_wgslsmith_div_u32(22195u << (firstTrailingBit(u_input.c.x) % 32u), 0u)));
    return Struct_4(Struct_2(var_0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.zw + vec2<f32>(var_0.a.x, -175f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.x, global2.a.x)))), Struct_1(vec4<f32>(global2.a.x, -230f, _wgslsmith_f_op_f32(-global2.a.x), var_0.a.x), -vec4<i32>(1i, var_0.b, global2.b, u_input.b.x), _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), Struct_1(vec4<f32>(687f, _wgslsmith_f_op_f32(f32(-1f) * -842f), _wgslsmith_f_op_f32(var_0.a.x - 1637f), _wgslsmith_f_op_f32(round(-1720f))), u_input.b, arg_1.x), _wgslsmith_sub_i32(-2147483647i, -23370i << (u_input.c.x % 32u))), ~firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 25218u, 1u, 3086u), vec4<u32>(30760u, arg_1.x, u_input.a.x, u_input.a.x)), ~4294967295u)));
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = !vec2<bool>(false, (_wgslsmith_f_op_f32(-arg_1.a.c.a.x) > arg_1.a.b.x) && true);
    global1 = all(vec2<bool>(true, var_0.x));
    global1 = true;
    global1 = true;
    global1 = true;
    return func_2(false, ~max(vec2<u32>(arg_1.b, ~arg_1.a.d.c), vec2<u32>(u_input.a.x, countOneBits(arg_1.b)))).a.c;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_4 {
    let var_0 = 0i;
    let var_1 = func_4(select(~_wgslsmith_clamp_u32(arg_0, u_input.c.x, _wgslsmith_mult_u32(46439u, u_input.c.x)), ~0u << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 7687u, arg_2.c, 0u), vec4<u32>(arg_0, 15901u, arg_2.c, 29451u)) % 32u), false), func_2(true, ~(~(~vec2<u32>(arg_0, 4294967295u)))));
    global0 = _wgslsmith_f_op_f32(-global2.a.x);
    var var_2 = arg_1.x;
    var var_3 = arg_2;
    return Struct_4(Struct_2(arg_2.a, var_3.a.yz, var_1, func_4(~firstLeadingBit(1u), func_2(true, u_input.a | u_input.c)), -1i), _wgslsmith_add_u32(arg_0, ~(~max(arg_0, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(vec4<f32>(178f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2228f)))), _wgslsmith_f_op_f32(global2.a.x - -406f), global2.a.x), global2.b);
    var var_0 = func_1(firstLeadingBit(14569u), global2.a, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a)) - global2.a), u_input.b, ~1u));
    var var_1 = 1121f;
    let var_2 = _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-2147483647i, ~_wgslsmith_mult_i32(2147483647i, func_2(false, u_input.a).a.c.b.x), reverseBits(~(-2147483647i) >> (var_0.a.c.c % 32u)), ~max(~var_0.a.e, firstLeadingBit(-4469i))));
    let var_3 = abs(max(vec3<u32>(~0u, 6349u, _wgslsmith_mod_u32(abs(var_0.a.c.c), abs(u_input.c.x))), vec3<u32>(37325u, u_input.a.x, _wgslsmith_mult_u32(1u, ~3063u))));
    global1 = !(false & any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(var_3.x, u_input.a.x), var_3.x, var_3);
}

