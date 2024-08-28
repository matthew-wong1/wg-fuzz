struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(i32(-2147483648), 19792i, 17599i), vec3<i32>(0i, 18077i, 1i), vec3<i32>(-5908i, -1i, 0i), vec3<i32>(-38196i, 2147483647i, 9466i), vec3<i32>(-8733i, -46611i, 0i), vec3<i32>(0i, 16528i, i32(-2147483648)), vec3<i32>(2147483647i, 9328i, 2147483647i), vec3<i32>(0i, -22741i, 36617i), vec3<i32>(-22385i, i32(-2147483648), 1i), vec3<i32>(25743i, -31467i, i32(-2147483648)), vec3<i32>(23552i, -13543i, 57992i), vec3<i32>(-4104i, -30867i, 59550i), vec3<i32>(0i, 6982i, 0i), vec3<i32>(-22387i, 2147483647i, 49206i), vec3<i32>(-1i, 0i, -1i), vec3<i32>(2147483647i, 26662i, -3362i));

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(true));

var<private> global2: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global3: array<vec2<i32>, 4>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec3<bool> {
    return !(!(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true))));
}

fn func_2(arg_0: u32, arg_1: Struct_5, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    var var_0 = !arg_1.c;
    global0 = array<vec3<i32>, 17>();
    let var_1 = vec2<i32>(~min(~(-17057i), arg_3.a.d), -arg_1.d.d);
    global2 = array<vec2<bool>, 7>();
    var_0 = !arg_1.c;
    return ~abs(arg_0);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: u32) -> Struct_5 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-780f * -1458f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -173f), _wgslsmith_f_op_f32(f32(-1f) * -1316f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -188f)), 1470f);
    let var_1 = countOneBits(abs(abs(_wgslsmith_add_i32(u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, u_input.b)))));
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(258f, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -640f))), var_0.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1485f, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, -379f, 1104f), true))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1594f), -1331f, var_0.x, var_0.x))), all(vec4<bool>(true, arg_1.a, arg_1.a, false)) == true))));
    let var_4 = u_input.a;
    return Struct_5(arg_0, arg_1, !any(vec3<bool>(arg_1.a && var_2.a, var_4 > 1u, !arg_0)), Struct_1((-50645i << (select(var_4, arg_3, true) % 32u)) ^ -15196i, vec2<bool>(false, true), var_0.x, -2147483647i), _wgslsmith_f_op_f32(select(-1618f, var_3.x, arg_0)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_5) -> f32 {
    var var_0 = min(-1i, 90277i);
    var var_1 = u_input.a;
    let var_2 = arg_1.d;
    let var_3 = Struct_4(2004f);
    let var_4 = Struct_2(arg_1.d);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(true, false, true)), !func_1(), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), func_1(), vec3<bool>(true, true, true))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1121f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -131f)), 1389f)), _wgslsmith_f_op_f32(abs(954f)));
    global1 = array<Struct_3, 13>();
    global3 = array<vec2<i32>, 4>();
    var var_2 = Struct_1(-1i, global2[_wgslsmith_index_u32(u_input.a, 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(!global2[_wgslsmith_index_u32(12913u, 7u)], func_3(var_0 && false, global1[_wgslsmith_index_u32(func_2(4294967295u, Struct_5(var_0, global1[_wgslsmith_index_u32(u_input.a, 13u)], false, Struct_1(10111i, global2[_wgslsmith_index_u32(u_input.a, 7u)], var_1.x, u_input.c.x), var_1.x), global3[_wgslsmith_index_u32(1u, 4u)], Struct_2(Struct_1(u_input.c.x, vec2<bool>(false, true), var_1.x, u_input.b))), 13u)], vec2<u32>(26752u, 4294967295u), 553u))) - _wgslsmith_f_op_f32(round(1162f))), _wgslsmith_sub_i32(-2147483647i, firstTrailingBit(u_input.b)));
    var var_3 = vec3<bool>(func_3(var_1.x < _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.x, var_1.x))), Struct_3(true), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 559u), vec2<u32>(95234u, u_input.a)), ~u_input.a), func_2(31489u, Struct_5(var_2.b.x | false, Struct_3(var_2.b.x), !var_0, Struct_1(-11040i, global2[_wgslsmith_index_u32(u_input.a, 7u)], var_2.c, -1i), -1000f), select(-global3[_wgslsmith_index_u32(0u, 4u)], -vec2<i32>(12922i, 23687i), func_3(var_2.b.x, global1[_wgslsmith_index_u32(1u, 13u)], vec2<u32>(u_input.a, 25274u), u_input.a).d.b), Struct_2(Struct_1(u_input.c.x, var_2.b, 1077f, u_input.c.x)))).b.a, false, var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-7592i, vec4<f32>(_wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(-var_2.c)), -629f, 1256f, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.c))))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, 8360u), vec4<u32>(87102u, 0u, u_input.a, 1u)) & ~reverseBits(vec4<u32>(u_input.a, u_input.a, 0u, 12530u))), var_1, -(~1i));
}

