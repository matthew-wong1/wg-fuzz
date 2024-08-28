struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_2, 29>;

var<private> global2: Struct_3;

var<private> global3: bool;

var<private> global4: i32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> bool {
    let var_0 = Struct_4(~max(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, 0u), select(arg_0.yz, vec2<u32>(arg_0.x, 0u), vec2<bool>(false, true))), arg_0.yx));
    global2 = Struct_3(global2.a);
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.a.b)))), -889f, _wgslsmith_f_op_f32(-global2.a.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), global2.a.b, _wgslsmith_f_op_f32(f32(-1f) * -960f)), vec3<f32>(-624f, -959f, _wgslsmith_f_op_f32(round(921f))))));
    let var_1 = Struct_2(~(global2.a.a ^ -firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x))));
    let var_2 = Struct_1(-_wgslsmith_clamp_vec2_i32(firstLeadingBit(-vec2<i32>(var_1.a.x, 0i)), max(vec2<i32>(u_input.a.x, 1i), ~var_1.a), max(vec2<i32>(arg_1, -56688i), -var_1.a)), global0.x);
    return true;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> u32 {
    var var_0 = -2147483647i;
    global2 = Struct_3(global2.a);
    global4 = -abs(max(-_wgslsmith_clamp_i32(global2.a.a.x, 2147483647i, -49280i), -38504i));
    var var_1 = !(!vec4<bool>(arg_1, func_2(select(vec3<u32>(24973u, 4294967295u, 52666u), vec3<u32>(0u, 59896u, 1u), vec3<bool>(arg_1, false, arg_1)), abs(u_input.a.x)), arg_1, arg_1));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1451f) - global2.a.b);
    return 1u;
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_4(~vec2<u32>(1u, 1u) >> (firstLeadingBit(select(vec2<u32>(5729u, 4294967295u), vec2<u32>(0u, 4294967295u), false)) % vec2<u32>(32u)));
    let var_1 = Struct_5(~_wgslsmith_sub_vec4_u32(max(firstTrailingBit(vec4<u32>(14996u, 4294967295u, var_0.a.x, var_0.a.x)), vec4<u32>(1u, var_0.a.x, 85717u, var_0.a.x)), vec4<u32>(var_0.a.x, var_0.a.x, abs(1u), ~4294967295u)));
    let var_2 = Struct_5(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~31265u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 1u), var_0.a)), _wgslsmith_add_u32(~var_0.a.x, var_1.a.x), var_0.a.x, var_1.a.x), ~(~vec4<u32>(var_1.a.x, var_0.a.x, 48607u, var_0.a.x) | ~vec4<u32>(var_0.a.x, 0u, var_1.a.x, 3708u))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.b, 438f, 1636f) - vec3<f32>(237f, global2.a.b, -438f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.a.b, global2.a.b, -922f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.b, 1000f, 204f) - vec3<f32>(-1063f, global2.a.b, global0.x))), select(false, true, true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.a.b, global2.a.b, global0.x), vec3<f32>(global0.x, -353f, 785f)))))));
    let var_3 = select(vec4<bool>(-852f == _wgslsmith_f_op_f32(trunc(1143f)), select(true, false, any(vec4<bool>(false, false, true, true))), true, _wgslsmith_f_op_f32(floor(global0.x)) <= -1689f), vec4<bool>(!select(false, true, select(false, false, false)), true, any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(151f + 123f), global2.a.b)) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.b, global0.x) + _wgslsmith_f_op_f32(-1252f * global2.a.b))), select(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), !func_2(~var_2.a.wwz, reverseBits(0i))));
    return select(!vec2<bool>(false, !select(var_3.x, var_3.x, var_3.x)), var_3.yw, vec2<bool>(any(var_3.yww), all(select(var_3.xw, select(vec2<bool>(false, var_3.x), var_3.zz, var_3.x), var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a.b, 1000f, global0.x, 1214f))), all(vec3<bool>(true, false, true))) | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))) <= 1u;
    var var_1 = vec4<bool>(!(!(_wgslsmith_f_op_f32(691f + -687f) < global0.x)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a.b))) != -888f, true);
    var var_2 = func_3();
    let var_3 = Struct_5(~vec4<u32>(1u, 1u, 4294967295u, min(1u, 28191u)));
    let var_4 = max(~4294967295u, max(var_3.a.x, _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(~var_3.a.yxz, _wgslsmith_div_vec3_u32(var_3.a.zxw, vec3<u32>(var_3.a.x, var_3.a.x, 100513u))), countOneBits(_wgslsmith_mod_u32(var_3.a.x, var_3.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_3.a.yx, _wgslsmith_f_op_f32(880f + _wgslsmith_f_op_f32(-601f * global2.a.b)), _wgslsmith_f_op_f32(ceil(455f)));
}

