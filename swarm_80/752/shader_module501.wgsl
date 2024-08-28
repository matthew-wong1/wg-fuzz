struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(0i, 28988i, 1i, i32(-2147483648)), vec4<i32>(-32936i, -25007i, -1i, -52688i), vec4<i32>(-19275i, 38021i, -24169i, -5499i), vec4<i32>(0i, -1i, 30501i, 2912i), vec4<i32>(-24728i, 37698i, -13662i, -93349i), vec4<i32>(-1i, 16828i, 40279i, 59967i), vec4<i32>(1i, 0i, i32(-2147483648), 2147483647i), vec4<i32>(3046i, -50332i, 12118i, -18475i), vec4<i32>(-1i, 2147483647i, 2147483647i, 64865i), vec4<i32>(0i, 21925i, -1i, 10869i), vec4<i32>(38325i, -1i, 47743i, 23152i), vec4<i32>(-57487i, -1i, 2147483647i, 4992i), vec4<i32>(1i, -10958i, 0i, 0i), vec4<i32>(-50450i, -5858i, 57294i, -44731i), vec4<i32>(52394i, i32(-2147483648), -1i, 0i), vec4<i32>(13896i, 15926i, -32305i, 43952i), vec4<i32>(-1i, i32(-2147483648), -965i, -1i), vec4<i32>(-42038i, 1i, 1i, 1i), vec4<i32>(6003i, i32(-2147483648), 1517i, -31181i), vec4<i32>(28968i, 41138i, 2147483647i, -13921i), vec4<i32>(33180i, -21663i, 27033i, -1i), vec4<i32>(i32(-2147483648), 2147483647i, 28811i, -1i), vec4<i32>(-12504i, -17782i, -1i, -1i), vec4<i32>(1i, 1i, 10789i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 14578i, -1i, 15500i), vec4<i32>(2147483647i, i32(-2147483648), -39020i, 7818i), vec4<i32>(0i, 1i, 2147483647i, 1i), vec4<i32>(1i, -1i, -49206i, 2147483647i), vec4<i32>(-29522i, i32(-2147483648), -1i, 1i));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<bool>) -> i32 {
    return 44466i;
}

