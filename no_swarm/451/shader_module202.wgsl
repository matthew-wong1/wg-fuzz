struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(1i, -20668i), vec2<i32>(-1483i, -34119i), vec2<i32>(0i, -29i), vec2<i32>(-326i, 0i), vec2<i32>(38775i, -10613i), vec2<i32>(-21964i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-12469i, -35839i), vec2<i32>(-6523i, 9938i), vec2<i32>(0i, -2663i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(27036i, -998i), vec2<i32>(53981i, -28778i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(3847i, 2147483647i), vec2<i32>(-1i, 24208i), vec2<i32>(-49972i, 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(68731i, 3666i), vec2<i32>(1i, 2147483647i), vec2<i32>(14173i, 12315i), vec2<i32>(1i, 24567i));

var<private> global1: i32 = 0i;

var<private> global2: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<u32> {
    let var_0 = vec3<i32>(26204i, _wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_sub_i32(3982i, 44128i), firstTrailingBit(~1i)), firstLeadingBit(~(~1i)));
    var var_1 = ~(vec3<u32>(u_input.b & u_input.a.x, ~(~u_input.a.x), ~4294967295u) | ~vec3<u32>(_wgslsmith_sub_u32(0u, u_input.a.x), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 1u));
    var var_2 = !select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, false), true);
    var_2 = select(vec4<bool>(var_2.x, false, true, var_0.x > -13585i), select(!(!(!vec4<bool>(var_2.x, var_2.x, var_2.x, true))), !select(select(vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(true, false, var_2.x, var_2.x)), vec4<bool>(var_2.x, true, var_2.x, var_2.x), false), vec4<bool>(true, all(select(var_2.wyx, var_2.zyz, vec3<bool>(var_2.x, var_2.x, true))), true, !(!var_2.x))), vec4<bool>(!var_2.x, true, !((i32(-1i) * -2461i) != var_0.x), true));
    global1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, min(-9989i, var_0.x), -_wgslsmith_dot_vec2_i32(vec2<i32>(-65516i, -10558i), vec2<i32>(72595i, -25514i)), _wgslsmith_div_i32(_wgslsmith_sub_i32(var_0.x, var_0.x), _wgslsmith_div_i32(2147483647i, var_0.x))), vec4<i32>(-(i32(-1i) * -1496i), -var_0.x ^ (var_0.x ^ -8766i), (0i & var_0.x) | (-14545i >> (var_1.x % 32u)), 9101i)), -2147483647i);
    return ~(~abs(vec4<u32>(1u, 59431u, 4294967295u, 4294967295u))) >> ((vec4<u32>(25845u, abs(var_1.x), 44204u, var_1.x) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(72424u, var_1.x, var_1.x, 0u) | vec4<u32>(4294967295u, var_1.x, 4294967295u, u_input.a.x), ~vec4<u32>(u_input.b, var_1.x, 4294967295u, u_input.a.x))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = min(max(u_input.a >> ((_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 1u, arg_2), u_input.a) ^ ~vec3<u32>(u_input.b, arg_2, u_input.a.x)) % vec3<u32>(32u)), arg_3.b.yxy), abs(arg_3.b.xxx) | arg_3.b.zxz);
    let var_1 = Struct_1(-1000f, _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(arg_3.b, vec4<u32>(~var_0.x, 16462u, u_input.a.x, ~4294967295u)), firstLeadingBit(func_3())), arg_1, !vec3<bool>(true, true & !arg_3.d.x, (arg_3.c.x >> (0u % 32u)) != _wgslsmith_div_i32(26337i, 2147483647i)));
    global2 = array<vec2<bool>, 20>();
    global0 = array<vec2<i32>, 22>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, arg_3.a, var_1.a))))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_3.a, 364f, 443f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a, var_1.a, -1811f) * vec3<f32>(806f, 669f, arg_3.a)), vec3<f32>(var_1.a, 200f, -364f), !var_1.d))))));
    return var_2.x;
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = array<vec2<i32>, 22>();
    global1 = countOneBits(_wgslsmith_mod_i32(select(_wgslsmith_div_i32(-2147483647i, ~arg_0.c.x), -(~6317i), true), 24483i));
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<i32>(arg_0.c.x, arg_0.c.x), vec3<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x), 11183u, Struct_1(-685f, arg_0.b, vec3<i32>(arg_0.c.x, arg_0.c.x, 14475i), vec3<bool>(true, false, false)))))), _wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(20901u, u_input.b)), 22u)], firstLeadingBit(vec3<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x) ^ arg_0.c), 3864u, Struct_1(arg_0.a, ~vec4<u32>(arg_0.b.x, u_input.b, 4294967295u, 4294967295u), firstTrailingBit(arg_0.c), arg_0.d)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a), -1638f, true))), arg_0.a));
    var var_1 = _wgslsmith_div_u32(~arg_0.b.x, 5215u);
    var var_2 = ~_wgslsmith_div_vec4_i32(-(vec4<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, 57157i) & ~vec4<i32>(arg_0.c.x, 5301i, -1i, 65957i)), ~abs(~vec4<i32>(-58742i, arg_0.c.x, arg_0.c.x, arg_0.c.x)));
    return var_0.x;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: vec2<f32>) -> u32 {
    global2 = array<vec2<bool>, 20>();
    let var_0 = _wgslsmith_mod_u32(~min(1u, u_input.a.x), u_input.a.x) >> (6923u % 32u);
    var var_1 = all(vec4<bool>(any(vec3<bool>(true, arg_1 < -167f, arg_0 == arg_2)), all(vec2<bool>(any(vec4<bool>(true, true, false, true)), true)), true, any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    var var_3 = vec4<i32>(arg_0, -(~(_wgslsmith_sub_i32(arg_0, -28535i) & abs(arg_0))), ~arg_0, ~1i);
    return _wgslsmith_dot_vec3_u32(u_input.a, ~abs(u_input.a));
}

fn func_5(arg_0: u32, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1731f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<i32>(-49685i >> (u_input.b % 32u), -28803i), abs(reverseBits(vec3<i32>(-22519i, -27871i, 12515i))), 1u, Struct_1(_wgslsmith_f_op_f32(-420f + 1000f), select(vec4<u32>(arg_0, arg_0, u_input.b, u_input.a.x), vec4<u32>(4294967295u, arg_0, 19050u, 65341u), vec4<bool>(false, true, true, true)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -10820i, 2147483647i), vec3<i32>(-1i, 8515i, -1i)), select(arg_1, arg_1, arg_1))))));
    global0 = array<vec2<i32>, 22>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1909f), ~vec4<u32>(arg_0, ~u_input.a.x, 39914u, _wgslsmith_mod_u32(arg_0, countOneBits(1u))), vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-48550i, 1i, -16199i, 1i)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(abs(0i), ~39514i, 0i), 1i, 0i), ~abs(1i)), select(!vec3<bool>(arg_1.x, all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), any(vec3<bool>(false, false, arg_1.x))), vec3<bool>(true, true, true), vec3<bool>(!arg_1.x, true, all(!arg_1.xx))));
    let var_2 = -895f;
    return Struct_1(_wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(679f * 132f), any(vec2<bool>(arg_1.x, true)))), ~abs(countOneBits(vec4<u32>(49071u, 0u, var_1.b.x, var_1.b.x))), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(~var_1.c, var_1.c), -vec3<i32>(i32(-1i) * -38950i, ~var_1.c.x, abs(2147483647i))), select(vec3<bool>(false, any(!vec4<bool>(var_1.d.x, true, var_1.d.x, false)), any(vec2<bool>(true, true))), select(!(!vec3<bool>(var_1.d.x, false, false)), select(select(vec3<bool>(false, arg_1.x, false), arg_1, var_1.d), select(vec3<bool>(arg_1.x, false, false), vec3<bool>(var_1.d.x, var_1.d.x, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, false)), arg_1), arg_1.x));
}

