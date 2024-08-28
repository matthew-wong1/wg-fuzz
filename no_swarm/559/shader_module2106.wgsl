struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_1 = Struct_1(-38104i);

var<private> global2: array<vec3<i32>, 27>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    global1 = arg_0.b.a;
    let var_0 = Struct_4(arg_0.b, Struct_2(arg_0.b.a, arg_0.b.b, arg_0.b.e, u_input.c.x, _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(4676u, u_input.c.x, 0u, u_input.c.x)), ~arg_0.b.c), min(arg_0.b.c, vec4<u32>(0u, 8151u, 0u, 0u)) ^ vec4<u32>(arg_0.b.e.x, 0u, arg_0.b.d, 97779u))), false, abs(vec2<u32>(countOneBits(_wgslsmith_mult_u32(arg_0.b.d, 4294967295u)), _wgslsmith_sub_u32(6635u, u_input.c.x) ^ ~arg_0.b.c.x)), ~u_input.b.x);
    var var_1 = ~_wgslsmith_mod_u32(countOneBits(select(1u, ~3087u, true)), abs(u_input.c.x));
    let var_2 = Struct_4(var_0.a, var_0.a, true, var_0.d, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, ~global1.a & reverseBits(arg_0.b.b.a)), 0i, u_input.a));
    global1 = Struct_1(-(var_0.a.b.a & _wgslsmith_clamp_i32(2147483647i, global1.a, -2147483647i)) >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_0.b.c.ywz, vec3<u32>(var_2.b.d, var_0.d.x, var_2.b.d)), 11217u), ~abs(18088u)) % 32u));
    return vec2<u32>(~4294967295u >> (arg_0.b.d % 32u), var_0.d.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_4(Struct_2(arg_1.b.a, Struct_1(_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(0u, 27u)], u_input.b.wxz) << (1u % 32u)), vec4<u32>(_wgslsmith_sub_u32(min(arg_1.b.c.x, 12495u), _wgslsmith_mult_u32(1u, 3520u)), _wgslsmith_mult_u32(min(26561u, u_input.c.x), arg_1.b.c.x), countOneBits(~15079u), ~abs(arg_1.b.d)), 4294967295u, vec4<u32>(u_input.c.x, arg_1.b.e.x, _wgslsmith_div_u32(u_input.c.x, ~arg_1.b.e.x), ~(~u_input.c.x))), arg_1.b, ((2147483647i | _wgslsmith_add_i32(0i, u_input.b.x)) >> (abs(arg_1.b.d) % 32u)) > 2147483647i, func_3(Struct_3(-13814i, arg_1.b, vec3<f32>(-464f, _wgslsmith_f_op_f32(min(arg_0.x, arg_1.c.x)), _wgslsmith_f_op_f32(-arg_1.c.x)), arg_1.d)), abs(-24847i));
    let var_1 = false;
    var var_2 = arg_1;
    return arg_1;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec2<i32>) -> bool {
    let var_0 = arg_2.b.a.a;
    let var_1 = arg_2.b.c;
    global1 = func_2(_wgslsmith_div_vec2_f32(arg_2.c.xx, arg_2.c.yz), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_2.c.yz)) - _wgslsmith_f_op_vec2_f32(-arg_2.c.xz)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-823f, 1000f)), arg_2))).b.a;
    global1 = func_2(arg_2.c.yx, func_2(_wgslsmith_f_op_vec2_f32(-arg_2.c.zy), Struct_3(arg_2.a, Struct_2(arg_0.a.b, arg_0.b.b, var_1 & vec4<u32>(55746u, arg_2.b.c.x, arg_0.d.x, 2596u), func_3(Struct_3(u_input.a, Struct_2(Struct_1(-1i), Struct_1(2147483647i), arg_2.b.c, arg_0.d.x, arg_2.b.c), vec3<f32>(arg_2.c.x, arg_2.c.x, 1328f), arg_1.zz)).x, ~var_1), arg_2.c, arg_1.zx))).b.b;
    global0 = 1u;
    return true & arg_0.c;
}

