struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20>;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2256f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1532f * 820f)))), true, ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-29023i, -1i), vec2<i32>(-1i, -2147483647i)) >> (vec2<u32>(0u, global1.x) % vec2<u32>(32u)))), Struct_2(abs(vec3<i32>(-46889i, -2147483647i, -1104i) << (u_input.b.xzy % vec3<u32>(32u))), vec4<u32>(~global1.x, ~4310u, ~(~75488u), abs(_wgslsmith_sub_u32(u_input.a, global1.x)))), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true & (u_input.b.x <= u_input.a)), Struct_2(_wgslsmith_add_vec3_i32(~vec3<i32>(1i, 1i, 1i), ~(-vec3<i32>(-13340i, 2147483647i, 1i))), ~countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 21585u, u_input.a, global1.x), u_input.b))));
    global0 = array<vec2<u32>, 20>();
    var var_1 = firstTrailingBit(-(~select(var_0.b.a.x, -6132i, true)) | min(8151i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.b.a.x, 2147483647i, var_0.d.a.x, -48134i), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.c.x, -2537i, var_0.b.a.x, 2147483647i), vec4<i32>(-2147483647i, var_0.d.a.x, var_0.d.a.x, 30514i)))));
    global1 = ~(~(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 38493u, 0u), u_input.b.wyx), ~var_0.d.b.x, 64992u)));
    var_1 = -(_wgslsmith_sub_i32(~(-1i), ~var_0.d.a.x) << (_wgslsmith_dot_vec2_u32(~var_0.b.b.yy, ~u_input.b.zz) % 32u)) >> (~u_input.a % 32u);
    return !var_0.c;
}

fn func_2() -> Struct_4 {
    global1 = u_input.b.xxw;
    var var_0 = Struct_1(1665f, !(u_input.b.x > global1.x), vec2<i32>(1i, 1i));
    let var_1 = func_3();
    var var_2 = all(!var_1.xw);
    var_0 = Struct_1(_wgslsmith_f_op_f32(min(-358f, var_0.a)), var_1.x, -vec2<i32>(var_0.c.x, firstLeadingBit(var_0.c.x)) & var_0.c);
    return Struct_4(389f, Struct_3(Struct_1(_wgslsmith_f_op_f32(sign(560f)), true, _wgslsmith_clamp_vec2_i32(reverseBits(var_0.c), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.c.x, 46227i), var_0.c), var_0.c)), Struct_2(select(vec3<i32>(-2743i, var_0.c.x, var_0.c.x), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.c.x, 24040i, var_0.c.x), vec3<i32>(13082i, -3425i, 6088i)), !vec3<bool>(var_0.b, var_1.x, var_1.x)), firstTrailingBit(~u_input.b)), !(!select(var_1, vec4<bool>(var_0.b, true, false, var_0.b), true)), Struct_2(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c.x, var_0.c.x, 0i), vec3<i32>(var_0.c.x, -2147483647i, -1i), vec3<i32>(1i, var_0.c.x, -78104i)), firstLeadingBit(vec3<i32>(1i, -1i, var_0.c.x))), vec4<u32>(~u_input.a, ~1u, abs(u_input.a), select(57688u, u_input.a, false)))), Struct_2(vec3<i32>(min(14061i, _wgslsmith_div_i32(var_0.c.x, -7273i)), var_0.c.x | -var_0.c.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(14950i, -7321i), firstTrailingBit(var_0.c.x))), vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(global1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 64376u, global1.x), vec4<u32>(4294967295u, 1u, global1.x, 4294967295u)), _wgslsmith_mult_u32(44678u, 0u)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(global1.x, u_input.a)), global0[_wgslsmith_index_u32(~u_input.b.x, 20u)]), min(firstLeadingBit(1u), global1.x | 3028u), 31488u)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec3<f32>) -> Struct_1 {
    global1 = _wgslsmith_clamp_vec3_u32(select(min(func_2().b.b.b.ywy, arg_1.b.wzz & arg_1.b.wxx), abs(_wgslsmith_add_vec3_u32(arg_0.b.b.b.zwz, arg_0.c.b.zzz)), func_3().zzz), vec3<u32>(_wgslsmith_clamp_u32(0u, 4294967295u, ~1u), 14942u, 0u), ~vec3<u32>(~arg_0.c.b.x, u_input.a, firstTrailingBit(u_input.b.x))) | vec3<u32>(_wgslsmith_dot_vec2_u32(~(~global1.zz), vec2<u32>(min(61698u, 4294967295u), _wgslsmith_div_u32(arg_1.b.x, u_input.a))), 68657u, abs(1u ^ arg_0.c.b.x));
    var var_0 = arg_1;
    let var_1 = select(arg_0.b.c.x, all(vec4<bool>(true, any(arg_0.b.c.wxx), true, arg_0.b.c.x && false)) && arg_0.b.a.b, arg_0.b.c.x);
    var var_2 = arg_0.b;
    return var_2.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_2(select(~(firstTrailingBit(vec3<i32>(25614i, -1333i, 2147483647i)) | ~vec3<i32>(-3091i, arg_0.c.x, arg_0.c.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 1i, arg_0.c.x), vec3<i32>(arg_0.c.x, -arg_0.c.x, i32(-1i) * -58165i)), vec3<bool>(any(select(vec2<bool>(arg_0.b, false), vec2<bool>(false, arg_0.b), vec2<bool>(false, true))), !(!arg_0.b), !arg_0.b & (true || arg_0.b))), ~firstTrailingBit((vec4<u32>(1u, 0u, 4294967295u, 4294967295u) | vec4<u32>(4294967295u, global1.x, u_input.a, u_input.b.x)) << (~vec4<u32>(90555u, 66751u, global1.x, u_input.b.x) % vec4<u32>(32u))));
    global1 = var_0.b.wwz >> (var_0.b.yyy % vec3<u32>(32u));
    let var_1 = func_2().b.a;
    global0 = array<vec2<u32>, 20>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(981f)) - 1f))) * _wgslsmith_f_op_f32(769f - -1379f)), _wgslsmith_add_i32(24905i, abs(var_1.c.x) << (u_input.a % 32u)) == -6856i, ~abs(vec2<i32>(arg_0.c.x, max(var_1.c.x, -19054i))));
    return func_2().c;
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    var var_0 = arg_0.b;
    global0 = array<vec2<u32>, 20>();
    global0 = array<vec2<u32>, 20>();
    return func_5(func_4(func_2(), func_2().b.b, -(~arg_0.d.a & firstLeadingBit(vec3<i32>(var_0.a.x, -2147483647i, 8965i))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1121f, -570f, 717f) + vec3<f32>(2263f, arg_0.a.a, 1823f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a, 1802f) - vec2<f32>(-227f, 303f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(954f, -612f) - vec2<f32>(-527f, -107f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a, arg_0.a.a) * vec2<f32>(arg_0.a.a, 461f))))))));
}

