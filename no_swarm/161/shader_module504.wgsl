struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(39093u, vec2<u32>(0u, 0u));

var<private> global1: array<Struct_4, 12>;

var<private> global2: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(1i, i32(-2147483648)), vec2<i32>(933i, 1i), vec2<i32>(-2039i, 1i), vec2<i32>(1i, 32562i));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1137f) + -1789f), _wgslsmith_f_op_f32(f32(-1f) * -364f), global3.b) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(f32(-1f) * -1114f), _wgslsmith_f_op_f32(ceil(-1085f))))))));
    let var_1 = u_input.c;
    global1 = array<Struct_4, 12>();
    global3 = Struct_1(_wgslsmith_clamp_i32(firstLeadingBit(global3.a), 1i, u_input.a.x), -223f, _wgslsmith_f_op_f32(-global3.b), select(global3.d, !vec2<bool>(all(vec4<bool>(true, global3.d.x, false, global3.d.x)), global3.d.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global0.b.x), global0.b ^ global0.b) == ~global0.b.x));
    let var_2 = Struct_3(_wgslsmith_mod_i32(-38735i, -54689i));
    return global3.d.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: bool) -> vec2<bool> {
    var var_0 = !(arg_3 & false);
    global0 = arg_1;
    global2 = array<vec2<i32>, 4>();
    let var_1 = select(vec4<bool>(arg_3, false | (select(arg_3, false, true) | arg_3), !select(!global3.d.x, any(vec4<bool>(arg_0.d.x, arg_3, true, arg_3)), !arg_3), func_3()), !vec4<bool>(any(vec2<bool>(true, global3.d.x)), any(!vec4<bool>(true, false, global3.d.x, arg_3)), global3.d.x != (-1384f < arg_0.c), true), select(vec4<bool>(1u <= (arg_1.a | arg_1.b.x), !any(vec3<bool>(false, true, arg_0.d.x)), func_3(), false), !vec4<bool>(!arg_0.d.x, any(vec3<bool>(true, arg_3, arg_0.d.x)), true, true), select(arg_3, !all(vec2<bool>(global3.d.x, false)), any(select(vec4<bool>(arg_3, arg_3, arg_3, arg_0.d.x), vec4<bool>(arg_0.d.x, arg_3, false, arg_0.d.x), arg_0.d.x)))));
    global0 = Struct_5(countOneBits(27766u), global0.b ^ vec2<u32>(select(0u, _wgslsmith_div_u32(10567u, arg_2.x), func_3()), _wgslsmith_div_u32(1u, arg_2.x) << (arg_2.x % 32u)));
    return !vec2<bool>(true | any(!vec3<bool>(var_1.x, arg_3, false)), 0i < -arg_0.a);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    var var_0 = Struct_5(~(~select(u_input.b, _wgslsmith_div_u32(4294967295u, arg_0), true)), ~global0.b);
    var var_1 = Struct_1(0i, global3.b, 129f, global3.d);
    var var_2 = func_4(Struct_1(_wgslsmith_dot_vec3_i32(u_input.d, ~u_input.a.wzx) >> (~(~var_0.b.x) % 32u), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(ceil(802f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.b * -339f)))), select(vec2<bool>(all(vec2<bool>(global3.d.x, true)), func_3()), vec2<bool>(true, true), true)), Struct_5(reverseBits(4294967295u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 1u, var_0.a), vec3<u32>(0u, arg_0, var_0.b.x)), vec2<u32>(~u_input.b, ~abs(64310u))), _wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(4294967295u, 4294967295u, global0.a, 0u)) | ((vec4<u32>(var_0.a, var_0.a, global0.a, 8497u) & vec4<u32>(101959u, arg_0, 15613u, arg_0)) >> (vec4<u32>(global0.b.x, global0.a, 34886u, 0u) % vec4<u32>(32u))), ~vec4<u32>(~4294967295u, ~global0.b.x, ~1u, 0u)), !all(!(!vec3<bool>(true, true, var_1.d.x))));
    global1 = array<Struct_4, 12>();
    var var_3 = true;
    return _wgslsmith_clamp_u32(4294967295u, abs(0u), ~(~_wgslsmith_mod_u32(~9198u, _wgslsmith_clamp_u32(1u, u_input.b, var_0.a))));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = vec4<u32>(u_input.b, ~_wgslsmith_div_u32(1u, func_2(arg_0.x, vec3<f32>(global3.c, 1190f, -167f))) ^ u_input.b, countOneBits(~arg_0.x), 0u);
    let var_1 = Struct_3(firstLeadingBit(global3.a));
    var var_2 = global0.a << (arg_0.x % 32u);
    global3 = Struct_1(u_input.d.x, _wgslsmith_f_op_f32(-global3.c), _wgslsmith_f_op_f32(f32(-1f) * -548f), func_4(Struct_1(var_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global3.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c - 1811f) * _wgslsmith_f_op_f32(-global3.c)), vec2<bool>(!global3.d.x, global3.d.x && true)), Struct_5(~(~global0.b.x), vec2<u32>(global0.a >> (0u % 32u), 0u)), arg_0, true));
    var var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1076f + global3.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.b)))) * 1f), 1053f, global3.d);
    return -1232f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -113f) + _wgslsmith_f_op_f32(ceil(-292f))), _wgslsmith_f_op_f32(round(global3.c))) * vec2<f32>(-1823f, -328f));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(abs(u_input.a), select(vec4<i32>(-1i) * -u_input.a, select(abs(u_input.a), max(u_input.a, u_input.a), !vec4<bool>(global3.d.x, false, global3.d.x, false)), vec4<bool>(true, false, any(vec4<bool>(global3.d.x, false, global3.d.x, global3.d.x)), true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c - var_0.x) - _wgslsmith_f_op_f32(func_1(vec4<u32>(global0.a, 4294967295u, 4294967295u, u_input.b))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-743f, var_0.x, true)), var_0.x)))) * _wgslsmith_f_op_f32(step(210f, global3.c))), vec2<bool>(global3.d.x, false));
    let var_2 = select(select(!select(vec3<bool>(false, false, global3.d.x), select(vec3<bool>(false, false, false), vec3<bool>(true, true, global3.d.x), var_1.d.x), select(vec3<bool>(true, var_1.d.x, true), vec3<bool>(false, var_1.d.x, global3.d.x), true)), select(select(vec3<bool>(true, var_1.d.x, var_1.d.x), !vec3<bool>(false, var_1.d.x, global3.d.x), select(vec3<bool>(false, global3.d.x, true), vec3<bool>(var_1.d.x, true, var_1.d.x), true)), vec3<bool>(select(var_1.d.x, false, var_1.d.x), true, any(vec2<bool>(true, global3.d.x))), vec3<bool>(all(vec4<bool>(true, true, var_1.d.x, global3.d.x)), true, all(vec4<bool>(global3.d.x, false, var_1.d.x, var_1.d.x)))), vec3<bool>(true, global3.d.x, global3.d.x)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 20237u == ~u_input.b), !global3.d.x);
    let var_3 = Struct_2(Struct_1(~(i32(-1i) * -67974i), var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -542f)) - -159f), vec2<bool>(true, true)), Struct_1(~firstTrailingBit(-23668i >> (u_input.b % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<u32>(global0.b.x, 0u, u_input.b, 38761u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_1.b)), !func_4(Struct_1(1i, 1976f, var_1.c, vec2<bool>(false, true)), Struct_5(4294967295u, vec2<u32>(73219u, 87568u)), ~vec4<u32>(global0.a, u_input.b, 1u, 4294967295u), var_2.x)));
    var_0 = vec2<f32>(var_3.a.b, -853f);
    var_1 = var_3.a;
    var var_4 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~18818u, abs(u_input.b)), 12u)];
    var_0 = vec2<f32>(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -450f));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_1(~max(vec4<u32>(1u, global0.a, var_4.a.x, global0.b.x), min(var_4.b, vec4<u32>(1u, var_4.a.x, global0.a, global0.a))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-447f + _wgslsmith_div_f32(var_1.c, global3.c))), var_3.a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.c, global3.c))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_3.b.c)), -733f, 1f)));
}

