struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    let var_0 = Struct_1(!vec4<bool>(all(!global0.a.xwy), true, !global0.a.x, _wgslsmith_f_op_f32(-arg_0.x) > _wgslsmith_f_op_f32(1072f - 473f)), global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c * _wgslsmith_f_op_vec4_f32(global0.c - vec4<f32>(arg_0.x, global0.c.x, 335f, global0.c.x)))));
    var var_1 = select(vec4<u32>(~u_input.b.x, ~0u, 1u, _wgslsmith_sub_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b.x, 1u), vec4<u32>(4294967295u, u_input.d, 4294967295u, u_input.c.x))), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c.x, 4294967295u)), ~vec2<u32>(u_input.b.x, 4294967295u)))), select(~_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.d, u_input.c.x, 12681u), vec4<u32>(23978u, 56388u, u_input.b.x, u_input.c.x)), u_input.b, true), true);
    var var_2 = ~u_input.a.yz;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1039f - arg_0.x)))))), 1618f);
    var_1 = u_input.b;
    return global0.c.x;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = -1i;
    global0 = Struct_1(!select(vec4<bool>(true, false, select(true, global0.a.x, arg_1.a.x), true), vec4<bool>(!global0.a.x, u_input.a.x > -1i, true, global0.a.x && true), global0.a), 2147483647i, global0.c);
    let var_1 = arg_1.c.x;
    global0 = arg_1;
    var var_2 = Struct_1(select(select(!(!vec4<bool>(false, true, false, global0.a.x)), arg_1.a, true), arg_1.a, !(global0.c.x >= arg_1.c.x)), _wgslsmith_mod_i32(arg_1.b, _wgslsmith_clamp_i32(arg_1.b << (u_input.d % 32u), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.b, -46726i), vec2<i32>(-11284i, arg_1.b)), ~firstTrailingBit(-2147483647i))), vec4<f32>(505f, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(max(-554f, _wgslsmith_f_op_f32(step(arg_1.c.x, -1016f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * global0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(298f, arg_0))) - -839f)));
    return !(-1649i == reverseBits(max(var_2.b, global0.b ^ -1i)));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    let var_0 = firstTrailingBit(~countOneBits(6240u));
    var var_1 = Struct_1(vec4<bool>(true, arg_2, ((u_input.a.x << (var_0 % 32u)) >= global0.b) | !(global0.b == u_input.a.x), true), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_mult_i32(reverseBits(2147483647i) << (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(25096u, 1u, 13687u, u_input.d)) % 32u), _wgslsmith_mult_i32(-30637i ^ u_input.a.x, i32(-1i) * -38856i))), global0.c);
    var var_2 = abs(~(-select(var_1.b, global0.b, arg_2)) << (u_input.b.x % 32u));
    global0 = Struct_1(select(select(!global0.a, select(vec4<bool>(false, false, arg_0, true), !vec4<bool>(arg_0, arg_2, false, false), vec4<bool>(var_1.a.x, arg_0, false, arg_2)), var_1.a), !var_1.a, !select(var_1.a, var_1.a, select(vec4<bool>(arg_1.x, global0.a.x, arg_0, global0.a.x), var_1.a, vec4<bool>(true, var_1.a.x, true, true)))), u_input.a.x, _wgslsmith_f_op_vec4_f32(-global0.c));
    var var_3 = Struct_1(var_1.a, u_input.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-542f, var_1.c.x, _wgslsmith_f_op_f32(global0.c.x - _wgslsmith_div_f32(2584f, -1118f)), -259f) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(581f, var_1.c.x, -955f, global0.c.x), vec4<f32>(var_1.c.x, 1000f, global0.c.x, global0.c.x)))))));
    return Struct_1(!(!select(select(vec4<bool>(true, global0.a.x, false, arg_0), var_1.a, vec4<bool>(false, true, arg_2, arg_0)), vec4<bool>(false, arg_2, true, true), select(var_1.a, vec4<bool>(false, true, var_1.a.x, arg_2), arg_1.x))), global0.b, _wgslsmith_f_op_vec4_f32(-var_1.c));
}

