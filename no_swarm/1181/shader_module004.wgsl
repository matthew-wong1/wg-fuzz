struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

var<private> global2: Struct_1;

var<private> global3: array<vec4<f32>, 12>;

var<private> global4: array<vec4<u32>, 29>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> f32 {
    global0 = arg_1;
    let var_0 = !arg_0.x;
    return 735f;
}

fn func_3() -> f32 {
    var var_0 = Struct_1(~_wgslsmith_div_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, global0.a.x, 4858u), global2.a)), u_input.b));
    global4 = array<vec4<u32>, 29>();
    let var_1 = u_input.c.x;
    global3 = array<vec4<f32>, 12>();
    let var_2 = firstTrailingBit(vec3<u32>(27953u, 4294967295u, var_0.a.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -506f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -588f) - 534f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -827f))))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(arg_0.x - 2055f)), arg_0.x, -491f, _wgslsmith_f_op_f32(abs(202f))))));
    let var_1 = !(!(!all(vec3<bool>(true, true, true))));
    var var_2 = ~u_input.c;
    let var_3 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(global0.a, max(vec3<u32>(0u, 29007u, u_input.a), ~vec3<u32>(global2.a.x, 29658u, u_input.a))), global0.a));
    var var_4 = var_1 || ((-2292f >= _wgslsmith_f_op_f32(func_3())) & (var_1 || false));
    return Struct_1(global2.a);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> i32 {
    global2 = func_4(vec3<f32>(_wgslsmith_f_op_f32(func_2(!vec2<bool>(arg_3, true), arg_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))), arg_3)), _wgslsmith_f_op_f32(f32(-1f) * -100f)));
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(round(-388f));
    global3 = array<vec4<f32>, 12>();
    let var_2 = u_input.c.x;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 12>();
    let var_0 = vec3<u32>(0u, countOneBits(6997u), _wgslsmith_mod_u32(global2.a.x, ~select(u_input.a, u_input.a, u_input.c.x != u_input.c.x)));
    var var_1 = true;
    let var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, func_1(Struct_1(vec3<u32>(0u, global2.a.x, 0u)), Struct_1(global0.a), 810f, false), 1i) << (select(vec3<u32>(global2.a.x, 1u, 0u), ~global0.a, vec3<bool>(true, true, true)) % vec3<u32>(32u)), abs(~vec3<i32>(-34993i, 1i, -46334i))), (~vec3<i32>(u_input.c.x, u_input.c.x, 29252i) ^ _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.c.x, -18568i), vec3<i32>(u_input.c.x, -1i, 0i)), min(vec3<i32>(u_input.c.x, -1i, 1i), vec3<i32>(u_input.c.x, -2147483647i, 1i)))) | vec3<i32>(_wgslsmith_clamp_i32(u_input.c.x, 38653i, ~2147483647i), reverseBits(_wgslsmith_div_i32(-27152i, -1i)), _wgslsmith_div_i32(-42604i, -u_input.c.x)));
    let var_3 = vec2<i32>(~var_2.x, 1i);
    var var_4 = Struct_1(min(~vec3<u32>(4294967295u & global0.a.x, global0.a.x >> (global2.a.x % 32u), ~50950u), global0.a));
    let var_5 = u_input.b;
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-757f, 958f, -1382f, 1205f))) + vec4<f32>(_wgslsmith_f_op_f32(sign(-1829f)), -863f, _wgslsmith_f_op_f32(-908f * 1000f), _wgslsmith_f_op_f32(abs(-1358f))))), ~var_0, vec2<u32>(44829u, ~10190u));
}

