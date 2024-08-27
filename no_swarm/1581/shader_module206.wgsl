struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_1(~12179i, global0.b);
    return select(u_input.b.xz, ~(~vec2<u32>(21467u, ~0u)), all(var_0.b.xyw));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = vec3<i32>(arg_0, 1i, _wgslsmith_dot_vec4_i32(select(abs(firstTrailingBit(vec4<i32>(global0.a, 14598i, global0.a, global0.a))), ~firstTrailingBit(vec4<i32>(31772i, -7102i, -15874i, arg_0)), !global0.b), ~select(vec4<i32>(arg_0, -33244i, arg_0, arg_0) | vec4<i32>(-1i, arg_0, 39879i, 1752i), ~vec4<i32>(global0.a, 1277i, 76791i, arg_0), select(global0.b, global0.b, global0.b.x))));
    var var_1 = Struct_1(select(countOneBits(firstLeadingBit(1i) >> (~arg_1.x % 32u)), _wgslsmith_clamp_i32(reverseBits(var_0.x), _wgslsmith_div_i32(~global0.a, -2147483647i), arg_0), global0.b.x), select(!global0.b, !(!vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x)), !(!all(vec4<bool>(false, false, global0.b.x, true)))));
    let var_2 = var_1.b.x;
    return Struct_1(select(var_0.x, -42784i, true), global0.b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_2 - vec3<f32>(arg_2.x, arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)), -1591f)))));
    let var_1 = arg_0;
    var var_2 = select(-var_1.a, firstTrailingBit(global0.a << (u_input.a.x % 32u)), global0.b.x);
    var var_3 = Struct_1(-2147483647i ^ firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, arg_0.a), vec2<i32>(var_1.a, global0.a)), 1i)), var_1.b);
    var var_4 = func_3(firstTrailingBit(arg_1.a), _wgslsmith_mult_vec2_u32(~func_2(), u_input.b.yx));
    return ~u_input.b.zz;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = func_3(reverseBits(global0.a), func_2());
    let var_0 = Struct_1(global0.a, !vec4<bool>(true, true, true, any(!vec2<bool>(arg_1.b.x, false))));
    return func_3(-47888i, firstTrailingBit(~vec2<u32>(6521u, u_input.c >> (arg_0.x % 32u))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = true;
    global0 = arg_0;
    global0 = Struct_1(-17740i, global0.b);
    global0 = arg_2;
    var var_1 = Struct_1(~(-4836i), arg_2.b);
    return Struct_1(2147483647i, func_3(_wgslsmith_mod_i32(var_1.a, arg_2.a), abs(countOneBits(~vec2<u32>(0u, u_input.a.x)))).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(_wgslsmith_sub_vec2_u32(~func_1(Struct_1(global0.a, global0.b), Struct_1(-1i, vec4<bool>(true, true, global0.b.x, global0.b.x)), vec3<f32>(-277f, 2092f, 1174f), global0.a), vec2<u32>(min(u_input.b.x, 69414u), u_input.b.x)), Struct_1(-_wgslsmith_mod_i32(global0.a, -1i), global0.b)), u_input.a.x, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -35602i, global0.a & global0.a), vec2<i32>(1i, 1i)), select(global0.b, !vec4<bool>(global0.b.x, true, true, false), all(global0.b.xyx))), abs(_wgslsmith_mod_u32(u_input.b.x | u_input.b.x, 1286u)) & (28138u >> (u_input.a.x % 32u)));
    global0 = var_0;
    global0 = Struct_1((1i << (u_input.a.x % 32u)) | global0.a, !vec4<bool>(any(var_0.b), all(func_5(Struct_1(var_0.a, vec4<bool>(false, true, var_0.b.x, var_0.b.x)), 0u, var_0, 4294967295u).b.xw), !global0.b.x, func_3(var_0.a, u_input.a.yy).b.x || all(vec2<bool>(var_0.b.x, false))));
    global0 = func_5(var_0, ~u_input.b.x, Struct_1(-1i, !select(vec4<bool>(true, global0.b.x, false, global0.b.x), !vec4<bool>(var_0.b.x, var_0.b.x, false, true), func_4(u_input.a.yy, Struct_1(var_0.a, var_0.b)).b)), min(0u, _wgslsmith_mod_u32(~u_input.b.x, max(5307u, countOneBits(u_input.c)))));
    let var_1 = ~64297u;
    let var_2 = !vec2<bool>(true && global0.b.x, false);
    var var_3 = !any(func_5(var_0, _wgslsmith_dot_vec2_u32(u_input.b.yy, vec2<u32>(var_1, var_1)), var_0, var_1).b.ww);
    var var_4 = !any(!vec2<bool>(var_0.b.x, !var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -668f), 363f, -620f, _wgslsmith_f_op_f32(816f * -1736f)) + vec4<f32>(_wgslsmith_div_f32(-559f, 1130f), _wgslsmith_f_op_f32(f32(-1f) * -2419f), -300f, _wgslsmith_f_op_f32(step(-612f, 871f))))), 45231i, vec4<i32>(global0.a & countOneBits(2147483647i), global0.a, _wgslsmith_dot_vec3_i32(min(vec3<i32>(-2147483647i, var_0.a, var_0.a), vec3<i32>(var_0.a, global0.a, var_0.a)), vec3<i32>(-26513i, global0.a, 2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.a, 2147483647i), vec3<i32>(67674i, var_0.a, global0.a)) >> (12990u % 32u)) | (vec4<i32>(-1i) * -vec4<i32>(var_0.a, 38946i, var_0.a, -2114i)));
}

