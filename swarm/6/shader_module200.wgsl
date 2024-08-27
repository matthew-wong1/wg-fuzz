struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(57235u));

var<private> global1: array<Struct_1, 17>;

var<private> global2: vec4<f32>;

var<private> global3: Struct_2;

var<private> global4: Struct_3 = Struct_3(Struct_2(37769u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global2.xwy);
    global1 = array<Struct_1, 17>();
    var var_1 = Struct_3(arg_0);
    let var_2 = _wgslsmith_f_op_f32(round(-2213f));
    global0 = Struct_3(Struct_2(var_1.a.a ^ (global4.a.a & 0u)));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -157f), _wgslsmith_f_op_f32(global2.x - var_0.x), var_0.x, _wgslsmith_f_op_f32(-157f + -1000f)), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(trunc(400f)), _wgslsmith_f_op_f32(min(-686f, -1179f)))))));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    global0 = Struct_3(Struct_2(global3.a));
    var var_0 = 7676i;
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(global0.a.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-348f, 409f, global2.x, 763f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, 1566f, global2.x, global2.x), vec4<f32>(global2.x, global2.x, 942f, 104f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, global2.x, -595f, global2.x), vec4<f32>(global2.x, global2.x, -1765f, 637f)))))) + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1000f, -1243f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(1u))).x)), -2408f, _wgslsmith_f_op_f32(select(global2.x, 651f, arg_0)), global2.x)));
    let var_1 = !select(select(select(select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), arg_0), vec3<bool>(arg_0, arg_0, false)), !select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, true), vec3<bool>(false, true, true)), true), !(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, true, true), true)), !select(vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, arg_0), false), true));
    var var_2 = true;
    return var_1;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> vec2<bool> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(~(vec2<u32>(global4.a.a, 10393u) ^ vec2<u32>(4294967295u, arg_0.x)), arg_0.yx)));
    global2 = _wgslsmith_f_op_vec4_f32(func_3(Struct_2(1u)));
    let var_1 = Struct_2(firstLeadingBit(_wgslsmith_clamp_u32(global3.a, min(abs(22673u), 52273u ^ arg_0.x), ~0u)));
    global3 = Struct_2(~(~min(~2366u, var_0.a.a)));
    global0 = Struct_3(Struct_2(var_0.a.a));
    return vec2<bool>(all(select(select(arg_2.c, !vec2<bool>(arg_2.c.x, false), true), vec2<bool>(false, !arg_2.a), vec2<bool>(true, true))), (arg_2.a && (171f <= _wgslsmith_f_op_vec4_f32(func_3(Struct_2(45215u))).x)) & true);
}

fn func_1(arg_0: u32, arg_1: i32) -> vec3<bool> {
    global4 = Struct_3(Struct_2(1u));
    let var_0 = 1i;
    let var_1 = !func_4(select(vec3<u32>(_wgslsmith_add_u32(global0.a.a, u_input.a), global4.a.a, countOneBits(1582u)), ~abs(vec3<u32>(global3.a, u_input.a, global0.a.a)), select(func_2(true), vec3<bool>(true, true, true), true)), Struct_2(~global0.a.a), global1[_wgslsmith_index_u32(firstLeadingBit(~4294967295u & u_input.a), 17u)], func_2(true).x);
    var var_2 = 5616u;
    var var_3 = Struct_3(Struct_2(reverseBits(4294967295u)));
    return vec3<bool>(var_1.x, var_1.x, !(18550u <= var_3.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~(~(~(vec3<u32>(global3.a, global3.a, global0.a.a) << (vec3<u32>(global0.a.a, global3.a, 1950u) % vec3<u32>(32u))))), (vec3<u32>(0u, global0.a.a, u_input.a) & vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 13207u, global0.a.a), vec3<u32>(7475u, 23736u, 1u)), 4294967295u, 1u)) | vec3<u32>(~(~global4.a.a), 72979u, 4294967295u), !select(func_1(1u, -2147483647i), vec3<bool>(true, true, true), false));
    global2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -770f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2.x, -626f))), global2.x, _wgslsmith_f_op_f32(-1029f * 1000f)))));
    global4 = Struct_3(global0.a);
    var var_1 = select(~(select(vec4<i32>(u_input.b.x, 40950i, -37475i, u_input.b.x), ~vec4<i32>(u_input.b.x, 1i, 8684i, 1i), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, global4.a.a, 0u, global4.a.a) ^ vec4<u32>(global4.a.a, global0.a.a, u_input.a, 1u), vec4<u32>(var_0.x, global0.a.a, global0.a.a, global3.a)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(364i, u_input.b.x), u_input.b), vec2<i32>(u_input.b.x, 0i), u_input.b & vec2<i32>(u_input.b.x, 0i)), u_input.b), ~_wgslsmith_sub_i32(18854i, 2147483647i) >> (global0.a.a % 32u), u_input.b.x, -_wgslsmith_dot_vec2_i32(u_input.b, -u_input.b)), false);
    var var_2 = select(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), vec3<bool>(!func_4(_wgslsmith_sub_vec3_u32(var_0, var_0), Struct_2(18319u), Struct_1(false, -1768f, vec2<bool>(true, false)), func_2(false).x).x, true, false), all(vec3<bool>(~global4.a.a <= global0.a.a, u_input.b.x <= -u_input.b.x, true)));
    var var_3 = !(!vec3<bool>(var_2.x != var_2.x, !var_2.x, _wgslsmith_f_op_f32(trunc(global2.x)) > _wgslsmith_f_op_f32(round(-692f))));
    global4 = Struct_3(global4.a);
    var var_4 = Struct_1(func_1(~global0.a.a, -_wgslsmith_mult_i32(~u_input.b.x, min(1i, -2147483647i))).x, -1000f, !(!vec2<bool>(global0.a.a < 0u, all(var_2.yy))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(_wgslsmith_div_i32(0i, var_1.x), 0i, _wgslsmith_dot_vec3_i32(var_1.wzy, vec3<i32>(var_1.x, u_input.b.x, u_input.b.x)), 1i), ~(vec4<i32>(-1i, 2147483647i, 1i, -5249i) & vec4<i32>(var_1.x, u_input.b.x, -19894i, -1i))) << (vec4<u32>(global0.a.a, 4294967295u, _wgslsmith_sub_u32(reverseBits(var_0.x), global0.a.a), reverseBits(~var_0.x)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.b), _wgslsmith_f_op_f32(-var_4.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(var_0.x))).x)), ~var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1783f) + -1023f));
}

