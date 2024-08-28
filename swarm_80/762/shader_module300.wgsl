struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<i32>(1i, 2147483647i, 1i, 45908i), vec4<u32>(28873u, 4294967295u, 8670u, 4294967295u), vec4<bool>(true, false, true, false));

var<private> global1: array<vec3<u32>, 24>;

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(Struct_1(vec2<f32>(177f, -858f), vec4<bool>(false, false, false, false)), 4294967295u), Struct_3(Struct_1(vec2<f32>(-2009f, 594f), vec4<bool>(true, false, false, false)), 0u), Struct_3(Struct_1(vec2<f32>(197f, -392f), vec4<bool>(false, true, false, true)), 0u), Struct_3(Struct_1(vec2<f32>(628f, -1000f), vec4<bool>(false, false, true, false)), 35681u), Struct_3(Struct_1(vec2<f32>(707f, -1012f), vec4<bool>(true, false, false, false)), 23394u), Struct_3(Struct_1(vec2<f32>(-957f, 224f), vec4<bool>(true, true, true, false)), 1u), Struct_3(Struct_1(vec2<f32>(-363f, -824f), vec4<bool>(true, true, true, true)), 1u), Struct_3(Struct_1(vec2<f32>(-1059f, -601f), vec4<bool>(true, true, true, false)), 0u), Struct_3(Struct_1(vec2<f32>(-739f, -114f), vec4<bool>(false, true, false, false)), 0u), Struct_3(Struct_1(vec2<f32>(358f, 598f), vec4<bool>(true, true, false, false)), 44222u), Struct_3(Struct_1(vec2<f32>(1078f, -829f), vec4<bool>(true, true, true, false)), 0u), Struct_3(Struct_1(vec2<f32>(1000f, -1415f), vec4<bool>(true, false, true, false)), 3267u), Struct_3(Struct_1(vec2<f32>(527f, 322f), vec4<bool>(true, false, false, false)), 58644u), Struct_3(Struct_1(vec2<f32>(-1793f, 1114f), vec4<bool>(false, true, false, false)), 4294u), Struct_3(Struct_1(vec2<f32>(-977f, 755f), vec4<bool>(true, false, false, true)), 1u), Struct_3(Struct_1(vec2<f32>(1441f, 1315f), vec4<bool>(true, true, false, true)), 0u), Struct_3(Struct_1(vec2<f32>(-956f, -1690f), vec4<bool>(false, true, true, true)), 4294967295u), Struct_3(Struct_1(vec2<f32>(-1111f, -3345f), vec4<bool>(true, false, false, true)), 1u), Struct_3(Struct_1(vec2<f32>(262f, -1025f), vec4<bool>(false, false, false, false)), 1u), Struct_3(Struct_1(vec2<f32>(1025f, 1257f), vec4<bool>(true, false, false, false)), 1u), Struct_3(Struct_1(vec2<f32>(-1433f, 894f), vec4<bool>(true, true, false, true)), 1u), Struct_3(Struct_1(vec2<f32>(-986f, -999f), vec4<bool>(false, false, false, true)), 0u), Struct_3(Struct_1(vec2<f32>(606f, 576f), vec4<bool>(false, true, false, true)), 5645u), Struct_3(Struct_1(vec2<f32>(-1423f, 301f), vec4<bool>(false, false, true, false)), 4294967295u));

var<private> global3: array<bool, 31> = array<bool, 31>(false, true, false, false, false, false, true, false, false, false, false, true, false, true, false, false, true, false, false, false, false, false, true, false, false, true, true, false, false, false, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<u32>) -> u32 {
    global2 = array<Struct_3, 24>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-398f, 153f), 1f, _wgslsmith_f_op_f32(-708f + -1152f), -355f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1238f, -723f, -1000f, 395f))))))));
    var var_1 = Struct_3(Struct_1(var_0.wz, global0.c), _wgslsmith_sub_u32(arg_2.x, ~global0.b.x));
    return _wgslsmith_add_u32(34883u, 2350u);
}

fn func_3(arg_0: Struct_5) -> i32 {
    let var_0 = Struct_4(vec4<i32>(-2147483647i, max(_wgslsmith_mod_i32(abs(global0.a.x), ~global0.a.x), -29535i), 42314i >> ((~arg_0.a.a ^ 1u) % 32u), global0.a.x), global0.b, global0.c);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(arg_0.b, 1760f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.b) * vec2<f32>(arg_0.b, arg_0.b))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, -320f) * vec2<f32>(411f, -559f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-475f, -1000f) + vec2<f32>(-472f, 1204f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(458f, -465f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1041f, 832f), vec2<f32>(arg_0.b, arg_0.b), global0.c.wy))))));
    let var_2 = global0.b.x;
    global1 = array<vec3<u32>, 24>();
    global1 = array<vec3<u32>, 24>();
    return var_0.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(~(-7429i), reverseBits(global0.a.x)), _wgslsmith_div_i32(_wgslsmith_mod_i32(~(~global0.a.x), global0.a.x), max(1i, global0.a.x) & ((global0.a.x ^ global0.a.x) | func_3(Struct_5(Struct_2(22355u), 203f)))), 2147483647i);
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1192f, 1045f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(867f, 995f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1802f, -1184f) - vec2<f32>(105f, 634f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-841f, -757f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1198f, 390f)) + vec2<f32>(-1332f, 1577f))), vec2<bool>(true, global3[_wgslsmith_index_u32(~1u, 31u)])))));
    var var_2 = global0.b.xy;
    var var_3 = arg_0;
    var var_4 = var_1.x <= var_1.x;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-562f * var_1.x)), var_1.x), !select(vec4<bool>(global3[_wgslsmith_index_u32(var_2.x, 31u)] & global0.c.x, true, true | global0.c.x, global0.c.x || global0.c.x), global0.c, all(!vec3<bool>(global0.c.x, global0.c.x, global0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-234f))));
    global2 = array<Struct_3, 24>();
    let var_1 = func_2(Struct_2(global0.b.x & ~func_1(global0.a.x, global0.b.xy, vec4<u32>(17032u, 60670u, 0u, global0.b.x))), abs(global0.b.wy));
    let x = u_input.a;
    s_output = StorageBuffer(24319u ^ global0.b.x, -vec3<i32>(-(~(-32645i)), ~global0.a.x, _wgslsmith_div_i32(global0.a.x, firstLeadingBit(62462i))), vec2<u32>(select(u_input.a, global0.b.x, any(var_1.b)), ~abs(~u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1465f * 1000f)), var_1.a.x, -446f) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-646f, var_1.a.x, var_1.a.x, var_1.a.x)), vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, 145f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1003f, var_1.a.x, 1717f, var_1.a.x) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, -547f, var_1.a.x, 1000f), vec4<f32>(var_1.a.x, 457f, var_1.a.x, var_1.a.x)))))));
}