fn func_1(arg_0: i32) -> u32 {
    global0 = func_4(true, vec2<bool>(false, any(vec3<bool>(true, func_2(global0.c.x, Struct_1(vec4<bool>(true, true, false, true), global0.b, global0.c)), true))), (_wgslsmith_dot_vec3_u32(vec3<u32>(85572u, 0u, u_input.c.x) << (vec3<u32>(u_input.b.x, 0u, u_input.d) % vec3<u32>(32u)), firstLeadingBit(u_input.b.wyy)) & 37189u) < _wgslsmith_mod_u32(~_wgslsmith_div_u32(0u, 18835u), 52300u));
    global0 = func_4(true, func_4(any(vec3<bool>(global0.a.x, true, true)), select(!func_4(true, global0.a.yw, global0.a.x).a.xw, select(select(vec2<bool>(true, global0.a.x), vec2<bool>(global0.a.x, false), global0.a.yy), select(global0.a.zw, global0.a.yx, global0.a.x), func_4(global0.a.x, global0.a.ww, global0.a.x).a.xz), global0.a.x), true).a.wx, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1523f, -406f))), Struct_1(vec4<bool>(global0.a.x, !global0.a.x, true, global0.b <= u_input.a.x), 0i, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(global0.c, vec4<f32>(global0.c.x, global0.c.x, 602f, global0.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2548f, -1000f, -1038f, -1075f) * global0.c))))));
    global0 = Struct_1(!vec4<bool>(true, global0.a.x, !all(vec4<bool>(global0.a.x, false, false, global0.a.x)), false), -_wgslsmith_dot_vec3_i32(~select(u_input.a, vec3<i32>(global0.b, -1i, 0i), true), u_input.a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_f_op_f32(-global0.c.x)), global0.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(710f - global0.c.x)))))));
    global0 = Struct_1(!global0.a, u_input.a.x, _wgslsmith_f_op_vec4_f32(floor(global0.c)));
    global0 = func_4(_wgslsmith_f_op_f32(-390f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(318f, global0.c.x) * global0.c.x)) == global0.c.x, !vec2<bool>(global0.a.x & true, !(true && global0.a.x)), global0.a.x);
    return ~u_input.d;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = func_4(true, global0.a.zz, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(159f, global0.c.x)), -1427f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(-global0.c.x))));
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_add_i32(-673i, min(var_0.b ^ func_4(false, vec2<bool>(true, false), global0.a.x).b, var_0.b)), 0i);
    global0 = func_4(!all(var_0.a.wzw), !(!select(func_4(global0.a.x, global0.a.zz, var_0.a.x).a.yx, vec2<bool>(true, global0.a.x), func_2(var_0.c.x, var_0))), var_0.a.x & func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.c.x, -261f, true)), -1490f), Struct_1(vec4<bool>(true, false, var_0.a.x, global0.a.x), -var_0.b, _wgslsmith_f_op_vec4_f32(sign(global0.c)))));
    var_1 = i32(-1i) * -abs(~(-1i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, 23032i, -6372i, 2147483647i), vec4<i32>(-2147483647i, arg_1.x, arg_1.x, 1i)));
    var var_2 = vec4<i32>(9734i, i32(-1i) * -11915i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, 0i, u_input.a.x, -1i), vec4<i32>(2147483647i, -54813i, global0.b, 32540i) << (u_input.b % vec4<u32>(32u))), -2147483647i & arg_1.x, func_4(all(var_0.a), !vec2<bool>(global0.a.x, true), !var_0.a.x).a.x), _wgslsmith_dot_vec3_i32(u_input.a, (u_input.a | u_input.a) >> (~u_input.c % vec3<u32>(32u)))) & vec4<i32>(_wgslsmith_div_i32(-20947i, ~(-41147i)), ~(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-2147483647i, var_0.b, arg_1.x)) ^ 23988i), -2147483647i, _wgslsmith_mult_i32(1i, ~abs(var_0.b)));
    return func_4(true, vec2<bool>(global0.a.x, !global0.a.x), !(!(_wgslsmith_f_op_f32(-global0.c.x) < _wgslsmith_f_op_f32(-arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1314f, _wgslsmith_f_op_f32(f32(-1f) * -692f)))), ~u_input.a.xz, vec2<u32>(~u_input.b.x, func_1(u_input.a.x)));
    let var_0 = func_4(false, !global0.a.xz, (5728u <= u_input.d) && global0.a.x);
    global0 = Struct_1(!vec4<bool>(all(global0.a), true, true, false), 40716i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, global0.c.x, 475f, var_0.c.x) + vec4<f32>(-1777f, global0.c.x, var_0.c.x, -191f))))));
    global0 = var_0;
    var var_1 = ~reverseBits(-func_5(var_0.c.xy, vec2<i32>(global0.b, 6248i), vec2<u32>(u_input.c.x, 18302u)).b ^ firstTrailingBit(0i));
    var_1 = -2147483647i;
    global0 = func_4(var_0.a.x | (!var_0.a.x || true), vec2<bool>((_wgslsmith_add_u32(u_input.d, u_input.c.x) ^ ~4294967295u) > (firstLeadingBit(u_input.d) ^ ~13853u), all(vec2<bool>(true, !global0.a.x))), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -min(~firstTrailingBit(vec4<i32>(var_0.b, -6669i, 1i, var_0.b)), firstTrailingBit(vec4<i32>(global0.b, 28056i, var_0.b, -58387i) & vec4<i32>(11504i, -37773i, 23701i, var_0.b))), firstLeadingBit(max(1u, ~u_input.d)));
}

