struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec4<bool>,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec2<bool> {
    global0 = vec2<bool>(0u <= arg_2, global0.x);
    global0 = select(vec2<bool>(true, global0.x), select(vec2<bool>(true, any(vec4<bool>(false, global0.x, global0.x, global0.x))), vec2<bool>(any(select(vec3<bool>(global0.x, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, global0.x))), !all(vec4<bool>(true, true, global0.x, global0.x))), false), vec2<bool>((_wgslsmith_add_i32(arg_0.a, -10158i) == _wgslsmith_dot_vec3_i32(u_input.c.wxx, vec3<i32>(-2147483647i, u_input.c.x, 2147483647i))) & (arg_0.a > ~8117i), select(any(vec3<bool>(global0.x, false, global0.x)), arg_1 <= 250f, true) || (_wgslsmith_f_op_f32(floor(-471f)) > _wgslsmith_f_op_f32(floor(1409f)))));
    global0 = !(!select(vec2<bool>(false, true), !vec2<bool>(true, global0.x), select(vec2<bool>(false, false), select(vec2<bool>(false, global0.x), vec2<bool>(false, global0.x), true), true)));
    global0 = select(!select(!select(vec2<bool>(true, false), vec2<bool>(false, false), global0.x), vec2<bool>(true, true), false), !(!vec2<bool>(true, any(vec2<bool>(false, global0.x)))), -409f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(sign(772f)))) * _wgslsmith_f_op_f32(max(755f, _wgslsmith_f_op_f32(f32(-1f) * -362f)))));
    var var_0 = Struct_4(1i, ~u_input.b);
    return select(vec2<bool>(select(true, select(any(vec4<bool>(global0.x, global0.x, true, global0.x)), false, true), global0.x), !(~arg_0.a < var_0.a)), select(select(vec2<bool>(global0.x, !global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), true), vec2<bool>(global0.x, arg_0.b.x != arg_2)), vec2<bool>(all(vec3<bool>(global0.x, false, true)), global0.x), vec2<bool>(true, false)), _wgslsmith_f_op_f32(1345f + 821f) != _wgslsmith_div_f32(1385f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) * arg_1)));
}

fn func_2() -> Struct_4 {
    global0 = select(vec2<bool>(true, all(func_3(Struct_1(u_input.d, vec3<u32>(u_input.a.x, u_input.a.x, 26020u)), -610f, 1u))), select(vec2<bool>(global0.x, !global0.x), vec2<bool>(global0.x, true), !global0.x), select(select(select(vec2<bool>(global0.x, false), func_3(Struct_1(u_input.e, u_input.a), -1649f, 53454u), func_3(Struct_1(-49571i, u_input.b.xzw), 170f, 51818u)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, global0.x)), vec2<bool>(global0.x, global0.x), true), !(global0.x & global0.x)), vec2<bool>(true, true), true));
    var var_0 = true;
    let var_1 = 1i;
    var var_2 = select(!vec3<bool>(true, any(select(vec4<bool>(false, global0.x, false, true), vec4<bool>(global0.x, false, false, global0.x), global0.x)), true), select(select(!(!vec3<bool>(false, false, global0.x)), select(vec3<bool>(false, global0.x, false), vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, true, true)), true), !select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, false, true), var_1 <= 0i), vec3<bool>(global0.x, global0.x, !global0.x)), all(!vec2<bool>(true, !global0.x)));
    let var_3 = u_input.a;
    return Struct_4(1i, vec4<u32>(u_input.a.x, 5356u, _wgslsmith_sub_u32(~41279u, 0u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_3.x, 107810u) | u_input.a.yx, ~u_input.a.yy), _wgslsmith_div_vec2_u32(vec2<u32>(58155u, 53670u), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 2715u), var_3.zz)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: u32, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)), arg_0);
    let var_1 = Struct_2(-861f, arg_0);
    var_0 = var_1;
    var var_2 = _wgslsmith_mult_u32(~4294967295u, var_0.b.b.x);
    var var_3 = arg_3;
    return select(select(vec2<bool>(!global0.x, true), select(vec2<bool>(true, select(global0.x, true, global0.x)), !(!vec2<bool>(true, global0.x)), any(!vec4<bool>(global0.x, false, global0.x, false))), true), vec2<bool>(true, all(vec2<bool>(global0.x, true))), false);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<u32>) -> i32 {
    global0 = select(func_4(arg_0.b, func_2(), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) & (41436u & arg_2.x), arg_2.x, func_2().b.x >> (~4294967295u % 32u)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(712f - 1030f)), Struct_1(arg_0.b.a, vec3<u32>(arg_2.x, u_input.a.x, 0u) << (arg_2.wyy % vec3<u32>(32u))))), !func_4(arg_0.b, Struct_4(-2147483647i, vec4<u32>(arg_2.x, 4294967295u, u_input.b.x, u_input.a.x)), 44450u, Struct_2(arg_0.a, arg_0.b)), select(select(select(func_4(arg_0.b, Struct_4(arg_0.b.a, vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.b.x)), 17255u, arg_0), vec2<bool>(true, global0.x), true), !select(vec2<bool>(false, false), vec2<bool>(global0.x, global0.x), vec2<bool>(true, true)), !global0.x), func_4(arg_0.b, Struct_4(-1i, vec4<u32>(arg_2.x, u_input.a.x, 19672u, u_input.a.x)), arg_2.x, Struct_2(_wgslsmith_f_op_f32(arg_0.a - 1996f), arg_0.b)), true));
    let var_0 = firstLeadingBit(-7088i);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + arg_0.a) + _wgslsmith_f_op_f32(arg_0.a - arg_0.a))) * _wgslsmith_f_op_f32(trunc(arg_0.a))), arg_0.b);
    var var_2 = max(arg_1.x, var_0);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.a, arg_0.a), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a, arg_0.a))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-643f, var_1.a) * vec2<f32>(var_1.a, var_1.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 1381f))), !global0.x)), vec2<f32>(var_1.a, 1000f)));
    return arg_0.b.a ^ -u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(!global0.x, global0.x || all(vec3<bool>(true, !global0.x, u_input.d < 25731i)));
    var var_0 = (2147483647i << (u_input.b.x % 32u)) != u_input.e;
    let var_1 = vec2<i32>(u_input.e << (~(~4294967295u) % 32u), (i32(-1i) * -u_input.d) ^ ~(_wgslsmith_dot_vec2_i32(u_input.c.wz, u_input.c.yx) | func_1(Struct_2(765f, Struct_1(u_input.e, u_input.a)), u_input.c.zxz, vec4<u32>(u_input.b.x, 3090u, u_input.a.x, u_input.a.x))));
    let var_2 = ~(_wgslsmith_add_u32(u_input.b.x, 9901u >> (~u_input.b.x % 32u)) & _wgslsmith_sub_u32(_wgslsmith_div_u32(84042u, 4294967295u), select(0u, 26629u, global0.x) | func_2().b.x));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-509f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1524f)))), Struct_1(~(_wgslsmith_clamp_i32(u_input.c.x, var_1.x, 23490i) ^ -u_input.e), ~countOneBits(firstTrailingBit(vec3<u32>(var_2, u_input.a.x, u_input.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~1u), ~(~u_input.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 27617u, u_input.a.x), vec3<u32>(1u, var_2, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(54136u, 21976u, 4294967295u), var_3.b.b)) >> (~var_3.b.b.x % 32u)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1404f)))), -513f, 382f, -489f));
}

