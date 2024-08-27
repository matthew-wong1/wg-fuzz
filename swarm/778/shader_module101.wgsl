struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: array<vec2<i32>, 17>;

var<private> global2: f32 = 852f;

var<private> global3: Struct_2;

var<private> global4: vec2<u32> = vec2<u32>(33355u, 3430u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_1) -> vec4<u32> {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.d.c.x, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.a - global3.d.a)))));
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-697f)), arg_0.x));
    let var_0 = u_input.e.zx;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.d.c));
    return vec4<u32>(var_0.x, min(global4.x << (~_wgslsmith_mod_u32(4294967295u, var_0.x) % 32u), _wgslsmith_div_u32(~_wgslsmith_clamp_u32(0u, 22213u, 1u), ~u_input.d)), _wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(~abs(61600u), min(global4.x << (global3.c.x % 32u), global4.x))), ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(global3.a, ~global3.c)));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    global0 = vec3<bool>(any(select(vec3<bool>(true, u_input.b.x < u_input.b.x, false), select(vec3<bool>(false, arg_0, global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, true, true)), true)), global0.x, !(global0.x | false));
    var var_0 = u_input.b.x;
    var var_1 = Struct_2(global3.c, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_2.a)), 730f) * vec2<f32>(_wgslsmith_f_op_f32(max(global3.d.a, 447f)), arg_2.c.x)))), vec4<u32>(1u, _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(71894u << (arg_2.b % 32u), 1935u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(31367u, abs(arg_2.b)), _wgslsmith_sub_u32(0u, _wgslsmith_add_u32(global3.c.x, 0u))), arg_3), global3.d);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b.x * arg_2.c.x))))))), _wgslsmith_dot_vec3_u32(max(abs(var_1.c.xyy), vec3<u32>(global4.x, 28113u | u_input.e.x, ~arg_2.b)), ~(~u_input.e) >> (vec3<u32>(1u, 1u, arg_2.b) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-962f, -1700f, -231f)) * vec3<f32>(-838f, global3.b.x, arg_2.a))), var_1.d.c)));
    var var_3 = Struct_2(~var_1.a << (var_1.a % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -689f), -2113f), vec4<u32>(u_input.d ^ ~(~1u), countOneBits(global4.x), ~49187u, ~32425u), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)), -460f)), _wgslsmith_clamp_u32(~global4.x, _wgslsmith_div_u32(abs(0u), global3.d.b), global4.x), _wgslsmith_f_op_vec3_f32(arg_2.c * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.x, 1000f, -468f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, var_2.a, var_2.a))))));
    return var_2.b;
}

fn func_2(arg_0: vec4<u32>) -> vec4<u32> {
    let var_0 = global3.d;
    let var_1 = vec2<u32>(~arg_0.x, _wgslsmith_sub_u32(0u, global3.c.x));
    global4 = global3.a.wx;
    var var_2 = ~(~(~func_1(vec3<f32>(921f, global3.b.x, global3.b.x), vec2<bool>(global0.x, true), global0.x, Struct_1(var_0.a, 4294967295u, vec3<f32>(global3.b.x, 666f, 757f))).yy) ^ arg_0.wx);
    let var_3 = vec4<u32>(31718u, abs(85482u), 1u & global4.x, ~firstLeadingBit(func_3(global0.x, vec4<u32>(var_0.b, 44537u, arg_0.x, arg_0.x), Struct_1(-1090f, 4294967295u, vec3<f32>(var_0.a, 1596f, var_0.c.x)), 28122u)) | 89213u);
    return vec4<u32>(abs(var_0.b) | arg_0.x, min(96958u, 38674u), ~20220u, func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c + global3.d.c)), var_0.c), !vec2<bool>(!global0.x, all(vec3<bool>(global0.x, global0.x, global0.x))), all(!(!global0.zy)), Struct_1(-443f, abs(var_2.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global3.d.c))))).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.d.c)), !select(global0.zz, global0.xx, true), true, Struct_1(1210f, _wgslsmith_mult_u32(global4.x, 4294967295u), vec3<f32>(global3.d.a, global3.d.a, global3.b.x))));
    var var_1 = global3.d;
    let var_2 = Struct_2(~(~func_2(~global3.a)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(var_1.c.yz)))), global3.a, global3.d);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(trunc(var_2.b.x)), ~global3.c.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(var_2.d.c)))));
    let var_4 = all(!vec4<bool>(all(vec4<bool>(global0.x, false, global0.x, global0.x)), all(global0.yx), true, any(vec2<bool>(global0.x, false))));
    var var_5 = !vec4<bool>(false || var_4, any(select(vec2<bool>(true, true), global0.xy, vec2<bool>(true, true))), false, all(!select(vec4<bool>(false, true, global0.x, true), vec4<bool>(global0.x, var_4, false, true), global0.x)));
    global1 = array<vec2<i32>, 17>();
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(-1153f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.a)) + -501f)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a));
}

