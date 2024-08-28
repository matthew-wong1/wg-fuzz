struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: Struct_1;

var<private> global2: bool = true;

var<private> global3: vec3<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<u32> {
    global2 = all(select(select(!(!vec4<bool>(arg_0.x, arg_0.x, global1.b.x, arg_0.x)), vec4<bool>(true, global1.b.x, true, false), select(arg_0, vec4<bool>(true, false, global1.b.x, false), !vec4<bool>(false, false, global1.b.x, arg_0.x))), vec4<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 19717u, global3.x, 1u), vec4<u32>(59466u, u_input.b, u_input.b, 18960u)) >= (u_input.b & 92172u), true, true, 41446u < firstTrailingBit(0u)), any(vec2<bool>(global1.d != global1.d, !arg_0.x))));
    global3 = vec3<u32>(_wgslsmith_div_u32(u_input.b, global3.x), max(~abs(28133u), _wgslsmith_add_u32(78378u, global3.x >> (0u % 32u))), 803u) | abs(~(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 41213u), vec3<u32>(u_input.b, 0u, 1u)) | min(vec3<u32>(56826u, global3.x, u_input.d), vec3<u32>(10891u, 4294967295u, global3.x))));
    var var_0 = Struct_2(global1.b.xz, 0u, global0[_wgslsmith_index_u32(~(~39587u), 25u)], select(!vec3<bool>(true, all(arg_0), arg_0.x), arg_0.zyy, false));
    let var_1 = Struct_2(var_0.c.b.yz, var_0.b, Struct_1(global1.e.zyy, vec3<bool>(true, global1.b.x, false), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -702f), -915f), global1.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-193f, var_0.c.a.x, global1.a.x, 992f) + vec4<f32>(var_0.c.e.x, -1220f, 332f, -1211f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global1.e))))), var_0.d);
    global2 = all(select(vec3<bool>(!global1.b.x, select(!var_1.c.b.x, true, all(arg_0)), global1.b.x), var_1.c.b, var_1.c.b));
    return vec3<u32>(min(_wgslsmith_mod_u32(global3.x ^ global3.x, firstTrailingBit(953u)), firstTrailingBit(~(~var_1.b))), _wgslsmith_clamp_u32(abs(1u), 4294967295u, 21224u), _wgslsmith_sub_u32(select(~(~global3.x), ~(~1u), global1.b.x), var_1.b));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> u32 {
    let var_0 = ~(-2147483647i);
    var var_1 = _wgslsmith_div_vec3_u32(func_3(!select(vec4<bool>(arg_1.b.x, global1.b.x, true, false), vec4<bool>(false, global1.b.x, arg_1.b.x, arg_1.b.x), false)), reverseBits(abs(vec3<u32>(u_input.b, u_input.d, ~9453u))));
    let var_2 = var_1.x;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(1401f, arg_1.a.x))), _wgslsmith_f_op_f32(-arg_1.c.x), arg_1.a.x) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.e.xyx * vec3<f32>(866f, -1000f, 1000f)))))), !select(select(select(vec3<bool>(true, false, true), vec3<bool>(global1.b.x, arg_1.b.x, false), false), !arg_1.b, !global1.b.x), select(vec3<bool>(true, arg_1.b.x, arg_1.b.x), arg_1.b, true), arg_1.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.zx * vec2<f32>(599f, global1.c.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e.x, arg_1.c.x) * _wgslsmith_f_op_vec2_f32(-global1.a.yy))) + arg_1.a.yx), -arg_2 << (~0u % 32u), global1.e);
    var var_4 = Struct_2(arg_1.b.yz, 25012u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, var_1.x, abs(0u)), ~vec3<u32>(global3.x, 1u, 19103u)) >> (1u % 32u), 25u)], select(select(arg_1.b, vec3<bool>(true, true, global1.b.x), !(global1.b.x == arg_1.b.x)), !(!(!vec3<bool>(arg_1.b.x, var_3.b.x, arg_1.b.x))), vec3<bool>(true, any(select(global1.b, vec3<bool>(global1.b.x, var_3.b.x, false), var_3.b)), false)));
    return ~var_4.b << (var_1.x % 32u);
}

