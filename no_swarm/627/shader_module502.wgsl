struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = Struct_1(select(select(vec3<bool>(all(vec4<bool>(true, false, true, true)), all(vec2<bool>(false, false)), true), vec3<bool>(true, all(vec3<bool>(false, false, true)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true))), vec3<bool>(true, true, true), true), !all(vec4<bool>(true, true, any(vec2<bool>(false, false)), true)));
    var var_1 = 4294967295u;
    let var_2 = select(select(vec4<bool>(var_0.a.x, !(!var_0.a.x), any(vec2<bool>(var_0.a.x, var_0.b)), true), vec4<bool>(!var_0.b, all(vec2<bool>(true, false)), var_0.a.x, var_0.b), var_0.a.x), select(vec4<bool>(all(select(vec3<bool>(var_0.b, true, var_0.a.x), var_0.a, false)), var_0.b, _wgslsmith_f_op_f32(select(2136f, 1414f, var_0.b)) < _wgslsmith_f_op_f32(738f * -1100f), all(!var_0.a)), vec4<bool>(any(vec2<bool>(true, false)), !select(var_0.b, var_0.a.x, false), true, var_0.b == any(vec4<bool>(true, var_0.b, true, false))), !all(vec3<bool>(false, var_0.b, var_0.b))), !var_0.b);
    var_1 = ~104786u;
    var_1 = ~0u;
    return u_input.b;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> bool {
    let var_0 = 430f;
    var var_1 = vec3<i32>(u_input.a.x, u_input.b, 1i);
    var_1 = vec3<i32>(func_3(), ~min(~15850i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, -1i, var_1.x), vec4<i32>(-23717i, var_1.x, var_1.x, 2147483647i))) << (firstTrailingBit(0u) % 32u), var_1.x);
    var var_2 = 2147483647i;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1481f, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -695f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0)) + var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)))), 789f));
    return arg_0.x;
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    global0 = array<vec2<f32>, 32>();
    var var_0 = ~(-reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), vec2<i32>(-1i, u_input.b)) << (abs(vec2<u32>(1u, 82223u)) % vec2<u32>(32u))));
    var_0 = u_input.a & u_input.a;
    var var_1 = Struct_2(arg_0);
    var_0 = u_input.a;
    return vec4<bool>(func_2(!vec2<bool>(arg_0.b, false), vec2<u32>(931u, ~(~4294967295u))), func_2(select(select(select(var_1.a.a.xy, arg_0.a.yy, arg_0.a.x), var_1.a.a.xz, vec2<bool>(var_1.a.b, true)), vec2<bool>(!arg_0.a.x, all(vec4<bool>(arg_0.b, arg_0.a.x, true, var_1.a.b))), var_1.a.a.x), ~(~firstTrailingBit(vec2<u32>(28468u, 49483u)))), false, arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(select(any(vec2<bool>(true, true)), true, false) || any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1802f, -448f)))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-752f - 1104f))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), !(true & all(vec2<bool>(true, false)))), !select(!func_1(Struct_1(vec3<bool>(true, false, true), false)), vec4<bool>(func_2(vec2<bool>(true, true), vec2<u32>(0u, 47431u)), true, false, true), vec4<bool>(all(vec3<bool>(true, true, false)), true, select(false, false, false), true)), func_2(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), vec2<bool>(true, true)), ~(~(~vec2<u32>(4294967295u, 0u)))));
    let var_1 = 732f;
    var var_2 = Struct_1(!var_0.zzz, !all(var_0.yz));
    var var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(12063u, 0u))), _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 1u), countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(33488u, 59156u)))), min(vec2<u32>(~1u, ~17087u), vec2<u32>(1u, 1u))), firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(91624u, 0u, 61163u), vec3<u32>(80666u, 16828u, 46483u)), ~42846u), ~12528u >> (1u % 32u))));
    global0 = array<vec2<f32>, 32>();
    var_3 = ~1u;
    global0 = array<vec2<f32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-916f, 1263f, 244f), vec3<f32>(var_1, var_1, -472f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1055f, -1035f, 1199f))), vec3<f32>(var_1, -869f, var_1))), _wgslsmith_clamp_u32(62007u, 0u, 4294967295u) <= ~1u)))));
}

