struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<f32> {
    global0 = array<vec3<i32>, 17>();
    let var_0 = ~firstTrailingBit(13709i);
    global0 = array<vec3<i32>, 17>();
    var var_1 = Struct_1(_wgslsmith_mult_u32(30514u, 0u));
    var_1 = Struct_1(var_1.a);
    return vec4<f32>(348f, _wgslsmith_f_op_f32(max(-977f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(710f * -431f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(956f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * -1030f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2337f + 910f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -784f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(685f + _wgslsmith_div_f32(1076f, -696f)))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    global0 = array<vec3<i32>, 17>();
    global0 = array<vec3<i32>, 17>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3());
    let var_1 = !vec3<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)), any(vec4<bool>(false, true, any(vec4<bool>(true, true, true, true)), true)), select(all(vec2<bool>(true, true)), true, arg_0.a.x >= arg_0.a.x));
    global0 = array<vec3<i32>, 17>();
    return arg_1.b;
}

fn func_1() -> f32 {
    global0 = array<vec3<i32>, 17>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -679f), _wgslsmith_f_op_f32(func_2(Struct_3(vec4<i32>(u_input.a, u_input.b, 2147483647i, -55489i)), Struct_2(vec3<u32>(u_input.c, u_input.c, u_input.c), -262f), vec3<u32>(1u, u_input.c, 67888u), Struct_1(u_input.c))))), -872f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-809f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -177f) + _wgslsmith_f_op_f32(abs(-2514f))))) - 752f));
    var var_1 = Struct_3(~vec4<i32>(-u_input.d, _wgslsmith_sub_i32(firstTrailingBit(-27757i), ~(-34292i)), u_input.a, u_input.b));
    let var_2 = u_input.c << (_wgslsmith_add_u32(u_input.c, min(~0u, u_input.c) << (countOneBits(_wgslsmith_sub_u32(4294967295u, u_input.c)) % 32u)) % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(select(vec4<i32>(var_1.a.x, 6044i, 70039i, -2147483647i), firstTrailingBit(var_1.a), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true))), Struct_2(vec3<u32>(~71585u, abs(75613u), ~u_input.c), var_0.x), ~(~select(vec3<u32>(0u, var_2, u_input.c), vec3<u32>(52903u, 42426u, var_2), vec3<bool>(true, false, false))), Struct_1(u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(988f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))))));
    global0 = array<vec3<i32>, 17>();
    global0 = array<vec3<i32>, 17>();
    let var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(-u_input.a, -u_input.a), reverseBits(-65472i));
    var var_2 = Struct_2(~_wgslsmith_add_vec3_u32(~select(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(69082u, u_input.c, 1u), false), ~vec3<u32>(u_input.c, 1u, u_input.c)), 301f);
    var_2 = Struct_2(var_2.a, var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(select(var_2.a.x, ~(~99668u), true), u_input.c), -16666i, _wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -9490i), vec2<i32>(-11637i, 0i), vec2<i32>(49173i, -52091i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, -24899i), vec2<i32>(var_1, u_input.a))), _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(var_1), u_input.b & var_1), vec2<i32>(~(-1i), firstTrailingBit(24714i)), _wgslsmith_mult_vec2_i32(vec2<i32>(26044i, 7400i), max(vec2<i32>(1i, u_input.b), vec2<i32>(var_1, -14836i))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))));
}

