struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11>;

var<private> global1: vec3<i32>;

var<private> global2: f32 = 1318f;

var<private> global3: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    global1 = -_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_add_i32(-u_input.d.x, -global1.x), global1.x), firstLeadingBit(reverseBits(abs(vec3<i32>(u_input.d.x, -26036i, global1.x)))));
    let var_0 = u_input.e.x;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-181f, 1f, -131f, 1756f))), countOneBits(u_input.a)), u_input.b, abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0 & var_0, var_0, max(u_input.a.x, var_0)), ~select(vec3<u32>(4294967295u, 1u, 33813u), vec3<u32>(24153u, 0u, 1u), vec3<bool>(false, true, true)))));
    global0 = array<vec3<f32>, 11>();
    global2 = -875f;
    return -_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, min(5330i, -27885i), 1i), vec3<i32>(min(0i, 2147483647i), _wgslsmith_dot_vec2_i32(global1.xy, u_input.d), _wgslsmith_mult_i32(global1.x, u_input.b))), (~vec3<i32>(u_input.b, var_1.b, u_input.b) << (vec3<u32>(var_0, u_input.a.x, var_0) % vec3<u32>(32u))) >> (~(~vec3<u32>(0u, u_input.e.x, 1u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(firstTrailingBit(-8663i), ~1i), firstLeadingBit(global1.x) | 34516i, -var_1.b));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    global2 = -3010f;
    let var_0 = true;
    let var_1 = 4294967295u;
    var var_2 = ~(-select(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, global1.x, global1.x), vec3<i32>(0i, global1.x, global1.x)), min(vec3<i32>(-1i, u_input.b, global1.x), vec3<i32>(1i, u_input.b, global1.x)), select(vec3<bool>(false, var_0, arg_0.x), vec3<bool>(true, true, true), true))) ^ select(max(vec3<i32>(countOneBits(-26964i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -54485i, u_input.d.x), vec3<i32>(global1.x, global1.x, 1i)), u_input.b), func_3()), abs(vec3<i32>(_wgslsmith_mult_i32(-1i, u_input.c), -1i, i32(-1i) * -2147483647i)), vec3<bool>(arg_0.x, arg_0.x, all(!vec4<bool>(var_0, true, true, true))));
    global3 = var_0;
    return 2160f;
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = vec3<f32>(1065f, _wgslsmith_f_op_f32(f32(-1f) * -185f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(true, true)))));
    global0 = array<vec3<f32>, 11>();
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, -682f, 315f, -396f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), u_input.e), -(~1i), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(4294967295u, u_input.a.x, arg_0), vec3<u32>(56369u, 83344u, 78026u)) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 67485u, arg_0), vec3<u32>(arg_0, arg_0, arg_0)))));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-128f + var_1.a.a.a.x) + _wgslsmith_f_op_f32(func_2(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(262f * _wgslsmith_f_op_f32(min(var_1.a.a.a.x, var_1.a.a.a.x))))))));
    global3 = any(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), any(vec4<bool>(true, false, true, true)))));
    return _wgslsmith_mult_i32(var_1.a.b | reverseBits(2147483647i), _wgslsmith_sub_i32(-28704i >> (1u % 32u), global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))));
    var var_0 = ~firstLeadingBit(0u);
    let var_1 = ~(-min(~vec4<i32>(global1.x, global1.x, 50635i, -5736i), vec4<i32>(0i, u_input.d.x, 1i, u_input.c))) | vec4<i32>(-8481i, u_input.d.x, 1i, select(-2147483647i, 0i, true || (u_input.e.x > u_input.e.x)));
    global1 = var_1.xww;
    global0 = array<vec3<f32>, 11>();
    let var_2 = func_1(firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(13659u, 18658u, u_input.e.x), vec3<u32>(4294967295u, 4294967295u, 8691u), vec3<u32>(u_input.e.x, 1u, 0u)) & select(vec3<u32>(4294967295u, u_input.e.x, u_input.a.x), vec3<u32>(4294967295u, u_input.e.x, u_input.e.x), true), ~firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, u_input.a.x)))));
    let var_3 = _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, u_input.e.x, 52730u), vec3<u32>(u_input.a.x, firstLeadingBit(max(abs(u_input.a.x), select(11098u, 1u, false))), ~(~u_input.a.x)));
    let var_4 = vec2<bool>(1968f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-771f)))), select(false, true, all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(-168f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -438f), _wgslsmith_f_op_f32(-2370f + _wgslsmith_f_op_f32(-1474f + -179f)), -1401f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1266f, 695f) + _wgslsmith_f_op_f32(f32(-1f) * -607f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1344f, -372f, -1676f, -735f), vec4<f32>(1000f, 576f, -1439f, 1000f)))), -1000f);
}

