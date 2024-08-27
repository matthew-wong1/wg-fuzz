struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1256f);

var<private> global1: array<i32, 22>;

var<private> global2: vec4<f32> = vec4<f32>(-978f, -624f, -2344f, -882f);

var<private> global3: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<i32>) -> vec3<bool> {
    global3 = array<vec3<bool>, 29>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + 287f);
    let var_1 = !vec2<bool>(arg_1.a.x, any(!vec4<bool>(arg_1.a.x, arg_1.a.x, true, true)));
    let var_2 = 23062i;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.e)), arg_1.e) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.a, arg_1.e.x), global2.zy)), global2.yy)))));
    return select(!(!global3[_wgslsmith_index_u32(~arg_1.d, 29u)]), !(!vec3<bool>(true, true, all(vec3<bool>(true, false, true)))), false);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    let var_0 = -arg_1.yx;
    var var_1 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, false, true), true, global1[_wgslsmith_index_u32(28777u, 22u)] < -28868i, select(true, false, false)), !(global1[_wgslsmith_index_u32(0u, 22u)] < var_0.x)), vec4<bool>(any(!global3[_wgslsmith_index_u32(u_input.c, 29u)]), !any(func_3(Struct_2(-1291f), Struct_1(vec2<bool>(true, false), arg_1.x, u_input.a, 50684u, vec2<f32>(global2.x, 361f)), arg_2, vec3<i32>(-1i, 0i, arg_1.x))), any(vec4<bool>(true, true, true, true)) || all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false))), any(vec4<bool>(true, true, true, true)) | !all(vec2<bool>(false, true))), vec4<bool>(true, true, true, true));
    let var_2 = global2.x;
    var_1 = select(!select(vec4<bool>(!var_1.x, true, any(vec4<bool>(var_1.x, false, var_1.x, true)), var_1.x), !select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false)), select(!vec4<bool>(var_1.x, false, var_1.x, var_1.x), select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, true)), all(vec3<bool>(false, var_1.x, var_1.x)))), select(select(!vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, any(vec3<bool>(var_1.x, false, true)), var_1.x, true), !var_1.x), select(vec4<bool>(all(vec4<bool>(var_1.x, false, var_1.x, var_1.x)), select(var_1.x, false, false), var_1.x, var_1.x), select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, false), var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x)), true), !any(var_1.zx)), !select(vec4<bool>(all(global3[_wgslsmith_index_u32(36031u, 29u)]), select(var_1.x, var_1.x, true), var_1.x, false), select(select(vec4<bool>(true, true, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, var_1.x)), vec4<bool>(true, true, true, true), !vec4<bool>(true, var_1.x, var_1.x, var_1.x)), vec4<bool>(u_input.c > arg_0.x, var_1.x, var_1.x, true)));
    var_1 = vec4<bool>(any(vec4<bool>(var_1.x, false && (false != var_1.x), var_1.x, !all(vec4<bool>(true, false, false, var_1.x)))), !(_wgslsmith_f_op_f32(min(-384f, -838f)) != global2.x), any(!select(func_3(arg_2, Struct_1(var_1.xx, arg_1.x, u_input.a, u_input.c, vec2<f32>(global2.x, 1517f)), Struct_2(1110f), vec3<i32>(var_0.x, arg_1.x, -1i)), func_3(arg_2, Struct_1(var_1.zw, u_input.a, arg_1.x, u_input.b, global2.yw), Struct_2(global0.a), arg_1), vec3<bool>(true, var_1.x, var_1.x))), false);
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: f32) -> vec3<i32> {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~1u), 1648u, u_input.c), vec3<u32>(select(u_input.b, 30980u, true), _wgslsmith_mod_u32(0u, u_input.b), 1u));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-903f, -255f) + global0.a));
    global3 = array<vec3<bool>, 29>();
    var var_2 = max(~u_input.d, _wgslsmith_clamp_u32(firstLeadingBit(firstTrailingBit(56878u)), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1u, 6714u), select(vec3<u32>(48967u, u_input.c, 0u), vec3<u32>(u_input.d, 61471u, 4294967295u), arg_0.x))) & (45673u | u_input.c));
    var_2 = ~max(u_input.b >> ((var_0 & (9942u >> (1u % 32u))) % 32u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~28359u, min(4294967295u, u_input.d), firstLeadingBit(u_input.b)), ~1u >> (select(49277u, 5471u, true) % 32u)));
    return abs(vec3<i32>(_wgslsmith_mult_i32(u_input.a, 2147483647i), global1[_wgslsmith_index_u32(~(~var_0), 22u)] & 4248i, -(~_wgslsmith_add_i32(0i, global1[_wgslsmith_index_u32(var_0, 22u)]))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * global2.x);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(global0.a - global2.x));
    let var_2 = _wgslsmith_dot_vec3_i32(~(-vec3<i32>(global1[_wgslsmith_index_u32(u_input.c, 22u)], u_input.a, u_input.a)) & func_4(vec3<bool>(false, func_2(vec3<u32>(u_input.d, 3280u, u_input.c), vec3<i32>(-1i, global1[_wgslsmith_index_u32(u_input.d, 22u)], u_input.a), Struct_2(224f)), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.wx)), _wgslsmith_f_op_f32(-1f)), vec3<i32>(~(-2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, ~u_input.c, u_input.c), 22u)], _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, -2147483647i), ~2147483647i), -41326i)));
    let var_3 = Struct_1(vec2<bool>(all(select(func_3(Struct_2(452f), Struct_1(vec2<bool>(false, false), u_input.a, 0i, u_input.c, vec2<f32>(1000f, global0.a)), Struct_2(global0.a), vec3<i32>(global1[_wgslsmith_index_u32(0u, 22u)], u_input.a, var_2)).xx, vec2<bool>(true, true), true)), any(vec2<bool>(false, false)) & any(vec2<bool>(true, true))), firstLeadingBit(_wgslsmith_div_i32(-1i, u_input.a)), 0i, 73220u, vec2<f32>(_wgslsmith_f_op_f32(-976f * _wgslsmith_f_op_f32(f32(-1f) * -1814f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f))));
    global0 = var_1;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_2(-472f);
    var var_2 = -(-20602i << (_wgslsmith_div_u32(abs(u_input.c), u_input.b) % 32u));
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_0.d), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(0u, 63982u, 5800u, var_0.d), vec4<u32>(u_input.c, u_input.c, u_input.c, 50476u), vec4<bool>(true, false, var_0.a.x, var_0.a.x)), vec4<u32>(~var_0.d, var_0.d, var_0.d, var_0.d)), 22u)], global1[_wgslsmith_index_u32(0u, 22u)]), _wgslsmith_f_op_f32(max(var_1.a, global0.a)), global1[_wgslsmith_index_u32(~max(~u_input.b, 49255u), 22u)], global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(9404u, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 0u), ~vec2<u32>(4294967295u, 17927u)))), 22u)]);
}

