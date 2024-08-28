struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: i32;

var<private> global2: array<Struct_2, 11>;

var<private> global3: vec2<i32> = vec2<i32>(36801i, 1i);

var<private> global4: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(12036u, 42873u, 0u, 60043u), vec4<u32>(0u, 9304u, 15890u, 0u), vec4<u32>(4294967295u, 0u, 29243u, 67823u), vec4<u32>(4294967295u, 96080u, 1u, 67644u), vec4<u32>(22242u, 7334u, 87519u, 14099u), vec4<u32>(3021u, 1u, 0u, 74179u), vec4<u32>(70431u, 18689u, 0u, 886u), vec4<u32>(4294967295u, 19421u, 46842u, 0u), vec4<u32>(25351u, 65305u, 43161u, 22165u), vec4<u32>(30488u, 43128u, 63384u, 23795u), vec4<u32>(4294967295u, 35200u, 43103u, 1u), vec4<u32>(8117u, 4294967295u, 0u, 1u), vec4<u32>(0u, 1u, 4294967295u, 47626u), vec4<u32>(75377u, 0u, 1u, 1u), vec4<u32>(0u, 4294967295u, 84530u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 26766u), vec4<u32>(49206u, 0u, 4294967295u, 65822u), vec4<u32>(1u, 66304u, 40536u, 19077u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 1u, 101862u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<u32> {
    var var_0 = vec3<i32>(~firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(13616i, -43807i, global3.x), vec3<i32>(-32436i, 1i, u_input.a))) << (arg_0.a.x % 32u), _wgslsmith_clamp_i32(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, 0i), vec2<i32>(2147483647i, global3.x)), u_input.a, -_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, 2147483647i), ~vec2<i32>(global3.x, global3.x))), global3.x);
    var var_1 = vec2<bool>(!any(select(vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(true, true, false, arg_1))) || !(!any(vec4<bool>(false, false, true, true))), all(vec2<bool>(all(!vec3<bool>(false, arg_1, arg_1)), !arg_1)));
    return u_input.b;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>) -> u32 {
    let var_0 = Struct_1(arg_1.yy);
    var var_1 = vec3<u32>(arg_0.a, 6124u, _wgslsmith_mod_u32(~u_input.b.x, arg_0.a));
    var var_2 = Struct_2(u_input.a, Struct_1(var_1.zz), -1000f, 405u, _wgslsmith_dot_vec2_u32(func_3(var_0, select(0i > u_input.a, true, all(vec2<bool>(true, arg_0.b)))), vec2<u32>(_wgslsmith_mult_u32(2415u, 31761u) >> (~4294967295u % 32u), 15016u)));
    var var_3 = var_1.xy;
    var var_4 = -max(select(_wgslsmith_add_vec4_i32(vec4<i32>(-54243i, global3.x, -1i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.e.x, var_2.a, -57542i, -2147483647i), vec4<i32>(1i, 2147483647i, var_2.a, -58151i))), (vec4<i32>(u_input.a, 14679i, arg_0.c, 7504i) >> (global4[_wgslsmith_index_u32(var_1.x, 20u)] % vec4<u32>(32u))) << (vec4<u32>(arg_1.x, 80726u, var_1.x, var_3.x) % vec4<u32>(32u)), ~arg_0.a > ~47366u), vec4<i32>(0i, _wgslsmith_mod_i32(-1i, ~(-3440i)), -1i, ~(arg_0.c << (57660u % 32u))));
    return arg_1.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = -global3.x;
    let var_1 = 1u;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_1.x)), -1268f, !all(vec4<bool>(false, true, false, false)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -889f))), arg_1.x);
    var var_3 = Struct_2(arg_0.a, Struct_1(vec2<u32>(12541u, 0u)), _wgslsmith_f_op_f32(ceil(arg_1.x)), 1u, _wgslsmith_div_u32(~(~(u_input.b.x | arg_0.d)), ~_wgslsmith_div_u32(_wgslsmith_div_u32(1u, 21410u), 47174u)));
    let var_4 = vec4<bool>(true, false, all(vec3<bool>(arg_0.c != 566f, true && (u_input.b.x > 78813u), !all(vec3<bool>(true, true, false)))), true);
    return arg_0.b;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-770f - 1265f)) + -1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -631f) - _wgslsmith_f_op_f32(step(1998f, -418f)))) - -122f));
    global1 = -2147483647i;
    global4 = array<vec4<u32>, 20>();
    global4 = array<vec4<u32>, 20>();
    global4 = array<vec4<u32>, 20>();
    return func_4(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~func_2(Struct_3(u_input.b.x, arg_0.x, 0i, vec2<f32>(1838f, 1176f), vec3<i32>(-21286i, 13027i, -1i)), abs(vec4<u32>(724u, 113641u, 16324u, u_input.b.x))), max(firstTrailingBit(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), _wgslsmith_sub_u32(28732u, u_input.b.x))), 11u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1524f, -1016f)), -1000f))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    var var_0 = vec3<bool>(any(!select(select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, false, false), true), vec4<bool>(true, false, false, false), arg_0.x)), arg_0.x, false);
    var var_1 = arg_2;
    var var_2 = false;
    var_1 = Struct_1(vec2<u32>(arg_1.x, arg_2.a.x));
    global1 = _wgslsmith_sub_i32(-1i, global3.x);
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1093f, -1967f, -425f, -382f), vec4<f32>(1074f, 246f, -116f, -1000f)))))), vec4<f32>(-1203f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -191f)), _wgslsmith_f_op_f32(func_5(vec3<bool>(true, true, true), vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.b.x), func_1(vec4<bool>(true, true, false, false), vec2<i32>(u_input.a, global3.x)), vec3<f32>(560f, -319f, 925f))), _wgslsmith_f_op_f32(f32(-1f) * -367f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-2185f * -1553f), _wgslsmith_f_op_f32(-786f + 1801f), _wgslsmith_f_op_f32(-1000f - 1885f), _wgslsmith_f_op_f32(abs(-1000f))), vec4<f32>(-387f, _wgslsmith_f_op_f32(trunc(558f)), -715f, -254f), vec4<bool>(true, true, true, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(exp2(var_0.x)))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, 1000f, var_0.x), var_0))), var_0))));
    let var_2 = global4[_wgslsmith_index_u32(u_input.b.x, 20u)];
    let var_3 = Struct_2(global3.x, Struct_1(select(~var_2.xx >> (~vec2<u32>(0u, var_2.x) % vec2<u32>(32u)), var_2.wy, vec2<bool>(select(true, true, true), false))), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, ~11755u, var_2.x, 1u), abs(global4[_wgslsmith_index_u32(1u, 20u)])), (~1u << (var_2.x % 32u)) >> (func_4(global2[_wgslsmith_index_u32(firstLeadingBit(35244u >> (u_input.b.x % 32u)), 11u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_1.x) - _wgslsmith_f_op_vec2_f32(min(var_1.zw, vec2<f32>(var_0.x, 1286f))))).a.x % 32u));
    var var_4 = var_0.ww;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-15390i), firstTrailingBit(var_3.a), _wgslsmith_clamp_vec2_u32(firstTrailingBit(var_2.xx), select(firstLeadingBit(vec2<u32>(4294967295u, 59354u)) ^ ~u_input.b, _wgslsmith_clamp_vec2_u32(abs(var_2.wx), vec2<u32>(80087u, 21950u), var_3.b.a), vec2<bool>(true, true)), var_2.ww), _wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(var_2.x, 20u)] & countOneBits(~vec4<u32>(4294967295u, var_2.x, 32403u, 4890u)), ~abs(abs(global4[_wgslsmith_index_u32(u_input.b.x, 20u)]))), vec3<u32>(~_wgslsmith_sub_u32(~4294967295u, 0u), (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_3.e, 79243u), vec3<u32>(17081u, u_input.b.x, 62622u)) & 92056u) & _wgslsmith_sub_u32(~4294967295u, _wgslsmith_div_u32(1u, 4294967295u)), var_2.x));
}

