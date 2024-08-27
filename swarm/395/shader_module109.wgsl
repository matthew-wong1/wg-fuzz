struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-1i, vec3<bool>(true, false, false), 383f, 0i), Struct_1(2147483647i, vec3<bool>(true, true, true), -513f, 0i), Struct_1(1i, vec3<bool>(false, false, true), -1000f, i32(-2147483648)), Struct_1(i32(-2147483648), vec3<bool>(false, false, false), -1839f, i32(-2147483648)), Struct_1(16922i, vec3<bool>(true, true, true), 1000f, -1i), Struct_1(0i, vec3<bool>(true, false, false), -299f, 0i), Struct_1(i32(-2147483648), vec3<bool>(false, false, true), 142f, 0i), Struct_1(1i, vec3<bool>(false, false, false), -664f, 0i), Struct_1(2147483647i, vec3<bool>(true, false, true), 1235f, 0i), Struct_1(-1i, vec3<bool>(false, false, false), -422f, 34731i), Struct_1(-2317i, vec3<bool>(true, true, false), -579f, 2147483647i), Struct_1(-23141i, vec3<bool>(true, true, true), 720f, -1i), Struct_1(0i, vec3<bool>(false, false, true), -1487f, -56529i), Struct_1(2147483647i, vec3<bool>(false, true, true), 1737f, -1i), Struct_1(1i, vec3<bool>(false, false, false), -761f, 0i), Struct_1(i32(-2147483648), vec3<bool>(false, false, false), -600f, 11648i), Struct_1(i32(-2147483648), vec3<bool>(false, false, true), -589f, 2147483647i), Struct_1(-38704i, vec3<bool>(false, true, true), 952f, 2147483647i), Struct_1(0i, vec3<bool>(true, true, false), 431f, i32(-2147483648)), Struct_1(-29349i, vec3<bool>(true, false, false), -1117f, 26989i), Struct_1(1i, vec3<bool>(true, false, true), -1111f, -52648i), Struct_1(-5738i, vec3<bool>(true, false, false), 498f, -1i), Struct_1(i32(-2147483648), vec3<bool>(true, true, true), 1422f, 49731i), Struct_1(-4351i, vec3<bool>(false, true, false), -2439f, 2147483647i), Struct_1(2285i, vec3<bool>(true, true, true), 198f, -53186i), Struct_1(0i, vec3<bool>(false, true, true), 234f, -29810i), Struct_1(0i, vec3<bool>(false, false, true), 451f, i32(-2147483648)), Struct_1(0i, vec3<bool>(false, true, false), -2092f, -1i), Struct_1(44591i, vec3<bool>(true, false, true), -257f, 0i));

var<private> global1: bool;

var<private> global2: array<vec2<bool>, 18>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> bool {
    global2 = array<vec2<bool>, 18>();
    global1 = arg_0;
    let var_0 = ~1u & min(abs(u_input.a), 1u);
    let var_1 = vec2<bool>(!arg_0, true);
    var var_2 = vec4<i32>(-1i, -1i, 1i, _wgslsmith_mod_i32(abs(1i), countOneBits(abs(-17360i)))) | reverseBits(vec4<i32>(countOneBits(i32(-1i) * -47667i), -(i32(-1i) * -11029i), select(-10187i, -10488i, true), ~max(19033i, 0i)));
    return (var_2.x << (1u % 32u)) < min(-(i32(-1i) * -70943i), 0i);
}

fn func_2() -> f32 {
    global1 = all(vec4<bool>(!(all(vec2<bool>(false, false)) & all(vec3<bool>(true, false, true))), all(vec4<bool>(false, true, true, true)), func_3(any(!global2[_wgslsmith_index_u32(u_input.d, 18u)])), true));
    global0 = array<Struct_1, 29>();
    var var_0 = u_input.b.x;
    let var_1 = func_3(true);
    let var_2 = 2147483647i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1680f * 611f)));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32) -> vec2<i32> {
    global2 = array<vec2<bool>, 18>();
    var var_0 = arg_0.wx;
    global2 = array<vec2<bool>, 18>();
    let var_1 = ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, select(1u, 45906u, false)), 0u), u_input.d, firstTrailingBit(11389u));
    global2 = array<vec2<bool>, 18>();
    return vec2<i32>(-2147483647i, -(~(-36753i)));
}