fn func_1() -> Struct_2 {
    let var_0 = select(vec3<bool>(u_input.b >= 50794u, global1.b.x, true), select(!select(select(global1.b, vec3<bool>(global1.b.x, global1.b.x, global1.b.x), false), global1.b, true), global1.b, global1.b), _wgslsmith_div_u32(func_2(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, global3.x, u_input.d, 63942u), vec4<u32>(23090u, 75122u, u_input.d, 1u)), global0[_wgslsmith_index_u32(4294967295u, 25u)], i32(-1i) * -2147483647i), ~1u) < ~(~4294967295u));
    var var_1 = Struct_2(global1.b.zy, select(firstLeadingBit(firstTrailingBit(u_input.b)), u_input.d, !(!(!var_0.x))), global0[_wgslsmith_index_u32(global3.x, 25u)], global1.b);
    var_1 = Struct_2(vec2<bool>(var_0.x, any(vec3<bool>(var_0.x, false, global1.b.x))), 1u, global0[_wgslsmith_index_u32(1u, 25u)], !(!select(!var_1.d, select(var_1.d, var_0, false), vec3<bool>(false, var_1.d.x, var_0.x))));
    let var_2 = (vec4<u32>(1u, _wgslsmith_add_u32(firstTrailingBit(49748u), 1u), firstTrailingBit(global3.x ^ 4294967295u), 61561u & firstTrailingBit(global3.x)) & vec4<u32>(1u, select(firstLeadingBit(global3.x), 11694u, true), 37719u, max(~13656u, ~1u))) ^ vec4<u32>(~u_input.d, ~0u, ~(~1u), _wgslsmith_add_u32(~global3.x | 59562u, global3.x));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-457f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), global1.a.x)), _wgslsmith_f_op_f32(step(global1.e.x, 271f))));
    return Struct_2(!select(var_0.xz, !var_1.c.b.zx, vec2<bool>(!global1.b.x, false)), firstLeadingBit(func_2(var_2, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.e.x, 323f, 1341f)), !var_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1338f, var_3) + vec2<f32>(var_3, 178f)), global1.d << (63471u % 32u), vec4<f32>(539f, 1000f, -1229f, global1.e.x)), -2147483647i)), var_1.c, !(!vec3<bool>(false, 12444i == u_input.c, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1.b.yy, 36611u, Struct_1(_wgslsmith_f_op_vec3_f32(floor(global1.e.xxw)), vec3<bool>(all(global1.b) && !global1.b.x, global1.b.x, global3.x > _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, 1u, 40265u), vec4<u32>(29779u, 34121u, 69031u, 0u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.c.x, global1.a.x), vec2<f32>(665f, global1.c.x), global1.b.x)))), -u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.e, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-785f, -338f, global1.c.x, 640f))), global1.c.x < 1949f)))), !vec3<bool>(all(select(vec4<bool>(true, false, true, global1.b.x), vec4<bool>(true, global1.b.x, global1.b.x, false), global1.b.x)), global1.b.x, true));
    var_0 = func_1();
    global2 = select(true == global1.b.x, all(func_1().c.b), ~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, global3.x, var_0.b), vec3<u32>(39588u, global3.x, 1u))) < _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global3.x, global3.x, 1u, u_input.b)), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(1u, 0u, u_input.b, global3.x)), vec4<u32>(global3.x, u_input.d, var_0.b, 1u))));
    global0 = array<Struct_1, 25>();
    var var_1 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.e, firstLeadingBit(var_0.c.d), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a, abs(abs(vec2<i32>(-671i, var_1.d)))), -max(vec2<i32>(1i, 1i), u_input.a)), 257f, 30854i);
}

