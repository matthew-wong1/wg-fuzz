struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32 = 2147483647i;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(global0.b, global0.a, !select(select(!global0.c, vec3<bool>(false, true, global0.c.x), global0.a.d <= 3792u), vec3<bool>(false, global0.c.x, true), true));
    return firstLeadingBit(reverseBits(1u));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<bool>, arg_3: vec3<bool>) -> vec3<i32> {
    var var_0 = 4294967295u;
    var var_1 = global0.b;
    var_0 = func_3() >> (2600u % 32u);
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.x, u_input.b.x, arg_1, var_1.a.x), vec4<u32>(arg_1, ~(~0u), arg_1, 1u)) & ((72674u >> (var_1.b.x % 32u)) | 3189u);
    var_1 = Struct_1(global0.a.b, _wgslsmith_div_vec3_u32(vec3<u32>(1u, firstLeadingBit(abs(global0.b.e.x)), ~_wgslsmith_sub_u32(0u, global0.a.d)), vec3<u32>(u_input.a, countOneBits(50408u | var_1.a.x), func_3())), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-268f - _wgslsmith_f_op_f32(var_1.c.x + global0.a.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -570f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(134f, 401f)) * _wgslsmith_f_op_vec2_f32(-global0.b.c))))), ~(_wgslsmith_mult_u32(arg_1, 1u) << (~43599u % 32u)) | 4294967295u, var_1.e);
    return vec3<i32>(u_input.c.x, -15742i, reverseBits(-firstTrailingBit(~u_input.c.x)));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec3_i32(-func_2(vec2<u32>(1u, 29932u), u_input.a, !(!vec4<bool>(global0.c.x, global0.c.x, false, global0.c.x)), !vec3<bool>(true, true, global0.c.x)), vec3<i32>(_wgslsmith_add_i32(u_input.c.x, 1i), 0i, abs(-u_input.c.x) >> (_wgslsmith_dot_vec2_u32(min(u_input.b, vec2<u32>(117849u, 25983u)), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.b.x, global0.a.e.x), u_input.b)) % 32u)), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -62469i, u_input.c.x), vec3<i32>(34962i, -16485i, u_input.c.x)), ~vec3<i32>(u_input.c.x, 1i, u_input.c.x)) & 797i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-12752i, u_input.c.x), min(u_input.c, vec2<i32>(u_input.c.x, u_input.d))), _wgslsmith_mult_i32(firstTrailingBit(-30326i), 43596i), _wgslsmith_sub_i32(2147483647i, 1i)), -u_input.c.x));
    global0 = Struct_2(global0.b, global0.b, !vec3<bool>(global0.c.x, true, !(u_input.c.x < -1i)));
    global0 = Struct_2(Struct_1(vec3<u32>(countOneBits(1u), global0.a.d, 1u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 71603u), global0.a.e) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, global0.b.d, global0.b.a.x), ~global0.a.b, countOneBits(vec3<u32>(u_input.a, 0u, u_input.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(global0.a.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.c.x, global0.a.c.x) - vec2<f32>(global0.a.c.x, global0.b.c.x)), !global0.c.zz)))), 4294967295u, ~_wgslsmith_sub_vec3_u32(vec3<u32>(167u, 66550u, global0.a.d) & vec3<u32>(4294967295u, 56440u, global0.a.a.x), ~global0.a.e)), Struct_1(~abs(min(global0.a.e, global0.a.a)), select(reverseBits(vec3<u32>(global0.b.e.x, 1u, global0.b.e.x)), reverseBits(vec3<u32>(u_input.a, 4294967295u, global0.a.e.x)), select(vec3<bool>(true, global0.c.x, global0.c.x), select(global0.c, global0.c, true), global0.c.x)), vec2<f32>(525f, -239f), abs(reverseBits(reverseBits(1u))), vec3<u32>(u_input.a, 4294967295u, _wgslsmith_dot_vec3_u32(global0.b.e ^ global0.a.e, vec3<u32>(global0.b.d, u_input.b.x, u_input.b.x)))), !select(vec3<bool>(any(global0.c), any(vec3<bool>(true, global0.c.x, global0.c.x)), all(global0.c)), select(!global0.c, select(global0.c, global0.c, global0.c.x), !global0.c.x), !(global0.c.x || true)));
    var var_1 = -(_wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(u_input.c.x), ~var_0.x), u_input.c) & -var_0.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c.x, global0.b.c.x, 251f)), vec3<f32>(-321f, 1142f, 1129f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c.x, global0.b.c.x, global0.b.c.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-491f, -255f, 740f) + vec3<f32>(global0.b.c.x, -946f, -551f)))), vec3<f32>(global0.b.c.x, global0.a.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.c.x * global0.b.c.x)))), select(global0.c, !(!vec3<bool>(true, global0.c.x, global0.c.x)), vec3<bool>(global0.c.x, any(vec4<bool>(true, false, false, global0.c.x)), all(vec2<bool>(true, global0.c.x))))))));
    return Struct_2(global0.b, Struct_1(_wgslsmith_mult_vec3_u32(global0.a.e, vec3<u32>(u_input.a, u_input.b.x, 615u) >> (vec3<u32>(u_input.b.x, global0.b.e.x, 56368u) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_u32(reverseBits(global0.b.b), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.b.b.x, 115141u, global0.a.e.x), vec3<u32>(u_input.a, 1u, global0.b.a.x))), global0.b.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b.c.x, global0.a.c.x), _wgslsmith_f_op_vec2_f32(step(global0.b.c, var_2.xx)), select(true, global0.c.x, false))))), 12275u, ~_wgslsmith_mult_vec3_u32(global0.a.a, global0.b.a) | vec3<u32>(select(u_input.a, 11628u, true), global0.b.a.x, 1u)), !select(select(select(global0.c, vec3<bool>(true, false, global0.c.x), vec3<bool>(true, global0.c.x, global0.c.x)), !global0.c, select(vec3<bool>(true, global0.c.x, false), global0.c, global0.c.x)), !vec3<bool>(global0.c.x, false, false), select(global0.c, global0.c, true)));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global1 = _wgslsmith_div_i32(34733i, -30747i);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b.c.x + global0.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global0.a.c.x)), arg_0.a.c.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.a.c.x, 637f, global0.a.c.x))), vec3<f32>(global0.b.c.x, _wgslsmith_f_op_f32(step(arg_0.b.c.x, 969f)), _wgslsmith_f_op_f32(-global0.a.c.x))), select(global0.c.x, arg_0.c.x, false & global0.c.x) | false)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -981f)), _wgslsmith_f_op_f32(-arg_0.a.c.x), _wgslsmith_f_op_f32(func_1().b.c.x * -1057f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1518f, _wgslsmith_f_op_f32(-global0.b.c.x), _wgslsmith_f_op_f32(1000f + 1968f)))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-682f + 104f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -736f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2014f, arg_0.b.c.x), -842f, u_input.d > u_input.d)) - var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-arg_0.b.c.x))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.c.x * _wgslsmith_f_op_f32(global0.b.c.x + -193f))));
    let var_3 = arg_0.c.yx;
    return Struct_2(global0.b, func_1().b, !(!vec3<bool>(true, global0.a.a.x > 0u, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1());
    let var_0 = false;
    global0 = Struct_2(global0.a, Struct_1(~max(global0.b.b, global0.b.a), _wgslsmith_mult_vec3_u32(global0.a.e, ~global0.a.e), vec2<f32>(-1000f, global0.b.c.x), global0.b.b.x >> (u_input.a % 32u), select(_wgslsmith_sub_vec3_u32(~global0.a.e, ~vec3<u32>(global0.b.e.x, u_input.b.x, global0.b.e.x)), ~select(global0.b.a, global0.a.e, vec3<bool>(var_0, true, true)), true)), !(!global0.c));
    global0 = Struct_2(global0.b, Struct_1(~(~vec3<u32>(16677u, u_input.a, 0u)), countOneBits(global0.a.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.c.x, global0.a.c.x))))), ~countOneBits(func_1().b.b.x), ~vec3<u32>(func_3(), _wgslsmith_sub_u32(13858u, u_input.a), global0.b.e.x)), global0.c);
    global0 = Struct_2(func_1().a, global0.a, vec3<bool>(true, true, func_4(Struct_2(func_1().b, Struct_1(global0.a.b, vec3<u32>(global0.b.a.x, u_input.b.x, 56369u), global0.b.c, 4294967295u, global0.a.a), global0.c)).c.x));
    var var_1 = func_1().a;
    var var_2 = select(vec4<bool>(all(vec4<bool>(true, !global0.c.x, global0.c.x || global0.c.x, all(vec4<bool>(var_0, true, false, true)))), false, false, all(func_4(func_4(Struct_2(global0.a, Struct_1(vec3<u32>(0u, global0.a.d, var_1.d), global0.a.e, vec2<f32>(var_1.c.x, global0.b.c.x), u_input.a, global0.a.b), vec3<bool>(var_0, var_0, var_0)))).c.zz)), select(vec4<bool>(all(global0.c), var_0, any(vec4<bool>(global0.c.x, global0.c.x, false, true)), 608i >= u_input.c.x), !select(select(vec4<bool>(true, true, global0.c.x, var_0), vec4<bool>(true, true, var_0, var_0), var_0), select(vec4<bool>(var_0, global0.c.x, false, var_0), vec4<bool>(false, var_0, false, false), vec4<bool>(global0.c.x, global0.c.x, true, false)), var_0), max(-1i >> (global0.b.e.x % 32u), 1i) <= 2147483647i), false == global0.c.x);
    var var_3 = Struct_2(global0.a, global0.b, var_2.wyw);
    var_2 = !(!vec4<bool>(select(true, false, true), true, func_4(func_1()).c.x, false));
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), ~457u >> (var_3.b.a.x % 32u), _wgslsmith_mult_vec2_u32(global0.b.e.xy, var_3.b.b.zy), -746f);
}

