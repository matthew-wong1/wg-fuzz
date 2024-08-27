struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: bool,
    d: Struct_3,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<u32>) -> u32 {
    var var_0 = Struct_2(!select(vec3<bool>(true, all(vec4<bool>(true, true, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(false, true, true, true))), vec3<bool>(true, any(vec3<bool>(false, true, true)), true)), _wgslsmith_f_op_vec2_f32(-arg_0.e.a), arg_0.e, vec3<f32>(1000f, -1000f, arg_1.a), _wgslsmith_div_u32(1u, arg_1.c));
    global0 = vec4<f32>(-889f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(369f, -1657f))))), var_0.d.x, 1000f);
    var var_1 = vec3<bool>(_wgslsmith_dot_vec2_u32(~(vec2<u32>(0u, arg_0.b) << (vec2<u32>(arg_1.c, arg_1.c) % vec2<u32>(32u))), u_input.a.zx) == _wgslsmith_sub_u32(abs(~4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 586u), u_input.a.zy) >> (arg_0.c % 32u)), !(!any(var_0.a)), true);
    var_1 = var_0.a;
    let var_2 = Struct_2(vec3<bool>(!var_1.x, all(!var_0.a), var_0.a.x), _wgslsmith_div_vec2_f32(arg_0.e.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.c) + -1798f), arg_0.d)), arg_0.e, _wgslsmith_f_op_vec3_f32(select(global0.zww, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.zyw)), vec3<bool>((var_0.c.d.x <= -1i) | any(var_1.zz), false, arg_1.e.b > 14354i))), arg_2.x);
    return 8967u;
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_mod_u32(~select(u_input.a.x | 1u, abs(u_input.a.x), true), ~u_input.a.x) << (1u % 32u);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1024f, _wgslsmith_f_op_f32(sign(global0.x)))), ~var_0, select(countOneBits(func_3(Struct_3(1000f, 4437u, 4294967295u, global0.x, Struct_1(vec2<f32>(global0.x, global0.x), -9035i, global0.x, vec2<i32>(-15899i, 73029i), 26572i)), Struct_3(533f, u_input.a.x, 112824u, global0.x, Struct_1(global0.wz, -23265i, global0.x, vec2<i32>(-1i, -3799i), 2147483647i)), abs(vec4<u32>(var_0, 1u, 4294967295u, 57849u)))), u_input.a.x, true), _wgslsmith_f_op_f32(round(-1062f)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2002f - global0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x)))), 0i, _wgslsmith_f_op_f32(-328f * global0.x), _wgslsmith_clamp_vec2_i32(select(reverseBits(vec2<i32>(0i, -1i)), vec2<i32>(-26560i, 0i), true), ~abs(vec2<i32>(1i, -1i)), ~vec2<i32>(1i, -13865i) ^ (vec2<i32>(-2147483647i, 2147483647i) >> (u_input.a.yz % vec2<u32>(32u)))), _wgslsmith_div_i32(0i << (1u % 32u), 1i)));
    let var_2 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global0.x)));
    var var_3 = any(!vec4<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), false, false));
    var var_4 = abs(~_wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, var_1.e.e, _wgslsmith_sub_i32(var_1.e.b, -2147483647i)), ~abs(vec4<i32>(var_1.e.d.x, 2147483647i, 28351i, -28050i))));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-521f, -287f, 838f, 385f) - vec4<f32>(global0.x, global0.x, var_1.a, 920f)))))));
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_4(!any(vec2<bool>(true, true)) | all(vec3<bool>(true, global0.x >= global0.x, true)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()), vec4<f32>(2743f, global0.x, global0.x, 1736f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-745f)), global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)))));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-global0.x), false)))), global0.x, 1f));
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, 373f, global0.x, 1809f), vec4<f32>(global0.x, global0.x, global0.x, -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(2689f - global0.x), _wgslsmith_f_op_f32(global0.x + global0.x), global0.x, global0.x), !var_0.a || false)), vec4<f32>(global0.x, 1000f, 1675f, -752f))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2()).x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-172f, global0.x)))))), _wgslsmith_f_op_f32(select(1250f, global0.x, any(vec2<bool>(true, true)))), -1000f, _wgslsmith_f_op_f32(trunc(global0.x)));
    return vec2<bool>(false, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), !func_1()), true), vec2<bool>(-_wgslsmith_dot_vec2_i32(vec2<i32>(56941i, 50786i), vec2<i32>(-6903i, -25559i)) == abs(-2147483647i), false), func_1().x);
    var var_1 = _wgslsmith_dot_vec3_i32(~vec3<i32>(max(_wgslsmith_clamp_i32(-1i, -36753i, -2147483647i), countOneBits(-8435i)), _wgslsmith_mod_i32(~(-2147483647i), ~(-262i)), 2147483647i), reverseBits(-vec3<i32>(0i, -22753i, -39753i) << (_wgslsmith_mod_vec3_u32(vec3<u32>(33611u, u_input.a.x, u_input.a.x), u_input.a) % vec3<u32>(32u))) >> (firstTrailingBit(u_input.a) % vec3<u32>(32u)));
    var var_2 = Struct_4(true);
    var var_3 = 24088i;
    var_2 = Struct_4(true);
    var_3 = max(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(_wgslsmith_mod_i32(-2147483647i, 1i)), ~firstTrailingBit(-20933i), _wgslsmith_add_i32(1i, i32(-1i) * -15859i)), ~vec3<i32>(-2147483647i, 37164i, -32342i) & (vec3<i32>(0i, -20683i, 35755i) >> ((vec3<u32>(u_input.a.x, 0u, u_input.a.x) >> (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u)))));
    var var_4 = Struct_4(all(func_1()));
    var var_5 = Struct_2(vec3<bool>(!((var_0.x || false) && select(var_2.a, true, var_4.a)), var_2.a, var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.yz), _wgslsmith_f_op_vec2_f32(vec2<f32>(827f, global0.x) * vec2<f32>(global0.x, global0.x)), var_0)) - vec2<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + -1143f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 275f))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.xy)) + _wgslsmith_f_op_vec2_f32(global0.wx + vec2<f32>(595f, global0.x))) - global0.xy), 3065i, -745f, abs(~vec2<i32>(-2147483647i, 12732i)) << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 13304u, 1290u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 41330u, u_input.a.x)), ~17125u) % vec2<u32>(32u)), -1i), _wgslsmith_f_op_vec4_f32(func_2()).yxx, ~max(41300u, ~(~u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.b);
}

