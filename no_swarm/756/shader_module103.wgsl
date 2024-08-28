struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(65446u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = ~u_input.b.yy;
    var var_1 = ~34579u;
    var_0 = _wgslsmith_sub_vec2_u32(select(~vec2<u32>(countOneBits(4294967295u), ~1u), u_input.b.xy, vec2<bool>(_wgslsmith_f_op_f32(sign(989f)) > -2146f, !select(false, arg_0.a, false))), u_input.b.zy);
    let var_2 = ~(u_input.b.yz & _wgslsmith_mod_vec2_u32((u_input.b.zx & vec2<u32>(4294967295u, 1u)) ^ ~u_input.b.zy, _wgslsmith_mod_vec2_u32(u_input.b.yx, u_input.b.xz >> (vec2<u32>(arg_0.b.a, var_0.x) % vec2<u32>(32u)))));
    var var_3 = ~countOneBits(-(~1i));
    return var_0.x;
}

fn func_2() -> vec4<u32> {
    let var_0 = abs(~(-1i));
    var var_1 = all(!vec2<bool>(true != (37639u >= global0.a), true));
    var var_2 = Struct_3(abs(vec2<u32>(func_3(Struct_2(false, Struct_1(global0.a))) << (0u % 32u), 134748u)), Struct_1((~global0.a | ~u_input.a) | u_input.a));
    let var_3 = Struct_2(!(!(all(vec3<bool>(true, true, true)) & true)), var_2.b);
    global0 = Struct_1(30699u);
    return ~(~(~(~vec4<u32>(18545u, 53236u, 92888u, u_input.b.x))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<f32> {
    var var_0 = select(_wgslsmith_clamp_vec4_u32(vec4<u32>(29710u, 1u, u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, 1u), ~u_input.b.zz)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(28408u, 4294967295u, 7237u, global0.a), vec4<u32>(9204u, u_input.b.x, global0.a, arg_2.a))), _wgslsmith_mult_vec4_u32((vec4<u32>(27028u, 0u, 59720u, 38217u) & vec4<u32>(global0.a, 4294967295u, u_input.b.x, 0u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(40557u, arg_1.b.a, 1u, 0u), vec4<u32>(4294967295u, arg_2.a, arg_1.b.a, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(arg_1.b.a, 7786u)), arg_2.a, reverseBits(4294967295u), ~50831u))), func_2(), true);
    var_0 = _wgslsmith_clamp_vec4_u32(max(min(countOneBits(vec4<u32>(arg_1.b.a, var_0.x, 9736u, var_0.x) ^ vec4<u32>(global0.a, arg_2.a, global0.a, arg_2.a)), vec4<u32>(global0.a & 1649u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(5703u, 1u)), ~global0.a, var_0.x)), _wgslsmith_mod_vec4_u32(min(vec4<u32>(global0.a, global0.a, u_input.a, 25105u), vec4<u32>(var_0.x, 3083u, 1u, u_input.b.x)), ~vec4<u32>(4294967295u, u_input.b.x, 2980u, arg_2.a))), vec4<u32>(arg_1.b.a, 11420u, ~_wgslsmith_add_u32(~global0.a, firstTrailingBit(0u)), countOneBits(_wgslsmith_clamp_u32(arg_1.b.a, arg_2.a, _wgslsmith_sub_u32(0u, global0.a)))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b.a, 0u, 8639u, 16564u), ~vec4<u32>(4294967295u, 4294967295u, var_0.x, 0u)), vec4<u32>(1708u, 1u, arg_1.b.a, arg_1.b.a) | _wgslsmith_add_vec4_u32(vec4<u32>(global0.a, 1u, 0u, 0u), vec4<u32>(arg_2.a, var_0.x, var_0.x, 4294967295u))) | _wgslsmith_div_vec4_u32(func_2(), firstLeadingBit(vec4<u32>(arg_2.a, 20194u, global0.a, 0u)) ^ countOneBits(vec4<u32>(1u, 0u, 1u, 22091u))));
    var var_1 = arg_3.x;
    global0 = Struct_1(max(4294967295u, _wgslsmith_sub_u32(0u, 0u & arg_2.a)));
    let var_2 = Struct_1(global0.a);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(-1224f)), _wgslsmith_f_op_f32(1507f * 321f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(709f, 1566f, -663f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(506f, -1663f, -545f) + vec3<f32>(820f, 1577f, 117f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1132f, 1496f, -374f))), select(arg_0, vec3<bool>(false, true, arg_0.x), arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1340f, -605f, -1120f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(945f, 1152f, -354f) + vec3<f32>(1251f, 301f, -1971f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1442f), 3180f, -799f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(true, true, false), Struct_2(false, Struct_1(0u)), Struct_1(global0.a), vec4<i32>(2147483647i, -2147483647i, -41268i, -44873i)))))), vec3<bool>(!any(vec3<bool>(false, true, true)), true, true))));
    let var_1 = vec3<bool>(any(select(vec3<bool>(any(vec2<bool>(true, false)), true, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true))), ~global0.a == _wgslsmith_div_u32(_wgslsmith_clamp_u32(global0.a, _wgslsmith_sub_u32(4294967295u, 4294967295u), u_input.a), select(~global0.a, select(global0.a, 4294967295u, false), true)), true);
    var var_2 = true;
    global0 = Struct_1(44393u);
    var var_3 = Struct_3(u_input.b.xx, Struct_1(func_2().x));
    var_2 = (!any(var_1) & !(_wgslsmith_dot_vec3_i32(vec3<i32>(24531i, 16412i, -57005i), vec3<i32>(19031i, -2147483647i, -46493i)) < ~1i)) | (_wgslsmith_f_op_f32(var_0.x + -1285f) <= _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-482f * var_0.x), _wgslsmith_div_f32(var_0.x, var_0.x))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1772f, _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_vec3_f32(func_1(var_1, Struct_2(false, Struct_1(4294967295u)), var_3.b, vec4<i32>(1i, -2147483647i, 1i, -12102i))).x)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(var_1.x, var_1.x, false), Struct_2(true, var_3.b), var_3.b, vec4<i32>(-2147483647i, -2147483647i, 1i, -34457i))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-911f, -1000f, 1285f) + vec3<f32>(var_0.x, 1274f, 733f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(-1409f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_0.x, 649f), vec3<f32>(var_0.x, var_0.x, 1383f)))), true))), var_0.zx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-716f, var_0.x, var_0.x, 122f) - vec4<f32>(var_0.x, var_0.x, 188f, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-465f, -747f, -1647f, -401f), vec4<f32>(1050f, -1370f, var_0.x, 134f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, -1501f, 1000f, var_0.x), vec4<f32>(var_0.x, 600f, var_0.x, -1628f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-997f, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_0.x, 907f, 1000f))))));
}

