struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(32990u, 1u, 70842u, 7069u, 41225u, 8685u, 18777u, 1u, 1u, 1u, 23817u, 3122u, 0u, 13429u, 21441u, 14782u, 2084u, 0u, 22509u, 70063u, 55625u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = !arg_0.a.a;
    global0 = array<u32, 21>();
    let var_1 = ~firstTrailingBit(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.e, u_input.e), vec3<u32>(4294967295u, 4294967295u, 1u)), 21u)], 21u)], 21u)]);
    var var_2 = u_input.c == abs(-_wgslsmith_dot_vec4_i32(~u_input.a, _wgslsmith_add_vec4_i32(u_input.a, u_input.a)));
    return arg_0;
}

fn func_3() -> f32 {
    let var_0 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), any(vec4<bool>(false, true, false, false))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), u_input.a.x == 4453i), !all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)))), select(select(vec3<bool>(all(vec2<bool>(true, false)), true, true), vec3<bool>(true, true, func_1(Struct_2(Struct_1(true), vec4<f32>(-1093f, -122f, -372f, -549f), Struct_1(true))).a.a), vec3<bool>(true, true, false)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), all(vec3<bool>(true, true, true))), true), !vec3<bool>(global0[_wgslsmith_index_u32(min(1u, 4294967295u), 21u)] <= 27805u, all(vec4<bool>(false, false, false, false)), false));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2114f)), _wgslsmith_f_op_f32(trunc(-334f)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1445f + _wgslsmith_f_op_f32(-734f - 624f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-311f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -634f), -160f, all(select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), var_0.x))))));
    let var_2 = u_input.b;
    var var_3 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(u_input.d.x, -14935i)), u_input.d.x | u_input.a.x, -abs(-10165i)), min(u_input.a.x, ~min(u_input.c, -12003i))) ^ 1i;
    global0 = array<u32, 21>();
    return func_1(func_1(Struct_2(Struct_1(false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, -1025f, 1000f, 475f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-618f, var_1.x, var_1.x, -1111f)))), Struct_1(var_1.x >= var_1.x)))).b.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(max(countOneBits(vec4<u32>(1u, 22177u, 4294967295u, global0[_wgslsmith_index_u32(arg_3, 21u)])), ~vec4<u32>(u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(u_input.e, 21u)], arg_3)), abs(vec4<u32>(arg_3, arg_3, arg_3, arg_3))), 21u)] | reverseBits(1u);
    global0 = array<u32, 21>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1000f))))))) + arg_1.b.x);
    var var_2 = arg_3;
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(-1000f, -615f)));
    return 44575u;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>) -> f32 {
    var var_0 = true;
    let var_1 = Struct_2(func_1(Struct_2(Struct_1(false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(632f, 1021f, arg_1.x, 1705f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -1000f, -2355f) * vec4<f32>(arg_1.x, arg_1.x, 2804f, arg_1.x))), func_1(func_1(Struct_2(Struct_1(true), vec4<f32>(-200f, arg_1.x, arg_1.x, 700f), Struct_1(true)))).c)).c, vec4<f32>(arg_1.x, _wgslsmith_div_f32(383f, arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(984f))))), -607f), func_1(Struct_2(Struct_1(true), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(266f, 146f, -203f, -1647f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, -1914f, 1363f, 484f), vec4<f32>(780f, 343f, -713f, -1000f)))), func_1(func_1(Struct_2(Struct_1(true), vec4<f32>(1214f, 1330f, -277f, arg_1.x), Struct_1(false)))).a)).c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(func_1(Struct_2(Struct_1(true), vec4<f32>(-1383f, 1689f, -1000f, -269f), Struct_1(true))), func_1(Struct_2(Struct_1(true), vec4<f32>(-186f, 125f, 3023f, -850f), Struct_1(true))), func_1(Struct_2(Struct_1(false), vec4<f32>(198f, 858f, -826f, -1838f), Struct_1(true))), 4294967295u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-273f, -956f), vec2<f32>(-299f, -2214f))))))) + _wgslsmith_f_op_f32(f32(-1f) * -892f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-235f, 432f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(406f + 728f))) + _wgslsmith_f_op_f32(floor(func_1(Struct_2(Struct_1(false), vec4<f32>(154f, 2308f, 152f, -1089f), Struct_1(true))).b.x)))), _wgslsmith_div_f32(-1579f, 1639f));
    global0 = array<u32, 21>();
    var var_1 = Struct_2(Struct_1(!(u_input.d.x > u_input.a.x) | (false | any(vec4<bool>(true, false, false, true)))), var_0, func_1(Struct_2(func_1(Struct_2(Struct_1(false), vec4<f32>(-884f, var_0.x, -1387f, var_0.x), Struct_1(false))).a, vec4<f32>(var_0.x, -251f, var_0.x, var_0.x), Struct_1(true))).a);
    var_1 = Struct_2(var_1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 1444f, 184f, -1000f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-735f, var_1.b.x, -703f, 537f))), vec4<f32>(-358f, var_0.x, 893f, -1000f), vec4<bool>(var_1.a.a, true, true, true))))), vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(921f, var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-374f + -394f)))), Struct_1(true));
    let var_2 = select(select(select(select(!vec2<bool>(var_1.c.a, false), select(vec2<bool>(var_1.c.a, var_1.c.a), vec2<bool>(true, false), vec2<bool>(var_1.c.a, true)), var_1.c.a), !select(vec2<bool>(var_1.a.a, var_1.a.a), vec2<bool>(var_1.c.a, false), vec2<bool>(var_1.a.a, false)), select(select(vec2<bool>(var_1.a.a, var_1.c.a), vec2<bool>(false, true), false), !vec2<bool>(false, var_1.a.a), select(vec2<bool>(true, false), vec2<bool>(false, var_1.a.a), vec2<bool>(true, var_1.a.a)))), vec2<bool>(select(any(vec4<bool>(true, var_1.a.a, false, var_1.c.a)), var_1.c.a, var_1.c.a), !var_1.a.a), !vec2<bool>(any(vec4<bool>(var_1.a.a, true, var_1.a.a, var_1.a.a)), true)), !vec2<bool>(true, all(select(vec4<bool>(true, false, var_1.c.a, var_1.a.a), vec4<bool>(var_1.a.a, false, true, var_1.a.a), var_1.c.a))), true);
    global0 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -860f), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1840f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-298f - _wgslsmith_f_op_f32(-364f - _wgslsmith_f_op_f32(abs(var_0.x)))), var_0.x), _wgslsmith_f_op_f32(floor(var_1.b.x)), var_1.b.x);
}

