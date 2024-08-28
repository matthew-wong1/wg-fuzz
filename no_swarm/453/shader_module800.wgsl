struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    global0 = (_wgslsmith_sub_vec2_u32(arg_2.a.xx, abs(u_input.b.wz)) & vec2<u32>(0u & firstLeadingBit(u_input.b.x), ~firstLeadingBit(arg_2.a.x))) >> (~abs(vec2<u32>(~arg_2.a.x, _wgslsmith_clamp_u32(arg_2.a.x, 124606u, 1u))) % vec2<u32>(32u));
    var var_0 = select(select(vec3<u32>(global0.x, global0.x, 18931u), _wgslsmith_div_vec3_u32(arg_2.a | vec3<u32>(global0.x, arg_2.a.x, 1u), arg_2.a), select(select(vec3<bool>(arg_3.x, arg_1, arg_0), vec3<bool>(false, arg_2.b.x, arg_1), !vec3<bool>(arg_0, arg_2.b.x, true)), arg_3.yzw, select(!arg_2.c.xyw, !vec3<bool>(arg_0, arg_1, arg_0), select(arg_3.xzy, vec3<bool>(arg_3.x, arg_2.b.x, arg_2.c.x), vec3<bool>(arg_0, false, false))))), firstTrailingBit(vec3<u32>(40649u, u_input.b.x, ~global0.x)), vec3<bool>(arg_2.b.x, arg_1, arg_2.b.x));
    global0 = ~arg_2.a.zz;
    var_0 = _wgslsmith_div_vec3_u32(max((vec3<u32>(4294967295u, global0.x, arg_2.a.x) ^ vec3<u32>(20722u, 1u, 1u)) >> (select(vec3<u32>(57570u, 47566u, 4294967295u), ~vec3<u32>(55238u, 1u, arg_2.a.x), arg_3.xxx) % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_2.a.x, u_input.b.x, 1u), abs(arg_2.a))), select(~vec3<u32>(~115769u, global0.x, ~321u), max(vec3<u32>(var_0.x, _wgslsmith_dot_vec3_u32(arg_2.a, vec3<u32>(var_0.x, global0.x, arg_2.a.x)), max(0u, 0u)), vec3<u32>(4294967295u, var_0.x, ~4294967295u)), arg_3.xzw));
    var var_1 = Struct_5(_wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, -44534i), vec2<i32>(0i, ~21946i), any(arg_2.c.xzy) && false), vec2<i32>(max(_wgslsmith_clamp_i32(8735i, u_input.d.x, 1i), _wgslsmith_add_i32(-26758i, u_input.c.x)), ~u_input.c.x)), 0i, ~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.zwz, arg_2.a & arg_2.a), ~(~u_input.b.wwy), u_input.b.yxw));
    return arg_2.d;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_1 {
    return Struct_1(vec3<u32>(~943u, u_input.b.x, _wgslsmith_div_u32(min(select(51029u, 17157u, arg_1.x), ~0u), arg_0)), !vec4<bool>(!all(arg_1), all(arg_1.yx), all(arg_1), all(vec2<bool>(arg_1.x, arg_1.x))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), !vec4<bool>(false, arg_1.x, arg_1.x, true)), vec4<bool>(_wgslsmith_f_op_f32(func_3(arg_1.x, true, Struct_1(vec3<u32>(0u, 42166u, global0.x), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, false), -1572f), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x))) < _wgslsmith_f_op_f32(func_3(false, false, Struct_1(u_input.b.yzy, vec4<bool>(false, false, true, true), vec4<bool>(true, true, arg_1.x, arg_1.x), 324f), vec4<bool>(true, false, false, arg_1.x))), false, true, arg_1.x), true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1093f * _wgslsmith_f_op_f32(sign(-742f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2121f + 1706f))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: i32) -> vec2<bool> {
    var var_0 = !vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1558f, -1317f) + _wgslsmith_f_op_f32(sign(-1219f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1533f, 143f)), _wgslsmith_f_op_f32(889f - -1127f)), !((-1i << (arg_2.a.x % 32u)) >= arg_0.x));
    var_0 = vec2<bool>(any(arg_2.c.ww), u_input.a > global0.x);
    var var_1 = firstTrailingBit(countOneBits(vec3<i32>(min(_wgslsmith_div_i32(-21512i, -1i), firstTrailingBit(arg_3)), _wgslsmith_mult_i32(arg_3, _wgslsmith_sub_i32(-1i, 0i)), ~1i)));
    let var_2 = ~0i;
    return func_2(1u, arg_2.c.xzz).b.xw;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = select(vec2<bool>(false, true), func_4(u_input.d.zyy, !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), func_2(4294967295u, vec3<bool>(true, false, true)), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.c.x, u_input.d.x, u_input.d.x, u_input.c.x)), -vec4<i32>(u_input.d.x, u_input.d.x, -17944i, 9012i))), vec2<bool>(any(vec4<bool>(true, true, true, true)), true));
    var var_1 = 1499f;
    return Struct_2(!(!select(!vec4<bool>(var_0.x, false, true, false), vec4<bool>(false, var_0.x, true, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(vec2<u32>(u_input.a, u_input.b.x) ^ vec2<u32>(max(global0.x, _wgslsmith_mult_u32(0u, 1u)), global0.x));
    global0 = ~_wgslsmith_div_vec2_u32(~firstLeadingBit(u_input.b.wy), vec2<u32>(u_input.b.x, u_input.a >> (select(1276u, 1u, false) % 32u)));
    global0 = u_input.b.yx;
    let var_0 = -4975i;
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 579f, 271f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-838f * 1016f), 2077f))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), vec4<u32>(71818u, u_input.b.x, global0.x, u_input.a) << (vec4<u32>(u_input.b.x, 57346u, u_input.b.x, global0.x) % vec4<u32>(32u)), ~u_input.b), ~vec4<u32>(4294967295u, 0u, 1u, 28477u)), ~(~func_2(firstTrailingBit(1u), vec3<bool>(false, var_1.a.x, var_1.a.x)).a.x), vec2<i32>(firstTrailingBit(var_0), -3850i));
}

