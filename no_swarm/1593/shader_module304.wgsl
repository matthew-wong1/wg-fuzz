struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1732f, 132f, -1258f);

var<private> global1: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global2: vec3<f32>;

var<private> global3: Struct_3 = Struct_3(Struct_2(vec4<i32>(-1i, -621i, 37432i, -3123i)));

var<private> global4: f32 = -817f;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_3(Struct_2(arg_2.a.a));
    var var_1 = Struct_4(select(vec4<bool>(true, true, true, true), vec4<bool>(global2.x == 1000f, true, true, _wgslsmith_f_op_f32(-global2.x) <= 119f), select(vec4<bool>(true, true, true, 400f >= global2.x), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_2 = Struct_4(select(var_1.a, vec4<bool>(!(4294967295u < global1.x), any(var_1.a.wz), false, all(!var_1.a.wxx)), !vec4<bool>(!var_1.a.x, select(var_1.a.x, true, false), var_1.a.x & var_1.a.x, 188f != global0.x)));
    global2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1128f, 449f, 609f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(123f, -1241f, 213f))))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(428f, global2.x, global0.x), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-560f - global2.x)), -1000f), !vec3<bool>(any(var_1.a.ywy), select(var_2.a.x, false, var_2.a.x), false))), !(!any(var_2.a.xyz))));
    var_2 = Struct_4(vec4<bool>(true, true, select(true, var_1.a.x, true) & all(var_1.a), true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: f32) -> Struct_2 {
    var var_0 = arg_0.x;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x * 605f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)) - _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(func_3(u_input.a, global3.a.a.wzy, Struct_3(global3.a))))))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1926f, global2.x))) + _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x))))));
    var var_1 = _wgslsmith_f_op_f32(-global2.x) >= -436f;
    let var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~(~(~vec4<u32>(arg_0.x, global1.x, 4294967295u, 4294967295u))), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_0 << (arg_0 % vec3<u32>(32u)), abs(arg_0)), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.b, 0u, global1.x)), vec4<u32>(128793u, arg_0.x, global1.x, global1.x)), u_input.b, ~(~global1.x))), max(_wgslsmith_mult_vec4_u32(~(vec4<u32>(arg_0.x, global1.x, 0u, 4294967295u) >> (vec4<u32>(u_input.b, 0u, 4294967295u, global1.x) % vec4<u32>(32u))), ~(vec4<u32>(0u, global1.x, 47771u, 4294967295u) | vec4<u32>(u_input.b, 12692u, 41825u, 5265u))), select(max(_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, arg_0.x, u_input.b, arg_0.x), vec4<u32>(u_input.b, arg_0.x, 4294967295u, global1.x)), ~vec4<u32>(global1.x, 6859u, arg_0.x, arg_0.x)), countOneBits(~vec4<u32>(global1.x, u_input.b, global1.x, arg_0.x)), (u_input.a.x << (4294967295u % 32u)) >= global3.a.a.x)));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.x + 864f)))), _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), global2.x)))), global0.x));
    return global3.a;
}

fn func_1() -> i32 {
    global3 = Struct_3(func_2(abs(~vec3<u32>(global1.x, global1.x, 21782u)), !vec3<bool>(true, true, global0.x <= 767f), global0.x));
    var var_0 = !(any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))) && any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true))));
    global3 = Struct_3(Struct_2(global3.a.a));
    var var_1 = Struct_1(~select(firstLeadingBit(vec3<u32>(48159u, 4294967295u, 1u)), countOneBits(abs(vec3<u32>(1u, 47621u, global1.x))), true), false, all(vec4<bool>(true, true, !select(true, false, false), 0u > ~global1.x)));
    let var_2 = Struct_1(var_1.a, select(!var_1.b, true, false), true);
    return u_input.a.x & -1i;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec3<i32>) -> Struct_3 {
    global3 = Struct_3(Struct_2(_wgslsmith_mod_vec4_i32(-global3.a.a, func_2(select(vec3<u32>(4294967295u, global1.x, 4294967295u), vec3<u32>(1915u, 2894u, u_input.b), false), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-global2.x)).a)));
    var var_0 = func_2(select(~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 43020u, global1.x), vec3<u32>(u_input.b, global1.x, global1.x)), select(vec3<u32>(58964u, u_input.b, global1.x), vec3<u32>(22891u, 79008u, u_input.b), vec3<bool>(false, true, true))), ~vec3<u32>(29972u, global1.x, u_input.b) << (_wgslsmith_mod_vec3_u32(vec3<u32>(76846u, 0u, 4294967295u) ^ vec3<u32>(63993u, u_input.b, 1u), vec3<u32>(22648u, u_input.b, 4294967295u) << (vec3<u32>(u_input.b, global1.x, global1.x) % vec3<u32>(32u))) % vec3<u32>(32u)), (true | (global0.x > -1389f)) & true), !vec3<bool>(!any(vec4<bool>(true, true, true, false)), true, false), _wgslsmith_f_op_f32(-global2.x));
    var var_1 = Struct_1(~vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, u_input.b), 1u, 1u), ~u_input.b, u_input.b), false, !(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global2.x, global2.x)))))))));
    let var_2 = arg_2.x;
    return Struct_3(global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    global3 = func_4(global3.a.a.yz, Struct_2(max(global3.a.a, abs(global3.a.a))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c.x, 23608i), _wgslsmith_dot_vec2_i32(~u_input.c, global3.a.a.xy)), _wgslsmith_div_i32(~select(1i, 0i, true), global3.a.a.x), -47223i, -2147483647i), _wgslsmith_mod_vec3_i32(u_input.a >> (~(vec3<u32>(1160u, 1u, u_input.b) >> (vec3<u32>(global1.x, global1.x, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, ~u_input.a.x, global3.a.a.x ^ func_1())));
    var var_1 = -745f;
    var var_2 = ~(~vec4<u32>(4294967295u, global1.x, abs(global1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, u_input.b))));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global0.x), _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(trunc(2327f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x))) - global0.x)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 372f, global2.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -171f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, global2.x, global0.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(~u_input.b, ~u_input.b ^ ~u_input.b), vec2<u32>(global1.x, var_2.x >> (_wgslsmith_add_u32(var_2.x, u_input.b) % 32u)), true), _wgslsmith_div_i32(u_input.a.x >> (85837u % 32u), func_1()), _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global3.a.a.xz, vec2<i32>(u_input.a.x, 0i)), global3.a.a.x), -23860i) & global3.a.a.x);
}

