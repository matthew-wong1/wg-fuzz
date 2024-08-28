struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: i32 = 61995i;

var<private> global2: array<Struct_2, 27>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: f32, arg_1: Struct_5) -> u32 {
    global0 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(~global0.x, firstTrailingBit(global0.x), global0.x), vec3<i32>(-global0.x, global0.x, ~(-2147483647i))), vec3<i32>(abs(-12606i), 1i, ~global0.x) & (abs(vec3<i32>(-1i, global0.x, global0.x)) << (_wgslsmith_div_vec3_u32(arg_1.a.d.xyz, vec3<u32>(33555u, u_input.b, 1u)) % vec3<u32>(32u)))) << (vec3<u32>(~1u, ~_wgslsmith_mult_u32(~4294967295u, 31096u), ~u_input.a.x) % vec3<u32>(32u));
    global2 = array<Struct_2, 27>();
    let var_0 = u_input.a.x;
    global2 = array<Struct_2, 27>();
    global1 = global0.x ^ global0.x;
    return ~0u;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_5) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_1.a.c.xwz))), 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.a.c.x, -800f, arg_1.a.a.x, arg_1.b.d))))) - _wgslsmith_div_vec4_f32(arg_1.a.c, _wgslsmith_f_op_vec4_f32(arg_1.a.c * vec4<f32>(arg_1.a.a.x, arg_1.a.a.x, -457f, 105f))))), arg_1.b.e);
}

fn func_1() -> Struct_4 {
    global2 = array<Struct_2, 27>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(286f, -1503f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(208f)))), _wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(1008f + 1442f), _wgslsmith_f_op_f32(abs(1020f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 1182f)))))));
    var var_1 = -33031i;
    global2 = array<Struct_2, 27>();
    let var_2 = func_3(vec2<u32>(~func_2(var_0.x, Struct_5(Struct_3(vec3<f32>(var_0.x, 978f, var_0.x), u_input.a.x, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(4294967295u, u_input.d, 1u, u_input.a.x)), Struct_4(vec4<bool>(true, false, false, true), u_input.b, u_input.c.x, 1474f, vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.c.x)))), u_input.c.x) >> (u_input.c % vec2<u32>(32u)), Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1453f, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(107f, var_0.x, var_0.x)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, 1366f, -1794f)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 20552u, u_input.d), vec4<u32>(u_input.d, u_input.b, u_input.b, u_input.c.x)), ~vec4<u32>(9490u, 4294967295u, 37064u, u_input.b), select(vec4<u32>(u_input.c.x, u_input.d, 4294967295u, 83204u), vec4<u32>(4294967295u, 54035u, 27490u, u_input.d), true))), Struct_4(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), ~abs(u_input.a.x), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x))), select(vec4<u32>(u_input.a.x, u_input.b, 0u, 4294967295u) | vec4<u32>(u_input.b, u_input.b, 29155u, u_input.a.x), select(vec4<u32>(u_input.b, u_input.c.x, 78527u, u_input.c.x), vec4<u32>(u_input.b, u_input.b, 25914u, 0u), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true))))));
    return Struct_4(select(select(vec4<bool>(true, true, true, all(vec2<bool>(true, false))), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), global0.x == _wgslsmith_clamp_i32(global0.x, global0.x, global0.x)), vec4<bool>(true, true, true, true), !(!any(vec2<bool>(true, false)))), var_2.b, _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mult_u32(u_input.b, countOneBits(u_input.d)) << (_wgslsmith_dot_vec4_u32(var_2.d, var_2.d) % 32u)), _wgslsmith_div_f32(var_2.a.x, var_0.x), ~(~var_2.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~max(14088i, global0.x))), vec3<f32>(var_0.d, _wgslsmith_f_op_f32(select(-316f, var_0.d, all(select(var_0.a, vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x), var_0.a)))), -1000f), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(36832i, global0.x), global0.yy, global0.xz), vec2<i32>(1i, global0.x)), vec2<i32>(-1i) * -vec2<i32>(global0.x, -623i)));
}

