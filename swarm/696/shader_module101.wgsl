struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: vec2<i32>;

var<private> global2: i32;

var<private> global3: vec4<i32> = vec4<i32>(34024i, 25065i, -1i, 25349i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(948f)), _wgslsmith_mult_u32(1u, ~firstLeadingBit(u_input.c)) & _wgslsmith_div_u32((u_input.c << (0u % 32u)) << (1u % 32u), abs(4294967295u)));
    return true;
}

fn func_3(arg_0: i32, arg_1: u32) -> vec3<i32> {
    let var_0 = Struct_1(-1268f, abs(_wgslsmith_clamp_u32(u_input.b.x, 53361u, _wgslsmith_mod_u32(arg_1, arg_1))) >> (u_input.c % 32u));
    global0 = array<Struct_1, 29>();
    var var_1 = Struct_2(vec4<bool>(false, func_2() || (arg_1 <= ~arg_1), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true))), (true || all(vec2<bool>(false, true))) && true), select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(var_0.b == ~4294967295u, !select(true, false, true))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(1354f - _wgslsmith_f_op_f32(-318f * var_0.a)), _wgslsmith_f_op_f32(trunc(var_0.a)), 404f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(348f, var_0.a))))))), vec3<i32>(min(-1384i, -9211i), _wgslsmith_clamp_i32(0i ^ (global3.x & u_input.a.x), 1i, 2147483647i), ~reverseBits(-global1.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.c.x) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(2177f - var_1.c.x), var_0.a)))));
    var var_3 = var_1.a;
    return ((vec3<i32>(_wgslsmith_clamp_i32(34506i, u_input.d, 2147483647i), 0i, abs(var_1.d.x)) << ((~u_input.b.zzz | vec3<u32>(u_input.b.x, 56330u, u_input.c)) % vec3<u32>(32u))) & -global3.wwz) & vec3<i32>(-2147483647i, abs(-2147483647i), countOneBits(abs(i32(-1i) * -1i)));
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = abs(global3.x);
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(min(-999f, arg_0.a));
    let var_3 = vec3<u32>(~46238u, ~arg_0.b, ~0u);
    var var_4 = arg_0.a;
    return StorageBuffer(u_input.b.yw, (_wgslsmith_mod_i32(select(global3.x, u_input.d, var_1), u_input.d) | -2147483647i) << (97584u % 32u), -func_3(4108i, _wgslsmith_dot_vec2_u32(min(vec2<u32>(20380u, 29598u), u_input.b.wz), var_3.yz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1052f, arg_0.a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, -1000f), vec2<f32>(-208f, arg_0.a), var_1)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a, arg_0.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-675f * _wgslsmith_f_op_f32(f32(-1f) * -494f)), ~(~(~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x))));
    global1 = -global3.zw;
    var var_1 = false;
    let x = u_input.a;
    s_output = func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-270f - _wgslsmith_f_op_f32(sign(419f))) * 212f), _wgslsmith_mult_u32(0u, ~var_0.b)));
}

