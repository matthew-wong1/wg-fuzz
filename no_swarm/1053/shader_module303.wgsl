struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_5, 1> = array<Struct_5, 1>(Struct_5(i32(-2147483648)));

var<private> global2: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec2<u32>(0u, 1u), Struct_2(Struct_1(vec4<f32>(1643f, -827f, 792f, -406f), 52481i, vec2<f32>(441f, -361f), vec2<u32>(32755u, 22822u))), Struct_3(109f), Struct_3(-1278f)), Struct_4(vec2<u32>(1u, 4294967295u), Struct_2(Struct_1(vec4<f32>(-1126f, 827f, 3103f, 1000f), -1i, vec2<f32>(-273f, -1000f), vec2<u32>(75100u, 48722u))), Struct_3(645f), Struct_3(220f)), Struct_4(vec2<u32>(33160u, 0u), Struct_2(Struct_1(vec4<f32>(-354f, -1081f, -1000f, -2394f), i32(-2147483648), vec2<f32>(589f, -1543f), vec2<u32>(0u, 59580u))), Struct_3(-735f), Struct_3(-1745f)), Struct_4(vec2<u32>(1u, 87432u), Struct_2(Struct_1(vec4<f32>(845f, -743f, 174f, -415f), 3995i, vec2<f32>(1061f, 2807f), vec2<u32>(0u, 8673u))), Struct_3(294f), Struct_3(-351f)), Struct_4(vec2<u32>(1u, 1u), Struct_2(Struct_1(vec4<f32>(-223f, 1000f, -1507f, 1000f), 26043i, vec2<f32>(-1119f, 1000f), vec2<u32>(0u, 4294967295u))), Struct_3(-282f), Struct_3(-684f)), Struct_4(vec2<u32>(46976u, 16170u), Struct_2(Struct_1(vec4<f32>(217f, -543f, 174f, -562f), 2147483647i, vec2<f32>(-1145f, -951f), vec2<u32>(17775u, 1u))), Struct_3(460f), Struct_3(-528f)), Struct_4(vec2<u32>(6533u, 16299u), Struct_2(Struct_1(vec4<f32>(-354f, 287f, 1000f, -554f), 0i, vec2<f32>(-674f, -253f), vec2<u32>(4294967295u, 4294967295u))), Struct_3(123f), Struct_3(386f)), Struct_4(vec2<u32>(33096u, 0u), Struct_2(Struct_1(vec4<f32>(781f, -669f, -521f, 589f), 1i, vec2<f32>(1003f, -1000f), vec2<u32>(61042u, 107585u))), Struct_3(-1000f), Struct_3(-750f)), Struct_4(vec2<u32>(23925u, 68121u), Struct_2(Struct_1(vec4<f32>(1108f, 141f, -1365f, -1841f), 2147483647i, vec2<f32>(-531f, -1000f), vec2<u32>(4294967295u, 17189u))), Struct_3(-1232f), Struct_3(363f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_div_i32(2147483647i, 1i);
    let var_1 = ~(reverseBits(~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 36758u)) | firstLeadingBit(reverseBits(vec4<u32>(4294967295u, 1u, u_input.a, u_input.c.x)) >> (~vec4<u32>(1u, u_input.a, u_input.a, 71791u) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_div_i32(54599i, u_input.b.x);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -697f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) - global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.x, -548f)) * _wgslsmith_f_op_f32(-global0.x)))), 578f, 397f);
    var var_3 = reverseBits(30826u);
    return _wgslsmith_f_op_f32(exp2(arg_0.x));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_5) -> u32 {
    global2 = array<Struct_4, 9>();
    let var_0 = ~u_input.b;
    let var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, arg_1, arg_1))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -924f, arg_1)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 312f, arg_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1725f, -829f, -291f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1119f, global0.x, 2460f), vec3<f32>(153f, arg_1, -1292f), vec3<bool>(true, true, false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1452f, arg_1))))), firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-60546i, u_input.b.x)), vec2<i32>(2147483647i, u_input.b.x)), -(~(-2147483647i)), 1i))));
    global2 = array<Struct_4, 9>();
    var var_2 = countOneBits(select(abs(firstLeadingBit(~vec4<i32>(22242i, -2147483647i, 0i, -8220i))), vec4<i32>(abs(u_input.b.x), i32(-1i) * -var_0.x, countOneBits(~var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-11416i, var_0.x, arg_3.a), vec3<i32>(var_0.x, 30827i, u_input.b.x))), !vec4<bool>(true, true, false, any(vec2<bool>(true, true)))));
    return ~arg_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = u_input.b.x;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-829f * _wgslsmith_f_op_f32(191f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(670f, 1901f, false)) * -353f))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1443f, -745f, -637f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, global0.x, var_1.a), vec3<f32>(-2932f, global0.x, 166f)))))));
    let var_2 = global2[_wgslsmith_index_u32(~u_input.a | ~func_2(u_input.a, _wgslsmith_f_op_f32(-global0.x), firstLeadingBit(~vec2<u32>(u_input.c.x, u_input.a)), Struct_5(u_input.b.x & 1i)), 9u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global0.x, 2359f)), 175f))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(149f * _wgslsmith_f_op_f32(var_1.a + global0.x))));
    return var_2.b.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_4 {
    let var_0 = global1[_wgslsmith_index_u32(abs(abs(~_wgslsmith_clamp_u32(u_input.c.x, arg_1.d.x, reverseBits(4294967295u)))), 1u)];
    var var_1 = select(~(~firstLeadingBit(4294967295u) << (firstLeadingBit(26288u ^ arg_1.d.x) % 32u)), ~0u, true);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(336f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a))), _wgslsmith_f_op_f32(239f + global0.x)))));
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_1.a.xxx)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1.a.xzx))))));
    var_1 = 1u;
    return global2[_wgslsmith_index_u32(~(~arg_1.d.x), 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, u_input.a == 29451u, !all(vec4<bool>(true, u_input.a >= 4294967295u, true, all(vec2<bool>(false, false)))), true);
    let var_1 = select(var_0.wzy, !(!select(var_0.xxy, select(var_0.zzy, var_0.xww, var_0.yzx), select(var_0.zxz, vec3<bool>(true, var_0.x, false), var_0.x))), vec3<bool>(true, any(select(!vec2<bool>(true, var_0.x), select(var_0.ww, var_0.zz, var_0.x), u_input.b.x < u_input.b.x)), !(!var_0.x)));
    global1 = array<Struct_5, 1>();
    global2 = array<Struct_4, 9>();
    let var_2 = func_4(Struct_3(-653f), func_1(countOneBits(~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.b.x, u_input.b.x), u_input.b)), vec4<i32>(38779i, abs(1i), 2147483647i, ~(-u_input.b.x)), u_input.b.x));
    var var_3 = func_1(firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b.x, var_2.b.a.b), _wgslsmith_sub_i32(var_2.b.a.b, 4996i)), _wgslsmith_sub_i32(select(-10415i, u_input.b.x, true), u_input.b.x), countOneBits(var_2.b.a.b))), -(vec4<i32>(-1i) * -(~vec4<i32>(4417i, 43506i, 1i, 3704i))), u_input.b.x);
    let var_4 = any(vec2<bool>(all(vec3<bool>(var_1.x, true, var_0.x)), true || (-1000f < global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

