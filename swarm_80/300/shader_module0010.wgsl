struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: u32,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1u, 266f, Struct_2(vec4<f32>(702f, -860f, -1000f, 697f)), 5768u, Struct_2(vec4<f32>(387f, 328f, -1878f, -1000f)));

var<private> global1: array<Struct_2, 27>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<bool>) -> vec3<f32> {
    var var_0 = vec4<i32>(-_wgslsmith_sub_i32(max(~14600i, u_input.b.x ^ u_input.a), -38600i), (u_input.b.x | u_input.a) ^ u_input.b.x, u_input.a, i32(-1i) * -(u_input.b.x & 20634i));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(arg_2.c.a));
    let var_2 = Struct_3(global0.a, _wgslsmith_f_op_f32(floor(130f)), arg_2.c, reverseBits(1u & ((arg_0 << (global0.a % 32u)) ^ abs(4294967295u))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(abs(-664f)), arg_2.b, var_1.x, -1036f)));
    let var_3 = Struct_3(~1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), arg_2.e.a.x)))), var_1.x)), arg_2.c, var_2.d, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -314f), arg_1.a.x, var_1.x, _wgslsmith_f_op_f32(select(arg_2.c.a.x, var_1.x, true)))));
    let var_4 = vec4<bool>(arg_3.x, true, true, all(select(select(select(vec4<bool>(false, true, true, arg_3.x), vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x)), vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x), select(vec4<bool>(false, arg_3.x, false, true), vec4<bool>(true, true, true, true), false)), vec4<bool>(false, true, !arg_3.x, any(vec2<bool>(true, true))), !(!vec4<bool>(false, false, arg_3.x, arg_3.x)))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.zwx * arg_1.a.zww)) - vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), 604f, _wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_vec3_f32(round(global0.e.a.yww)))));
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = firstTrailingBit(103011u);
    var var_1 = select(vec2<bool>(true, any(vec4<bool>(u_input.a != u_input.b.x, true, true, true))), select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(false, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, false), arg_0.a.x < 535f), vec2<bool>(all(vec3<bool>(false, false, true)), true)), true), vec2<bool>(true, true));
    global1 = array<Struct_2, 27>();
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, _wgslsmith_mult_u32(arg_0.b.x | global0.a, global0.a), ~_wgslsmith_sub_u32(~global0.a, global0.a << (arg_0.b.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.b.yx, vec2<u32>(global0.a, arg_0.b.x)), 1u, ~global0.a), min(arg_0.b.yyy, _wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 75009u, 1423u))))), vec4<u32>(_wgslsmith_div_u32(1u, global0.d), firstTrailingBit(1u), _wgslsmith_clamp_u32(reverseBits(1u), _wgslsmith_add_u32(arg_0.b.x, 22265u), ~0u), ~(~arg_0.b.x)) & arg_0.b);
    global0 = Struct_3(~(arg_0.b.x << (1u % 32u)), 1061f, Struct_2(_wgslsmith_f_op_vec4_f32(sign(global0.e.a))), max(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.b.x, arg_0.b.x), vec2<u32>(58025u, global0.d), arg_0.b.wz), ~arg_0.b.zw), 0u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_0.b, _wgslsmith_sub_vec4_u32(arg_0.b, ~vec4<u32>(arg_0.b.x, arg_0.b.x, 109021u, 0u))) << (_wgslsmith_add_u32(59049u, global0.a) % 32u), 27u)]);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x))), 1493f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(415f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.x))), 1113f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + arg_0.a.x)), _wgslsmith_f_op_f32(-global0.e.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.x))))), !var_1.x));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mult_u32(global0.d, 25425u), Struct_2(global0.c.a), arg_0, vec3<bool>(true, false, true))), vec4<u32>(_wgslsmith_div_u32(arg_0.d, 5089u), 79796u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, arg_0.a), vec2<u32>(14548u, arg_0.a)), global0.a), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, u_input.b.x, 25786i, u_input.a)), vec4<i32>(u_input.a, 5573i, -2147483647i, u_input.b.x)), vec3<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, u_input.b.x), _wgslsmith_div_i32(u_input.a, 2147483647i))))), arg_0, reverseBits(firstTrailingBit(global0.d)), _wgslsmith_f_op_vec2_f32(-arg_0.c.a.yw), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-580f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.a.x * global0.c.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.c.a.x)), arg_0.b, true)), arg_1)));
    global1 = array<Struct_2, 27>();
    var var_1 = arg_0.b;
    let var_2 = var_0;
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-858f, 122f, var_0.d.x, -806f) * vec4<f32>(global0.b, global0.e.a.x, var_0.b.e.a.x, -368f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.x, 2850f, var_0.b.e.a.x, -470f)))), var_2.b, ~var_0.b.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.b.e.a.x, -2006f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_2.b.e.a.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0.e.a.yz))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.c.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(493f * -241f), arg_0.e.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.e.a.x * -199f))))));
    return select(vec3<bool>(true, true, true), select(vec3<bool>(any(vec3<bool>(false, false, false)) & true, true, -2147483647i >= -u_input.b.x), !vec3<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), any(vec2<bool>(false, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), true)), vec3<bool>(var_2.a.x <= _wgslsmith_f_op_f32(var_3.b.b - 775f), true, true));
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4) -> Struct_3 {
    global1 = array<Struct_2, 27>();
    var var_0 = arg_0.b.c;
    var var_1 = var_0.a;
    var var_2 = select(select(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), func_2(arg_2.b, 917f), vec3<bool>(true, true, true))), vec3<bool>(any(vec2<bool>(true, true)), !(1i != u_input.b.x), any(vec4<bool>(true, true, true, true))), true), vec3<bool>(false, true, true), select(false, true, true));
    var var_3 = vec2<u32>(112619u, countOneBits(1u));
    return arg_0.b;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = reverseBits(u_input.b);
    var var_1 = arg_0;
    var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1599f, 636f, 534f, 544f)) - _wgslsmith_f_op_vec4_f32(var_1.a * global0.c.a)) * _wgslsmith_f_op_vec4_f32(-func_1(arg_0, -1000f, arg_0).e.a))), Struct_3(reverseBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(global0.d, 49114u), _wgslsmith_dot_vec3_u32(arg_1.b.wxx, vec3<u32>(6958u, global0.d, arg_1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global0.e.a.x, -354f)), _wgslsmith_f_op_f32(-arg_0.e.x)))), func_1(Struct_4(vec4<f32>(arg_1.a.x, 475f, -1000f, -1966f), arg_0.b, 20058u, vec2<f32>(arg_0.e.x, 100f), vec4<f32>(510f, 260f, 1000f, var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2025f, var_1.a.x))), arg_0).e, var_1.c << (arg_0.b.a % 32u), global1[_wgslsmith_index_u32(arg_1.b.x, 27u)]), var_1.c, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.a.zw)))), arg_0.a);
    let var_2 = arg_1.d.x;
    var var_3 = func_1(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.a.x), arg_0.d.x), arg_0);
    return vec4<f32>(1f, -287f, _wgslsmith_f_op_f32(-global0.e.a.x), _wgslsmith_f_op_f32(abs(global0.b)));
}

