struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23>;

var<private> global1: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(-12257i, 2147483647i, -1i), vec3<i32>(2147483647i, -1i, 39424i), vec3<i32>(9263i, i32(-2147483648), -1i), vec3<i32>(-26126i, 71253i, -1i), vec3<i32>(-34447i, -1i, 2147483647i), vec3<i32>(-16409i, -1i, 1i), vec3<i32>(i32(-2147483648), i32(-2147483648), 32247i), vec3<i32>(13506i, 45762i, i32(-2147483648)), vec3<i32>(-39451i, 39459i, 0i), vec3<i32>(2147483647i, 0i, 21165i), vec3<i32>(i32(-2147483648), -25865i, i32(-2147483648)), vec3<i32>(33359i, i32(-2147483648), 7072i), vec3<i32>(i32(-2147483648), -13260i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, -1i), vec3<i32>(47579i, 47206i, 48028i), vec3<i32>(-15705i, 10916i, -63730i), vec3<i32>(6701i, 9799i, 13516i), vec3<i32>(-7572i, -66139i, -6633i), vec3<i32>(1i, 446i, -1i), vec3<i32>(22119i, 33512i, -13713i), vec3<i32>(1i, 52285i, 54781i), vec3<i32>(11463i, 2147483647i, -40715i), vec3<i32>(-22697i, 3957i, -1i), vec3<i32>(1i, 2147483647i, -2878i), vec3<i32>(-1i, -1i, -1i), vec3<i32>(-1i, 2147483647i, 22619i), vec3<i32>(-19716i, 32358i, 1i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32) -> f32 {
    let var_0 = ~(_wgslsmith_div_u32(~1u, ~countOneBits(81176u)) >> (1u % 32u));
    let var_1 = 968f;
    global0 = array<Struct_3, 23>();
    var var_2 = Struct_2(!vec4<bool>(false || (var_1 == arg_1), false & (var_0 < 4294967295u), true, reverseBits(u_input.a) != 230i));
    var var_3 = Struct_4(Struct_2(select(var_2.a, var_2.a, vec4<bool>(true, true, true, true))), Struct_2(var_2.a), Struct_3(Struct_2(vec4<bool>(true, var_2.a.x, all(var_2.a.zyx), true))), Struct_2(!vec4<bool>(all(var_2.a), true, var_2.a.x && true, false)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-1458f * arg_1)) - _wgslsmith_f_op_f32(round(-194f))))));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    global1 = array<vec3<i32>, 27>();
    var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, 1405f, 404f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1000f, arg_0) - vec3<f32>(arg_0, arg_0, 595f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(633f))), 1f, -153f)), -710f));
    var var_1 = Struct_4(arg_2.a, Struct_2(!(!select(vec4<bool>(arg_3.x, false, true, arg_2.a.a.x), arg_2.a.a, arg_3.x))), Struct_3(Struct_2(select(!arg_2.a.a, select(arg_2.a.a, arg_2.a.a, arg_2.a.a), u_input.a > 1i))), Struct_2(vec4<bool>(u_input.a <= ~u_input.a, true, true, !all(arg_3.zx))));
    var var_2 = !var_1.c.a.a.xzw;
    return -830f;
}

fn func_1() -> vec3<f32> {
    global1 = array<vec3<i32>, 27>();
    global1 = array<vec3<i32>, 27>();
    global0 = array<Struct_3, 23>();
    global1 = array<vec3<i32>, 27>();
    global1 = array<vec3<i32>, 27>();
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -691f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(370f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(1368f + 184f), abs(vec4<u32>(0u, 4294967295u, 1u, 24535u)), global0[_wgslsmith_index_u32(1u, 23u)], vec3<bool>(true, true, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 27>();
    global0 = array<Struct_3, 23>();
    var var_0 = u_input.b;
    global0 = array<Struct_3, 23>();
    var_0 = -2147483647i;
    var var_1 = Struct_3(Struct_2(select(vec4<bool>(true, any(vec2<bool>(true, false)), true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false), false))));
    var_1 = global0[_wgslsmith_index_u32(1u, 23u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-342f, 465f, 331f), vec3<f32>(-1473f, 846f, -380f)))) * vec3<f32>(-159f, -1010f, -215f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(160f, -128f, -235f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) - vec3<f32>(-179f, -616f, 1000f)))), any(vec3<bool>(true, false, true)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-318f, 700f, 2394f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1558f, 1203f, 602f), vec3<f32>(586f, -519f, 292f)) - vec3<f32>(511f, _wgslsmith_f_op_f32(sign(1300f)), _wgslsmith_f_op_f32(f32(-1f) * -195f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a << (~0u % 32u), _wgslsmith_mod_vec4_i32(~(~vec4<i32>(u_input.b, u_input.a, 0i, u_input.b)), ~vec4<i32>(u_input.b, _wgslsmith_clamp_i32(u_input.a, u_input.b, 0i), u_input.b, reverseBits(1841i))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1458f - var_2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_2.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-var_2.x)) - var_2.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.b, u_input.a)), vec2<i32>(18435i, -2147483647i)), abs(-2147483647i)));
}

