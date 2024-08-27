struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<f32>(-554f, 734f), true, -1000f), Struct_1(vec2<f32>(-196f, -129f), false, 2025f), Struct_1(vec2<f32>(-526f, -1839f), false, -295f), Struct_1(vec2<f32>(-105f, 1900f), false, -2358f), Struct_1(vec2<f32>(-2000f, -1000f), true, 444f), Struct_1(vec2<f32>(403f, -923f), false, 483f), Struct_1(vec2<f32>(-103f, -850f), false, -599f), Struct_1(vec2<f32>(-192f, -448f), false, -819f), Struct_1(vec2<f32>(1633f, 1140f), true, -1114f), Struct_1(vec2<f32>(-608f, -1656f), true, 841f), Struct_1(vec2<f32>(-1000f, -511f), false, 461f), Struct_1(vec2<f32>(631f, 604f), true, -1000f), Struct_1(vec2<f32>(1656f, -709f), false, 1407f), Struct_1(vec2<f32>(964f, 1821f), true, 2906f), Struct_1(vec2<f32>(-117f, 622f), false, 1000f), Struct_1(vec2<f32>(628f, -469f), false, 1327f), Struct_1(vec2<f32>(1449f, -1507f), true, 582f), Struct_1(vec2<f32>(-280f, -526f), false, -1885f), Struct_1(vec2<f32>(-303f, 878f), true, -2179f), Struct_1(vec2<f32>(-696f, 1000f), false, -212f), Struct_1(vec2<f32>(-2216f, -847f), true, -878f), Struct_1(vec2<f32>(1624f, 2559f), true, 287f), Struct_1(vec2<f32>(836f, -874f), false, -851f), Struct_1(vec2<f32>(142f, 1838f), true, -1000f), Struct_1(vec2<f32>(669f, 354f), true, 845f), Struct_1(vec2<f32>(-751f, 574f), false, -1000f), Struct_1(vec2<f32>(-202f, -146f), false, 452f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32) -> vec2<u32> {
    global0 = array<Struct_1, 27>();
    let var_0 = vec3<u32>(8650u, _wgslsmith_dot_vec2_u32(~(~abs(vec2<u32>(arg_1, u_input.b))), ~vec2<u32>(1u, 0u) >> ((vec2<u32>(u_input.b, 5385u) << (~vec2<u32>(0u, 82230u) % vec2<u32>(32u))) % vec2<u32>(32u))), abs(arg_1));
    let var_1 = global0[_wgslsmith_index_u32(1u << (arg_1 % 32u), 27u)];
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    return ~(~var_0.zx);
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec4<f32>) -> f32 {
    global0 = array<Struct_1, 27>();
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, 7503u, 1u), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.b, 20333u, u_input.b, u_input.b)), ~(~(~vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b)))));
    var var_1 = var_0.x;
    var_0 = vec4<u32>(41828u, var_0.x, var_0.x, ~(1u ^ _wgslsmith_dot_vec2_u32(func_3(vec3<bool>(false, true, arg_0.a.b.x), 0u), vec2<u32>(4294967295u, 4294967295u))));
    var var_2 = arg_0.a.b.x;
    return _wgslsmith_f_op_f32(-1000f + 180f);
}

fn func_1() -> bool {
    var var_0 = 145f;
    global0 = array<Struct_1, 27>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(Struct_2(all(vec2<bool>(false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), _wgslsmith_f_op_f32(-214f - 1381f), Struct_1(vec2<f32>(455f, 112f), true, -1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -958f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1495f * -779f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-591f, 679f, 884f, -437f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(187f, 471f, -170f, -716f))))))));
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -506f), _wgslsmith_f_op_f32(min(-1000f, -128f)))))), -1000f), all(select(vec3<bool>(select(false, true, true), true, false), vec3<bool>(true, true, true), any(vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1919f))));
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1042f * -930f), var_2.c, var_2.b));
    return !select(!(!(!var_2.b)), true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(-1000f >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(307f - -257f))), vec4<bool>(false, select(true, false, true) == func_1(), all(vec3<bool>(true, false, false)), true), 1f, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(232f, -695f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(678f, -871f))), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1254f + -248f)))));
    global0 = array<Struct_1, 27>();
    let var_1 = reverseBits(countOneBits(_wgslsmith_sub_u32(1u >> ((u_input.b ^ u_input.b) % 32u), u_input.b)));
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    let var_2 = Struct_2(any(vec3<bool>(true, !var_0.a.b.x, var_0.a.d.a.x != var_0.a.c)) && var_0.a.b.x, vec4<bool>(!(1u > ~var_1), true, -982f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.d.c - -1375f)), false), -537f, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.d.c), -570f), any(var_0.a.b.ywz), _wgslsmith_f_op_f32(trunc(-648f))));
    var var_3 = 4294967295u >= ~(var_1 << (_wgslsmith_div_u32(~u_input.b, ~4294967295u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_0, var_0.a.d.a.x, vec4<f32>(var_0.a.c, var_2.d.a.x, 1244f, var_2.c)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.d.c)), -128f, var_0.a.d.c, _wgslsmith_div_f32(1522f, var_0.a.d.a.x)))) * _wgslsmith_f_op_f32(exp2(var_0.a.c))), ~(firstLeadingBit(firstTrailingBit(u_input.b)) << (reverseBits(var_1) % 32u)), -vec3<i32>(0i, 63391i, ~(-15849i)));
}

