struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(-1000f);
    var var_1 = !vec3<bool>(!(!all(vec3<bool>(true, true, false))), any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), select(true, false, true))), true);
    var var_2 = Struct_4(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -935f)), var_0.a))));
    let var_3 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-959f, -1557f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-942f, 514f) - var_2.b))), vec2<f32>(174f, _wgslsmith_f_op_f32(-1779f * var_2.b.x))));
    let var_4 = var_0;
    return vec3<u32>(firstTrailingBit(_wgslsmith_clamp_u32(10594u, select(u_input.e, _wgslsmith_sub_u32(4886u, u_input.e), false), u_input.a)), u_input.a, ~u_input.e);
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_mult_vec3_u32(func_3(), ~(~(vec3<u32>(u_input.e, u_input.e, u_input.e) << (vec3<u32>(u_input.e, 2784u, 1u) % vec3<u32>(32u))))) << (~select(firstLeadingBit(vec3<u32>(0u, 4294967295u, u_input.a)), ~(~vec3<u32>(18717u, 4294967295u, 4294967295u)), vec3<bool>(true, true, true)) % vec3<u32>(32u));
    var_0 = vec3<u32>(~_wgslsmith_mult_u32(~max(1u, 10300u), 961u << (u_input.a % 32u)), abs(9374u) | _wgslsmith_mod_u32(~u_input.e, 0u), 23440u);
    let var_1 = reverseBits(-_wgslsmith_div_vec2_i32(u_input.b.yx, firstLeadingBit(vec2<i32>(-2147483647i, -16560i))));
    var_0 = ~vec3<u32>(_wgslsmith_mult_u32(min(u_input.e, _wgslsmith_add_u32(56662u, u_input.e)), ~_wgslsmith_dot_vec2_u32(var_0.yz, var_0.yy)), 1693u, var_0.x);
    var_0 = vec3<u32>(var_0.x, 1u, 1u);
    return -var_1.x;
}

fn func_1() -> Struct_3 {
    let var_0 = firstLeadingBit(vec4<i32>(-u_input.c.x, 61358i, -7i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-u_input.d, abs(u_input.b.x)), abs(-24209i) >> (u_input.e % 32u))));
    var var_1 = func_2();
    let var_2 = Struct_5(Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-590f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f)))));
    var_1 = var_0.x;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f) + _wgslsmith_f_op_f32(ceil(var_2.a.b.x))))));
    return Struct_3(u_input.e, -u_input.c.x, !vec4<bool>(true, false, all(vec4<bool>(true, true, true, true)), false));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = func_1().c.wy;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(arg_2.a))))), arg_2.a, !all(vec3<bool>(var_0.x, true, false)))));
    var_1 = arg_2;
    var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.a.x, 490f))), 1210f));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(step(arg_2.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(arg_2.a, var_1.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-233f, -993f) + arg_2.a), _wgslsmith_div_vec2_f32(arg_2.a, arg_2.a), false)))))));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec3<i32>(1i, -41848i, _wgslsmith_sub_i32((-32589i << (u_input.e % 32u)) | u_input.d, -2356i));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_4(func_1(), true, Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(542f, 614f) + vec2<f32>(115f, 1403f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1541f, -1000f))))))));
    var_0 = (vec3<i32>(-1i) * -u_input.b) ^ vec3<i32>(_wgslsmith_mult_i32(~u_input.c.x | ~u_input.b.x, 2147483647i), max(_wgslsmith_dot_vec3_i32(vec3<i32>(-15948i, 1i, u_input.c.x), u_input.b), u_input.d), ~2147483647i);
    var_0 = vec3<i32>(_wgslsmith_sub_i32(abs(u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.d, 0i), vec4<i32>(34679i, u_input.b.x, u_input.b.x, var_0.x))) >> (~(~0u) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, 51793i, -26703i, u_input.c.x)), _wgslsmith_add_vec4_i32(vec4<i32>(19313i, var_0.x, var_0.x, -9718i), vec4<i32>(u_input.d, 1i, var_0.x, 31603i)), max(vec4<i32>(-7883i, u_input.c.x, var_0.x, var_0.x), vec4<i32>(-59671i, -6617i, -54311i, -1i))), ~vec4<i32>(7986i, -38144i, 0i, u_input.c.x)), ~u_input.d) >> ((_wgslsmith_div_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(1022u, u_input.a), u_input.e), vec3<u32>(~0u, u_input.e, _wgslsmith_add_u32(u_input.e, u_input.a))) & func_3()) % vec3<u32>(32u));
    var_0 = -u_input.b << (vec3<u32>(u_input.e, func_1().a, u_input.a) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<u32>(_wgslsmith_div_u32(select(u_input.e, 0u, true), 1u), ~0u, ~(~u_input.e))), countOneBits(~(~(~vec4<i32>(-1i, -1i, u_input.c.x, -18416i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, var_1.a), vec2<f32>(962f, var_1.a))) - vec2<f32>(var_1.a, var_1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1347f, var_1.a), vec2<f32>(var_1.a, var_1.a))))));
}

