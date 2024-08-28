struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: Struct_1 = Struct_1(0u, 0i, 1495f, vec3<u32>(4294967295u, 1u, 33674u), vec3<f32>(-461f, 851f, -278f));

var<private> global2: Struct_1 = Struct_1(29544u, 1i, 2432f, vec3<u32>(4294967295u, 1u, 1u), vec3<f32>(530f, -572f, -309f));

var<private> global3: array<Struct_1, 18>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: i32, arg_3: u32) -> f32 {
    var var_0 = select(global2.d, max(vec3<u32>(~0u, ~arg_0, u_input.a), ~(~global2.d)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, false, false))))) | vec3<u32>(max(_wgslsmith_div_u32(37796u, _wgslsmith_sub_u32(u_input.a, 0u)), 52633u), _wgslsmith_add_u32(~(~global2.d.x), 1u), 4294967295u);
    var var_1 = global3[_wgslsmith_index_u32(42618u, 18u)];
    let var_2 = true;
    var var_3 = countOneBits(vec3<i32>(-1i, -_wgslsmith_div_i32(global2.b, -2147483647i), global1.b)) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, abs(var_1.d.x), reverseBits(var_0.x)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.d.x, 1u, arg_3), var_1.d << (var_1.d % vec3<u32>(32u)))) % vec3<u32>(32u));
    var var_4 = Struct_1(4294967295u, 9746i, _wgslsmith_div_f32(1173f, arg_1.x), global2.d, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.xwy), vec3<f32>(arg_1.x, -779f, _wgslsmith_f_op_f32(round(arg_1.x))))));
    return -269f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(6527u, arg_0.b | ~_wgslsmith_dot_vec2_i32(-vec2<i32>(global2.b, global1.b), _wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(54945u, 12u)], global1.b), vec2<i32>(-2147483647i, global1.b))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0.e.x, global1.c)), _wgslsmith_f_op_f32(arg_0.e.x * -2074f), true)), 937f), _wgslsmith_f_op_f32(func_2(abs(max(0u, u_input.a)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.c, arg_1.c, global2.e.x, -811f))), 1i, 53792u)))), select(_wgslsmith_mod_vec3_u32(~arg_1.d, vec3<u32>(~global1.a, arg_0.d.x, arg_1.a)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, max(u_input.a, arg_0.a), _wgslsmith_dot_vec2_u32(global2.d.zy, vec2<u32>(0u, arg_1.a))), global1.d & firstTrailingBit(vec3<u32>(4294967295u, arg_0.a, 4294967295u))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<f32>(-152f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * _wgslsmith_f_op_f32(f32(-1f) * -1954f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-442f - arg_0.e.x)))));
    var var_1 = all(select(select(vec2<bool>(false, false), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(33517i < global0[_wgslsmith_index_u32(arg_1.a, 12u)], 424f >= var_0.c)), all(vec2<bool>(true, false)) & false));
    let var_2 = Struct_1(arg_1.d.x, 2147483647i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(116235u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, var_0.c, var_0.c, global2.e.x), vec4<f32>(var_0.c, -302f, 354f, -2019f)))), _wgslsmith_sub_i32(arg_1.b, 29032i), ~40180u)), _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-158f, 616f)))), true)), vec3<u32>(_wgslsmith_sub_u32(arg_0.a, ~1u), ~firstTrailingBit(~global1.d.x), 1u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(354f, _wgslsmith_f_op_f32(f32(-1f) * -4028f), -187f))), var_0.e));
    global0 = array<i32, 12>();
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.c))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(798f)))), arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1644f));
    return ~(~3112u);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    global3 = array<Struct_1, 18>();
    global2 = Struct_1(global2.a, global1.b, _wgslsmith_f_op_f32(-255f - _wgslsmith_f_op_f32(-global2.e.x)), global2.d, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-863f)))), _wgslsmith_f_op_f32(-703f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.e.x, -148f) * _wgslsmith_f_op_f32(step(arg_2.e.x, 1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(arg_2.e.x, global1.c)), _wgslsmith_f_op_f32(func_2(firstLeadingBit(1u), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.e.x, -542f, arg_1, arg_1), vec4<f32>(-1262f, -658f, 1000f, 491f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, u_input.a, global1.a, global2.d.x), vec4<u32>(4294967295u, 1u, global1.d.x, global1.a)), 12u)], min(4294967295u, 0u))))));
    global3 = array<Struct_1, 18>();
    global0 = array<i32, 12>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -427f)));
    return Struct_1(func_3(arg_2, Struct_1(4294967295u, global2.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(func_2(1u, vec4<f32>(1200f, global1.e.x, global1.e.x, arg_1), global0[_wgslsmith_index_u32(arg_2.a, 12u)], arg_2.d.x)))), ~min(vec3<u32>(0u, 52203u, u_input.a), vec3<u32>(5796u, arg_2.a, u_input.a)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(192f, -552f, 696f)))))), _wgslsmith_div_i32(arg_2.b, global2.b), arg_1, global1.d, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1493f * -113f), _wgslsmith_f_op_f32(arg_2.e.x - 758f))), global1.c, _wgslsmith_f_op_f32(trunc(var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-272f, var_0, -167f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(select(all(vec4<bool>(false, false, false, true)), true, global2.b <= abs(2147483647i)) & false, -309f, Struct_1(4294967295u, 2147483647i, 205f, global1.d, vec3<f32>(1850f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -774f), -450f)), 322f)));
    var var_0 = ~3147u;
    let var_1 = global2.c;
    var var_2 = u_input.a;
    let var_3 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(func_1(true, _wgslsmith_f_op_f32(max(global2.e.x, 119f)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.d.x, global2.a), 18u)]).a, 49677u, 4294967295u, ~(~0u)), countOneBits(countOneBits(firstLeadingBit(vec4<u32>(u_input.a, 24910u, global1.a, u_input.a))))), 18u)];
    let var_4 = 1u;
    global3 = array<Struct_1, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(min(-_wgslsmith_clamp_vec3_i32(~vec3<i32>(global2.b, global1.b, -2147483647i), -vec3<i32>(global2.b, -2147483647i, -29952i), vec3<i32>(-41636i, 19920i, var_3.b)), vec3<i32>(-13882i, -(29440i >> (var_3.d.x % 32u)), global1.b >> (global2.d.x % 32u))), vec2<i32>(abs(_wgslsmith_sub_i32(global1.b | 38626i, 1i)), -(~_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(23412u, 12u)], global0[_wgslsmith_index_u32(global1.d.x, 12u)]))));
}

