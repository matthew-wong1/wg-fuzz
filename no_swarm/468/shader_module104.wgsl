struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1220f, -483f, 1256f, 516f);

var<private> global1: u32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    var var_0 = ~firstTrailingBit(select(~(vec3<u32>(u_input.d.x, 4294967295u, 2502u) << (u_input.d % vec3<u32>(32u))), vec3<u32>(33076u, u_input.d.x << (1u % 32u), 1u), !all(vec4<bool>(true, true, true, true))));
    global1 = ~(u_input.d.x ^ u_input.d.x);
    let var_1 = _wgslsmith_dot_vec4_u32(max(~vec4<u32>(u_input.d.x, u_input.d.x, ~u_input.d.x, 43091u), abs(vec4<u32>(var_0.x, var_0.x, 57704u, 0u) ^ (vec4<u32>(4294967295u, var_0.x, var_0.x, 9483u) & vec4<u32>(u_input.d.x, 0u, var_0.x, 4294967295u)))), vec4<u32>(4294967295u, 0u | firstTrailingBit(abs(var_0.x)), ~(~_wgslsmith_clamp_u32(0u, 6933u, 37319u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(~var_0.x, 36279u), (u_input.d.x ^ var_0.x) & abs(u_input.d.x))));
    let var_2 = Struct_2(any(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), false))), true, Struct_1(i32(-1i) * -u_input.c.x, u_input.c.xzy), u_input.b <= ~(~_wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(u_input.a.x, u_input.b))), Struct_1(firstLeadingBit(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, 1i), u_input.c))), -(~(vec3<i32>(-12595i, u_input.b, 2147483647i) ^ vec3<i32>(u_input.c.x, u_input.a.x, 1i)))));
    var_0 = vec3<u32>(_wgslsmith_add_u32(var_1, firstTrailingBit(~38615u)), _wgslsmith_div_u32(firstTrailingBit(4294967295u), var_0.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.d.xx) >> (1u % 32u), 40718u, _wgslsmith_mod_u32(1u, ~u_input.d.x))) >> (~vec3<u32>(~var_1, ~1u, abs(abs(44987u))) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_2(arg_0: vec3<i32>) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(global0.x * global0.x)), global0.x))));
    var var_0 = u_input.d.x;
    var_0 = ~abs(~(~62810u));
    var var_1 = Struct_1(arg_0.x, (vec3<i32>(u_input.a.x, -1i, 0i) << ((vec3<u32>(3996u, 452u, 4294967295u) | (vec3<u32>(0u, u_input.d.x, 4294967295u) & vec3<u32>(102710u, 0u, 1u))) % vec3<u32>(32u))) << (u_input.d % vec3<u32>(32u)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1833f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1516f * global0.x)))))), global0.x, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x)), 749f);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(2359f, global0.x, global0.x, -443f) + vec4<f32>(980f, -865f, 1120f, 1067f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, 362f, global0.x), vec4<f32>(298f, 1827f, global0.x, 762f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(453f, global0.x, global0.x, 702f) * vec4<f32>(global0.x, global0.x, global0.x, 629f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 195f, global0.x) - vec4<f32>(global0.x, 867f, 1319f, global0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-115f, -1351f, global0.x, global0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(206f + global0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(sign(global0.x)))), global0.x, _wgslsmith_f_op_f32(ceil(1423f)))));
}

fn func_1() -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1541f, global0.x, -1000f, 2172f), vec4<f32>(210f, global0.x, global0.x, -985f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -581f), _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(abs(267f)));
    let var_0 = -28767i;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(-u_input.c.yxx)));
    global1 = _wgslsmith_mod_u32(~u_input.d.x, ~_wgslsmith_mod_u32(firstTrailingBit(~19754u), 4294967295u ^ abs(u_input.d.x)));
    return !(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -22124i;
    var var_1 = u_input.d.x;
    let var_2 = any(func_1());
    var var_3 = max(reverseBits(16745i), _wgslsmith_mult_i32(select(_wgslsmith_mod_i32(~u_input.b, -233i), -2147483647i, global0.x > 232f), _wgslsmith_sub_i32(-_wgslsmith_mult_i32(u_input.b, u_input.c.x), -2147483647i)));
    let var_4 = Struct_1(~17100i, -u_input.c.xxw >> (~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(1644u, u_input.d.x, u_input.d.x))) % vec3<u32>(32u)));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, global0.x, reverseBits(-(~(-2848i))) >> (1u % 32u), _wgslsmith_sub_vec2_i32(u_input.c.zw, min(var_4.b.zy, -(vec2<i32>(0i, -1i) << (vec2<u32>(u_input.d.x, 12566u) % vec2<u32>(32u))))));
}

