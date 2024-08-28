struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(true, Struct_1(vec4<i32>(57341i, -1885i, -1i, 1i), vec2<f32>(948f, -1547f), true, -774f, 1i), true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5) -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(-select(vec3<i32>(u_input.a.x, arg_0.a.a.e, global0.b.a.x) | arg_0.a.a.a.www, u_input.a, arg_0.a.b.yzx), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.b.a.x, global0.b.a.x, global0.b.e), ~vec3<i32>(arg_0.a.d, u_input.a.x, arg_0.a.a.a.x)) >> (abs(abs(vec3<u32>(arg_0.a.e.x, u_input.c.x, arg_0.a.e.x))) % vec3<u32>(32u))), -vec3<i32>(firstTrailingBit(arg_0.a.a.a.x) & global0.b.a.x, global0.b.a.x, reverseBits(-arg_0.a.a.a.x)));
    global0 = Struct_4(arg_0.a.a.c, global0.b, all(vec3<bool>(global0.c, !arg_0.b, true || !arg_0.b)), select(true, !global0.b.c, global0.a));
    let var_1 = Struct_4(any(!vec4<bool>(arg_0.a.a.c, global0.a || global0.a, arg_0.a.a.c && false, !arg_0.a.c)), global0.b, true, any(select(arg_0.a.b.zxx, arg_0.a.b.zxy, !arg_0.a.b.zyz)));
    var var_2 = arg_0.a.d;
    var var_3 = _wgslsmith_f_op_f32(abs(-898f));
    return !(!arg_0.a.b);
}

