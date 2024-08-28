struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(-71236i, false, vec2<i32>(6792i, -54290i), vec3<u32>(46011u, 4118u, 0u), 1u), Struct_1(-63036i, true, vec2<i32>(40122i, 0i), vec3<u32>(63850u, 1u, 4294967295u), 17518u));

var<private> global2: array<vec2<f32>, 9>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    global0 = array<Struct_1, 32>();
    return _wgslsmith_add_u32(1u, u_input.a.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: f32) -> vec2<bool> {
    var var_0 = !(!vec3<bool>(global3.b, false, ~arg_1.x == ~arg_1.x));
    global2 = array<vec2<f32>, 9>();
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~global3.e), ~57933u, global3.e), vec3<u32>(_wgslsmith_sub_u32(12166u, ~_wgslsmith_mod_u32(global3.d.x, 4294967295u)), 109257u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0.wxz, u_input.a.wxy), func_3(vec3<f32>(arg_2, -388f, -666f), vec4<i32>(global3.a, arg_1.x, 1i, global3.c.x), false, vec4<f32>(664f, 634f, arg_2, arg_2)), _wgslsmith_clamp_u32(0u, arg_0.x, arg_0.x)), global3.d)));
    return !var_0.xx;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = select(any(select(func_2(u_input.a, global3.c, 1536f), select(vec2<bool>(global3.b, arg_0), vec2<bool>(global3.b, global3.b), vec2<bool>(global3.b, false)), vec2<bool>(global3.b, false))) || any(select(!vec4<bool>(false, false, arg_0, arg_0), !vec4<bool>(true, arg_0, arg_0, arg_0), true)), (_wgslsmith_dot_vec4_u32(vec4<u32>(global3.d.x, u_input.b, global3.d.x, 65061u) & u_input.a, vec4<u32>(0u, 1u, global3.e, u_input.a.x) ^ u_input.a) & firstLeadingBit(countOneBits(u_input.b))) == u_input.b, func_2(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, global3.e, 56144u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.b, u_input.b) | vec4<u32>(u_input.a.x, global3.e, 0u, u_input.a.x)), min(abs(firstLeadingBit(vec2<i32>(global3.a, global3.a))), reverseBits(vec2<i32>(-3186i, global3.a))), arg_1).x);
    global3 = Struct_1(_wgslsmith_clamp_i32(9687i, _wgslsmith_dot_vec2_i32(-global3.c, vec2<i32>(-2012i, global3.c.x)), global3.c.x) << (_wgslsmith_mult_u32(global3.d.x >> (_wgslsmith_add_u32(u_input.a.x, 39310u) % 32u), abs(_wgslsmith_add_u32(global3.e, 1u))) % 32u), all(vec2<bool>(true, true)), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(21227i, global3.c.x)), vec2<i32>(global3.a, 23659i)), global3.c) << (~firstLeadingBit(u_input.a.zz) % vec2<u32>(32u)), firstLeadingBit(vec3<u32>(global3.d.x, 38722u, ~firstTrailingBit(u_input.b))), global3.e);
    global0 = array<Struct_1, 32>();
    var var_1 = ~(18081u & u_input.b) >= u_input.b;
    var var_2 = global3.d.x;
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~min(vec2<u32>(global3.d.x, global3.e) >> (global3.d.zz % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(34648u, 74025u)))), ~global3.d.yx), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec3<i32>(global3.a, select(~2147483647i, global3.a << (~u_input.b % 32u), true), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(global3.c.x, global3.c.x, global3.c.x, global3.c.x), vec4<i32>(global3.a, -62903i, 20955i, 2147483647i)))));
    let var_1 = func_1((global3.b | true) | false, _wgslsmith_f_op_f32(f32(-1f) * -805f), -1391f, vec3<f32>(-665f, 1896f, -437f));
    global3 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(func_3(vec3<f32>(320f, 132f, 362f), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 1i, var_0.x, var_0.x), vec4<i32>(1i, 42860i, 2147483647i, -1i)), global3.c.x <= var_0.x, vec4<f32>(-1225f, -1000f, 449f, -502f)), ~(16774u | var_1.d.x)) << (_wgslsmith_clamp_u32(func_3(vec3<f32>(1f, 1f, 1f), -vec4<i32>(var_1.c.x, 1i, 6922i, 0i), true && global3.b, vec4<f32>(_wgslsmith_div_f32(394f, 897f), -424f, _wgslsmith_f_op_f32(-812f + 526f), -339f)), 4294967295u, ~_wgslsmith_div_u32(func_1(global3.b, 1899f, 1509f, vec3<f32>(-1000f, -210f, -899f)).e, ~u_input.a.x)) % 32u), 2u)];
    var var_2 = var_1.c.x;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(~vec2<u32>(global3.e, var_1.e), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(max(vec2<u32>(1u, var_1.e), vec2<u32>(1u, 23339u)), var_1.d.yy), vec2<u32>(_wgslsmith_dot_vec3_u32(var_1.d, vec3<u32>(var_1.d.x, u_input.a.x, global3.e)), ~1u))), u_input.a.xz), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e >> ((~94018u ^ u_input.a.x) % 32u), 1f, u_input.a, ~_wgslsmith_dot_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_3.c.x), vec3<i32>(global3.a, global3.c.x, var_0.x))), reverseBits(~vec3<i32>(-67028i, 21774i, 0i))), _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(var_3.e, 9u)] * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(~1u, 9u)], global2[_wgslsmith_index_u32(119531u, 9u)]), vec2<f32>(_wgslsmith_f_op_f32(abs(-129f)), -1318f)))));
}

