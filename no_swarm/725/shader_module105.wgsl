struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_1 = Struct_1(4294967295u, vec4<f32>(-801f, 1318f, -1272f, 314f), 1190f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> vec3<u32> {
    let var_0 = Struct_1(1u, global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1152f, -435f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) * _wgslsmith_f_op_f32(-global2.b.x)))));
    let var_1 = 1i;
    var var_2 = select(!select(select(select(vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, arg_1, true), vec3<bool>(false, arg_1, arg_1)), !vec3<bool>(false, arg_1, arg_1), !vec3<bool>(false, arg_1, arg_1)), !(!vec3<bool>(arg_1, true, false)), true), select(!select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, false, false), !vec3<bool>(arg_1, true, arg_1)), !(!vec3<bool>(true, true, arg_1)), true), select(!select(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, true, true), vec3<bool>(true, arg_1, false)), select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1), arg_1), true), vec3<bool>(any(vec2<bool>(arg_1, arg_1)), !(!arg_1), any(vec4<bool>(arg_1, arg_1, false, true))), false));
    var var_3 = !(!vec4<bool>(arg_1, any(vec2<bool>(true, var_2.x)), all(!vec3<bool>(arg_1, arg_1, arg_1)), !var_2.x));
    let var_4 = Struct_1(~_wgslsmith_clamp_u32(firstTrailingBit(u_input.b.x) & 44977u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 6513u, 8792u, var_0.a), vec4<u32>(global2.a, 105148u, 4294967295u, 24338u)) >> ((11377u | global1.x) % 32u), u_input.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_div_vec4_f32(vec4<f32>(global2.b.x, -770f, 1000f, global2.c), var_0.b)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(global2.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c, -1288f, var_0.c, 1151f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1105f)))));
    return u_input.b;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: vec2<i32>) -> vec4<u32> {
    var var_0 = ~_wgslsmith_div_u32(arg_2.b.x, global1.x);
    return vec4<u32>(1u, _wgslsmith_add_u32(arg_1 ^ u_input.b.x, max(~0u, _wgslsmith_clamp_u32(func_3(vec2<i32>(arg_3.x, global0.x), false).x, 15707u, global2.a))), ~(~global1.x & 1u) << (~(~20269u) % 32u), arg_1);
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_f_op_f32(global2.b.x + 1061f), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), Struct_2(Struct_1(_wgslsmith_div_u32(11982u, u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * global2.b.x)), func_3(global0.zz, false)), max(u_input.c.xx, vec2<i32>(-(~9252i), global0.x)));
    let var_1 = Struct_1(global1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, global2.c, global2.c, global2.b.x) - global2.b) * global2.b)) + _wgslsmith_f_op_vec4_f32(global2.b - global2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c + 1017f)), 1f)) * -1000f));
    var var_2 = Struct_2(Struct_1(~1u, vec4<f32>(-1062f, _wgslsmith_f_op_f32(global2.b.x * global2.b.x), global2.c, _wgslsmith_f_op_f32(abs(-1147f))), global2.b.x), var_0.zzx);
    let var_3 = reverseBits(var_2.b.zy);
    var var_4 = Struct_2(var_2.a, var_0.xyw);
    return Struct_2(Struct_1(0u, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_4.a.b.x, _wgslsmith_f_op_f32(min(var_4.a.c, var_4.a.c)), -753f, -965f), _wgslsmith_f_op_vec4_f32(min(var_1.b, _wgslsmith_f_op_vec4_f32(-var_1.b))))), var_4.a.c), var_2.b);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>) -> vec3<i32> {
    global1 = abs(u_input.b);
    let var_0 = arg_0;
    global2 = Struct_1(~4294967295u, _wgslsmith_f_op_vec4_f32(arg_0.a.b - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-func_2(u_input.a.x, true).a.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b - arg_0.a.b) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.b.x, -580f, 1060f, 1000f))))))), _wgslsmith_f_op_f32(-global2.c));
    global2 = Struct_1(global1.x, var_0.a.b, _wgslsmith_f_op_f32(-func_2(_wgslsmith_add_i32(u_input.c.x, global0.x), false).a.c));
    global1 = ~u_input.b;
    return u_input.c.yww;
}

fn func_1(arg_0: Struct_2) -> i32 {
    let var_0 = vec3<i32>(-2147483647i, _wgslsmith_mod_i32(1i, 2147483647i), -2147483647i) >> (u_input.b % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2205f);
    var var_2 = ~select(vec4<u32>(18074u, ~global1.x, 42542u, global1.x), ~firstTrailingBit(vec4<u32>(global2.a, 1u, arg_0.b.x, 1u)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true)) & firstLeadingBit(~(~vec4<u32>(global1.x, arg_0.b.x, global1.x, 1u)) ^ firstTrailingBit(vec4<u32>(arg_0.b.x, 4294967295u, 4294967295u, global1.x) & vec4<u32>(global1.x, 56076u, global1.x, global1.x)));
    global0 = u_input.a ^ reverseBits(func_5(func_2(19874i, false), _wgslsmith_div_vec3_f32(vec3<f32>(global2.b.x, 585f, -777f), vec3<f32>(-172f, global2.b.x, 1583f))) << (countOneBits(vec3<u32>(4294967295u, var_2.x, 4294967295u)) % vec3<u32>(32u)));
    let var_3 = func_2(_wgslsmith_add_i32(var_0.x, _wgslsmith_clamp_i32(~9006i, 1i, 1i) ^ 1i), any(vec2<bool>(all(vec4<bool>(true, true, true, false)), true)));
    return -(var_0.x >> (firstTrailingBit(abs(~u_input.b.x)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(func_1(Struct_2(Struct_1(0u, vec4<f32>(964f, -1000f, -1186f, global2.c), -334f), u_input.b)), -u_input.a.x), abs(min(1i, 1i))), u_input.a.x);
    var var_1 = Struct_1(~(~func_2(~(-9107i), true).b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.b.x, -286f, -287f, global2.c), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.b.x, global2.c, global2.c, -1000f), global2.b)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1447f), -1276f, -247f, global2.b.x))), global2.c);
    let var_2 = func_2(1i, true);
    var var_3 = ~_wgslsmith_add_u32(~3798u, var_1.a);
    global2 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1154f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, var_2.a.c))))), -_wgslsmith_clamp_vec2_i32(global0.xy, global0.zz, vec2<i32>(var_0, _wgslsmith_mod_i32(var_0, 2147483647i))), select(_wgslsmith_sub_u32(13160u, u_input.b.x), u_input.b.x, false && (any(vec4<bool>(true, false, false, true)) || all(vec3<bool>(false, false, true)))), vec4<i32>(global0.x, _wgslsmith_add_i32(firstLeadingBit(global0.x & 0i), global0.x), reverseBits(abs(2147483647i << (global1.x % 32u))), _wgslsmith_mult_i32(global0.x, _wgslsmith_dot_vec2_i32(~u_input.c.yx, vec2<i32>(u_input.c.x, 26298i)))), global2.b);
}

