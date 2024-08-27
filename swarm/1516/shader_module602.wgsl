struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(u_input.a.x, u_input.a.x) ^ vec2<u32>(u_input.a.x, 1u)), u_input.a), false, firstLeadingBit(u_input.a), vec4<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), max(vec3<u32>(20346u, 1u, u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a.x, 34457u), vec3<u32>(0u, 29627u, u_input.a.x)))), select(firstLeadingBit(1u), u_input.a.x, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false))), 29949u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), vec3<bool>(true, true, true));
    global0 = array<vec2<i32>, 32>();
    global0 = array<vec2<i32>, 32>();
    global0 = array<vec2<i32>, 32>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(812f))))), -771f));
    return !var_0.e;
}

fn func_2() -> u32 {
    var var_0 = Struct_1(reverseBits(u_input.a.x), select(true, !all(vec4<bool>(false, true, true, false)), true), u_input.a, ~vec4<u32>(~(~4294967295u), 4294967295u >> ((u_input.a.x << (43282u % 32u)) % 32u), u_input.a.x, ~1u), select(select(vec3<bool>(true, false, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), true), all(vec4<bool>(false, false, true, false))), vec3<bool>(true, true, true), select(vec3<bool>(any(vec2<bool>(false, false)), true, any(vec4<bool>(true, false, false, true))), vec3<bool>(true, true, false), !func_3(Struct_4(u_input.c, u_input.c.zzx), u_input.c.zzx))));
    let var_1 = ~_wgslsmith_add_vec3_i32(vec3<i32>(39496i, ~(~(-14632i)), u_input.b), select(vec3<i32>(u_input.c.x, u_input.c.x, 1i) ^ (vec3<i32>(19794i, -37959i, u_input.b) | u_input.c.zzz), vec3<i32>(2147483647i >> (u_input.a.x % 32u), 0i, ~14444i), var_0.b));
    var var_2 = Struct_2(vec2<f32>(-432f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1278f))))), u_input.c, Struct_1(~_wgslsmith_dot_vec2_u32(select(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x), var_0.e.xz), var_0.d.wx), 34342i < var_1.x, countOneBits(vec2<u32>(~0u, 1u)), vec4<u32>(reverseBits(~var_0.c.x), _wgslsmith_sub_u32(0u, u_input.a.x), ~_wgslsmith_div_u32(19562u, var_0.a), 1u), vec3<bool>(all(var_0.e), var_0.e.x, !var_0.e.x)), Struct_1(_wgslsmith_sub_u32(_wgslsmith_sub_u32(min(var_0.c.x, 4294967295u), ~var_0.a), u_input.a.x), !((-1i >> (var_0.c.x % 32u)) >= var_1.x), firstLeadingBit(_wgslsmith_clamp_vec2_u32(~u_input.a, vec2<u32>(4294967295u, 27882u) << (vec2<u32>(var_0.d.x, var_0.a) % vec2<u32>(32u)), var_0.d.zy | u_input.a)), ~vec4<u32>(0u, u_input.a.x, select(1u, 40191u, true), ~var_0.a), var_0.e));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-215f, var_2.a.x, _wgslsmith_div_f32(-543f, var_2.a.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), 642f, _wgslsmith_f_op_f32(min(-362f, var_2.a.x))))));
    var var_4 = !(!vec2<bool>(firstLeadingBit(69309u) <= u_input.a.x, true));
    return ~(~4294967295u);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1.c.e;
    let var_1 = arg_1.c;
    var var_2 = vec3<u32>(4294967295u, _wgslsmith_sub_u32(~6541u | var_1.c.x, min(0u << (arg_1.c.d.x % 32u), 0u)), _wgslsmith_add_u32(u_input.a.x, arg_1.c.c.x)) ^ ~arg_1.c.d.yww;
    let var_3 = ~(~func_2());
    var var_4 = any(!(!select(var_0, vec3<bool>(false, true, var_0.x), select(var_1.e, vec3<bool>(true, false, false), vec3<bool>(true, false, arg_1.d.e.x)))));
    return 72945u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(u_input.c, vec3<i32>(-_wgslsmith_clamp_i32(i32(-1i) * -1302i, _wgslsmith_sub_i32(0i, -34064i), -u_input.c.x), max(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -1i), u_input.c.wy), u_input.c.x), -1i), 1i));
    var var_1 = vec2<u32>(~4294967295u, func_1(~firstTrailingBit(var_0.a), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1621f, 1850f)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, var_0.a.x, 1i, -30498i), vec4<i32>(-43432i, -31643i, var_0.a.x, -1i)), Struct_1(0u, true, u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 43339u, u_input.a.x), vec3<bool>(false, false, false)), Struct_1(4294967295u, false, vec2<u32>(1u, u_input.a.x), vec4<u32>(u_input.a.x, 9425u, 4294967295u, u_input.a.x), vec3<bool>(false, true, true))))) & ~(~reverseBits(_wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, u_input.a)));
    global0 = array<vec2<i32>, 32>();
    let var_2 = any(func_3(Struct_4(~(~u_input.c), ~_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, var_0.a.x, 80169i), u_input.c.yxw)), ~(-(~var_0.a.yyw))).xz);
    global0 = array<vec2<i32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-445f, 763f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1127f, 1000f, -842f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -919f), _wgslsmith_f_op_f32(floor(562f)), -362f))), _wgslsmith_div_u32(~_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(66992u, var_1.x)), u_input.a.x), max(vec2<u32>(4294967295u, 1u), select(firstTrailingBit(vec2<u32>(0u, u_input.a.x)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(36278u, 80147u), u_input.a), !select(vec2<bool>(var_2, false), vec2<bool>(false, var_2), vec2<bool>(var_2, var_2)))));
}

