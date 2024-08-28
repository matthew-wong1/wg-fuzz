struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31>;

var<private> global1: f32 = 145f;

var<private> global2: Struct_2;

var<private> global3: array<i32, 30>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec4<i32>) -> bool {
    let var_0 = arg_0;
    global0 = array<vec2<bool>, 31>();
    var var_1 = var_0;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(696f * -565f)))))));
    let var_2 = Struct_1(all(select(select(select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(true, arg_1.x, true), arg_1), arg_1, arg_1.x | false), vec3<bool>(false, !arg_1.x, !arg_1.x), vec3<bool>(!arg_1.x, true, true))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(425f, 280f), vec2<f32>(154f, -496f), arg_1.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-810f, 975f), vec2<f32>(-123f, 420f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-642f, -288f))))))), arg_1.x, arg_1.x);
    return false;
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1668f, -1222f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1408f, -252f)), _wgslsmith_f_op_f32(sign(-1215f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, 1591f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -643f, 756f)))))));
    global3 = array<i32, 30>();
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, -288f, _wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_1.x, -624f))), vec3<f32>(-719f, var_0.x, 1475f))))), vec3<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + -434f)))), -1694f, _wgslsmith_f_op_f32(f32(-1f) * -269f)));
    var var_2 = Struct_1(all(vec2<bool>(all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(var_1.zx)), var_1.zz))))), any(vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), any(vec4<bool>(false, false, true, true)), !any(global0[_wgslsmith_index_u32(4294967295u, 31u)]), !all(vec2<bool>(false, false)))), true);
    return ~1u;
}

fn func_1() -> Struct_1 {
    let var_0 = -(select(-(vec4<i32>(u_input.b, 2147483647i, 0i, u_input.b) & vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 30u)], -2147483647i, -34783i, u_input.b)), firstLeadingBit(vec4<i32>(36953i, u_input.b, 49219i, global3[_wgslsmith_index_u32(global2.a.x, 30u)])), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)) | ~(-vec4<i32>(2147483647i, u_input.b, 959i, u_input.b) & (vec4<i32>(u_input.b, global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(4294967295u, 30u)], u_input.b) ^ vec4<i32>(2147483647i, -1i, 294i, -2147483647i))));
    var var_1 = Struct_1(!all(global0[_wgslsmith_index_u32(~(20785u ^ global2.a.x), 31u)]), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1146f, -745f) + vec2<f32>(1288f, -695f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(952f, 978f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-960f, -1000f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(217f, 707f), vec2<f32>(-1476f, -1000f), false)))))), all(vec2<bool>(any(vec2<bool>(false, true)), false)), true);
    global0 = array<vec2<bool>, 31>();
    let var_2 = Struct_1(false || !(!var_1.c), var_1.b, func_2(Struct_2(~global2.a), !(!vec3<bool>(false, var_1.a, var_1.d)), vec4<i32>(u_input.b, -global3[_wgslsmith_index_u32(57653u, 30u)], u_input.b ^ 19845i, ~u_input.b)) && var_1.a, all(!global0[_wgslsmith_index_u32(func_3(u_input.a, var_0.xzw, _wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, u_input.a, 27724u), vec4<u32>(u_input.a, u_input.a, 76096u, global2.a.x)), Struct_2(vec2<u32>(global2.a.x, 22829u))), 31u)]));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 31>();
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-188f, 909f))))))));
    var var_1 = func_1();
    global1 = _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1321f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x))) * _wgslsmith_f_op_f32(trunc(var_1.b.x))));
    global2 = Struct_2(max(vec2<u32>(~global2.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 12143u, 21529u, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global2.a.x, 1192u, 1u), vec4<u32>(u_input.a, 0u, global2.a.x, global2.a.x), vec4<u32>(global2.a.x, 0u, 20496u, 15346u)))), vec2<u32>(~(u_input.a & global2.a.x), 31294u)));
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec2<i32>(1i, -1i)) << (firstLeadingBit(select(global2.a, vec2<u32>(u_input.a, 1u), select(vec2<bool>(var_1.c, var_1.c), global0[_wgslsmith_index_u32(4294967295u, 31u)], true))) % vec2<u32>(32u)), -_wgslsmith_add_i32(global3[_wgslsmith_index_u32(u_input.a, 30u)] | 2147483647i, global3[_wgslsmith_index_u32(53446u, 30u)]));
}

