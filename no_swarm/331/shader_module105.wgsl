struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
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

var<private> global0: array<bool, 19> = array<bool, 19>(false, false, false, false, false, false, true, false, false, true, true, false, true, false, true, true, true, true, false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = firstLeadingBit(vec3<i32>(8507i, u_input.c.x, abs(1i)));
    return Struct_1((-53401i >> (u_input.d.x % 32u)) != 51430i, all(vec2<bool>(42089i <= min(-23734i, var_0.x), any(select(vec2<bool>(true, false), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec2<bool>(false, false))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: i32, arg_3: vec2<u32>) -> i32 {
    global0 = array<bool, 19>();
    var var_0 = arg_3.x;
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(step(-457f, _wgslsmith_f_op_f32(-533f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -873f))))));
    var_0 = 7145u;
    return -12529i;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> u32 {
    var var_0 = Struct_3(!vec3<bool>(arg_0.a.x, true, _wgslsmith_sub_u32(44738u, arg_2) <= ~arg_2), ~(~vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.d), ~6705u, _wgslsmith_mod_u32(u_input.a.x, 1u), 5387u ^ arg_1)), _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a.x, _wgslsmith_add_u32(~u_input.d.x, ~24568u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, u_input.d.x, 0u), vec4<u32>(arg_1, 0u, 19042u, 20584u))), u_input.a.yzw));
    var_0 = Struct_3(arg_0.a, vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, 4294967295u, arg_1, arg_2), vec4<u32>(arg_2, 0u, u_input.d.x, arg_1) << (u_input.d % vec4<u32>(32u)), countOneBits(vec4<u32>(var_0.c, 1u, var_0.c, var_0.b.x))), u_input.d), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.b.x, arg_2), vec2<u32>(u_input.a.x, 0u) >> (u_input.d.zx % vec2<u32>(32u))), abs(_wgslsmith_dot_vec2_u32(u_input.d.zw, vec2<u32>(31530u, arg_2)))), ~reverseBits(var_0.b.x), ~select(firstLeadingBit(arg_1), _wgslsmith_div_u32(4294967295u, arg_2), global0[_wgslsmith_index_u32(firstLeadingBit(var_0.b.x), 19u)])), arg_1);
    var var_1 = ~(firstLeadingBit(u_input.b) & _wgslsmith_add_vec4_i32(-vec4<i32>(0i, -23085i, u_input.e.x, -1i), max(vec4<i32>(0i, -82213i, 27537i, -10581i) ^ u_input.b, _wgslsmith_clamp_vec4_i32(u_input.b, u_input.e, u_input.b))));
    let var_2 = !(!arg_0.c.a);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(round(-273f)), -576f, -266f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(225f, -1291f)))), -493f)));
    return reverseBits(~arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = ~(firstLeadingBit(~max(u_input.a.x, 39717u)) & 4294967295u);
    let var_1 = firstLeadingBit(_wgslsmith_mod_vec2_i32(select(u_input.b.xy, reverseBits(u_input.c ^ vec2<i32>(u_input.c.x, 37082i)), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], false), true)), vec2<i32>(_wgslsmith_mod_i32(2147483647i, 17531i), u_input.c.x) | vec2<i32>(abs(u_input.c.x), abs(u_input.e.x))));
    global0 = array<bool, 19>();
    var var_2 = Struct_3(vec3<bool>(!(u_input.b.x > func_1(vec3<bool>(false, global0[_wgslsmith_index_u32(19858u, 19u)], true), -1i, -2572i, u_input.d.xx)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(func_3(Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), false, Struct_1(true, false)), u_input.d.x, u_input.a.x), ~u_input.a.x, u_input.d.x), max(vec3<u32>(u_input.a.x, 0u, u_input.d.x), firstTrailingBit(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)))), 19u)], false), u_input.d, _wgslsmith_mod_u32(~firstTrailingBit(0u | u_input.a.x), max(4294967295u & _wgslsmith_div_u32(u_input.a.x, u_input.d.x), firstTrailingBit(u_input.a.x))));
    var var_3 = func_2();
    var var_4 = Struct_2(!var_2.a, func_2().a, func_2());
    let var_5 = min(-reverseBits(u_input.e.wxz), u_input.e.xzz | vec3<i32>(reverseBits(max(1i, var_1.x)), max(_wgslsmith_dot_vec3_i32(u_input.b.xyx, vec3<i32>(0i, u_input.e.x, u_input.e.x)), select(u_input.b.x, var_1.x, true)), u_input.c.x));
    let var_6 = var_2.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~36208u, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x), ~u_input.a.x)));
}

