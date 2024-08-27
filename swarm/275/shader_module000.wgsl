struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: i32,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: bool,
    d: Struct_3,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -653f;

var<private> global1: vec3<f32>;

var<private> global2: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> u32 {
    let var_0 = !arg_1.x;
    global2 = Struct_2(true, !vec4<bool>(true, all(select(vec3<bool>(var_0, var_0, arg_1.x), arg_1, false)), true, var_0), _wgslsmith_f_op_f32(2281f * _wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_mod_u32(~(4294967295u & ~global2.d), global2.d), Struct_1(-global2.e.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - -1256f)), -218f, _wgslsmith_f_op_f32(f32(-1f) * -783f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(370f, global1.x)), _wgslsmith_f_op_f32(-611f + -760f), arg_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(632f, global1.x, arg_0, arg_0))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global1.x, arg_0, global1.x) + vec4<f32>(global1.x, 474f, arg_0, -357f)), vec4<f32>(global1.x, global1.x, arg_0, -2403f))), select(global2.b, vec4<bool>(global2.a, !var_0, false, !global2.a), !select(vec4<bool>(global2.b.x, arg_1.x, false, true), vec4<bool>(global2.a, global2.a, var_0, false), vec4<bool>(true, true, true, true)))))));
    global0 = global1.x;
    global1 = var_1.wzz;
    return u_input.b.x;
}

fn func_2() -> i32 {
    var var_0 = ~1u | select(_wgslsmith_mult_u32(func_3(741f, global2.b.xwx), ~60940u) ^ 4294967295u, ~_wgslsmith_mult_u32(u_input.b.x, 4294967295u) << (_wgslsmith_mod_u32(global2.d, u_input.b.x) % 32u), global2.a);
    var var_1 = Struct_5(global2.a, false, global2.b.x, Struct_3(Struct_2(global2.a, vec4<bool>(global1.x > global1.x, global2.a, global2.b.x, true), -105f, abs(59282u), Struct_1(-u_input.a.x))), vec2<bool>(!(u_input.b.x > 1u), false));
    var var_2 = var_1.d.a;
    let var_3 = var_1.d.a;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global1.yx, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(max(578f, var_3.c))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.zz + global1.yz) * vec2<f32>(var_3.c, -207f))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c, _wgslsmith_div_f32(-437f, -608f)) - -757f), _wgslsmith_f_op_f32(718f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) - var_2.c))));
    return 39854i;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>) -> Struct_4 {
    global2 = Struct_2(!global2.b.x, vec4<bool>(global2.a, any(vec3<bool>(global2.b.x, all(vec2<bool>(global2.a, global2.a)), any(vec2<bool>(false, global2.a)))), !(!global2.a) | !any(global2.b), global2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(192f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -1429f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1211f)) * -914f)), 4294967295u, Struct_1(func_2()));
    global2 = Struct_2(!(!all(vec3<bool>(true, false, true))), global2.b, -180f, 6337u, global2.e);
    let var_0 = global2.b.x & select(any(!global2.b.yx) & false, true, !global2.b.x & true);
    let var_1 = global2.d >= u_input.b.x;
    let var_2 = Struct_5(var_0, true, true, Struct_3(Struct_2(all(!vec4<bool>(var_1, true, true, false)), vec4<bool>(true, false, global2.b.x, global1.x <= global2.c), -1000f, ~(u_input.b.x ^ u_input.b.x), global2.e)), !select(select(!vec2<bool>(global2.b.x, var_1), global2.b.wx, !vec2<bool>(false, global2.a)), !select(global2.b.yw, global2.b.zw, vec2<bool>(false, false)), var_0));
    return Struct_4(var_2.d, vec4<u32>(0u, global2.d, _wgslsmith_mod_u32(~u_input.b.x, 34493u | global2.d), ~var_2.d.a.d) << (~vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 8135u), u_input.b.x, 1u, ~global2.d) % vec4<u32>(32u)), i32(-1i) * -12471i, Struct_2(all(!select(vec3<bool>(var_1, var_0, var_1), global2.b.zzz, var_2.e.x)), vec4<bool>(global2.b.x, !var_0, all(global2.b.wxx), ~var_2.d.a.e.a != var_2.d.a.e.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_div_u32(~max(26490u, 80104u), ~abs(var_2.d.a.d)), global2.e), -vec2<i32>(-5741i, min(global2.e.a, -u_input.a.x)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> f32 {
    var var_0 = arg_0.b.x;
    var var_1 = func_1(u_input.a, vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.a.c - -1122f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.c + -2331f)) + _wgslsmith_f_op_f32(sign(225f))))).e.x;
    let var_2 = Struct_1(-(_wgslsmith_dot_vec2_i32(u_input.a.wz, _wgslsmith_add_vec2_i32(u_input.a.xz, arg_1.e)) | select(-2147483647i, -66709i, !global2.a)));
    var var_3 = min(arg_1.b.zz, (select(arg_0.b.zw, reverseBits(vec2<u32>(u_input.b.x, global2.d)), vec2<bool>(arg_1.d.b.x, arg_1.a.a.b.x)) << (arg_0.b.yy % vec2<u32>(32u))) ^ ~vec2<u32>(1u, 5951u >> (arg_0.a.a.d % 32u)));
    var_1 = arg_1.d.e.a;
    return func_1(vec4<i32>(abs(-2147483647i), global2.e.a, 57248i, ~(~min(var_2.a, 0i))), global1.yy).a.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c + -651f)), _wgslsmith_f_op_f32(-global1.x))), global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 328f)), _wgslsmith_f_op_f32(f32(-1f) * -739f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global2.c, global1.x))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, global2.c))))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(global2.c)), _wgslsmith_f_op_f32(func_4(func_1(vec4<i32>(global2.e.a, 1i, 2147483647i, u_input.a.x), vec2<f32>(global1.x, -2805f)), func_1(u_input.a, global1.zy))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global1.x, -878f)), _wgslsmith_f_op_f32(round(1844f)))))));
    global0 = 507f;
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_sub_i32(u_input.a.x, firstLeadingBit(global2.e.a))));
}