fn func_6(arg_0: Struct_4, arg_1: vec2<i32>) -> Struct_4 {
    var var_0 = countOneBits(_wgslsmith_mult_i32(-45683i, firstLeadingBit(1i)));
    let var_1 = func_1(Struct_4(_wgslsmith_f_op_vec4_f32(global0.e.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1004f, 331f, arg_0.e.x, arg_0.d.x)))), arg_0.b, ~arg_0.b.a >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.d, arg_0.b.d, arg_0.c), vec3<u32>(0u, global0.a, 5337u)) % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1803f), _wgslsmith_div_f32(arg_0.a.x, global0.c.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global0.c.a), vec4<f32>(-158f, global0.b, 1767f, -478f))))), _wgslsmith_f_op_f32(sign(arg_0.e.x)), Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.e.x, -2385f, _wgslsmith_div_f32(-1404f, -577f), _wgslsmith_f_op_f32(arg_0.a.x * arg_0.b.e.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1817f, 284f, -486f, global0.b)))), Struct_3(17480u, _wgslsmith_f_op_f32(f32(-1f) * -996f), func_1(Struct_4(global0.e.a, Struct_3(arg_0.c, arg_0.d.x, Struct_2(arg_0.a), arg_0.c, arg_0.b.c), 55939u, vec2<f32>(global0.b, -367f), vec4<f32>(global0.e.a.x, -1323f, -2208f, -1640f)), _wgslsmith_f_op_f32(-arg_0.e.x), arg_0).e, abs(arg_0.c), arg_0.b.c), 51585u, global0.c.a.wz, _wgslsmith_f_op_vec4_f32(arg_0.b.c.a - vec4<f32>(-751f, arg_0.d.x, _wgslsmith_f_op_f32(floor(564f)), _wgslsmith_div_f32(-169f, global0.b))))).c;
    let var_2 = func_1(Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.e.x, 1229f)), _wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(max(-1000f, -444f)), var_1.a.x)), func_1(arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c.a.x), -627f)), arg_0), ~12086u, vec2<f32>(global0.e.a.x, 985f), global0.c.a), -377f, Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b.e.a + vec4<f32>(-280f, -1446f, arg_0.b.e.a.x, var_1.a.x))), func_1(arg_0, _wgslsmith_f_op_f32(func_1(arg_0, var_1.a.x, Struct_4(vec4<f32>(var_1.a.x, var_1.a.x, arg_0.e.x, var_1.a.x), Struct_3(0u, -377f, global0.c, 4294967295u, global0.c), global0.d, vec2<f32>(-123f, -565f), vec4<f32>(arg_0.a.x, -573f, 881f, var_1.a.x))).b * arg_0.a.x), arg_0), _wgslsmith_add_u32(abs(arg_0.b.a), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, arg_0.b.a), vec2<u32>(1u, 0u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-410f, -500f)))), var_1.a)).c.a.x;
    let var_3 = !select(!func_2(arg_0.b, var_2), vec3<bool>(true, true, -805f < _wgslsmith_f_op_f32(-var_1.a.x)), true);
    global0 = Struct_3(arg_0.c, arg_0.e.x, func_1(Struct_4(_wgslsmith_f_op_vec4_f32(func_1(Struct_4(var_1.a, Struct_3(arg_0.c, 964f, Struct_2(global0.e.a), arg_0.b.d, arg_0.b.c), arg_0.c, arg_0.e.wy, global0.e.a), arg_0.a.x, Struct_4(var_1.a, arg_0.b, 0u, global0.e.a.wx, vec4<f32>(global0.c.a.x, -746f, arg_0.e.x, var_1.a.x))).e.a + var_1.a), arg_0.b, ~max(arg_0.c, 8791u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.e.a.ww))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(479f, arg_0.a.x, -230f, var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a.x)), arg_0).c, 68197u, func_1(Struct_4(arg_0.a, arg_0.b, countOneBits(~global0.a), global0.c.a.xx, arg_0.e), -1107f, Struct_4(vec4<f32>(_wgslsmith_f_op_f32(552f * var_1.a.x), arg_0.b.b, _wgslsmith_div_f32(-1188f, global0.e.a.x), _wgslsmith_f_op_f32(var_2 + 2087f)), func_1(arg_0, _wgslsmith_f_op_f32(trunc(-849f)), arg_0), global0.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(arg_0.b.c.a.zw)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 314f, -354f, global0.b)))))).c);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 27>();
    global0 = Struct_3(~global0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -476f) + -757f)))), Struct_2(global0.c.a), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a, global0.a, 0u, 1u), firstTrailingBit(vec4<u32>(1u, global0.a, global0.d, global0.a))) >> (~(~global0.d) % 32u), global1[_wgslsmith_index_u32(global0.a, 27u)]);
    global1 = array<Struct_2, 27>();
    global1 = array<Struct_2, 27>();
    let var_0 = func_6(Struct_4(_wgslsmith_f_op_vec4_f32(func_5(Struct_4(vec4<f32>(global0.c.a.x, -494f, -805f, global0.b), func_1(Struct_4(global0.e.a, Struct_3(0u, global0.b, global1[_wgslsmith_index_u32(4294967295u, 27u)], global0.d, Struct_2(global0.e.a)), global0.a, vec2<f32>(global0.e.a.x, 902f), global0.e.a), global0.b, Struct_4(vec4<f32>(-254f, -220f, global0.e.a.x, 2476f), Struct_3(global0.d, global0.b, global1[_wgslsmith_index_u32(global0.d, 27u)], 1u, Struct_2(global0.c.a)), 36977u, global0.c.a.wz, global0.c.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(39304u, 49958u, global0.a), vec3<u32>(0u, global0.a, 92146u)), vec2<f32>(global0.e.a.x, global0.c.a.x), vec4<f32>(437f, global0.b, -3412f, -2880f)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.a.x, global0.e.a.x, global0.b) * global0.e.a.wwz), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.a, global0.d, 4294967295u, 87u), vec4<u32>(69638u, 64478u, 1u, global0.d)), vec4<i32>(u_input.a, u_input.b.x, -28456i, u_input.b.x) << (vec4<u32>(global0.a, 79551u, global0.d, global0.a) % vec4<u32>(32u)), vec3<i32>(u_input.a, 1i, 2147483647i) << (vec3<u32>(0u, global0.d, 20771u) % vec3<u32>(32u))))), Struct_3(_wgslsmith_mod_u32(_wgslsmith_add_u32(global0.d, 22823u), global0.d | 84754u), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_clamp_u32(global0.d, global0.d, global0.a), global1[_wgslsmith_index_u32(4294967295u, 27u)], Struct_3(global0.d, -1753f, Struct_2(vec4<f32>(-248f, global0.b, global0.c.a.x, 944f)), 19292u, Struct_2(vec4<f32>(global0.b, global0.c.a.x, -1089f, 1110f))), vec3<bool>(true, true, true))).x, global0.e, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global0.d, 10092u), vec2<u32>(0u, global0.d)), vec2<u32>(global0.d, global0.d) & vec2<u32>(41013u, 1u)), func_1(Struct_4(vec4<f32>(global0.e.a.x, 419f, -605f, -707f), Struct_3(global0.d, global0.e.a.x, global1[_wgslsmith_index_u32(29044u, 27u)], 4294967295u, global1[_wgslsmith_index_u32(1u, 27u)]), 20u, vec2<f32>(-1000f, -233f), global0.e.a), -1588f, Struct_4(global0.e.a, Struct_3(21907u, global0.c.a.x, global1[_wgslsmith_index_u32(global0.a, 27u)], global0.d, global1[_wgslsmith_index_u32(0u, 27u)]), global0.a, global0.c.a.zz, global0.c.a)).c), 27174u, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global0.b, -1830f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1875f, -114f) - vec2<f32>(1072f, global0.c.a.x))))), global0.e.a), _wgslsmith_clamp_vec2_i32(firstTrailingBit(-countOneBits(vec2<i32>(u_input.a, 1i))), _wgslsmith_clamp_vec2_i32(min(u_input.b, vec2<i32>(194i, -39156i)) & vec2<i32>(-40627i, u_input.a), abs(vec2<i32>(u_input.b.x, 76659i)), min(abs(u_input.b), u_input.b)), u_input.b));
    let var_1 = func_1(Struct_4(_wgslsmith_f_op_vec4_f32(-var_0.e), func_1(var_0, _wgslsmith_f_op_f32(-857f + 550f), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -847f, var_0.a.x, var_0.b.e.a.x)), var_0.b, ~1u, global0.e.a.zz, vec4<f32>(931f, global0.c.a.x, global0.e.a.x, var_0.a.x))), var_0.b.d, global0.c.a.wz, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1256f)) - _wgslsmith_f_op_f32(ceil(-1039f))), 1f, global0.c.a.x, -1237f)), global0.e.a.x, func_6(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1485f, var_0.d.x, -1923f, -248f) - global0.e.a)), var_0.b, ~49945u, _wgslsmith_f_op_vec2_f32(vec2<f32>(-723f, -1000f) * _wgslsmith_f_op_vec2_f32(var_0.d + var_0.a.yy)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-289f, 294f, 999f, var_0.d.x))), ~u_input.b));
    var var_2 = func_1(var_0, 1000f, var_0);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(45057u, firstTrailingBit(4294967295u)) >> ((vec2<u32>(0u, 20109u) | (vec2<u32>(0u, 4294967295u) << (vec2<u32>(4294967295u, global0.a) % vec2<u32>(32u)))) % vec2<u32>(32u)), ~_wgslsmith_div_vec2_u32(~vec2<u32>(8218u, 6863u), firstTrailingBit(vec2<u32>(var_2.a, 1u))), true), select(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.a, u_input.b.x), -u_input.a, u_input.a ^ u_input.b.x, abs(u_input.b.x)), max(abs(vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, u_input.a)), vec4<i32>(-2147483647i, 35038i, -16196i, 1i))), vec4<i32>(-78565i, 27238i, _wgslsmith_mod_i32(-8118i, -30044i), _wgslsmith_mod_i32(-u_input.b.x, _wgslsmith_clamp_i32(2147483647i, u_input.b.x, u_input.b.x))), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, 1955f)), u_input.b.x);
}

