struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(529f, 261f);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(-countOneBits(-2147483647i));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(global0.x, 144f)), _wgslsmith_f_op_f32(f32(-1f) * -1502f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(321f, global0.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global0.x))), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, global0.x), vec2<f32>(817f, global0.x))))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)) - vec2<f32>(-632f, _wgslsmith_f_op_f32(trunc(global0.x)))))), true | (_wgslsmith_div_u32(4294967295u & u_input.b, u_input.a) >= u_input.b)));
    var var_1 = var_0;
    let var_2 = Struct_1(1u == _wgslsmith_sub_u32(~53185u & ~u_input.a, u_input.a), 1i, ~(~abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 21417u, u_input.b), vec3<u32>(u_input.a, u_input.b, 4294967295u)))), u_input.a);
    var var_3 = select(!select(vec3<bool>(true, false & var_2.a, true), select(!vec3<bool>(var_2.a, var_2.a, var_2.a), !vec3<bool>(var_2.a, var_2.a, var_2.a), !var_2.a), vec3<bool>(true, false, true)), vec3<bool>(true, true, false), any(select(!vec4<bool>(var_2.a, true, false, var_2.a), !vec4<bool>(var_2.a, true, false, var_2.a), vec4<bool>(true, false, true, var_2.a))) & true);
    return !(!select(!(!vec4<bool>(true, var_2.a, var_3.x, var_2.a)), vec4<bool>(true, !var_2.a, var_0.a < var_0.a, false), true));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(~(~(-7250i)));
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), vec2<f32>(-493f, global0.x), vec2<bool>(false, false)))))), vec2<f32>(1f, 1f), all(func_3())))));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1917f, _wgslsmith_f_op_f32(sign(613f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x))), _wgslsmith_f_op_f32(global0.x * -1276f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-541f, 568f, _wgslsmith_div_f32(460f, _wgslsmith_f_op_f32(-847f * global0.x)), global0.x) - vec4<f32>(267f, _wgslsmith_f_op_f32(445f - -1000f), -1219f, global0.x))));
    let var_2 = Struct_1(false, u_input.c.x, ~vec3<u32>(~1u, u_input.b, 24252u) >> (_wgslsmith_div_vec3_u32(~(~vec3<u32>(82123u, 4294967295u, u_input.a)), select(vec3<u32>(u_input.b, 0u, 1u), vec3<u32>(46673u, 0u, u_input.b), true)) % vec3<u32>(32u)), ~4294967295u);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1268f, -384f, _wgslsmith_f_op_f32(var_1.x + 540f), _wgslsmith_f_op_f32(max(382f, global0.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1111f, -989f, global0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1356f, global0.x, -1144f, -1000f))))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(191f * _wgslsmith_f_op_f32(-869f - var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-global0.x)), -207f), vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(exp2(var_1.x))), 1700f, var_1.x, _wgslsmith_f_op_f32(min(1262f, _wgslsmith_div_f32(-1404f, 681f)))))));
    return Struct_2(var_2.b);
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<u32>) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2128f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(383f, -943f) + _wgslsmith_f_op_f32(-global0.x)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -538f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    let var_0 = arg_0;
    let var_1 = Struct_2(_wgslsmith_dot_vec4_i32(abs(u_input.c), max(u_input.c, vec4<i32>(u_input.c.x, -2147483647i, arg_1.a, -19386i)) >> (min(vec4<u32>(u_input.a, u_input.a, arg_3.x, u_input.a), select(vec4<u32>(arg_2.x, u_input.a, arg_2.x, 1u), vec4<u32>(u_input.a, arg_2.x, arg_2.x, 1u), true)) % vec4<u32>(32u))));
    var var_2 = arg_3.x;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(min(1675f, 303f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(462f, global0.x) + vec2<f32>(-1957f, global0.x)))))), vec2<f32>(global0.x, _wgslsmith_f_op_f32(select(global0.x, 284f, select(false, false, true) && true))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, 195f, false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x)))), vec2<f32>(-278f, -1047f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, 215f), vec2<f32>(global0.x, global0.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-877f, global0.x)))) - _wgslsmith_f_op_vec2_f32(func_4(Struct_2(0i), func_1(vec4<u32>(1u, u_input.a, 1u, 55445u) | vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.a)), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(u_input.a, 1u, u_input.a)), firstTrailingBit(vec3<u32>(0u, u_input.a, 1u))), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.b), vec2<u32>(1u, u_input.b)), ~vec2<u32>(u_input.a, 1u))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-550f, global0.x)));
    let var_0 = ~vec3<u32>(120697u, u_input.a, u_input.a) | _wgslsmith_clamp_vec3_u32(vec3<u32>(abs(u_input.b | 4294967295u), 1u, abs(u_input.b)), max(vec3<u32>(18427u, ~4526u, countOneBits(u_input.b)), ~vec3<u32>(1u, u_input.a, u_input.b)), _wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(35984u, u_input.a, 1u), vec3<u32>(1u, 8101u, 74041u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 88557u, 4294967295u) ^ vec3<u32>(u_input.a, 0u, 54231u), vec3<u32>(45346u, u_input.a, 67420u) >> (vec3<u32>(48269u, u_input.b, u_input.b) % vec3<u32>(32u)))));
    let var_1 = global0.x;
    var var_2 = func_2();
    var var_3 = func_1(~vec4<u32>(0u, 4294967295u, ~(~8385u), 16521u));
    var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1424f, -1187f, false)) * global0.x)), global0.x), abs(_wgslsmith_mod_vec2_i32(u_input.c.xw, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_3.a, -2954i), u_input.c.yz, u_input.c.wy))) >> (_wgslsmith_mod_vec2_u32(var_0.zx, var_0.xx) % vec2<u32>(32u)), vec3<u32>(abs(var_0.x), u_input.b, ~23597u), min(firstTrailingBit(_wgslsmith_mod_vec4_i32(u_input.c, u_input.c)) ^ -_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 2147483647i, var_3.a, var_2.a), u_input.c, vec4<i32>(u_input.c.x, var_2.a, var_3.a, -1i)), u_input.c), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -282f)), -1607f, _wgslsmith_div_f32(global0.x, global0.x)));
}