fn func_6(arg_0: Struct_1) -> vec2<bool> {
    global0 = array<vec2<i32>, 22>();
    global1 = _wgslsmith_mod_i32(~(-40374i) & arg_0.c.x, arg_0.c.x);
    global1 = 2951i;
    var var_0 = arg_0;
    global2 = array<vec2<bool>, 20>();
    return arg_0.d.yy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-vec4<i32>(1i, 1i, 1i, 1i));
    global0 = array<vec2<i32>, 22>();
    global1 = -firstLeadingBit(87394i);
    let var_1 = vec3<u32>(u_input.b, ~1u, 1u);
    var var_2 = all(func_6(func_5(func_4(i32(-1i) * -11381i, _wgslsmith_f_op_f32(func_1(Struct_1(-408f, vec4<u32>(u_input.b, 43232u, 0u, var_1.x), var_0.wwy, vec3<bool>(false, false, false)))), _wgslsmith_mult_i32(var_0.x, var_0.x), vec2<f32>(906f, 820f)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-433f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1019f, -140f, -1000f, -800f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2221f, 648f, 140f, -513f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2527f, 1060f, -524f, -2714f) * vec4<f32>(1372f, 1000f, -2055f, 159f))))), !any(vec4<bool>(true, true, true, true)))), var_0.zy, var_1.x);
}

