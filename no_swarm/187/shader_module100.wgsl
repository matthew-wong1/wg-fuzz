struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(49079u, Struct_1(true)), Struct_2(4294967295u, Struct_1(false)), Struct_2(44569u, Struct_1(false)), Struct_2(73176u, Struct_1(true)), Struct_2(1u, Struct_1(true)), Struct_2(1u, Struct_1(false)), Struct_2(1u, Struct_1(true)), Struct_2(46675u, Struct_1(true)), Struct_2(31740u, Struct_1(false)), Struct_2(61041u, Struct_1(false)), Struct_2(1u, Struct_1(true)), Struct_2(0u, Struct_1(false)));

var<private> global1: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(47938u, 4294967295u, 12756u), vec3<u32>(1u, 28636u, 0u), vec3<u32>(4294967295u, 0u, 57360u), vec3<u32>(4294967295u, 12232u, 0u), vec3<u32>(1u, 46574u, 33944u), vec3<u32>(11298u, 94535u, 37813u), vec3<u32>(4294967295u, 19195u, 0u), vec3<u32>(1u, 0u, 8889u), vec3<u32>(32545u, 54836u, 1u), vec3<u32>(3596u, 0u, 1u), vec3<u32>(47668u, 15283u, 5196u), vec3<u32>(27883u, 4294967295u, 22866u), vec3<u32>(60655u, 42887u, 0u), vec3<u32>(4294967295u, 1u, 42818u), vec3<u32>(59358u, 78u, 4294967295u), vec3<u32>(1u, 1u, 0u), vec3<u32>(0u, 23545u, 1417u), vec3<u32>(0u, 4294967295u, 111793u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(39640u, 32196u, 56262u));

var<private> global2: vec4<i32>;

var<private> global3: array<vec4<bool>, 12>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    let var_0 = vec4<u32>(7939u, u_input.a.x | _wgslsmith_mult_u32(u_input.e.x, select(~3821u, 6656u, true)), 7632u, firstLeadingBit(u_input.e.x));
    let var_1 = select(!select(!vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, true), vec2<bool>(!arg_0.a, arg_0.a)), !select(!select(vec2<bool>(true, arg_0.a), vec2<bool>(false, arg_0.a), arg_0.a), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(arg_0.a, false)), arg_0.a & false), !select(vec2<bool>(arg_0.a, true), vec2<bool>(true, true), vec2<bool>(false, arg_0.a))), arg_0.a);
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(0u, 12u)], Struct_1(arg_0.a), arg_0, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1841f, 215f, 2012f, 853f) * vec4<f32>(1000f, 1064f, -861f, 521f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(556f, 1421f, -608f, -1000f) - vec4<f32>(-1576f, 1354f, 1312f, -571f)), var_1.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-361f, 401f, -836f, 726f))), vec4<f32>(1141f, 1130f, 969f, -530f)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_3 = false;
    var var_4 = var_2.b;
    return var_2.d.x;
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(192f * -2010f))), 1095f, -792f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(414f, -294f))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(800f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-956f)))), 1000f, _wgslsmith_f_op_f32(func_3(Struct_1(true), ~vec4<i32>(u_input.d.x, global2.x, 2147483647i, global2.x))))));
    global1 = array<vec3<u32>, 20>();
    let var_1 = Struct_5(global2.zyx, vec3<f32>(-209f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-748f, 529f))), vec3<bool>(true, any(select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))), true & all(vec3<bool>(true, false, true))), u_input.e, true);
    var var_2 = Struct_1(59679u > countOneBits(var_1.d.x));
    global2 = -vec4<i32>(0i, 14405i, select(0i, -34943i, true), global2.x);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(703f)), var_1.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), var_1.b.x, 1338f, -1053f);
}

fn func_1() -> Struct_2 {
    let var_0 = all(!global3[_wgslsmith_index_u32(~u_input.a.x, 12u)]);
    global0 = array<Struct_2, 12>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) - vec4<f32>(_wgslsmith_f_op_f32(min(693f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(115f - 1673f), 1916f)))), 1f, -1078f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-417f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2514f) - _wgslsmith_f_op_f32(max(233f, -864f))))));
    return Struct_2(1u & firstTrailingBit(u_input.e.x), Struct_1(var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global3 = array<vec4<bool>, 12>();
    let var_1 = !var_0.b.a && true;
    var var_2 = true;
    global0 = array<Struct_2, 12>();
    var var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-295f, -623f, -478f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(710f)))) * _wgslsmith_div_f32(-1000f, -634f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-700f))), 131f, 194f, _wgslsmith_f_op_f32(trunc(1028f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(4294967295u), 73880u, u_input.a.x, _wgslsmith_mod_u32(u_input.e.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.x, _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(var_3.x + var_3.x)), _wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x * var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -511f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.www, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 841f, 2566f)), var_3.xzw))));
}