fn func_5(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_5(vec3<i32>(_wgslsmith_clamp_i32(-abs(arg_0.b.x), arg_0.b.x, firstLeadingBit(arg_0.b.x) << (_wgslsmith_sub_u32(20332u, 0u) % 32u)), _wgslsmith_sub_i32(arg_0.d.d, -abs(-1i)), arg_0.b.x));
    return Struct_1(-5994i | var_0.a.x, select(select(!select(arg_0.a.b, arg_0.a.b, true), !arg_0.d.b, any(!global2[_wgslsmith_index_u32(95694u, 18u)])), arg_0.d.b, var_0.a.x <= var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1)), -536f), arg_1, !arg_0.a.b.x))), var_0.a.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_5) -> Struct_3 {
    var var_0 = arg_1.a.x;
    let var_1 = func_5(Struct_3(Struct_1(20123i, !vec3<bool>(arg_0.x, true, arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1013f, -234f) - _wgslsmith_f_op_f32(1102f + 182f)), -_wgslsmith_dot_vec4_i32(vec4<i32>(1871i, arg_1.a.x, -4558i, -23153i), vec4<i32>(2147483647i, -1i, arg_1.a.x, 0i))), func_4(vec4<u32>(4294967295u, 4294967295u, u_input.d, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(func_2())), ~u_input.d, Struct_1(firstLeadingBit(1i), select(vec3<bool>(false, false, true), arg_0.zwx, vec3<bool>(true, arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-625f)))), 1i | arg_1.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -281f))))))));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, 210f, 1000f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, var_1.c, -257f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, 642f, var_1.c)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-451f, 1000f, -856f))))))));
    global2 = array<vec2<bool>, 18>();
    return Struct_3(var_1, min(abs(-(var_2.a.zy ^ var_2.a.yy)), -countOneBits(-arg_1.a.zz)), u_input.e, func_5(Struct_3(Struct_1(var_1.a, select(var_1.b, vec3<bool>(false, false, arg_0.x), true), _wgslsmith_f_op_f32(step(var_3.x, var_1.c)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, var_1.a, var_2.a.x, var_1.a), vec4<i32>(var_2.a.x, arg_1.a.x, -1i, var_2.a.x))), arg_1.a.zz, _wgslsmith_mult_u32(20514u ^ u_input.b.x, u_input.c << (4294967295u % 32u)), Struct_1(-var_2.a.x, vec3<bool>(true, true, var_1.b.x), var_1.c, 2147483647i)), func_5(Struct_3(func_5(Struct_3(Struct_1(arg_1.a.x, vec3<bool>(arg_0.x, true, var_1.b.x), var_1.c, -2147483647i), vec2<i32>(var_1.d, arg_1.a.x), 35205u, var_1), var_1.c), -var_2.a.zy, 28882u, Struct_1(var_1.a, vec3<bool>(false, false, true), 736f, var_2.a.x)), _wgslsmith_f_op_f32(-1020f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))).c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), any(vec4<bool>(false, true, false, true))), vec4<bool>(true, true, true, true)), Struct_5(vec3<i32>(~1i, select(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-1i, 1i)), 1i, any(global2[_wgslsmith_index_u32(1u, 18u)])), 2147483647i)));
    let var_1 = any(func_1(!vec4<bool>(true, false, func_1(vec4<bool>(false, true, false, true), Struct_5(vec3<i32>(13738i, var_0.a.a, 2910i))).d.b.x, true), Struct_5(reverseBits(vec3<i32>(1i, 1i, var_0.b.x)))).a.b.xy);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-var_0.b.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.c, var_0.a.c, 230f))))))), max(1u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)));
}

