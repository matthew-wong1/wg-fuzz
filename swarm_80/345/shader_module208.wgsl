struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<i32> {
    var var_0 = any(!select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), any(vec3<bool>(false, true, true)) | true));
    let var_1 = Struct_2(_wgslsmith_add_u32(~4294967295u, 4294967295u), any(vec2<bool>(true, true)), _wgslsmith_mult_u32(0u, u_input.a), all(select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.e.x == u_input.d.x, all(vec4<bool>(true, false, true, true)), true, all(vec4<bool>(true, false, false, true))), (0i ^ u_input.e.x) > 1i)), 338f);
    global0 = 49224u;
    var_0 = true;
    global0 = ~u_input.c;
    return u_input.b;
}

fn func_2(arg_0: u32) -> Struct_4 {
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(~(~(~48071i)), -19171i, ~(0i & (u_input.e.x << (59368u % 32u)))), _wgslsmith_mod_vec3_i32(func_3(), -vec3<i32>(8875i, -1i, ~u_input.d.x)));
    let var_1 = (vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(abs(u_input.b), abs(vec3<i32>(-68348i, u_input.d.x, -1i)))) >> (~(~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(50156u, arg_0, arg_0), vec3<u32>(0u, 1u, 24242u)), select(vec3<u32>(arg_0, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, 52593u), vec3<bool>(true, false, false)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 17636u, u_input.c), vec3<u32>(69539u, 4294967295u, arg_0)))) % vec3<u32>(32u));
    var_0 = vec3<i32>(var_1.x, -1i, -1i);
    let var_2 = _wgslsmith_mod_i32(u_input.e.x, abs(-var_0.x));
    let var_3 = _wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, arg_0 ^ u_input.a, ~23288u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0, u_input.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, u_input.c, 0u), vec3<u32>(arg_0, arg_0, u_input.a), vec3<u32>(1u, 51099u, 4294967295u))), ~0u, arg_0) & vec3<u32>(22417u, reverseBits(~u_input.c), firstLeadingBit(firstTrailingBit(u_input.a))));
    return Struct_4(var_1.x, Struct_1(u_input.d.wyw, u_input.d, !(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), any(vec2<bool>(false, false)))), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 4294967295u) & ~vec2<u32>(4294967295u, var_3.x), firstLeadingBit(vec2<u32>(4294967295u, u_input.c) ^ vec2<u32>(25369u, var_3.x))) | vec2<u32>(~1u, 0u));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: bool, arg_3: Struct_4) -> u32 {
    var var_0 = arg_1.b.d.x;
    let var_1 = arg_3.a;
    var var_2 = func_2(_wgslsmith_add_u32(u_input.c ^ 1u, abs(38116u)));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(287f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f) * _wgslsmith_f_op_f32(f32(-1f) * -669f))))), -871f, false));
    let var_4 = Struct_2(arg_1.c.x, true, ~u_input.c, arg_3.b.c.x, 1f);
    return _wgslsmith_mod_u32(~(~(~arg_1.c.x)), ~var_4.a);
}

fn func_1(arg_0: vec3<f32>) -> vec4<i32> {
    let var_0 = ~abs(vec4<u32>(u_input.c, u_input.c, 61596u, _wgslsmith_mult_u32(select(u_input.c, u_input.c, true), 37662u)));
    global0 = _wgslsmith_sub_u32(4294967295u, ~firstTrailingBit(var_0.x));
    let var_1 = vec4<u32>(u_input.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), var_0.xww), 50588u), func_4(firstTrailingBit(u_input.e.x), func_2(71773u), all(vec2<bool>(true, true)), Struct_4(firstTrailingBit(firstLeadingBit(2147483647i)), func_2(~var_0.x).b, _wgslsmith_mod_vec2_u32(var_0.wx, var_0.wx))), abs(1u));
    global0 = ~(~select(1u, ~_wgslsmith_dot_vec2_u32(var_0.xy, var_1.zy), true));
    var var_2 = u_input.d.x;
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c;
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(308f, 130f) - vec2<f32>(-960f, -1455f)))), vec2<f32>(1f, 1f))) - vec2<f32>(503f, -147f));
    let var_1 = Struct_4(_wgslsmith_dot_vec4_i32(-(~u_input.d) ^ reverseBits(firstTrailingBit(vec4<i32>(u_input.b.x, u_input.e.x, 0i, u_input.d.x))), -_wgslsmith_mult_vec4_i32(u_input.d >> (vec4<u32>(4294967295u, 26123u, u_input.c, 55251u) % vec4<u32>(32u)), u_input.d >> (vec4<u32>(4294967295u, u_input.c, 4294967295u, 4294967295u) % vec4<u32>(32u)))), Struct_1(firstTrailingBit(firstLeadingBit(-u_input.b)), func_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1210f), vec3<f32>(var_0.x, -1508f, var_0.x))) & vec4<i32>(func_3().x, ~10955i, u_input.e.x, u_input.e.x | 2147483647i), vec3<bool>(true, all(func_2(1u).b.c), true), vec2<bool>(true, true)), ~(~abs(vec2<u32>(u_input.c, 64578u) << (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0, vec2<f32>(-852f, var_0.x))))))));
    var var_3 = false;
    var_2 = _wgslsmith_div_vec2_f32(var_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(round(var_2.x)))), 478f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, u_input.e.x);
}

