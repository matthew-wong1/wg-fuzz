struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = arg_0;
    let var_1 = select(vec2<bool>(arg_0.d.d.x == var_0.e, true), vec2<bool>(!var_0.b, true), !select(arg_0.c, !arg_0.c, vec2<bool>(false, true)));
    var var_2 = select(arg_0.d.c, ~_wgslsmith_clamp_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(-17095i, arg_0.d.c.x), var_0.d.d), var_0.d.c, _wgslsmith_div_vec2_i32(vec2<i32>(var_0.d.d.x, 25829i), vec2<i32>(1i, 1i))), var_0.c);
    var var_3 = -1437f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.x)));
    let var_4 = ~(~firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(arg_0.d.c.x, 2147483647i), 12216i, _wgslsmith_clamp_i32(var_2.x, var_2.x, -2147483647i))));
    return reverseBits(arg_0.d.e.yxx);
}

fn func_2() -> vec2<u32> {
    let var_0 = Struct_1(min(func_3(Struct_2(vec4<f32>(-472f, -563f, 183f, 1000f), false, vec2<bool>(true, true), Struct_1(vec3<u32>(4294967295u, 4294967295u, 26937u), 26882u, vec2<i32>(1i, 5366i), vec2<i32>(-1i, 2147483647i), vec4<u32>(38867u, u_input.b.x, u_input.b.x, 0u)), firstTrailingBit(-7965i))), u_input.b & ((vec3<u32>(67600u, u_input.b.x, u_input.b.x) >> (vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) >> (~vec3<u32>(61338u, 4294967295u, u_input.a.x) % vec3<u32>(32u)))), ~u_input.a.x, abs(~(select(vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, -1i), vec2<bool>(true, true)) & vec2<i32>(-2147483647i, -1i))), min(countOneBits(-(~vec2<i32>(82743i, 1i))), max(vec2<i32>(1i, 1i), ~vec2<i32>(1i, 1i))), vec4<u32>(~u_input.a.x, 21909u, select(29535u, u_input.a.x, true), u_input.a.x));
    let var_1 = all(!vec2<bool>(true, select(false, true, false) || true));
    var var_2 = vec4<bool>((true & !(var_1 != var_1)) || all(vec4<bool>(!var_1, all(vec2<bool>(var_1, var_1)), u_input.a.x >= u_input.b.x, any(vec4<bool>(var_1, true, var_1, true)))), var_1, any(!vec3<bool>(true, true, select(false, var_1, var_1))), all(select(vec3<bool>(false, false, false), select(select(vec3<bool>(false, var_1, true), vec3<bool>(false, var_1, false), vec3<bool>(false, var_1, false)), select(vec3<bool>(true, var_1, false), vec3<bool>(false, false, var_1), var_1), var_1 | false), !vec3<bool>(true, false, var_1))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2134f, 552f, 470f, 962f), vec4<f32>(-424f, -156f, 448f, -1000f))), vec4<f32>(314f, -824f, 195f, 307f), !vec4<bool>(var_2.x, var_1, var_1, true))))), !(select(true, var_2.x, all(var_2.yz)) || select(var_2.x, all(vec4<bool>(var_2.x, var_2.x, false, false)), var_2.x)), !select(select(vec2<bool>(false, false), !vec2<bool>(var_1, var_2.x), var_0.a.x >= 0u), !select(vec2<bool>(var_2.x, true), vec2<bool>(var_1, var_1), false), true), var_0, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(~var_0.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(23608i, var_0.c.x, var_0.d.x), vec3<i32>(var_0.d.x, var_0.d.x, var_0.c.x)), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-28119i, var_0.c.x, 2147483647i), vec3<i32>(var_0.c.x, var_0.c.x, var_0.c.x))), ~_wgslsmith_add_vec4_i32(vec4<i32>(-64468i, var_0.c.x, 2147483647i, 45592i), vec4<i32>(var_0.c.x, var_0.d.x, 26768i, 19223i))), vec4<i32>(-1i, firstTrailingBit(var_0.d.x) >> ((u_input.a.x << (u_input.a.x % 32u)) % 32u), var_0.d.x, ~(~var_0.d.x))));
    let var_4 = var_3;
    return var_0.e.yx | var_3.d.a.xy;
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: u32) -> f32 {
    var var_0 = func_2();
    var_0 = vec2<u32>(~(arg_3 & ~arg_3), var_0.x);
    let var_1 = Struct_1(abs(~u_input.a), 4294967295u, ~vec2<i32>(~26997i, arg_1.x), firstLeadingBit(firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec3_i32(arg_2, arg_2), _wgslsmith_sub_i32(arg_2.x, 3769i)))), vec4<u32>(4841u, u_input.a.x, var_0.x, 43993u) << (vec4<u32>((arg_3 >> (var_0.x % 32u)) << (5659u % 32u), u_input.b.x, abs(func_2().x), firstLeadingBit(69079u | arg_3)) % vec4<u32>(32u)));
    var_0 = vec2<u32>(var_1.a.x & 18217u, min((func_2().x ^ func_3(Struct_2(vec4<f32>(-910f, 1000f, arg_0, -1186f), false, vec2<bool>(true, true), Struct_1(var_1.a, 5875u, vec2<i32>(1i, -8865i), arg_2.xx, vec4<u32>(42396u, u_input.b.x, arg_3, 4294967295u)), 62761i)).x) | arg_3, func_2().x));
    var_0 = _wgslsmith_div_vec2_u32(var_1.e.yz, vec2<u32>(~0u, 36273u));
    return _wgslsmith_f_op_f32(f32(-1f) * -873f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-772f, ~_wgslsmith_div_vec2_i32(vec2<i32>(16722i, 28677i) >> (u_input.b.xz % vec2<u32>(32u)), vec2<i32>(-56333i, -34027i)), vec3<i32>(abs(countOneBits(-16253i)), _wgslsmith_mult_i32(11651i, -8107i), firstLeadingBit(-1i)), ~_wgslsmith_sub_u32(abs(5393u), _wgslsmith_dot_vec3_u32(vec3<u32>(34425u, 4294967295u, u_input.a.x), u_input.b)))));
    var var_2 = abs(_wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(2147483647i, 1i, -49721i)), vec3<i32>(firstLeadingBit(2147483647i), ~1i, -2717i)) << (min(u_input.b.x, 0u) % 32u));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, -196f) + vec4<f32>(var_1, 126f, var_1, var_1)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1144f, var_1, var_1) * vec4<f32>(var_1, 940f, var_1, 993f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-396f, -1631f, 213f, var_1) - vec4<f32>(var_1, var_1, var_1, var_1))))), u_input.b.x == ~u_input.a.x, select(select(vec2<bool>(!var_0, var_0 || var_0), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(var_0, true), vec2<bool>(false, var_0)), true), vec2<bool>(all(vec3<bool>(false, false, var_0)), true)), !select(vec2<bool>(var_0, true), vec2<bool>(true, true), u_input.b.x == u_input.a.x), var_0), Struct_1(max(~_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(u_input.b.x, 4294967295u, 4294967295u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, 13998u), u_input.b)), u_input.a.x, -firstTrailingBit(~vec2<i32>(2147483647i, 30870i)), vec2<i32>(_wgslsmith_add_i32(-1i, ~(-2147483647i)), 1i), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u) & u_input.a.yz, vec2<u32>(43389u, u_input.a.x)), min(_wgslsmith_mod_u32(u_input.b.x, u_input.a.x), u_input.b.x), 1u, ~u_input.b.x)), 1i);
    var var_4 = Struct_1(vec3<u32>(8653u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.b.x, 1u, var_3.d.b) >> (vec3<u32>(8943u, 0u, var_3.d.e.x) % vec3<u32>(32u))), ~vec3<u32>(var_3.d.a.x, 4192u, 9953u)), var_3.d.a.x), abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.b.x), ~abs(var_3.d.b))), min(vec2<i32>(_wgslsmith_add_i32(var_3.e, 2147483647i), -1i), vec2<i32>(abs(var_3.d.d.x), -1i)) << (var_3.d.e.wx % vec2<u32>(32u)), vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(var_3.d.c.x, var_3.e) & countOneBits(1i)), var_3.d.c.x), _wgslsmith_mult_vec4_u32(abs(~var_3.d.e), _wgslsmith_div_vec4_u32(~var_3.d.e, ~var_3.d.e)));
    let var_5 = var_0 | all(vec3<bool>(all(var_3.c), any(vec3<bool>(var_3.b, var_0, false)), !var_3.c.x));
    var var_6 = abs(firstTrailingBit(vec2<u32>(firstTrailingBit(~67211u), 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.b.x, var_6.x), var_3.d.b), min(~var_3.d.a.xz, var_3.d.a.zz)), ~u_input.b.x, ~min(countOneBits(var_6.x), ~var_4.e.x), u_input.a.x));
}

