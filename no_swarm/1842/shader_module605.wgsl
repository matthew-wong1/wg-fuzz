struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_5, 12>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> i32 {
    global0 = Struct_2(_wgslsmith_add_i32(arg_0.x, firstTrailingBit(global0.a)), Struct_1(~(~global0.a)));
    var var_0 = select(select(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true))), !vec4<bool>(true, true, any(vec4<bool>(true, false, false, false)), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), (-2968i & global0.a) >= select(-2147483647i, 0i, true))), vec4<bool>(!(~(-84642i) > ~global0.a), true, any(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))), all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))))), select(!vec4<bool>(all(vec2<bool>(true, true)), global0.a == 1i, select(false, true, false), true), !vec4<bool>(all(vec3<bool>(false, false, false)), true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, false, false))), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), false || all(vec4<bool>(true, true, true, true)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(481f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-196f, -236f, var_0.x)), 1171f, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1072f))), all(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, false, false, true), all(vec3<bool>(var_0.x, false, var_0.x)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-207f, -579f), -671f))));
    let var_2 = ~(~u_input.a.x);
    global0 = Struct_2(_wgslsmith_mult_i32(arg_1.a, -arg_0.x >> (1u % 32u)), arg_1);
    return ~abs(_wgslsmith_add_i32(arg_0.x, ~(~(-12161i))));
}