fn func_2() -> Struct_3 {
    let var_0 = ~_wgslsmith_sub_u32(u_input.c.x >> (firstTrailingBit(3680u) % 32u), u_input.b.x);
    let var_1 = Struct_4(!(!(_wgslsmith_f_op_f32(-global0.b.d) < _wgslsmith_f_op_f32(step(global0.b.d, 2066f)))), global0.b, !any(select(vec3<bool>(false, false, true), !vec3<bool>(global0.b.c, true, true), all(vec3<bool>(false, true, global0.c)))), global0.d);
    global0 = var_1;
    var var_2 = global0.b;
    let var_3 = Struct_2(var_1.b, select(select(select(select(vec4<bool>(var_2.c, global0.c, false, false), vec4<bool>(true, false, false, var_2.c), vec4<bool>(var_1.b.c, var_1.b.c, true, true)), select(vec4<bool>(false, false, var_2.c, var_2.c), vec4<bool>(false, var_2.c, global0.d, var_1.d), vec4<bool>(var_1.c, var_1.d, var_1.c, false)), any(vec3<bool>(global0.b.c, true, var_2.c))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(var_2.c, false, true, false), vec4<bool>(var_1.d, var_1.c, true, var_2.c), false), !vec4<bool>(var_1.c, true, false, global0.c), all(select(vec2<bool>(global0.d, var_2.c), vec2<bool>(true, false), var_2.c))), !select(!vec4<bool>(true, global0.d, false, var_2.c), vec4<bool>(global0.a, var_1.b.c, true, false), select(vec4<bool>(var_1.c, false, var_2.c, false), vec4<bool>(true, false, false, var_2.c), vec4<bool>(var_1.b.c, false, false, global0.b.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.d)) - -172f)) < _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, global0.b.b.x))), ~_wgslsmith_dot_vec2_i32(~u_input.a.zx, global0.b.a.xw), ~vec4<u32>(4294967295u, ~select(var_0, 73982u, var_2.c), ~1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0, var_0, 32369u, 50769u)), select(vec4<u32>(26422u, 4294967295u, 17199u, var_0), vec4<u32>(u_input.c.x, 1u, var_0, var_0), vec4<bool>(var_1.c, var_1.b.c, var_1.a, true)))));
    return Struct_3(Struct_2(var_3.a, func_3(Struct_3(var_3, false), Struct_5(var_2.b.x)), false, firstTrailingBit(-42090i), var_3.e), false);
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> bool {
    var var_0 = !arg_0;
    var_0 = true;
    var var_1 = Struct_4(!(!arg_0), func_2().a.a, true, false);
    var var_2 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.b.d)) - global0.b.b.x) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1512f))))), _wgslsmith_f_op_f32(global0.b.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-251f, -1132f)) * _wgslsmith_f_op_f32(ceil(1000f)))))));
    let var_3 = arg_1.a.b;
    return all(func_3(Struct_3(func_2().a, any(vec2<bool>(var_3.x, arg_0))), Struct_5(_wgslsmith_f_op_f32(exp2(func_2().a.a.d)))).zy);
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    var var_0 = select(u_input.b.x, ~67022u >> (u_input.e % 32u), func_4(all(select(vec2<bool>(false, true), arg_0.xz, arg_0.xz)), func_2()));
    var var_1 = global0.b;
    let var_2 = vec3<u32>(52247u, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.e, 19336u), vec2<u32>(~u_input.c.x, 4294967295u) ^ ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 1u), u_input.c.zz)), abs(~reverseBits(reverseBits(u_input.e))));
    let var_3 = _wgslsmith_f_op_vec2_f32(var_1.b + _wgslsmith_f_op_vec2_f32(global0.b.b + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.d, 1928f), _wgslsmith_f_op_f32(exp2(var_1.d))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b.b.x))))));
    let var_4 = _wgslsmith_f_op_f32(sign(var_1.b.x));
    return global0.b.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(global0.b.c, Struct_1(vec4<i32>(global0.b.a.x, -global0.b.e, 0i, 5184i & func_1(vec3<bool>(global0.d, true, global0.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.d, global0.b.b.x) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -184f), _wgslsmith_f_op_f32(146f - -509f))), func_4(!any(vec4<bool>(global0.a, global0.b.c, global0.a, false)), Struct_3(Struct_2(global0.b, vec4<bool>(global0.c, global0.c, global0.c, global0.a), true, global0.b.a.x, vec4<u32>(0u, 4294967295u, 1744u, 22675u)), global0.a)), func_2().a.a.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global0.b.e, -34422i, 55814i), vec4<i32>(-1i, -2147483647i, 55202i, -1i) | global0.b.a) << ((u_input.c.x | max(u_input.e, 1u)) % 32u)), true, global0.a);
    global0 = Struct_4(!global0.a, global0.b, false, 132f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.d, global0.b.d) * _wgslsmith_f_op_f32(-global0.b.b.x)) * global0.b.d));
    var var_0 = vec2<u32>(38298u, 0u);
    let var_1 = ~vec3<i32>(~u_input.a.x, firstLeadingBit(-23327i), -(2147483647i ^ u_input.a.x));
    let var_2 = !(!vec2<bool>(true, !global0.a));
    global0 = Struct_4(!func_4(4294967295u == (0u & u_input.b.x), Struct_3(func_2().a, global0.a)), global0.b, var_2.x, global0.b.e < global0.b.e);
    var_0 = vec2<u32>(u_input.b.x, u_input.b.x);
    let var_3 = Struct_2(func_2().a.a, vec4<bool>((global0.b.b.x < global0.b.b.x) || all(!vec4<bool>(false, var_2.x, var_2.x, global0.d)), var_2.x, select(false, true, func_2().a.a.c), global0.a), all(!(!vec3<bool>(global0.d, true, global0.d))) & global0.c, var_1.x, vec4<u32>(countOneBits(max(_wgslsmith_clamp_u32(4294967295u, 57794u, 52915u), _wgslsmith_add_u32(4294967295u, u_input.b.x))), max(abs(u_input.e) ^ 36372u, var_0.x), _wgslsmith_div_u32(func_2().a.e.x, ~_wgslsmith_mult_u32(1u, 1u)), func_2().a.e.x));
    var_0 = var_3.e.yx;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i | reverseBits(u_input.a.x >> (33943u % 32u)), u_input.d, var_3.a.a.x >> (var_0.x % 32u), var_3.a.e));
}

