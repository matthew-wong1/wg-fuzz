struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: vec3<f32> = vec3<f32>(737f, 1019f, -2227f);

var<private> global2: f32;

var<private> global3: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<bool> {
    var var_0 = Struct_2(true);
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_dot_vec4_u32(global3.a, vec4<u32>(4110u, arg_1.a.x, arg_1.a.x, 39071u))), arg_1.a.x) ^ ~u_input.b, arg_1.a.xx);
    let var_2 = vec4<i32>(_wgslsmith_clamp_i32(max(arg_0.a, -1i), arg_2.x, 11157i), -4563i, ~(-48999i), -27075i);
    global1 = arg_0.c.wwy;
    var var_3 = Struct_3(-(_wgslsmith_sub_i32(countOneBits(14532i), 2147483647i) ^ (_wgslsmith_dot_vec4_i32(arg_2, arg_2) & u_input.c.x)), vec2<bool>(false, any(select(vec3<bool>(false, true, arg_0.b.x), !vec3<bool>(false, arg_0.b.x, global0.x), vec3<bool>(global0.x, global0.x, arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(292f, 978f, _wgslsmith_f_op_f32(154f * -487f), -1689f)), arg_0.c, !(!(!vec4<bool>(true, arg_0.b.x, var_0.a, var_0.a))))));
    return vec2<bool>(select(!(!(true || var_0.a)), any(vec4<bool>(var_3.b.x && global0.x, !var_0.a, arg_0.b.x, arg_0.b.x)), global0.x), false);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec2<f32>) -> Struct_2 {
    global0 = func_3(Struct_3(abs(_wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(u_input.c.x, -14672i, -47053i)) >> (1u % 32u)), select(vec2<bool>(true, true), vec2<bool>(true, global0.x), global0.x), vec4<f32>(-808f, global1.x, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -1281f, global0.x))))), Struct_1(vec4<u32>(4294967295u, firstTrailingBit(4294967295u), global3.a.x ^ global3.a.x, 1u) << (~abs(vec4<u32>(u_input.a.x, 3851u, 85994u, global3.a.x)) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(~(-vec4<i32>(-1i, u_input.c.x, -9734i, 32247i) >> (vec4<u32>(0u, 89792u, 22712u, global3.a.x) % vec4<u32>(32u))), vec4<i32>(arg_1.x, _wgslsmith_sub_i32(firstTrailingBit(u_input.c.x), arg_1.x), arg_1.x >> (_wgslsmith_clamp_u32(4294967295u, 1u, 1u) % 32u), arg_1.x)));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.wwz - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, arg_2.x, -1000f)))))));
    var var_0 = _wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.x)), -256f, -1160f, _wgslsmith_f_op_f32(abs(-1055f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), -157f, arg_2.x, _wgslsmith_div_f32(global1.x, 368f))))));
    let var_1 = Struct_2(!any(select(select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, global0.x, true, false), true), select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(global0.x, global0.x, true, global0.x), false), select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, false, false, false), vec4<bool>(true, false, false, global0.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 211f, arg_0.x, -514f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, -1436f, 671f, 397f) * vec4<f32>(var_0.x, global1.x, -1000f, global1.x))) + vec4<f32>(global1.x, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(floor(arg_0.x)))))));
    return var_1;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_2 {
    global1 = arg_3.xwy;
    return func_2(arg_3, _wgslsmith_clamp_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, arg_2.a, 1i), vec3<i32>(-1i, arg_2.a, -4736i)), ~(~vec3<i32>(2147483647i, 20829i, arg_2.a)), !global0.x && true), u_input.c, select(-vec3<i32>(-3231i, arg_2.a, arg_2.a), ~u_input.c, arg_2.b.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.c.wy)), global1.zx)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2) -> bool {
    let var_0 = -2623i;
    global3 = Struct_1(~vec4<u32>(~(~18176u), max(_wgslsmith_mult_u32(u_input.e, u_input.d), global3.a.x), ~4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(31847u, 1u), vec2<u32>(u_input.b.x, global3.a.x)), max(0u, global3.a.x))));
    var var_1 = arg_0.c.xyx;
    var var_2 = false && arg_2.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(var_1.x, global1.x, func_1(0u, Struct_1(global3.a), arg_0, arg_0.c).a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - 403f), global1.x, _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.c, arg_0.c)))))));
    return select(true, !(!(1f <= _wgslsmith_div_f32(1050f, arg_0.c.x))), arg_2.a);
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: bool, arg_3: f32) -> Struct_1 {
    return Struct_1(max(countOneBits(vec4<u32>(_wgslsmith_div_u32(u_input.d, u_input.b.x), abs(1u), ~u_input.a.x, u_input.b.x)), vec4<u32>(~_wgslsmith_sub_u32(u_input.d, global3.a.x), 4294967295u, ~global3.a.x, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(global0.x, vec2<bool>(!func_4(Struct_3(u_input.c.x, vec2<bool>(true, true), vec4<f32>(global1.x, 2227f, -1269f, global1.x)), false, func_1(1u, Struct_1(vec4<u32>(54400u, global3.a.x, 0u, global3.a.x)), Struct_3(17559i, vec2<bool>(global0.x, global0.x), vec4<f32>(global1.x, -344f, -316f, global1.x)), vec4<f32>(-1000f, 584f, -244f, global1.x))), (70632u > u_input.d) && global0.x), func_1(u_input.d, Struct_1(abs(global3.a)), Struct_3(~u_input.c.x, vec2<bool>(global0.x, false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, 152f) * vec4<f32>(-181f, 1017f, global1.x, global1.x)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, global1.x, global1.x, global1.x), vec4<f32>(global1.x, -169f, global1.x, global1.x))))), vec4<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(134f, 534f)))), -440f, 692f)).a, -462f);
    var var_0 = _wgslsmith_f_op_f32(abs(-582f));
    let var_1 = Struct_2(!global0.x);
    global3 = Struct_1(vec4<u32>(max(~global3.a.x, ~u_input.b.x), 6722u << (max(global3.a.x ^ 7865u, abs(u_input.b.x)) % 32u), 4489u, ~(~global3.a.x)));
    global0 = vec2<bool>(_wgslsmith_f_op_f32(-global1.x) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(447f, -1103f) - _wgslsmith_f_op_f32(max(global1.x, -1831f))))), var_1.a);
    global0 = select(!(!vec2<bool>(!global0.x, var_1.a)), func_3(Struct_3(-2716i, !vec2<bool>(var_1.a, global0.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x))))), Struct_1(vec4<u32>(~21771u, u_input.e, global3.a.x, global3.a.x & u_input.e)), min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i) << (vec4<u32>(4294967295u, u_input.a.x, 17513u, 0u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -52191i, u_input.c.x, 1i), vec4<i32>(u_input.c.x, -2147483647i, -1i, 35235i))), max(vec4<i32>(0i, u_input.c.x, 0i, u_input.c.x) | vec4<i32>(19135i, 1i, -18636i, u_input.c.x), ~vec4<i32>(2147483647i, u_input.c.x, 19408i, 0i)))), vec2<bool>(func_3(Struct_3(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), select(vec2<bool>(var_1.a, global0.x), vec2<bool>(var_1.a, true), vec2<bool>(true, var_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 402f, 1517f, global1.x))), Struct_1(global3.a << (vec4<u32>(4294967295u, u_input.b.x, u_input.d, 1u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(-36729i, u_input.c.x, 1i, -1i), vec4<i32>(u_input.c.x, u_input.c.x, 0i, 1i)) ^ ~vec4<i32>(u_input.c.x, 1i, u_input.c.x, -30940i)).x, var_1.a));
    global2 = -533f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global1.x, global1.x))), global1.x, _wgslsmith_f_op_f32(ceil(124f))) - vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(max(global1.x, global1.x))), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -152f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(global1.xz, _wgslsmith_f_op_vec2_f32(-global1.xy))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2245f, global1.x), vec2<f32>(-1000f, global1.x), vec2<bool>(global0.x, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global1.xz, global1.zx), vec2<f32>(global1.x, global1.x)), func_1(~15453u, func_5(var_1.a, vec2<bool>(false, false), true, global1.x), Struct_3(2147483647i, vec2<bool>(var_1.a, false), vec4<f32>(-302f, global1.x, -278f, 350f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -768f, global1.x, 2203f) - vec4<f32>(-343f, 1257f, global1.x, global1.x))).a)), all(!(!vec3<bool>(var_1.a, false, global0.x))))));
}

