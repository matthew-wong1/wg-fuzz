struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1333f, -794f)))));
    let var_0 = Struct_1(true);
    let var_1 = any(vec4<bool>(!(!(true && arg_0.a)), arg_0.a, var_0.a, any(vec3<bool>(select(var_0.a, true, var_0.a), !arg_0.a, false))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-647f, -1406f))));
    let var_3 = arg_0;
    return 1630f;
}

fn func_2() -> vec4<u32> {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(true), -1i)))), 183f);
    global0 = _wgslsmith_f_op_f32(ceil(-753f));
    let var_0 = Struct_1(!(abs(-u_input.b.x) <= -13194i));
    var var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), select(abs(vec4<u32>(4294967295u, u_input.a.x, 55669u, 9581u) >> (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 40621u, 4294967295u) ^ vec4<u32>(u_input.a.x, 57877u, u_input.a.x, u_input.a.x), vec4<u32>(84976u, 1u, u_input.a.x, 84091u)), !(!vec4<bool>(var_0.a, var_0.a, false, true))), vec4<u32>(u_input.a.x << (17967u % 32u), _wgslsmith_add_u32(reverseBits(u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(u_input.a.x, u_input.a.x))), ~_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x), ~1u)), ~abs(select(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4380u, 1u), true)));
    var_1 = vec4<u32>(u_input.a.x, u_input.a.x, 31323u, var_1.x) << (~min(~min(vec4<u32>(var_1.x, u_input.a.x, 1u, 1u), vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u), max(vec4<u32>(u_input.a.x, var_1.x, 1u, 62017u), vec4<u32>(u_input.a.x, 34845u, var_1.x, 35774u)))) % vec4<u32>(32u));
    return vec4<u32>(~4294967295u, ~0u, _wgslsmith_sub_u32(reverseBits(u_input.a.x), 2516u), reverseBits(~31660u) | _wgslsmith_mult_u32(~(~1u), reverseBits(~u_input.a.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: Struct_2) -> f32 {
    var var_0 = select(vec3<bool>(any(vec4<bool>(all(vec3<bool>(arg_3.e.a, arg_3.e.a, false)), arg_3.b.x, all(vec4<bool>(false, true, false, true)), !arg_3.b.x)), true | (true | arg_3.b.x), arg_3.e.a), select(vec3<bool>(arg_3.b.x, true, arg_3.e.a), !vec3<bool>(arg_3.e.a, select(arg_3.e.a, arg_3.e.a, true), arg_3.b.x), true), select(select(select(select(vec3<bool>(arg_3.e.a, false, true), vec3<bool>(arg_3.b.x, false, false), arg_3.b.x), select(vec3<bool>(true, arg_3.e.a, arg_3.e.a), vec3<bool>(true, false, true), arg_3.e.a), arg_3.b.x), !(!vec3<bool>(true, arg_3.e.a, false)), !(!vec3<bool>(false, arg_3.e.a, true))), !select(vec3<bool>(false, arg_3.b.x, arg_3.b.x), !vec3<bool>(true, arg_3.b.x, arg_3.b.x), vec3<bool>(arg_3.e.a, arg_3.b.x, false)), !arg_3.b.x));
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-427f - -1040f)) + -1000f), -876f), 1000f, !arg_3.b.x));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global0 = -794f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(func_2(), vec4<u32>(arg_0.x, 14618u, arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, 4294967295u))), 58436u == _wgslsmith_sub_u32(u_input.a.x, arg_0.x)), firstLeadingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 1u), u_input.a)), abs(u_input.b), Struct_2(~u_input.a, vec2<bool>(true, true), u_input.a, u_input.a.x, Struct_1(true)))));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1887f);
    var var_0 = _wgslsmith_div_vec2_i32(u_input.b.zx, vec2<i32>(u_input.b.x, ~u_input.b.x));
    var var_1 = -17918i;
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<u32>(firstTrailingBit(u_input.a.x), u_input.a.x));
    let var_1 = _wgslsmith_add_vec2_i32(select(select(abs(~u_input.b.yz), u_input.b.zw, !(!var_0.a)), ~select(u_input.b.wz, ~vec2<i32>(u_input.b.x, -2147483647i), all(vec4<bool>(var_0.a, false, var_0.a, var_0.a))), select(select(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, false), vec2<bool>(var_0.a, var_0.a)), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, false), vec2<bool>(var_0.a, var_0.a)), select(true, true, false)), vec2<bool>(true, var_0.a), !(!var_0.a))), vec2<i32>(_wgslsmith_mult_i32(-20572i, 27179i), _wgslsmith_mod_i32(u_input.b.x, max(_wgslsmith_add_i32(u_input.b.x, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(-1i, -63484i))))));
    var_0 = Struct_1(1i <= _wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, -9366i, 1i), vec4<i32>(-54255i, var_1.x, u_input.b.x, var_1.x)), reverseBits(-var_1.x)));
    var var_2 = !var_0.a;
    let var_3 = Struct_1(var_0.a);
    var var_4 = Struct_2(~select(~u_input.a, firstLeadingBit(~vec3<u32>(66499u, u_input.a.x, 61436u)), (u_input.b.x ^ 13732i) >= ~2147483647i), !(!vec2<bool>(true, !var_3.a)), vec3<u32>(u_input.a.x, ~(~u_input.a.x), min(select(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(34189u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), true), select(0u, 49927u, true))), 69100u, Struct_1(any(vec4<bool>(var_0.a, false, false, true)) && !any(vec2<bool>(true, false))));
    var_2 = all(vec3<bool>(!(any(vec2<bool>(var_0.a, true)) & (0i > u_input.b.x)), !all(select(vec3<bool>(var_0.a, true, false), vec3<bool>(true, var_0.a, true), true)), var_4.c.x <= (0u << (u_input.a.x % 32u))));
    let var_5 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1149f, -1020f)), vec4<i32>(~var_1.x, ~abs(62290i), u_input.b.x, 1i << (firstLeadingBit(u_input.a.x) % 32u)) ^ vec4<i32>(u_input.b.x, min(13353i, 0i) >> (0u % 32u), _wgslsmith_add_i32(-52927i, max(var_1.x, 25087i)), _wgslsmith_div_i32(u_input.b.x, _wgslsmith_clamp_i32(2147483647i, var_1.x, var_1.x))));
}

