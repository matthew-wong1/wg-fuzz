struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-23124i, -45490i);

var<private> global1: vec4<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> u32 {
    return ~(~(~select(u_input.a.x >> (u_input.a.x % 32u), 0u, any(vec2<bool>(false, true)))));
}

fn func_3() -> bool {
    let var_0 = vec4<bool>(all(vec2<bool>(!(0i < global0.x), any(vec4<bool>(true, true, true, true)))), (-global0.x < global0.x) | (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global1.x, global1.x, true)), _wgslsmith_f_op_f32(-global1.x), false))), true, all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))))));
    global0 = ~select(vec2<i32>(global0.x, global0.x), vec2<i32>(-global0.x, 2147483647i), var_0.x) & vec2<i32>(-1i & global0.x, countOneBits(_wgslsmith_dot_vec2_i32(select(vec2<i32>(global0.x, -21195i), vec2<i32>(global0.x, 11846i), vec2<bool>(false, var_0.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, 37502i), vec2<i32>(-2147483647i, global0.x)))));
    var var_1 = Struct_3(true, Struct_2(Struct_1(select(select(vec3<i32>(global0.x, -39840i, 859i), vec3<i32>(-33240i, 80750i, global0.x), var_0.xzy), vec3<i32>(global0.x, global0.x, -20928i), var_0.x))), Struct_2(Struct_1((vec3<i32>(-9362i, -32134i, global0.x) & vec3<i32>(global0.x, 1i, -21061i)) << (_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(0u, 0u, u_input.a.x)) % vec3<u32>(32u)))));
    let var_2 = firstLeadingBit(var_1.b.a.a.xy);
    let var_3 = u_input.a;
    return all(vec4<bool>(select(true, any(var_0.zxy), countOneBits(46657i) <= abs(var_2.x)), var_1.a, any(!select(vec4<bool>(false, var_1.a, false, true), vec4<bool>(var_0.x, var_0.x, false, var_1.a), false)), any(select(vec2<bool>(var_1.a, false), var_0.yw, !vec2<bool>(false, var_0.x)))));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: u32, arg_3: i32) -> u32 {
    let var_0 = Struct_2(Struct_1(vec3<i32>(41138i, min(_wgslsmith_div_i32(arg_3, -1i), global0.x), ~firstTrailingBit(arg_3))));
    let var_1 = Struct_3(func_3(), Struct_2(Struct_1(-reverseBits(vec3<i32>(var_0.a.a.x, var_0.a.a.x, 1i)))), Struct_2(Struct_1(var_0.a.a)));
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(1i << (1u % 32u), ~global0.x ^ (var_0.a.a.x << (20752u % 32u))), var_1.c.a.a.xx) & ~(-var_0.a.a.yz);
    let var_2 = arg_1.x;
    global0 = (vec2<i32>(-1i) * -select(var_1.c.a.a.yz, ~var_0.a.a.zy, var_1.a)) << (vec2<u32>(arg_2, 13929u) % vec2<u32>(32u));
    return 32122u;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = true;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(step(-662f, global1.x))))), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(-1000f))) * _wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_f_op_f32(exp2(global1.x)));
    var var_1 = _wgslsmith_dot_vec3_u32(~reverseBits(_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(27102u, 29857u, u_input.b.x))), ~(~u_input.a));
    var_0 = func_3();
    global0 = _wgslsmith_clamp_vec2_i32(~((select(vec2<i32>(-1i, 2147483647i), vec2<i32>(global0.x, global0.x), vec2<bool>(false, true)) | vec2<i32>(global0.x, global0.x)) | ~vec2<i32>(global0.x, -4538i)), ~(~vec2<i32>(firstTrailingBit(global0.x), 3578i & global0.x)), vec2<i32>(i32(-1i) * -global0.x, _wgslsmith_mult_i32(2147483647i, _wgslsmith_div_i32(0i, ~0i))));
    return Struct_3(true, Struct_2(Struct_1(vec3<i32>(-4314i, 35466i, 1i))), Struct_2(Struct_1(vec3<i32>(firstTrailingBit(global0.x), _wgslsmith_div_i32(-1i, -2147483647i), _wgslsmith_mod_i32(global0.x, 1i)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec4<bool>) -> Struct_1 {
    return Struct_1(select(arg_0.b.a.a, vec3<i32>(2147483647i, select(~(-1i), arg_0.c.a.a.x, arg_2.x), 6782i), true));
}

fn func_6(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(191f, global1.x, -901f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, global1.x, false)) * _wgslsmith_div_f32(global1.x, 1557f)))));
    return Struct_3(false, func_4(~select(arg_0.xz, ~vec2<u32>(arg_1, u_input.a.x), vec2<bool>(true, true)), u_input.a.zy).b, func_4(_wgslsmith_sub_vec2_u32(~arg_0.yz, vec2<u32>(614u, arg_1)) >> (vec2<u32>(arg_1, 49174u) % vec2<u32>(32u)), min(~max(vec2<u32>(26679u, arg_0.x), vec2<u32>(arg_0.x, u_input.a.x)), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 43627u), arg_0.xy))).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x), max(firstTrailingBit(u_input.a), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(37706u, u_input.b.x, u_input.b.x)))), _wgslsmith_add_u32(func_1(), u_input.b.x) ^ u_input.b.x, 27920u), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.a.xx), u_input.a.xz), _wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(abs(14408u), ~17457u))), func_5(func_4(vec2<u32>(func_2(-1000f, vec2<bool>(true, false), 13481u, -13935i), _wgslsmith_add_u32(24861u, u_input.a.x)), ~u_input.a.yy), vec4<f32>(global1.x, _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(abs(-2145f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1443f - global1.x))), vec4<bool>(true, true, true, true)));
    let var_1 = Struct_4(!(!vec3<bool>(global1.x <= 137f, false, select(var_0.a, var_0.a, var_0.a))), var_0.a, vec3<bool>(~abs(30499u) != u_input.b.x, var_0.a, !any(select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, true), var_0.a))), func_4(u_input.a.yx, ~abs(u_input.b) | ~vec2<u32>(u_input.b.x, 17598u)).c.a, select(select(vec3<bool>(global1.x == global1.x, select(false, var_0.a, var_0.a), true), !(!vec3<bool>(true, var_0.a, var_0.a)), false), !(!select(vec3<bool>(var_0.a, true, false), vec3<bool>(true, var_0.a, true), var_0.a)), !vec3<bool>(var_0.a, global1.x > global1.x, var_0.a)));
    var var_2 = Struct_2(var_1.d);
    let var_3 = 33110i & var_2.a.a.x;
    var var_4 = func_5(func_4(_wgslsmith_sub_vec2_u32(vec2<u32>(7592u, u_input.b.x) | u_input.a.yx, u_input.b) | vec2<u32>(38308u, u_input.a.x), vec2<u32>(76224u, (u_input.b.x & 1u) & u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1112f, global1.x, -1090f, -681f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1153f, global1.x, global1.x) + vec4<f32>(global1.x, 359f, -1087f, -287f)))))), vec4<bool>(var_0.a, false, !any(vec3<bool>(var_0.a, var_1.a.x, var_0.a)), var_1.a.x != true)).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, _wgslsmith_mult_u32(u_input.a.x, ~u_input.b.x), ~u_input.b.x, _wgslsmith_add_u32(abs(58681u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a.x, 4294967295u, u_input.b.x, 75943u)), ~vec4<u32>(u_input.b.x, 1u, 1u, u_input.b.x)))), u_input.a.x);
}

