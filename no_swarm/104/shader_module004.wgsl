struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(221f, 1555f, -1406f, 655f);

var<private> global1: array<bool, 1> = array<bool, 1>(false);

var<private> global2: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-2266f, -773f), vec2<f32>(-1268f, -812f), vec2<f32>(-119f, 972f), vec2<f32>(1000f, -337f), vec2<f32>(-143f, -150f), vec2<f32>(-1000f, 761f), vec2<f32>(703f, 657f), vec2<f32>(-1197f, -605f), vec2<f32>(258f, 1234f), vec2<f32>(-680f, -388f), vec2<f32>(-565f, -204f), vec2<f32>(318f, 2009f), vec2<f32>(565f, 789f), vec2<f32>(-389f, -1716f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = false;
    let var_1 = u_input.e;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.b.x)), ~abs(~vec4<u32>(29470u, 0u, u_input.b.x, 4294967295u))) | ~4294967295u, 1u)];
    var var_3 = u_input.e;
    let var_4 = !select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u >> (u_input.a.x % 32u), 1u)] & (8979u <= u_input.d.x), true, all(select(vec2<bool>(global1[_wgslsmith_index_u32(9815u, 1u)], global1[_wgslsmith_index_u32(u_input.c.x, 1u)]), vec2<bool>(true, false), global1[_wgslsmith_index_u32(u_input.a.x, 1u)])), !(u_input.e < var_1)), select(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(3167u, 1u)], true), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 1u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 1u)], true)), !(global1[_wgslsmith_index_u32(u_input.a.x, 1u)] || false)), global1[_wgslsmith_index_u32(u_input.c.x, 1u)]);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * -663f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec2<f32>(1218f, arg_0.d))), _wgslsmith_f_op_f32(floor(1356f))))) + 293f), -1222f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d))));
    var var_0 = ~((vec4<u32>(~63178u, u_input.d.x, 1u, ~arg_0.b) | (u_input.d >> ((vec4<u32>(u_input.d.x, 0u, u_input.b.x, arg_0.b) & u_input.b) % vec4<u32>(32u)))) | min(vec4<u32>(~arg_0.b, arg_0.b ^ 0u, _wgslsmith_clamp_u32(arg_0.a, 21221u, u_input.c.x), select(30161u, 34605u, arg_0.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.a.x, arg_0.a, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a, arg_0.b, 22129u, 1u), vec4<u32>(u_input.b.x, u_input.d.x, 67600u, 7932u)))));
    let var_1 = vec2<i32>(~1i, 9564i);
    let var_2 = firstLeadingBit(-var_1.x);
    let var_3 = arg_0;
    return ~u_input.b.x;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    global2 = array<vec2<f32>, 14>();
    let var_0 = arg_2.c.x;
    let var_1 = select(~(~(~vec3<u32>(arg_2.b, arg_2.b, 1u))), _wgslsmith_mult_vec3_u32(u_input.b.yyy, ~u_input.d.yyy), vec3<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, global1[_wgslsmith_index_u32(arg_2.b, 1u)], false), vec3<bool>(var_0, global1[_wgslsmith_index_u32(u_input.c.x, 1u)], true))), true, false));
    var var_2 = arg_1;
    var var_3 = arg_1;
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(select(arg_1.a, 4294967295u, arg_1.c.x), arg_1.a)), min(~vec2<u32>(4294967295u, ~36312u), vec2<u32>(arg_1.b, arg_1.a ^ 0u)));
    global2 = array<vec2<f32>, 14>();
    var var_1 = Struct_1(arg_1.b, ~firstTrailingBit(u_input.c.x), select(select(select(arg_1.c, !vec3<bool>(global1[_wgslsmith_index_u32(arg_1.a, 1u)], true, false), any(vec4<bool>(global1[_wgslsmith_index_u32(28009u, 1u)], false, false, false))), vec3<bool>(false, arg_1.c.x, u_input.e != u_input.e), global1[_wgslsmith_index_u32(u_input.c.x, 1u)]), arg_1.c, select(arg_1.c, select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 1u)], arg_1.c.x, false), select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(57996u, 1u)]), arg_1.c, vec3<bool>(arg_1.c.x, global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(20190u, 1u)])), arg_1.c), select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(var_0, 1u)], true), vec3<bool>(true, arg_1.c.x, arg_1.c.x), arg_1.c.x), !arg_1.c, !global1[_wgslsmith_index_u32(arg_1.a, 1u)]))), 189f);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_0.a, 1530f, -1095f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, global0.x, 242f, -900f), vec4<f32>(866f, -484f, -681f, -218f))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(3559f, 130f, var_1.d, -1030f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, -2122f, 1864f, 689f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(446f, arg_0.a, -440f, 1190f) * vec4<f32>(-220f, global0.x, 844f, arg_0.a))) * vec4<f32>(arg_0.a, 729f, _wgslsmith_f_op_f32(-987f - 593f), _wgslsmith_f_op_f32(-461f * -1796f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.a, var_1.d, 448f, -1200f), vec4<f32>(global0.x, 1017f, arg_1.d, arg_1.d))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_1.d, arg_1.d, 1000f))))));
    var var_3 = _wgslsmith_div_f32(var_2.x, -793f);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_1.d * var_1.d), _wgslsmith_f_op_f32(f32(-1f) * -761f), _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(select(arg_1.d, 174f, var_1.c.x)))))));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, -238f, global0.x)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 1245f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1528f, global0.x, -673f, var_0.x) + vec4<f32>(-670f, -409f, -520f, -420f))))) + _wgslsmith_f_op_vec4_f32(func_5(func_4(func_2(Struct_1(4294967295u, 4294967295u, vec3<bool>(false, arg_0, global1[_wgslsmith_index_u32(u_input.c.x, 1u)]), global0.x)), Struct_2(var_0.x), Struct_1(0u, 0u, vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], false, false), var_0.x)), Struct_1(11822u & u_input.a.x, u_input.d.x | 7870u, vec3<bool>(arg_0, false, true), _wgslsmith_div_f32(-454f, -1031f))))));
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 1>();
    let var_0 = vec3<bool>(false, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c.x, 7781u), 1u) << (~select(u_input.c.x, 15775u, true) % 32u), 1u)] && false, !(!global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u ^ u_input.b.x, _wgslsmith_mod_u32(u_input.a.x, 0u)), 1u)]));
    var var_1 = global1[_wgslsmith_index_u32(16648u, 1u)];
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(global0.x, global0.x)));
    global1 = array<bool, 1>();
    var_2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(442f, 580f)) + var_2.a) + -1000f));
}

