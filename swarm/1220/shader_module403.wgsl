struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = -vec2<i32>(-_wgslsmith_add_i32(arg_1.x >> (arg_0.c % 32u), u_input.b), 0i);
    let var_1 = arg_3.b;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_3 = firstTrailingBit(-vec4<i32>(_wgslsmith_sub_i32(-u_input.d.x, _wgslsmith_dot_vec3_i32(arg_1.zyy, arg_1.zzz)), var_0.x, ~0i, var_0.x));
    var var_4 = Struct_1(~arg_0.c << (0u % 32u), true, ~0u);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(291f, _wgslsmith_f_op_f32(406f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1014f * 985f), _wgslsmith_f_op_f32(step(-520f, -1199f)))))), -924f);
}

fn func_3() -> u32 {
    var var_0 = 4294967295u;
    var_0 = 1u;
    var var_1 = abs((~u_input.c.x ^ _wgslsmith_dot_vec4_u32(u_input.a | u_input.a, vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))) | abs(u_input.c.x));
    var_1 = reverseBits(1u);
    var_1 = ~_wgslsmith_dot_vec3_u32(abs(u_input.a.zzz), firstTrailingBit(u_input.a.yzz));
    return max(_wgslsmith_div_u32(u_input.c.x, 1u), select(_wgslsmith_sub_u32(u_input.a.x, ~u_input.c.x), u_input.c.x, !any(vec3<bool>(true, false, true))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>) -> vec4<f32> {
    var var_0 = arg_0;
    let var_1 = arg_1;
    var_0 = Struct_1(u_input.c.x, !(!var_0.b && true), u_input.c.x);
    var_0 = Struct_1(func_3(), all(!select(select(vec2<bool>(var_0.b, false), vec2<bool>(false, false), var_0.b), vec2<bool>(true, true), select(vec2<bool>(var_0.b, false), vec2<bool>(false, var_0.b), vec2<bool>(true, arg_0.b)))), ~35565u);
    var_0 = Struct_1(arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - -378f), 1300f) > var_1, var_0.c);
    return vec4<f32>(_wgslsmith_div_f32(arg_1, -461f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(var_1, -1000f))) * arg_1), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1287f) + var_1))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_1), 423f)))), 1f);
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = select(select(!vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(select(arg_2.b, all(vec2<bool>(true, false)), arg_2.b), true), arg_2.b), vec2<bool>(true, true), min(-2086i, -57228i) > _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(994i, -38100i))), vec2<i32>(u_input.b >> (4294967295u % 32u), u_input.b)));
    var var_1 = vec4<bool>(any(!vec3<bool>(all(vec3<bool>(var_0.x, true, arg_2.b)), false, var_0.x)), !any(var_0), true, true);
    var_1 = !vec4<bool>(true, true, true, select(!var_1.x, arg_2.b, true));
    let var_2 = true;
    var var_3 = arg_2;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f) * _wgslsmith_f_op_f32(func_1(Struct_1(4294967295u, true, u_input.a.x), vec4<i32>(20899i, 1i, u_input.d.x, 0i), vec2<bool>(false, false), Struct_1(u_input.c.x, true, 1u)))) + _wgslsmith_f_op_f32(select(-1318f, _wgslsmith_f_op_f32(f32(-1f) * -245f), u_input.b <= 33274i))))), 246f));
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, var_0, var_0), vec4<f32>(-1122f, -121f, var_0, var_0), false))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(4294967295u, true, 53178u), var_0, u_input.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.a.x, false, u_input.a.x), vec4<i32>(-1i, 24665i, -1i, 0i), vec2<bool>(true, true), Struct_1(u_input.c.x, true, u_input.a.x))))), Struct_1(max(_wgslsmith_add_u32(~0u, u_input.c.x), u_input.a.x), true, 56119u), ~abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, u_input.c.x))));
    let var_2 = 11992u;
    var var_3 = var_1;
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))), -870f, 225f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1454f, -479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1178f * var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -813f)))), min(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, 28719i, u_input.b), vec3<i32>(u_input.d.x, -2147483647i, u_input.b)), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<i32>(u_input.d.x, u_input.d.x, u_input.b), vec3<i32>(1i, -49977i, 0i)))) << (~(vec3<u32>(var_2, var_1.c, 3916u) & ~vec3<u32>(var_1.c, u_input.a.x, u_input.c.x)) % vec3<u32>(32u)));
}

