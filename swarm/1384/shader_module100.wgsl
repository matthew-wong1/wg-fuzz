struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(0u, 24364u), vec2<u32>(30432u, 1u), vec2<u32>(37643u, 0u), vec2<u32>(1884u, 59740u), vec2<u32>(77957u, 51799u), vec2<u32>(44358u, 29972u), vec2<u32>(1u, 23650u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(6868u, 1u), vec2<u32>(882u, 0u), vec2<u32>(22189u, 0u), vec2<u32>(0u, 1u), vec2<u32>(1u, 11632u));

var<private> global1: vec3<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = -1514i;
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1252f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1353f))))));
    global0 = array<vec2<u32>, 13>();
    let var_2 = var_1.x;
    var var_3 = select(!vec4<bool>(arg_0.x, global1.x, global1.x, global1.x | !global1.x), select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(u_input.c.x >= ~19920i, any(select(vec3<bool>(true, arg_0.x, false), vec3<bool>(global1.x, false, true), vec3<bool>(arg_0.x, true, global1.x))), all(select(vec4<bool>(arg_0.x, arg_0.x, global1.x, false), vec4<bool>(true, true, arg_0.x, global1.x), false)), !(u_input.c.x <= u_input.c.x)), max(0i, max(30723i, u_input.c.x)) <= _wgslsmith_add_i32(u_input.c.x | u_input.a.x, u_input.a.x)), !vec4<bool>(all(global1.xy), _wgslsmith_f_op_f32(f32(-1f) * -528f) > var_2, !(!global1.x), all(select(global1.yx, global1.zz, global1.xy))));
    return 44302u;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<u32>) -> bool {
    var var_0 = Struct_1(vec3<u32>(~(~arg_1.x), _wgslsmith_mult_u32(abs(1u), _wgslsmith_mult_u32(func_3(global1.xz), 17313u)), ~1u), u_input.a.x, arg_1.x, vec4<i32>(0i, select(select(~u_input.a.x, 2147483647i, true), abs(9643i), !(global1.x & true)), -u_input.a.x | 2147483647i, _wgslsmith_div_i32(_wgslsmith_add_i32(~u_input.a.x, -2147483647i), -15803i)), select(vec3<bool>(any(vec3<bool>(true, true, true)), true, true), vec3<bool>(!(arg_0.x <= -893f), all(vec3<bool>(false, global1.x, global1.x)), select(true, true, true)), vec3<bool>(true, true, true)));
    let var_1 = ~19975i;
    global1 = !select(var_0.e, vec3<bool>(all(select(vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(true, false, false, global1.x), global1.x)), any(!var_0.e), global1.x), select(select(var_0.e, var_0.e, all(vec4<bool>(true, global1.x, var_0.e.x, true))), var_0.e, false & any(vec3<bool>(global1.x, global1.x, var_0.e.x))));
    global0 = array<vec2<u32>, 13>();
    let var_2 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, ~_wgslsmith_mult_u32(u_input.e.x, var_0.c), ~select(1u, 0u, global1.x), 83689u), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(u_input.e), ~vec4<u32>(var_0.a.x, var_0.a.x, 1u, var_0.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 79271u, 18114u, 53646u), vec4<u32>(var_0.a.x, u_input.b, u_input.d, 1u) & u_input.e, vec4<u32>(4294967295u, 6208u, u_input.b, 17955u))), arg_1);
    return false;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: i32, arg_3: i32) -> StorageBuffer {
    let var_0 = !global1.x;
    let var_1 = u_input.a.zzx;
    var var_2 = Struct_1(vec3<u32>(arg_1.x, arg_1.x, ~_wgslsmith_mod_u32(arg_0.x, u_input.d) & ~(~u_input.e.x)), i32(-1i) * -(~arg_2), arg_1.x, vec4<i32>(5531i, var_1.x, ~arg_3, 1i), !vec3<bool>((u_input.c.x <= u_input.c.x) & false, func_2(vec2<f32>(961f, -389f), _wgslsmith_div_vec4_u32(arg_0, vec4<u32>(1u, 1u, 51894u, 1u))), arg_1.x > 3929u));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(841f, 288f, 1000f)))))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f)))))));
    let var_4 = Struct_1(~(~vec3<u32>(var_2.a.x, arg_0.x, firstLeadingBit(44895u))), _wgslsmith_div_i32(~countOneBits(arg_2), 0i), _wgslsmith_sub_u32(arg_1.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.x, 14441u), firstLeadingBit(~vec2<u32>(arg_1.x, 0u)))), min(firstLeadingBit(vec4<i32>(u_input.a.x, 0i, arg_3, -1i) | vec4<i32>(arg_2, var_1.x, 0i, -16938i)), -var_2.d ^ (-vec4<i32>(10196i, -1i, 1i, 1i) ^ ~u_input.a)), vec3<bool>(all(select(select(vec4<bool>(false, false, false, global1.x), vec4<bool>(var_0, true, true, global1.x), vec4<bool>(var_0, true, false, global1.x)), vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(true, var_0, true, true))), false, _wgslsmith_f_op_f32(1925f - _wgslsmith_f_op_f32(var_3.x - var_3.x)) < var_3.x));
    return StorageBuffer(-804f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec4<u32>(48924u & (1u << (u_input.e.x % 32u)), ~u_input.d, ~(u_input.b >> (1u % 32u)), _wgslsmith_add_u32(~u_input.b, u_input.b)), u_input.e.ywy, u_input.c.x, u_input.c.x << (_wgslsmith_dot_vec4_u32(~u_input.e, _wgslsmith_add_vec4_u32(vec4<u32>(81084u, u_input.d, 1u, u_input.b), u_input.e) ^ vec4<u32>(u_input.d, 12832u, u_input.b, u_input.e.x)) % 32u));
}

