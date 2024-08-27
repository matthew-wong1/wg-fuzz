struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = 0i;

var<private> global2: vec4<f32>;

var<private> global3: i32;

var<private> global4: vec3<f32> = vec3<f32>(1000f, -221f, -226f);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    return true;
}

fn func_3() -> vec2<bool> {
    return vec2<bool>(false, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), global2.x >= global4.x), !func_1(Struct_1(u_input.a), 7112i))));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = false;
    var var_1 = select(vec2<bool>(all(arg_1.b.zz), arg_1.b.x), !select(func_3(), select(vec2<bool>(arg_1.a, arg_1.b.x), arg_1.b.zz, select(vec2<bool>(arg_1.a, false), vec2<bool>(true, true), false)), !vec2<bool>(arg_1.a, arg_1.b.x)), all(arg_1.b.yw));
    var var_2 = _wgslsmith_div_u32(0u, arg_1.c.x) > 1u;
    var var_3 = select(arg_1.b, vec4<bool>(var_1.x, true, arg_1.b.x, true), arg_1.b.x);
    var var_4 = _wgslsmith_clamp_vec2_u32(arg_1.c.xw, _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(40089u, 0u), _wgslsmith_sub_vec2_u32(arg_1.c.yw, vec2<u32>(u_input.b, 4760u))), vec2<u32>(4294967295u | u_input.b, ~45708u)), firstLeadingBit(arg_1.c.ww));
    return Struct_1(0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(37809u, 1u);
    var var_1 = func_2(global2.x, Struct_2(all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, false), vec2<bool>(true, true))), vec4<bool>(func_1(Struct_1(u_input.a), _wgslsmith_clamp_i32(2147483647i, -50306i, -2147483647i)), _wgslsmith_f_op_f32(-global2.x) != _wgslsmith_f_op_f32(f32(-1f) * -1000f), -u_input.d.x >= max(1i, u_input.d.x), true), ~(~(vec4<u32>(1571u, u_input.a, 45314u, u_input.a) ^ vec4<u32>(76621u, 4294967295u, var_0.x, u_input.a))), -2147483647i));
    var var_2 = !vec4<bool>(false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.x))) > _wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(round(774f))), !(any(vec3<bool>(true, false, false)) == false), true);
    global2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, 404f), _wgslsmith_f_op_f32(-global2.x)), -231f, 1010f >= _wgslsmith_f_op_f32(-220f + global2.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1240f * global2.x)))), _wgslsmith_f_op_f32(select(361f, -1000f, var_2.x)), _wgslsmith_f_op_f32(step(-392f, -780f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-793f, global2.x, -193f, -406f) + vec4<f32>(global4.x, global4.x, global4.x, 341f))), vec4<f32>(_wgslsmith_f_op_f32(min(global2.x, 1745f)), global4.x, 472f, _wgslsmith_f_op_f32(f32(-1f) * -3067f))))));
    let var_3 = Struct_2(false, vec4<bool>(var_2.x | (_wgslsmith_clamp_i32(-69269i, -6124i, -2147483647i) > 27707i), select(func_3().x && true, false, true), true, true), vec4<u32>(~_wgslsmith_add_u32(~40032u, u_input.b), ~34146u, 1u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, var_1.a) ^ vec3<u32>(u_input.a, var_0.x, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(12608u, 1u, 0u), vec3<u32>(13752u, 4294967295u, u_input.b))))), _wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, u_input.d.x | u_input.d.x), ~(u_input.d.x | u_input.c.x), (u_input.c.x & -2147483647i) >> (1u % 32u)), u_input.c.x));
    var var_4 = u_input.d.x;
    var var_5 = Struct_2(var_3.a, select(var_3.b, select(select(select(vec4<bool>(var_3.b.x, var_2.x, var_2.x, false), var_3.b, var_3.b.x), select(vec4<bool>(true, false, true, false), vec4<bool>(var_3.b.x, var_3.a, false, false), true), var_3.b.x), var_3.b, vec4<bool>(!var_2.x, var_2.x, var_2.x, true)), !(!(!var_2.x))), min(~var_3.c, _wgslsmith_sub_vec4_u32(var_3.c, ~abs(vec4<u32>(0u, var_1.a, 0u, u_input.b)))), 1i);
    let var_6 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4.x, global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4.x)) - global4.x)), global2.xzz));
    let var_7 = vec2<i32>(-(~(-52952i) | var_5.d) >> (_wgslsmith_clamp_u32(4294967295u, var_3.c.x, countOneBits(0u)) % 32u), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(0u, firstTrailingBit(vec4<i32>(firstTrailingBit(-u_input.d.x), (33193i & var_7.x) >> (abs(4294967295u) % 32u), 1i, -13750i >> (~u_input.a % 32u))), -max(29804i, 2147483647i), var_5.d);
}

