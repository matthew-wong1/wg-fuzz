struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 27>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_3) -> vec4<f32> {
    global1 = array<vec4<i32>, 27>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.x, -653f) * vec2<f32>(-396f, global0.c))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, -498f))))), -1i, 2662f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, global0.c, _wgslsmith_div_f32(1007f, global0.d.x), 724f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.b.x, -114f, -898f, arg_2.a.x)))))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.d)))));
}

fn func_2(arg_0: u32) -> f32 {
    global0 = Struct_1(vec2<f32>(global0.a.x, -141f), u_input.b, -495f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.d * vec4<f32>(global0.c, global0.d.x, global0.c, global0.c)), vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1030f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.d.x)), _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, true, false), vec4<bool>(true, true, true, true), Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a.x, global0.d.x), vec2<f32>(global0.c, -1740f))), _wgslsmith_f_op_vec2_f32(global0.d.xy + vec2<f32>(global0.a.x, 626f))), Struct_3(false, global0.a, u_input.b))))));
    var var_0 = Struct_3(158f < global0.c, _wgslsmith_f_op_vec2_f32(-global0.a), -(global0.b | ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.b, 0i), vec3<i32>(global0.b, 0i, u_input.a.x))));
    var var_1 = Struct_3(!(!(2147483647i > (-2147483647i | global0.b))), _wgslsmith_f_op_vec2_f32(max(global0.a, _wgslsmith_f_op_vec2_f32(-var_0.b))), 1i);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_1.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d.yy))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3(!select(vec3<bool>(true, var_1.a, var_0.a), vec3<bool>(true, var_1.a, var_1.a), false), !(!vec4<bool>(true, var_1.a, var_0.a, var_1.a)), Struct_2(vec2<f32>(var_1.b.x, global0.a.x), vec2<f32>(-1000f, var_1.b.x)), Struct_3(u_input.a.x > -1941i, _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(var_1.a, var_1.a, false), vec4<bool>(var_0.a, var_0.a, var_0.a, false), Struct_2(vec2<f32>(1873f, global0.d.x), var_0.b), Struct_3(true, global0.a, u_input.b))).xx, countOneBits(-30407i)))).yz * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d.zw) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -861f), 1584f))));
    var_1 = Struct_3(var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.b, global0.a)) + _wgslsmith_f_op_vec2_f32(ceil(var_0.b)))))), -_wgslsmith_mod_i32(var_0.c, ~(~u_input.a.x)));
    return -137f;
}

fn func_1(arg_0: Struct_3) -> vec2<bool> {
    global0 = Struct_1(_wgslsmith_div_vec2_f32(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.b))))), global0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_u32(~u_input.d, ~0u))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.c.x)) * arg_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1357f), -1166f, -523f));
    var var_0 = arg_0;
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(603f + 1094f)))), _wgslsmith_f_op_f32(-1f)), var_0.c, global0.c, vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(var_0.a, var_0.a, false), vec4<bool>(true, true, false, var_0.a), Struct_2(vec2<f32>(global0.c, 465f), arg_0.b), arg_0)).x + _wgslsmith_div_f32(global0.d.x, 604f)) * -192f), global0.d.x, _wgslsmith_f_op_vec4_f32(func_3(vec3<bool>(true, true, true), vec4<bool>(false, all(vec3<bool>(true, arg_0.a, true)), arg_0.a, var_0.a), Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.d.x, 363f), global0.d.xz)), _wgslsmith_div_vec2_f32(vec2<f32>(-449f, arg_0.b.x), vec2<f32>(-1216f, -157f))), Struct_3(false | var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 1007f)), _wgslsmith_mod_i32(19606i, -2147483647i)))).x));
    let var_1 = _wgslsmith_mult_vec4_u32(firstTrailingBit(~u_input.c), _wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, u_input.c));
    global1 = array<vec4<i32>, 27>();
    return vec2<bool>(any(!vec3<bool>(all(vec3<bool>(var_0.a, true, arg_0.a)), false, !var_0.a)), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, true, true)), any(vec2<bool>(true, false))), !select(vec2<bool>(true, false), vec2<bool>(true, true), false)), vec2<bool>(any(vec4<bool>(false, false, false, false)), true), true);
    var var_1 = abs(_wgslsmith_div_vec3_u32(u_input.c.zxz, u_input.c.zxw));
    var_0 = !(!select(select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false), var_0.x), func_1(Struct_3(true, vec2<f32>(global0.d.x, 188f), 2147483647i)), var_0.x), !(!vec2<bool>(var_0.x, var_0.x)), true));
    var_1 = ~u_input.c.wxx;
    global1 = array<vec4<i32>, 27>();
    var_0 = select(vec2<bool>(u_input.a.x > 1i, var_0.x), !(!vec2<bool>(all(vec4<bool>(true, var_0.x, true, var_0.x)), true)), select(var_0.x, !any(vec2<bool>(false, false)), !func_1(Struct_3(true, global0.a, -2147483647i)).x));
    let var_2 = countOneBits(u_input.a);
    let var_3 = var_2.x;
    let var_4 = max(_wgslsmith_dot_vec2_u32(vec2<u32>(15311u, 89271u), vec2<u32>(reverseBits(~u_input.d), ~var_1.x)), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.c.zzx), reverseBits(_wgslsmith_sub_vec4_u32(countOneBits(u_input.c | u_input.c), ~u_input.c & select(vec4<u32>(4294967295u, u_input.d, 4294967295u, var_4), u_input.c, var_0.x))), countOneBits(1u | u_input.c.x));
}

