struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: vec4<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn func_3(arg_0: bool) -> i32 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(arg_0, arg_0, arg_0), select(select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(true, false)), arg_0), vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, arg_0), true), vec2<bool>(true, true), vec2<bool>(arg_0, arg_0))), _wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(-84731i), ~2147483647i, u_input.c.x, u_input.a.x), ~vec4<i32>(u_input.c.x, -1i, u_input.a.x, u_input.c.x)), vec3<u32>(~1u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), reverseBits(u_input.b.x), 0u), _wgslsmith_mult_u32(u_input.b.x, ~u_input.b.x))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, global2.x, 1271f, global2.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(362f, global2.x, 378f, global2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-200f, 1000f, global2.x, -208f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-526f, 468f, _wgslsmith_f_op_f32(808f - -870f), _wgslsmith_div_f32(global2.x, -1000f)) * vec4<f32>(406f, _wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(min(-570f, global2.x)), global2.x))));
    var var_1 = ~vec4<u32>(u_input.b.x, ~1u, ~(~18205u), var_0.a.d.x);
    let var_2 = global2.x;
    global1 = 1i;
    return ~firstTrailingBit(-_wgslsmith_div_i32(u_input.a.x, var_0.a.c) & max(_wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(var_0.a.c, u_input.c.x)), _wgslsmith_div_i32(var_0.a.c, 1i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: f32) -> i32 {
    let var_0 = vec3<i32>(func_3(all(vec3<bool>(true, false, false))) >> (~u_input.b.x % 32u), _wgslsmith_mod_i32(arg_2.x, ~2147483647i), ~arg_0.x) | vec3<i32>(abs(arg_2.x), min(~arg_1.x, countOneBits(min(47423i, -1i))), _wgslsmith_div_i32(_wgslsmith_mult_i32(-u_input.a.x, arg_2.x), ~abs(19432i)));
    let var_1 = abs(~vec3<i32>(firstTrailingBit(min(-1i, arg_1.x)), ~_wgslsmith_mult_i32(-7544i, 1i), ~firstLeadingBit(1i)));
    global2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1164f, global2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1183f + 695f))), _wgslsmith_f_op_f32(673f * _wgslsmith_f_op_f32(arg_3 * 1395f)), global2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, 1341f, 116f, arg_3), vec4<f32>(arg_3, 1550f, 833f, -801f), vec4<bool>(false, true, false, false))) - vec4<f32>(arg_3, arg_3, arg_3, arg_3)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(1625f)), _wgslsmith_f_op_f32(1000f - 1795f), _wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_div_f32(global2.x, -1056f)))))));
    let var_2 = Struct_5(-(~(~arg_2.x)), -1736f);
    let var_3 = min(23532i, 7223i);
    return ~arg_1.x;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global0 = _wgslsmith_sub_i32(i32(-1i) * -u_input.a.x, firstTrailingBit(abs(575i)));
    var var_0 = vec2<i32>(-24186i, _wgslsmith_mod_i32(-func_2(-u_input.a.yw, vec4<i32>(u_input.a.x, 29773i, -1i, 55900i), vec4<i32>(u_input.a.x, 40796i, u_input.c.x, 2446i), _wgslsmith_f_op_f32(-760f - -677f)), u_input.c.x));
    global1 = -17238i;
    var var_1 = Struct_2(Struct_1(select(vec3<bool>(arg_0.x, false, true), arg_0.zyw, arg_0.xyy), select(select(vec2<bool>(arg_0.x, arg_0.x), !arg_0.zy, any(vec3<bool>(arg_0.x, false, arg_0.x))), select(select(vec2<bool>(false, arg_0.x), vec2<bool>(true, false), true), select(vec2<bool>(arg_0.x, arg_0.x), arg_0.xy, vec2<bool>(arg_0.x, true)), vec2<bool>(false, true)), !(!arg_0.xy)), -2147483647i << (u_input.b.x % 32u), vec3<u32>(46172u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(12259u, 4294967295u, 0u, u_input.b.x)), vec4<u32>(85793u, u_input.b.x, 20248u, u_input.b.x) << (vec4<u32>(u_input.b.x, 6635u, u_input.b.x, 1u) % vec4<u32>(32u))), firstTrailingBit(~12744u))));
    var_1 = Struct_2(Struct_1(var_1.a.a, vec2<bool>(var_1.a.a.x, true), -(1i << (u_input.b.x % 32u)), vec3<u32>(_wgslsmith_mod_u32(14524u, 4294967295u), countOneBits(~u_input.b.x), 1u)));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~u_input.a.x);
    global2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(966f, 1f), global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -765f), global2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-161f * global2.x)))))));
    let var_1 = vec2<bool>(all(vec3<bool>(true, true, any(vec4<bool>(true, true, true, true)))), true);
    var var_2 = ~vec2<u32>(_wgslsmith_mult_u32(firstLeadingBit(select(48613u, 52772u, false)), u_input.b.x), 0u);
    let var_3 = 4294967295u;
    let var_4 = Struct_4(func_1(!(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, false)))), true, ~var_0, global2.wy);
    var var_5 = Struct_3(var_4.a.a, -firstLeadingBit(firstTrailingBit(u_input.c.zx >> (vec2<u32>(80326u, var_2.x) % vec2<u32>(32u)))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_4.d.x, global2.x, var_4.d.x, global2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(select(select(vec4<bool>(false, false, true, var_5.a.x), vec4<bool>(var_1.x, var_4.a.b.x, var_1.x, var_1.x), !vec4<bool>(var_4.b, var_4.b, true, false)), vec4<bool>(false, var_5.a.x, any(vec3<bool>(false, var_1.x, true)), 279f <= var_4.d.x), select(true, true, true))).d.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, -1206f), _wgslsmith_f_op_vec2_f32(trunc(global2.xx)))))))));
}

