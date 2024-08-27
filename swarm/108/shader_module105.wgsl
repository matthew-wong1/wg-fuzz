struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, 23795u);

var<private> global1: array<i32, 12>;

var<private> global2: array<i32, 25>;

var<private> global3: vec2<u32>;

var<private> global4: vec2<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec2<u32>) -> Struct_1 {
    global1 = array<i32, 12>();
    var var_0 = -631f;
    var var_1 = arg_1.x;
    var var_2 = arg_0.c;
    global2 = array<i32, 25>();
    return Struct_1(67241u, u_input.b.x);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>) -> f32 {
    let var_0 = vec2<i32>(-1i) * -(u_input.c.yz & u_input.c.xz);
    var var_1 = Struct_1(func_2(Struct_2(func_2(Struct_2(arg_0.c, vec3<bool>(arg_0.b.x, true, arg_0.b.x), arg_0.a), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, 526f, 233f, -574f), vec4<f32>(-376f, -2139f, arg_1, arg_1))), ~vec2<u32>(global3.x, 4294967295u)), vec3<bool>(arg_0.b.x, arg_0.b.x, global3.x < 4294967295u), arg_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 137f, arg_1, arg_1) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1715f, arg_1, arg_1))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 309f, arg_1, arg_1))), ~abs(~vec2<u32>(arg_0.a.b, global3.x))).a, ~74776u);
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)), arg_1) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -1534f) - vec3<f32>(439f, arg_1, arg_1)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 760f))))))));
    var_1 = arg_0.a;
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(878f, -1698f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(729f * _wgslsmith_f_op_f32(sign(512f)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-441f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(max(653f, -1061f)), true)))));
    let var_1 = min(global2[_wgslsmith_index_u32(0u, 25u)], global2[_wgslsmith_index_u32(global0.b, 25u)]);
    var var_2 = _wgslsmith_mod_vec4_u32(~(~(vec4<u32>(18337u, u_input.b.x, arg_0.a, 108780u) << ((vec4<u32>(arg_1.c.a, global0.a, global3.x, arg_1.a.b) & vec4<u32>(68438u, 4294967295u, 35775u, 0u)) % vec4<u32>(32u)))), vec4<u32>(~u_input.b.x, _wgslsmith_mult_u32(global3.x, ~1u), global0.b, ~(~1u)));
    global2 = array<i32, 25>();
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(func_2(Struct_2(Struct_1(44611u, arg_0.b), arg_1.b, arg_1.a), vec4<f32>(-1209f, -1344f, var_0.x, var_0.x), vec2<u32>(38657u, global0.b)), select(arg_1.b, arg_1.b, arg_1.b.x), arg_1.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -455f), -177f)), u_input.c)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -498f)))) - _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_2(arg_1.a, arg_1.b, arg_0), _wgslsmith_f_op_f32(trunc(var_0.x)), abs(vec3<i32>(global2[_wgslsmith_index_u32(arg_0.b, 25u)], 2147483647i, global1[_wgslsmith_index_u32(arg_0.b, 12u)]))))))));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(func_2(Struct_2(func_2(Struct_2(Struct_1(arg_1, 27311u), vec3<bool>(false, global4.x, global4.x), Struct_1(4294967295u, global3.x)), vec4<f32>(arg_2.x, -426f, 498f, -1165f), vec2<u32>(global3.x, 20971u)), !vec3<bool>(global4.x, global4.x, global4.x), func_2(Struct_2(Struct_1(arg_0, arg_1), vec3<bool>(global4.x, global4.x, global4.x), Struct_1(u_input.b.x, arg_1)), vec4<f32>(-397f, arg_2.x, -1424f, -152f), vec2<u32>(arg_0, 25867u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-887f, arg_2.x, -905f, -312f)), ~firstTrailingBit(u_input.b.xy)).b, ~global0.b & 65781u), select(vec3<bool>(global4.x, global4.x, false), select(vec3<bool>(u_input.c.x != -27068i, true, any(vec4<bool>(true, true, true, global4.x))), select(!vec3<bool>(true, global4.x, false), select(vec3<bool>(global4.x, global4.x, global4.x), vec3<bool>(global4.x, false, global4.x), true), !vec3<bool>(global4.x, global4.x, global4.x)), global4.x), !vec3<bool>(false, global4.x, any(vec2<bool>(false, global4.x)))), Struct_1(~_wgslsmith_clamp_u32(global0.a | u_input.b.x, _wgslsmith_div_u32(arg_0, global0.b), 47169u), 39359u));
    global3 = vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, 71331u), 43603u);
    let var_1 = u_input.c.xz;
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.b, _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(var_0.c.a, 1u), var_0.c.b), func_2(var_0, vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -1000f), abs(vec2<u32>(80287u, global0.a))).a)), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(1u, arg_0)), _wgslsmith_sub_vec2_u32(abs(~vec2<u32>(1u, u_input.b.x)), vec2<u32>(1u, 4294967295u))), countOneBits(u_input.b.yz));
    var var_3 = select(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(_wgslsmith_div_i32(0i, 1i), 1i, i32(-1i) * -6784i)), min(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], u_input.a, global2[_wgslsmith_index_u32(global0.b, 25u)], -9221i), vec4<i32>(1i, u_input.a, global2[_wgslsmith_index_u32(0u, 25u)], -1i)), ~global1[_wgslsmith_index_u32(7731u, 12u)]), ~(u_input.c.x >> (var_0.c.a % 32u))), -global1[_wgslsmith_index_u32(0u, 12u)]), -vec3<i32>(~u_input.c.x << (_wgslsmith_div_u32(var_2.x, var_2.x) % 32u), -max(88229i, global1[_wgslsmith_index_u32(arg_0, 12u)]), global2[_wgslsmith_index_u32(~(~1u), 25u)]), vec3<bool>(_wgslsmith_dot_vec4_u32(~vec4<u32>(48744u, 68042u, 77612u, var_0.c.b), firstLeadingBit(vec4<u32>(var_2.x, arg_0, 0u, 76692u))) <= arg_1, var_0.b.x, false));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(95u, _wgslsmith_mod_u32(5600u, ~1u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-426f + -722f), _wgslsmith_f_op_f32(f32(-1f) * -794f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(global3.x, 1u), Struct_2(Struct_1(1u, global3.x), vec3<bool>(global4.x, global4.x, global4.x), Struct_1(22661u, global0.b))))), 1f), global4.x)));
    global0 = func_4(~abs(global3.x), 1u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(107f, -761f)) * vec2<f32>(1000f, -157f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1766f, 929f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1442f, -383f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(569f, 464f), vec2<f32>(-633f, 959f), true)))), global4.x)), global4.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1741f)), _wgslsmith_f_op_f32(func_1(func_2(Struct_2(Struct_1(0u, var_0.b), vec3<bool>(global4.x, true, true), Struct_1(36560u, global3.x)), vec4<f32>(772f, -1719f, -662f, 1245f), u_input.b.zz), Struct_2(Struct_1(6606u, global3.x), vec3<bool>(global4.x, true, global4.x), Struct_1(493u, 10539u))))) + vec2<f32>(-1161f, 483f))));
    let var_2 = Struct_2(Struct_1(max(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(var_0.a, 0u, 19737u)), 4294967295u), min(4294967295u, u_input.b.x)), vec3<bool>(global4.x, global4.x, all(select(select(vec3<bool>(false, false, global4.x), vec3<bool>(global4.x, global4.x, global4.x), true), select(vec3<bool>(true, global4.x, true), vec3<bool>(true, false, global4.x), vec3<bool>(global4.x, global4.x, true)), global4.x))), Struct_1(global0.a, 4294967295u));
    let var_3 = var_2;
    var var_4 = !vec4<bool>(!(-505f >= _wgslsmith_f_op_f32(max(var_1.x, var_1.x))), any(vec3<bool>(false, var_3.c.b <= u_input.b.x, any(vec3<bool>(false, false, var_3.b.x)))), true, !(!global4.x));
    let var_5 = vec3<i32>(_wgslsmith_clamp_i32(-u_input.a, ~(-9987i ^ global1[_wgslsmith_index_u32(17764u, 12u)]), reverseBits(firstLeadingBit(global1[_wgslsmith_index_u32(u_input.b.x, 12u)]))), 17798i, firstLeadingBit(u_input.a)) ^ u_input.c;
    let var_6 = Struct_2(var_3.c, var_2.b, var_2.c);
    var var_7 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -292f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_2.c, Struct_2(var_2.c, vec3<bool>(global4.x, true, var_2.b.x), Struct_1(var_3.a.b, 1u)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_2, var_1.x, var_5)) + -258f)))));
    let x = u_input.a;
    s_output = StorageBuffer(56346u, var_2.c.b, max(~var_0.a | var_6.c.b, 935u), global3.x, vec3<u32>(4294967295u, 29950u, var_6.a.a));
}