fn func_2(arg_0: Struct_5, arg_1: i32, arg_2: f32) -> Struct_1 {
    global1 = array<Struct_5, 12>();
    var var_0 = Struct_2(_wgslsmith_div_i32(func_3(vec2<i32>(arg_0.a.d.x << (u_input.a.x % 32u), ~(-12503i)), Struct_1(~(-2147483647i)), ~4294967295u), select(abs(-11295i), 0i, arg_0.a.c.x)), Struct_1(-53874i));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) - arg_2)), 310f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(929f, arg_2))))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), arg_2))));
    var var_2 = !(!(!vec3<bool>(arg_0.a.c.x, any(vec4<bool>(arg_0.a.c.x, true, arg_0.a.c.x, arg_0.a.c.x)), !arg_0.a.c.x)));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) + -650f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))))))), var_1.x, 564f);
    return global0.b;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_5) -> Struct_1 {
    global0 = Struct_2(-15136i, Struct_1(global0.a & firstTrailingBit(_wgslsmith_sub_i32(1i, 0i))));
    let var_0 = 1u;
    var var_1 = Struct_3(Struct_2(57274i, Struct_1(-arg_2.a)), 788f, func_2(arg_3, -countOneBits(arg_3.a.d.x) >> (u_input.a.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-320f, 885f)))))), true);
    let var_2 = 240f;
    var_1 = Struct_3(Struct_2(~arg_3.a.d.x, func_2(Struct_5(Struct_4(6922u, 0u, vec3<bool>(arg_3.a.c.x, arg_1, false), vec4<i32>(0i, arg_2.a, var_1.a.a, global0.a))), var_1.a.b.a, 1012f)), var_2, func_2(Struct_5(arg_3.a), -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-457f)) + -1244f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -932f) - _wgslsmith_f_op_f32(exp2(arg_0.x))))), !any(!vec4<bool>(arg_3.a.c.x, arg_3.a.c.x, false, var_1.d)));
    return global0.b;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: i32, arg_3: f32) -> Struct_3 {
    let var_0 = 0u;
    var var_1 = true;
    global0 = Struct_2(-1i, func_4(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_3), _wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -515f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3, -2282f, arg_3), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, -1043f, arg_1.x), vec3<f32>(arg_3, -1072f, 389f)))))), false, func_2(global1[_wgslsmith_index_u32(var_0, 12u)], firstTrailingBit(_wgslsmith_add_i32(global0.a, global0.b.a)), _wgslsmith_f_op_f32(f32(-1f) * -1007f)), global1[_wgslsmith_index_u32(0u << (_wgslsmith_clamp_u32(var_0, var_0, _wgslsmith_add_u32(u_input.b, 11149u)) % 32u), 12u)]));
    let var_2 = global1[_wgslsmith_index_u32(8145u, 12u)];
    let var_3 = global1[_wgslsmith_index_u32(var_2.a.b, 12u)];
    return Struct_3(Struct_2(var_3.a.d.x, global0.b), 671f, func_2(Struct_5(Struct_4(var_0, min(var_2.a.b, 1u), select(var_3.a.c, var_2.a.c, arg_0), ~var_2.a.d)), _wgslsmith_clamp_i32(reverseBits(~var_2.a.d.x), arg_2, _wgslsmith_dot_vec3_i32(var_3.a.d.yxw ^ var_2.a.d.yww, var_2.a.d.zzy & var_2.a.d.yxz)), _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(447f - 562f))))), var_3.a.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true || !(!(global0.a <= _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.a, -1i, -1i, -3616i), vec4<i32>(-2147483647i, global0.b.a, global0.b.a, 25946i))));
    var var_1 = func_1(true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(485f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-461f, -903f)))))), 1i, 289f);
    var_1 = Struct_3(func_1(var_1.d, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-1022f + var_1.b), _wgslsmith_f_op_f32(1354f + var_1.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(872f, 255f), vec2<f32>(578f, var_1.b), var_0)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b, -2775f), vec2<f32>(235f, -1141f), false))))), 33189i, _wgslsmith_f_op_f32(f32(-1f) * -300f)).a, _wgslsmith_f_op_f32(207f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + _wgslsmith_div_f32(1324f, 140f)))), Struct_1(func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, -562f, 919f) * vec3<f32>(var_1.b, -1000f, -262f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(701f, 2319f, 695f))))), true, func_2(global1[_wgslsmith_index_u32(~68644u, 12u)], firstLeadingBit(-2147483647i), _wgslsmith_f_op_f32(-var_1.b)), Struct_5(Struct_4(1u, 4294967295u, vec3<bool>(var_0, true, var_0), vec4<i32>(6653i, -1i, 5555i, -53177i)))).a), u_input.a.x <= u_input.b);
    global1 = array<Struct_5, 12>();
    var_1 = Struct_3(func_1(select(var_0, false, var_1.d), vec2<f32>(1170f, var_1.b), _wgslsmith_div_i32(global0.a, global0.a), -610f).a, _wgslsmith_div_f32(-1354f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_1.b)), 387f))), func_2(global1[_wgslsmith_index_u32(0u, 12u)], func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.b, 1736f, 240f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, -834f, 560f) * vec3<f32>(var_1.b, 480f, var_1.b)))), var_1.d | (var_0 || var_0), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(223f, var_1.b, -124f) + vec3<f32>(1000f, -406f, 487f)), var_0, global0.b, Struct_5(Struct_4(u_input.b, u_input.b, vec3<bool>(true, false, false), vec4<i32>(var_1.c.a, global0.b.a, 1i, 0i)))), Struct_5(Struct_4(u_input.b, u_input.b, vec3<bool>(var_0, var_1.d, var_1.d), vec4<i32>(global0.b.a, 8261i, var_1.c.a, 0i)))).a, _wgslsmith_f_op_f32(-var_1.b)), var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_sub_u32(~max(3592u, u_input.b), 4294967295u), 34769u), ~vec4<u32>(~80160u, 25033u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 34391u, 21816u, u_input.a.x), vec4<u32>(u_input.b, u_input.b, u_input.b, 53665u)), ~(u_input.a.x >> (u_input.a.x % 32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b)))))), ~select(~(~vec3<u32>(u_input.a.x, 20118u, u_input.b)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, 22344u), vec3<u32>(49621u, 48625u, u_input.a.x)), !(!var_0)), (func_3(vec2<i32>(1i, var_1.c.a), func_1(var_0, vec2<f32>(-398f, -1361f), -2147483647i, var_1.b).a.b, u_input.a.x) << (~u_input.a.x % 32u)) & global0.a);
}

