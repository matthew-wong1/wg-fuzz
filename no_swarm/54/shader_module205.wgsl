struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14>;

var<private> global1: Struct_4 = Struct_4(false, -319f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_div_vec4_u32(~vec4<u32>(select(~82636u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 37985u), all(vec2<bool>(true, false))), firstLeadingBit(1u), ~1u, 7554u), vec4<u32>(_wgslsmith_sub_u32(1u >> (_wgslsmith_clamp_u32(1u, 66247u, 0u) % 32u), 32898u), 31883u, ~_wgslsmith_mod_u32(4294967295u, 1u), min(~_wgslsmith_add_u32(0u, 1u), ~abs(1u))));
    let var_1 = _wgslsmith_div_u32(firstTrailingBit(~(~9932u)), var_0.x) <= select(var_0.x, 0u, select(!select(false, false, false), global1.a, (1u < var_0.x) | false));
    let var_2 = 2147483647i;
    global1 = Struct_4(true, 1000f);
    var var_3 = vec2<i32>(_wgslsmith_add_i32(-u_input.a, firstTrailingBit(-17569i << (~var_0.x % 32u))), _wgslsmith_mult_i32(-var_2 & 29551i, max(-(~u_input.a), abs(var_2))));
    return _wgslsmith_mult_u32(~_wgslsmith_mult_u32(52990u, ~_wgslsmith_dot_vec4_u32(var_0, var_0)), 38179u);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> vec2<i32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))))), arg_3.a.b, vec3<i32>(arg_2, arg_0.x, -30124i), arg_3.a.d, 23077u);
    var_0 = Struct_2(_wgslsmith_div_f32(165f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2745f - 284f))))), Struct_1(arg_3.a.b.a, !vec2<bool>(any(vec4<bool>(false, global1.a, false, arg_3.a.d.b.x)), false)), var_0.c, arg_3.a.d, _wgslsmith_div_u32(func_3(), ~19102u));
    var var_1 = Struct_3(arg_3.a);
    let var_2 = -609f;
    let var_3 = true;
    return reverseBits(~firstTrailingBit(abs(vec2<i32>(-2147483647i, 2147483647i) >> (vec2<u32>(var_1.a.e, 12044u) % vec2<u32>(32u)))));
}

fn func_1(arg_0: i32) -> vec4<i32> {
    return vec4<i32>(5160i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 18644i), firstLeadingBit(func_2(vec4<i32>(u_input.a, 19768i, -10637i, arg_0), 459f, 8830i, Struct_3(Struct_2(global1.b, Struct_1(global1.a, vec2<bool>(false, global1.a)), vec3<i32>(2147483647i, -1i, 40334i), Struct_1(global1.a, vec2<bool>(global1.a, false)), 3403u))) | _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, arg_0), vec2<i32>(-34497i, arg_0)))), _wgslsmith_mult_i32(arg_0, u_input.a), ~1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(~((u_input.a | u_input.a) >> (~27874u % 32u)), _wgslsmith_dot_vec2_i32(countOneBits(~vec2<i32>(-63507i, u_input.a)), vec2<i32>(u_input.a, -1i)), -38981i, 0i), func_1(u_input.a));
    var var_1 = _wgslsmith_sub_vec2_u32(abs(~vec2<u32>(21853u, 13579u)), ~(~vec2<u32>(31063u, 1u)) >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(109444u, 5738u), vec2<u32>(1u, 4217u)), ~vec2<u32>(1u, 47290u), vec2<u32>(1u, 1u)) % vec2<u32>(32u))) << (vec2<u32>(max(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(22859u, 1u), abs(vec2<u32>(1u, 46880u)))), ~4294967295u) % vec2<u32>(32u));
    var var_2 = Struct_5(Struct_2(global1.b, Struct_1(!global1.a && true, !select(vec2<bool>(global1.a, false), vec2<bool>(false, false), false)), -vec3<i32>(23194i, -2147483647i, 1i) ^ _wgslsmith_sub_vec3_i32(~vec3<i32>(-9930i, 22072i, 27487i), vec3<i32>(u_input.a, 0i, 2147483647i)), Struct_1(!global1.a, !vec2<bool>(global1.a, global1.a)), ~0u), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(238f, global1.b) * 1155f), Struct_1(global1.a, !vec2<bool>(global1.a, true)), (_wgslsmith_mult_vec3_i32(var_0.wzw, vec3<i32>(u_input.a, u_input.a, 61854i)) & -var_0.ywx) << (~vec3<u32>(1u, var_1.x, var_1.x) % vec3<u32>(32u)), Struct_1(global1.a, !select(vec2<bool>(true, global1.a), vec2<bool>(true, true), false)), countOneBits(~0u)), global1.a);
    var_1 = _wgslsmith_clamp_vec2_u32(firstLeadingBit(_wgslsmith_add_vec2_u32(~firstTrailingBit(vec2<u32>(4294967295u, var_2.b.e)), ~vec2<u32>(var_1.x, 63158u) & vec2<u32>(1u, var_1.x))), ~vec2<u32>(select(4294967295u, 30039u, true), 29909u) >> ((_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.b.e, var_1.x), vec2<u32>(1u, var_2.a.e))) & _wgslsmith_add_vec2_u32(select(vec2<u32>(13629u, 1u), vec2<u32>(var_1.x, var_2.a.e), vec2<bool>(false, true)), ~vec2<u32>(var_2.b.e, var_2.b.e))) % vec2<u32>(32u)), max(vec2<u32>(reverseBits(0u), 13438u), vec2<u32>(0u, _wgslsmith_mod_u32(abs(var_2.a.e), var_2.b.e << (4294967295u % 32u)))));
    var var_3 = Struct_4(all(!select(!vec4<bool>(global1.a, global1.a, var_2.a.d.b.x, global1.a), vec4<bool>(var_2.a.b.b.x, global1.a, var_2.b.b.b.x, false), select(vec4<bool>(global1.a, false, var_2.a.b.a, false), vec4<bool>(var_2.c, global1.a, var_2.b.b.b.x, true), vec4<bool>(var_2.b.d.a, false, false, var_2.c)))), _wgslsmith_f_op_f32(f32(-1f) * -1645f));
    let var_4 = Struct_4(false, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-var_3.b)));
    var_1 = vec2<u32>((~var_2.a.e >> (var_1.x % 32u)) >> (var_2.a.e % 32u), 4294967295u) << (firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(~var_2.a.e, min(var_1.x, 0u)), vec2<u32>(var_1.x | var_1.x, ~var_2.a.e))) % vec2<u32>(32u));
    var var_5 = select(global1.a, var_2.b.e <= var_2.a.e, select(global1.a, global1.a, any(!select(vec4<bool>(global1.a, false, global1.a, true), vec4<bool>(var_2.c, var_3.a, var_2.b.d.a, true), var_3.a))));
    var_3 = Struct_4(true, _wgslsmith_f_op_f32(var_2.b.a * 533f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-585f, 1114f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.b, var_4.b))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1092f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1753f - -381f)))))), -var_2.a.c.x);
}

