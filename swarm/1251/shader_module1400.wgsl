struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 25856u);

var<private> global1: bool = true;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2;
    let var_1 = ~firstTrailingBit(vec4<u32>(u_input.a.x, 78600u, global0.x, 4294967295u));
    let var_2 = arg_0.c;
    return var_0.a;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_i32(~(u_input.c.x << (1u % 32u)), -1i), max(_wgslsmith_mult_i32(abs(2147483647i), u_input.b.x), -(~(-u_input.b.x))), all(vec2<bool>(true, true)), _wgslsmith_sub_u32(~select(_wgslsmith_div_u32(1u, u_input.a.x), _wgslsmith_div_u32(67249u, 12280u), true), ~48403u), 177f);
    let var_1 = global0.x;
    var var_2 = Struct_1(i32(-1i) * -4975i, -1i, (!var_0.c | ((var_0.c | false) == var_0.c)) | !all(vec3<bool>(false, false, var_0.c)), select(~(~global0.x), _wgslsmith_dot_vec3_u32(~u_input.d.xxz, u_input.d.zwy), var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(15691i, -6237i, var_0.c, 18220u, var_0.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, 952f, -314f, var_0.e)), Struct_2(-129f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-187f))))));
    global0 = vec2<u32>(global0.x, 1u);
    let var_3 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(firstLeadingBit(14688i), var_0.a, u_input.b.x), reverseBits(vec3<i32>(var_0.b, var_0.b, u_input.b.x)), select(vec3<i32>(max(-28573i, var_2.b), u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.b.xx)), abs(vec3<i32>(-1254i, u_input.c.x, 44853i)), !select(vec3<bool>(var_0.c, true, false), vec3<bool>(true, true, var_2.c), vec3<bool>(var_2.c, var_0.c, var_0.c))));
    return Struct_1(u_input.c.x, abs(var_0.b), all(vec3<bool>(true & var_2.c, false, _wgslsmith_f_op_f32(-var_2.e) >= _wgslsmith_f_op_f32(-338f + 1942f))), max(max(var_2.d, 12920u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, 0u, var_0.d, 44644u), vec4<u32>(u_input.d.x, global0.x, var_0.d, u_input.d.x))) ^ 4294967295u, _wgslsmith_f_op_f32(trunc(692f)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<f32>) -> f32 {
    let var_0 = func_2();
    global0 = abs(vec2<u32>(_wgslsmith_clamp_u32(abs(0u), 0u, reverseBits(_wgslsmith_mult_u32(var_0.d, 53231u))), 3852u & _wgslsmith_mod_u32(~var_0.d, 0u)));
    var var_1 = true;
    let var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~countOneBits(u_input.b), ~(u_input.b >> (vec3<u32>(var_0.d, 60730u, 0u) % vec3<u32>(32u)))), select(u_input.c.wzz, _wgslsmith_div_vec3_i32(vec3<i32>(arg_0, 1i, arg_0), abs(vec3<i32>(arg_0, 26712i, -43593i))), vec3<bool>(true, all(vec4<bool>(true, false, var_0.c, false)), true))) ^ u_input.b;
    var var_3 = vec4<i32>(max(~(arg_0 << (4294967295u % 32u)), 1i), -60012i, min(-var_0.b, u_input.c.x) & ~(-7526i), 2147483647i) >> (reverseBits(vec4<u32>(var_0.d, ~(~var_0.d), abs(_wgslsmith_clamp_u32(u_input.a.x, global0.x, global0.x)), countOneBits(0u ^ var_0.d))) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(abs(arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = all(vec3<bool>(false, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), !(u_input.b.x >= 1i)));
    let var_0 = Struct_1(-(~countOneBits(-69113i)), -reverseBits(u_input.c.x), !(!((u_input.d.x >= global0.x) & false)), ~u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(abs(~u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -622f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1062f, -712f) - vec2<f32>(-366f, 345f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(585f + -1153f))))));
    var var_1 = Struct_1(1i, max(var_0.b, -reverseBits(2147483647i)), !all(vec2<bool>(114646u <= global0.x, any(vec3<bool>(var_0.c, false, var_0.c)))), 0u >> (~(~(~u_input.d.x)) % 32u), 1063f);
    var var_2 = firstTrailingBit(u_input.a.x) >> (~71662u % 32u);
    global1 = var_1.c;
    var_1 = Struct_1(~abs(-593i ^ (var_0.a & var_1.b)), u_input.b.x, true, var_0.d, var_1.e);
    global1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~min(abs(0u), ~4294967295u), _wgslsmith_mod_u32(u_input.d.x, u_input.d.x >> ((global0.x | var_1.d) % 32u))), firstLeadingBit(~u_input.d | vec4<u32>(global0.x, 17705u << (var_1.d % 32u), global0.x, ~var_0.d)), _wgslsmith_clamp_i32(func_2().a, u_input.c.x & _wgslsmith_mod_i32(-19141i, ~u_input.c.x), -4571i), 1059u << (~var_0.d % 32u), _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_mod_i32(var_0.b << (21545u % 32u), u_input.c.x)), -1i));
}

