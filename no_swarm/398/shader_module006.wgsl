struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    let var_0 = global0.c;
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global0.c.e.x)))), 861f));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.e.x + var_0.e.x) + var_0.e.x);
    var var_2 = ~1u >> (_wgslsmith_dot_vec3_u32(~(vec3<u32>(var_0.d, var_0.d, arg_0) << (u_input.c % vec3<u32>(32u))) << ((abs(vec3<u32>(1u, u_input.c.x, arg_0)) ^ ~global0.b.wyz) % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(arg_0), var_0.d, 0u & u_input.c.x)) % 32u);
    var var_3 = Struct_2(global0.a, ~(~global0.b), global0.a, !(!vec2<bool>(true, -24983i > global0.c.b.x)));
    return _wgslsmith_div_vec4_u32(min(~var_3.b, vec4<u32>(arg_0, ~max(var_3.b.x, 1u), 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global0.b.xyw, vec3<u32>(var_3.b.x, u_input.c.x, var_3.c.d)), vec3<u32>(var_3.a.d, arg_0, u_input.c.x)))), firstTrailingBit(~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, arg_0, 37583u, 83989u), vec4<u32>(u_input.c.x, var_0.d, 43547u, 2437u)) >> (~global0.b % vec4<u32>(32u)))));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> u32 {
    let var_0 = !(!global0.d);
    global0 = Struct_2(Struct_1(select(_wgslsmith_mult_i32(1i, u_input.a.x), u_input.a.x & -1i, global0.d.x), vec2<i32>(abs(45322i) | firstTrailingBit(u_input.b), 2147483647i), -(i32(-1i) * -arg_0), 13113u, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-678f, _wgslsmith_f_op_f32(arg_1.x * arg_1.x), -925f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0.c.e))), select(!vec3<bool>(global0.d.x, var_0.x, global0.d.x), !vec3<bool>(true, false, global0.d.x), !vec3<bool>(var_0.x, false, false))))), select(global0.b, func_3(0u ^ ~global0.c.d), select(!vec4<bool>(false, false, var_0.x, true), !select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(global0.d.x, var_0.x, false, false), vec4<bool>(var_0.x, true, true, true)), (false | global0.d.x) | true)), global0.a, global0.d);
    global0 = Struct_2(Struct_1(_wgslsmith_mod_i32(1i & u_input.a.x, arg_0), global0.c.b | u_input.a.zx, select(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, 0i), vec3<i32>(u_input.b, -6830i, 45094i))), -_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-1i, 0i, arg_0)), true), ~(~_wgslsmith_mod_u32(1u, u_input.c.x)), vec3<f32>(1668f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2382f) * _wgslsmith_f_op_f32(arg_1.x * 1019f)), _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(sign(arg_1.x)))))), ~reverseBits(vec4<u32>(34755u, u_input.c.x, global0.c.d, 0u) | (global0.b ^ vec4<u32>(global0.a.d, global0.a.d, 9736u, 0u))), global0.a, vec2<bool>(global0.d.x, !any(vec3<bool>(true, true, global0.d.x))));
    return 64587u;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec2<f32>) -> vec3<f32> {
    var var_0 = select(u_input.a & -vec3<i32>(~(-1i), u_input.a.x, abs(global0.c.c)), reverseBits(min(~(u_input.a | u_input.a), abs(vec3<i32>(-77063i, 59289i, global0.c.a)) ^ reverseBits(u_input.a))), !(!arg_1.c.d.x));
    let var_1 = min(u_input.a, vec3<i32>(3774i, -2147483647i, 33396i));
    var var_2 = !(~(-2147483647i >> (func_2(arg_2.c.c.a, arg_1.b.yy) % 32u)) != (i32(-1i) * -(i32(-1i) * -6398i)));
    var_2 = !all(arg_1.c.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.a.e, global0.a.e) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.x, -358f, -441f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0.c.e.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(989f * global0.c.e.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec4<u32>(24905u, 4294967295u, global0.b.x, 98516u), Struct_4(global0.c.e.zy, vec4<f32>(-628f, -1041f, global0.c.e.x, 306f), Struct_2(global0.c, global0.b, Struct_1(global0.a.b.x, u_input.a.zy, 28716i, global0.b.x, global0.a.e), vec2<bool>(global0.d.x, false)), global0.c.e.x), Struct_4(vec2<f32>(-1224f, 1954f), vec4<f32>(global0.c.e.x, global0.c.e.x, global0.a.e.x, global0.a.e.x), Struct_2(Struct_1(1444i, u_input.a.yy, u_input.b, 85299u, global0.a.e), global0.b, Struct_1(28506i, u_input.a.zy, -43376i, 9555u, global0.c.e), global0.d), -449f), vec2<f32>(-277f, global0.a.e.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.a.e)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.e.x)), global0.a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.e.x))))));
}

