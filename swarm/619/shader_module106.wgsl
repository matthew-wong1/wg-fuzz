struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = vec2<i32>(abs(4417i), u_input.b.x);
    var var_1 = Struct_1(_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_mod_u32(arg_0.c, u_input.e.x)), arg_0.c, reverseBits(firstLeadingBit(0u))) <= ~abs(3150u), reverseBits(min(vec3<i32>(2147483647i, -6480i, arg_0.b.x), vec3<i32>(reverseBits(u_input.b.x), -2147483647i, _wgslsmith_mult_i32(arg_0.e, u_input.d.x)))), u_input.e.x, 1000f, i32(-1i) * -49186i);
    var var_2 = arg_0.a;
    var_2 = false;
    var_2 = any(select(select(select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), !vec3<bool>(true, false, var_1.a), select(vec3<bool>(true, var_1.a, arg_0.a), vec3<bool>(arg_1, arg_0.a, var_1.a), vec3<bool>(true, false, arg_1))), select(select(vec3<bool>(true, false, true), vec3<bool>(arg_1, false, arg_0.a), vec3<bool>(arg_1, arg_0.a, arg_0.a)), select(vec3<bool>(true, true, true), vec3<bool>(var_1.a, arg_1, false), arg_1), select(vec3<bool>(false, false, var_1.a), vec3<bool>(false, var_1.a, true), arg_0.a)), !(arg_0.d != 1280f)), !(!vec3<bool>(true, arg_0.a, false)), vec3<bool>(arg_1, any(vec3<bool>(arg_0.a, false, arg_1)), any(vec2<bool>(true, true)))));
    return var_1.c;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec4<f32> {
    let var_0 = true;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(-324f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, -323f)))))), -491f);
    let var_2 = _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_dot_vec4_u32((u_input.a ^ u_input.a) | (u_input.a | vec4<u32>(arg_1, 5630u, 0u, arg_0.c)), _wgslsmith_mod_vec4_u32(min(u_input.a, vec4<u32>(arg_0.c, 11975u, 43613u, 139426u)), vec4<u32>(0u, 0u, arg_1, 16745u))), ~(arg_0.c << (46892u % 32u)), arg_1 & 0u, _wgslsmith_add_u32(_wgslsmith_mult_u32(func_3(arg_0, var_0), arg_1), 4294967295u)));
    let var_3 = ~arg_0.b;
    let var_4 = ~(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, var_3.x, arg_0.b.x) | -vec4<i32>(91381i, var_3.x, -20114i, u_input.b.x), vec4<i32>(max(u_input.b.x, 0i), -62738i, _wgslsmith_clamp_i32(arg_0.b.x, u_input.d.x, arg_0.e), abs(arg_0.e))));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(455f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)))), -1723f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.d))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: u32) -> vec3<i32> {
    var var_0 = max(u_input.c, arg_1);
    var var_1 = vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, arg_1.x >= arg_2)) && false);
    var var_2 = !any(vec4<bool>(any(vec2<bool>(var_1.x, true)), var_1.x, true, _wgslsmith_div_f32(arg_0.x, arg_0.x) <= _wgslsmith_f_op_vec4_f32(func_2(Struct_1(false, u_input.b.xww, 6684u, -2414f, u_input.d.x), arg_1.x)).x));
    var var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(reverseBits(u_input.e.x), reverseBits(~abs(arg_2)), 4294967295u), u_input.a.yzy);
    var var_4 = Struct_1(false, -u_input.b.wzz, 16561u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1345f))), u_input.b.x);
    return _wgslsmith_div_vec3_i32(min(vec3<i32>(1i, ~var_4.e, var_4.b.x), var_4.b) & min(vec3<i32>(firstTrailingBit(var_4.b.x), -29150i, _wgslsmith_mult_i32(u_input.b.x, 22546i)), -(~vec3<i32>(u_input.d.x, -2147483647i, -7108i))), u_input.b.wyx);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(true, ~(-(~vec3<i32>(0i, -10797i, 1i))), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -595f), 663f))), max(~u_input.d.x, u_input.d.x));
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = Struct_1(true, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(var_0.d * 1000f), _wgslsmith_f_op_f32(round(147f)), -233f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(var_0, 17981u)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.d, 347f, var_0.d, 225f))), var_1.a))), vec2<u32>(0u, arg_0.x), u_input.e.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(40259u, 101192u) >> ((~u_input.c | arg_0.zx) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(countOneBits(reverseBits(u_input.e.yx)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.c, var_0.c), arg_0.xw))), _wgslsmith_f_op_f32(round(var_1.d)), var_1.b.x);
    var var_3 = vec3<i32>(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.e << (var_2.c % 32u), -1i & var_1.b.x, ~var_0.e), select(var_0.b, var_2.b, var_0.a) << (vec3<u32>(var_1.c, u_input.a.x, 3938u) % vec3<u32>(32u))), ~(-7499i)), abs(abs(_wgslsmith_mult_i32(~var_0.b.x, u_input.b.x))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~select(~_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(39990u, 1u, u_input.e.x, 42294u)), u_input.a, vec4<bool>(true, true, true, true)));
    var var_1 = ~_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(-vec3<i32>(11949i, -14460i, var_0.e)), vec3<i32>(_wgslsmith_mod_i32(var_0.b.x, 2147483647i), 43509i, -var_0.b.x)), u_input.b.wwz);
    var_1 = vec3<i32>(~0i, _wgslsmith_mod_i32(-2147483647i, ~(-u_input.b.x)) >> ((64807u & ~select(4294967295u, 49461u, true)) % 32u), var_1.x);
    let var_2 = var_0.d;
    var var_3 = true;
    let var_4 = Struct_1(true, select(max(vec3<i32>(-24782i, ~var_1.x, ~0i), u_input.b.xww), -(_wgslsmith_div_vec3_i32(var_0.b, var_0.b) | _wgslsmith_add_vec3_i32(u_input.b.xyw, vec3<i32>(0i, 2147483647i, 1i))), !(!(!vec3<bool>(false, var_0.a, var_0.a)))), 1u, 1000f, 21777i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x, vec2<u32>(u_input.c.x, 11451u));
}