fn func_3(arg_0: vec2<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-533f - 1709f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-227f))))));
    var var_1 = Struct_1(_wgslsmith_sub_u32(4294967295u, ~reverseBits(42947u)), vec2<f32>(_wgslsmith_f_op_f32(-var_0), 779f), select(vec3<bool>(any(vec3<bool>(false, true, false)) & true, all(vec3<bool>(true, true, true)), true), !vec3<bool>(all(vec4<bool>(false, false, true, true)), any(vec2<bool>(false, true)), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !all(vec3<bool>(false, true, true)))), all(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), true))), 836f);
    var var_2 = ~1u;
    let var_3 = Struct_1(~select(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, var_1.a, arg_0.x, u_input.a), vec4<u32>(69096u, 17044u, 7297u, var_1.a)), ~u_input.a, var_1.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(var_1.b)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b) - _wgslsmith_div_vec2_f32(var_1.b, var_1.b)))), vec3<bool>(var_1.c.x, true, var_1.e <= var_1.e), arg_0.x > 56740u, _wgslsmith_f_op_f32(-var_1.b.x));
    let var_4 = _wgslsmith_mod_u32(~min(~(~arg_0.x), var_3.a), 71479u);
    return vec2<bool>(func_1(Struct_1(~arg_0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e, 351f) * vec2<f32>(var_1.b.x, -1000f)), var_3.c, true, _wgslsmith_div_f32(2380f, var_0)), !(!vec4<bool>(false, false, var_1.d, false)), select(!var_3.c, !vec3<bool>(var_3.d, var_3.c.x, false), select(var_3.c, var_3.c, var_1.c))) == -22458i, !all(vec2<bool>(!var_3.d, false)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = array<vec4<i32>, 29>();
    global0 = array<Struct_2, 12>();
    var var_0 = func_3(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(abs(1u), u_input.a & 1u), vec2<u32>(u_input.a, 28153u) | vec2<u32>(4294967295u, u_input.a))));
    let var_1 = select(select(vec4<bool>(!(var_0.x & false), u_input.a != u_input.a, select(false, true, true), arg_0 <= ~arg_0), !select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(false, true, false, var_0.x), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, false, true, var_0.x))), (min(-17853i, -42460i) <= abs(arg_0)) && true), !vec4<bool>(true || any(vec2<bool>(var_0.x, var_0.x)), true, any(select(vec3<bool>(false, var_0.x, true), vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, false))), all(vec4<bool>(false, var_0.x, var_0.x, var_0.x))), !select(select(!vec4<bool>(true, var_0.x, false, var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false)), !vec4<bool>(true, var_0.x, false, var_0.x)), !vec4<bool>(true, var_0.x, false, var_0.x), true));
    let var_2 = select(select(!var_1.yx, vec2<bool>(var_0.x, all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_1.x, false, true, var_1.x)))), select(select(!var_1.wx, var_1.xy, var_1.wy), vec2<bool>(var_1.x, !var_1.x), func_3(vec2<u32>(1u, 3098u)))), vec2<bool>(true, select(0i << (0u % 32u), countOneBits(arg_0), false) <= 31092i), (0u == _wgslsmith_mult_u32(0u ^ u_input.a, abs(u_input.a))) & (all(!var_1.ww) || !(!var_1.x)));
    return Struct_1(1u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 564f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(637f, -2512f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-713f, 1645f) + vec2<f32>(721f, 102f)))))), select(vec3<bool>(!(4072u >= u_input.a), !var_2.x, !(!var_0.x)), vec3<bool>(any(vec4<bool>(false, true, false, true)) | var_2.x, _wgslsmith_mod_u32(u_input.a, u_input.a) < 71633u, all(select(vec2<bool>(true, var_0.x), var_1.wz, vec2<bool>(false, var_2.x)))), false), var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1242f, 1304f) * _wgslsmith_f_op_f32(min(-1058f, -1000f))), 472f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    let var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1320f) - _wgslsmith_f_op_f32(f32(-1f) * -195f))), _wgslsmith_f_op_f32(max(-263f, _wgslsmith_f_op_f32(f32(-1f) * -552f))), 1f), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2259f * 322f) - 922f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(488f)) - _wgslsmith_f_op_f32(344f * 806f))), 670f)));
    global1 = array<vec4<i32>, 29>();
    let var_1 = func_2(~(-func_1(Struct_1(u_input.a, vec2<f32>(var_0.x, 242f), vec3<bool>(true, true, true), false, -728f), vec4<bool>(true, false, false, true), vec3<bool>(false, true, false))));
    var var_2 = ~(vec3<i32>(-47070i >> (u_input.a % 32u), 1i, reverseBits(-19403i)) >> ((~(vec3<u32>(u_input.a, var_1.a, 1u) << (vec3<u32>(var_1.a, 9387u, u_input.a) % vec3<u32>(32u))) << (~(~vec3<u32>(var_1.a, 1u, 25651u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var_2 = vec3<i32>(-_wgslsmith_mod_i32(var_2.x, -abs(var_2.x)), _wgslsmith_add_i32(744i, _wgslsmith_div_i32(_wgslsmith_add_i32(var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-11627i, -2147483647i, 43213i, var_2.x), vec4<i32>(-1i, 1i, 0i, -2147483647i))), -1i)), _wgslsmith_add_i32(~var_2.x, 11496i));
    let var_3 = Struct_2(-global1[_wgslsmith_index_u32(1u, 29u)], min(0u, ~(~0u)), true, u_input.a);
    let var_4 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-287f, var_1.e)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec2<u32>(4294967295u, max(0u, u_input.a))), 1236f, max(abs(firstTrailingBit(var_3.a.wzx)), var_3.a.yyy));
}

