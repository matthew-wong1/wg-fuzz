struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32;

var<private> global2: Struct_5;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> i32 {
    var var_0 = global2.e.d.x;
    let var_1 = arg_1.x;
    global1 = _wgslsmith_f_op_f32(sign(global2.a));
    let var_2 = true;
    var var_3 = Struct_1(~8073i, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(-5141i, global0.x, global2.d.x)), global2.e.c.xyz));
    return 2147483647i;
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.e.d.x, _wgslsmith_f_op_f32(-global2.a))));
    global2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.d.x) - 381f) - global2.a) - -1927f), ~(vec3<u32>(global2.b.x, 20377u, 5580u) & _wgslsmith_mod_vec3_u32(global2.b, global2.b)) >> (~global2.b % vec3<u32>(32u)), Struct_2(~14160i, all(vec3<bool>(global2.e.a.x, false, true)) || true, _wgslsmith_add_i32(~1i, u_input.d), global2.e.b), max(vec4<i32>(i32(-1i) * -5212i, ~global2.c.c, i32(-1i) * -5854i, 1i) ^ vec4<i32>(~global2.d.x, -2147483647i, ~1i, 6179i), vec4<i32>(global0.x, 2147483647i, reverseBits(_wgslsmith_div_i32(36041i, 1i)), _wgslsmith_add_i32(u_input.d ^ global0.x, 1i))), global2.e);
    var var_1 = select(_wgslsmith_mod_vec2_i32(global2.e.c.yx, firstLeadingBit(~vec2<i32>(6281i, global2.c.d.a))) ^ -(-global2.d.yz ^ vec2<i32>(2147483647i, u_input.d)), firstLeadingBit(abs(_wgslsmith_sub_vec2_i32(-vec2<i32>(20368i, global0.x), global2.d.wz))), global2.e.a.zy);
    global1 = global2.a;
    var var_2 = Struct_1(28864i, ~countOneBits(_wgslsmith_dot_vec2_i32(global2.d.xz, ~vec2<i32>(30263i, -62278i))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.e.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e.d.x + global2.e.d.x))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1156f - -544f) - 1521f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a - 490f) + _wgslsmith_f_op_f32(global2.e.d.x * -114f)))));
}

fn func_1(arg_0: vec3<u32>) -> vec3<u32> {
    global0 = ~(~vec2<i32>(func_2(_wgslsmith_mod_i32(global2.e.c.x, global2.d.x), ~vec3<u32>(arg_0.x, global2.b.x, 28374u)), _wgslsmith_add_i32(abs(u_input.c), _wgslsmith_mult_i32(global0.x, global0.x))));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(global2.e.d.zx)))) - _wgslsmith_f_op_vec2_f32(ceil(global2.e.d.zy)))));
    var var_1 = select(global2.c.b, false, true);
    global1 = _wgslsmith_f_op_f32(max(1233f, 727f));
    var var_2 = var_0.x;
    return vec3<u32>(35464u << (reverseBits(_wgslsmith_dot_vec3_u32(firstTrailingBit(arg_0), arg_0)) % 32u), arg_0.x, global2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_5(global2.e.d.x, _wgslsmith_mult_vec3_u32(func_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, 52678u, 100901u), vec3<u32>(u_input.b, 4294967295u, global2.b.x))), u_input.a & u_input.a), Struct_2(0i, global2.c.b, u_input.d, Struct_1(-2147483647i, global0.x)), global2.e.c, global2.e);
    var var_0 = global2.e;
    global0 = vec2<i32>(global2.c.d.a, 2147483647i);
    global1 = _wgslsmith_f_op_f32(2229f - -152f);
    let var_1 = -1i;
    let var_2 = var_0.a;
    var var_3 = 8104i;
    let var_4 = _wgslsmith_sub_vec4_u32(firstLeadingBit((vec4<u32>(u_input.b, 8382u, global2.b.x, 92153u) & ~vec4<u32>(4294967295u, 10387u, 21756u, 62359u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, 1u, global2.b.x) | vec4<u32>(global2.b.x, u_input.e, u_input.b, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, global2.b.x, global2.b.x, global2.b.x), vec4<u32>(u_input.a.x, 1u, 4294967295u, 4294967295u), vec4<u32>(6329u, 1u, u_input.a.x, 1u)), select(vec4<u32>(0u, 1u, global2.b.x, global2.b.x), vec4<u32>(1u, 1834u, 96187u, 60715u), vec4<bool>(var_2.x, false, global2.e.a.x, true)))), select(~(~vec4<u32>(4294967295u, global2.b.x, 4294967295u, 1u)), select(vec4<u32>(global2.b.x, global2.b.x, 42620u, 4294967295u) ^ vec4<u32>(u_input.a.x, global2.b.x, u_input.e, global2.b.x), select(vec4<u32>(109221u, 0u, 1u, 24996u), vec4<u32>(0u, 79426u, u_input.b, u_input.e), vec4<bool>(global2.e.a.x, true, var_0.e, false)), vec4<bool>(false, var_2.x, false, false)), true && any(vec3<bool>(false, var_2.x, var_0.e))) ^ vec4<u32>(min(global2.b.x >> (global2.b.x % 32u), u_input.b << (22348u % 32u)), firstTrailingBit(abs(0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.e), select(u_input.a, global2.b, false)), _wgslsmith_mod_u32(u_input.e, global2.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_mult_u32(global2.b.x, 50080u), u_input.a.x), _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(var_4, var_4)), u_input.b), ~(vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-33109i, u_input.d, 2766i), var_0.c.yyw), ~(-21631i)) ^ var_0.c.wyx));
}