fn func_6(arg_0: Struct_3, arg_1: f32, arg_2: vec2<bool>, arg_3: bool) -> vec3<u32> {
    global0 = array<vec2<u32>, 20>();
    global1 = vec3<u32>(1u, 32522u << ((1u ^ arg_0.d.b.x) % 32u), _wgslsmith_sub_u32(~0u, _wgslsmith_add_u32(global1.x, arg_0.b.b.x)));
    var var_0 = true;
    var var_1 = !func_4(Struct_4(arg_0.a.a, arg_0, Struct_2(vec3<i32>(arg_0.d.a.x, 3334i, -7159i), arg_0.d.b)), arg_0.b, vec3<i32>(-2147483647i, arg_0.d.a.x << ((arg_0.d.b.x >> (u_input.b.x % 32u)) % 32u), arg_0.a.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -1000f)) + vec3<f32>(_wgslsmith_f_op_f32(-525f + -701f), _wgslsmith_f_op_f32(abs(313f)), _wgslsmith_f_op_f32(-arg_1)))).b;
    var_0 = func_2().b.c.x;
    return ~_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 57897u, 4294967295u & global1.x), u_input.b.wyy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(countOneBits(_wgslsmith_div_vec3_u32(u_input.b.wyz, vec3<u32>(~0u, 1u, global1.x))), func_6(Struct_3(Struct_1(1085f, true, vec2<i32>(2147483647i, 17495i)), func_1(Struct_3(Struct_1(-167f, false, vec2<i32>(-1i, 22222i)), Struct_2(vec3<i32>(-2147483647i, 0i, -3200i), u_input.b), vec4<bool>(true, false, false, true), Struct_2(vec3<i32>(-1i, 10797i, 2147483647i), u_input.b))), vec4<bool>(true, true, false, any(vec3<bool>(true, true, true))), func_2().b.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-568f, -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -161f)), select(vec2<bool>(42776u > u_input.b.x, true), vec2<bool>(true, true), true), true), vec3<bool>(true, true, true));
    var var_0 = vec4<f32>(func_4(func_2(), Struct_2(func_2().c.a & func_5(Struct_1(149f, false, vec2<i32>(-23879i, -10183i)), vec2<f32>(-291f, -1659f)).a, u_input.b), _wgslsmith_mod_vec3_i32(~vec3<i32>(1i, 34987i, 5521i), vec3<i32>(1i, 1i, 1i) >> (_wgslsmith_div_vec3_u32(u_input.b.xzy, u_input.b.xzz) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1283f, -1752f, -964f)))))).a, 1372f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1535f + -700f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1564f + _wgslsmith_f_op_f32(f32(-1f) * -944f))))));
    global1 = u_input.b.wyx;
    global1 = func_6(func_2().b, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(func_2().b.a.a - 1000f)), vec2<bool>(_wgslsmith_f_op_f32(min(514f, -1432f)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x + 292f))), false), any(func_3()));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1238f, var_0.x, var_0.x));
    let var_1 = func_2().b.a;
    var_0 = vec4<f32>(var_1.a, var_1.a, 1000f, var_1.a);
    let var_2 = var_1;
    global1 = vec3<u32>(u_input.a, firstLeadingBit(global1.x), ~_wgslsmith_clamp_u32(u_input.a, 23984u << ((3805u | global1.x) % 32u), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