fn func_1() -> Struct_1 {
    let var_0 = !(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)));
    global0 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.c.x, ~abs(u_input.c.x | 0u), ~0u), u_input.c.x ^ 9412u, ~(u_input.c.x ^ firstLeadingBit(u_input.c.x)));
    var var_1 = !vec4<bool>(var_0.x, func_4(Struct_4(Struct_2(Struct_1(-53055i), Struct_1(u_input.b.x), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), u_input.c.x, vec4<u32>(0u, u_input.c.x, 12421u, u_input.c.x)), Struct_2(Struct_1(0i), Struct_1(global1.a), vec4<u32>(u_input.c.x, 17304u, 1u, 0u), 1u, vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x)), all(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), vec2<u32>(28442u, u_input.c.x), min(global1.a, -34874i)), select(select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(var_0.x, var_0.x, false, false), true), select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x)), !vec4<bool>(false, false, var_0.x, var_0.x)), func_2(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -639f), vec2<f32>(1083f, -1171f)), Struct_3(15732i, Struct_2(Struct_1(-2147483647i), Struct_1(-1i), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 1u), 0u, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), vec3<f32>(529f, 675f, 1223f), var_0.xy)), _wgslsmith_mult_vec2_i32(~u_input.b.wx, abs(vec2<i32>(global1.a, 2147483647i)))), true, true);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(137f - -793f)), -385f, _wgslsmith_f_op_f32(floor(1109f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2598f, -2486f, 978f)))), var_1.x)));
    var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2280f, -930f, var_2.x)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1479f, -610f, -1786f), vec3<f32>(var_2.x, var_2.x, var_2.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-848f, 1000f, -226f) - vec3<f32>(var_2.x, var_2.x, -1357f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), var_2.x, 1000f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-499f, _wgslsmith_f_op_f32(-1269f + 430f), _wgslsmith_f_op_f32(-var_2.x)))))));
    return func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1377f, -1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-321f, 353f) - vec2<f32>(-196f, 529f))))), Struct_3(21256i, Struct_2(func_2(var_2.zz, func_2(vec2<f32>(var_2.x, var_2.x), Struct_3(u_input.a, Struct_2(Struct_1(-14719i), Struct_1(global1.a), vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x), 6805u, vec4<u32>(11444u, u_input.c.x, 4294967295u, 0u)), vec3<f32>(-639f, 2191f, -221f), var_0.yz))).b.a, func_2(vec2<f32>(1527f, 470f), func_2(var_2.yz, Struct_3(global1.a, Struct_2(Struct_1(u_input.b.x), Struct_1(global1.a), vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x), u_input.c.x, vec4<u32>(27327u, 4294967295u, 0u, u_input.c.x)), vec3<f32>(var_2.x, var_2.x, -897f), vec2<bool>(var_1.x, true)))).b.a, ~(~vec4<u32>(0u, 0u, 1u, u_input.c.x)), 1u, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, u_input.c.x), vec4<u32>(15668u, 28508u, 0u, u_input.c.x)), ~vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1003f, var_2.x, var_2.x) * vec3<f32>(-1498f, var_2.x, -1079f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.x, 849f, -2021f))))), var_0.zx)).b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(315f)) * _wgslsmith_f_op_f32(537f + 495f)))), -1000f, true)) - _wgslsmith_f_op_f32(502f * 708f));
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(func_2(vec2<f32>(-1717f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2432f)) * 302f)), func_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(402f, -1207f), vec2<f32>(2140f, -359f))), func_2(vec2<f32>(-1853f, -521f), Struct_3(3743i, Struct_2(Struct_1(global1.a), Struct_1(global1.a), vec4<u32>(9267u, 40124u, 113464u, 1u), 0u, vec4<u32>(0u, 1u, u_input.c.x, u_input.c.x)), vec3<f32>(-1057f, 769f, -902f), vec2<bool>(true, true))))).c.x, _wgslsmith_sub_vec4_i32(select(vec4<i32>(_wgslsmith_sub_i32(43109i, u_input.b.x), 0i, -global1.a, firstLeadingBit(21207i)), -vec4<i32>(-52195i, -1i, u_input.a, global1.a), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), select(u_input.b, vec4<i32>(~(-1i), max(global1.a, u_input.b.x), -u_input.b.x, reverseBits(2147483647i)), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), -9578i == global1.a))));
}

