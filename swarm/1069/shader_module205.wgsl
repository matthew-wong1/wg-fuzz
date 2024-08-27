struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 1u);

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global3: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(-1i, 0i, 2147483647i, 0i), vec4<i32>(2147483647i, 6814i, 1i, 10435i), vec4<i32>(-8140i, -21088i, 0i, i32(-2147483648)), vec4<i32>(6829i, 0i, 2147483647i, -52257i), vec4<i32>(-35850i, -1i, -63999i, 1i), vec4<i32>(1i, i32(-2147483648), 2275i, 0i), vec4<i32>(12670i, 2147483647i, 2147483647i, -1i), vec4<i32>(-1i, 2147483647i, 29776i, -55083i), vec4<i32>(39162i, -28437i, 1i, i32(-2147483648)), vec4<i32>(-3297i, 1i, 1i, -17179i), vec4<i32>(27304i, 2147483647i, 0i, i32(-2147483648)), vec4<i32>(-18183i, 0i, -508i, 16995i), vec4<i32>(10484i, -73032i, i32(-2147483648), 1146i), vec4<i32>(48535i, 19389i, 44607i, 24372i), vec4<i32>(0i, -32423i, 44416i, -12789i));

var<private> global4: array<Struct_1, 15>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = vec3<i32>(u_input.a.x, u_input.a.x, firstTrailingBit(1i));
    var var_1 = Struct_1(~var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(681f - 595f) * _wgslsmith_div_f32(-1645f, 432f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -211f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(957f, -878f)))), _wgslsmith_div_f32(-906f, -1026f)))));
    let var_2 = Struct_1(-(var_1.a & u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))))));
    let var_3 = ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(~global0.x, _wgslsmith_mod_u32(global0.x, global0.x))), vec2<u32>(~global0.x, _wgslsmith_sub_u32(global0.x, 1u ^ global0.x)));
    var var_4 = Struct_2(Struct_1(39245i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-741f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(130f)), var_2.b, global1.x)), Struct_1(-29496i << ((max(global0.x, 4294967295u) ^ (0u ^ global0.x)) % 32u), -1000f), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_2.a, 21271i), var_0.xy) >= _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(var_1.a, -2147483647i)), var_2.a), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_3, 0u), reverseBits(20740u)), vec2<u32>(global0.x | _wgslsmith_sub_u32(var_3, global0.x), ~global0.x)));
    return var_3;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = arg_1.a;
    let var_1 = arg_1;
    let var_2 = ~55624i;
    let var_3 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0.x, func_3(), var_1.e.x) << (28873u % 32u), 15u)];
    global3 = array<vec4<i32>, 15>();
    return Struct_2(arg_1.a, arg_1.a.b, var_1.c, !(~min(arg_1.e.x, 1u) <= 33841u), arg_1.e >> (countOneBits(var_1.e) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = arg_0.a.a;
    var var_1 = func_2(arg_0.c.a, arg_0).c;
    let var_2 = all(global1.zz);
    var_0 = 39856i;
    var_1 = Struct_1(~_wgslsmith_div_i32(0i, arg_0.a.a), -1000f);
    return vec3<bool>(func_2(0i, func_2(-1i, func_2(min(var_1.a, 0i), func_2(arg_0.c.a, arg_0)))).d, any(!(!(!vec4<bool>(var_2, true, var_2, false)))), all(vec4<bool>(select(true, all(vec4<bool>(var_2, true, true, false)), global1.x || false), _wgslsmith_f_op_f32(arg_0.a.b * arg_0.b) <= var_1.b, any(vec4<bool>(arg_0.d, arg_0.d, true, var_2)), (arg_0.a.b <= -438f) | true)));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> bool {
    global1 = !select(!(!vec3<bool>(false, arg_0, true)), !vec3<bool>(true, arg_0, u_input.a.x >= 0i), !func_4(func_2(1i, Struct_2(Struct_1(25450i, arg_1.x), 427f, global4[_wgslsmith_index_u32(1u, 15u)], arg_0, vec2<u32>(global0.x, 131723u)))));
    let var_0 = arg_1.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_add_i32(58744i, u_input.a.x), func_2(-14889i, Struct_2(global4[_wgslsmith_index_u32(global0.x, 15u)], -885f, Struct_1(u_input.a.x, -204f), global1.x, vec2<u32>(32033u, 8894u)))).a.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(893f)))), var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_1.xw))), vec2<bool>(true, true)));
    let var_2 = _wgslsmith_div_u32(global0.x, _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, global0.x) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 1u, global0.x, 4294967295u), vec4<u32>(global0.x, global0.x, global0.x, 0u)), ~vec4<u32>(global0.x, 0u, global0.x, global0.x) ^ min(vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(global0.x, global0.x, global0.x, global0.x)))));
    global1 = vec3<bool>(true, global1.x, global1.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, all(select(select(vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, global1.x, global1.x), global1.x), select(vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, global1.x, true), false), func_1(false, vec4<f32>(-1355f, 767f, -140f, 1797f)))), all(!select(global2[_wgslsmith_index_u32(global0.x, 20u)], vec2<bool>(false, global1.x), true)), global1.x), select(!(!select(vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, false, true), vec4<bool>(global1.x, global1.x, false, global1.x))), !select(select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(false, false, false, global1.x)), vec4<bool>(true, global1.x, false, false), !vec4<bool>(global1.x, true, true, true)), !select(vec4<bool>(true, false, true, global1.x), vec4<bool>(global1.x, global1.x, global1.x, false), select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, false, true, global1.x)))), global1.x | (true | (all(vec3<bool>(global1.x, global1.x, global1.x)) | global1.x)));
    var var_1 = u_input.a.x;
    let var_2 = ~reverseBits(select(firstTrailingBit(~vec4<u32>(global0.x, global0.x, 1u, global0.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(63610u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, global0.x, 4294967295u, global0.x)), var_0.x));
    global1 = var_0.yzw;
    let x = u_input.a;
    s_output = StorageBuffer(131f, -273f, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(435f, 410f, -677f)))), ~63099u);
}

