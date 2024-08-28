struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: i32,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(2147483647i, Struct_3(Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, false, true), 1i, 0u), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), i32(-2147483648), 7066u), 4294967295u, vec2<f32>(250f, 1000f)), 831f, Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(false, false, true), i32(-2147483648), 4294967295u)));

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(14308i, 94393i, 0i, 16001i), vec4<i32>(i32(-2147483648), 22419i, -1i, 6842i), vec4<i32>(-18613i, 0i, 1i, -33963i), vec4<i32>(-18853i, -23022i, 0i, -27329i), vec4<i32>(21027i, 20327i, -6282i, -31613i), vec4<i32>(-7758i, -12474i, 0i, 30601i), vec4<i32>(0i, -56661i, -1i, -4929i), vec4<i32>(-1941i, -15097i, -32014i, 1i), vec4<i32>(-41570i, -16994i, 4414i, 0i), vec4<i32>(2147483647i, -39471i, 0i, 2147483647i), vec4<i32>(-1i, -1i, 0i, -13812i), vec4<i32>(-41716i, 12071i, 2147483647i, 1i), vec4<i32>(6272i, 19986i, 9048i, 2147483647i), vec4<i32>(42872i, 0i, 2147483647i, -18286i), vec4<i32>(0i, 2147483647i, 15309i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), -48674i, 56974i), vec4<i32>(19879i, -1i, 1i, 21095i), vec4<i32>(1i, -1i, 46933i, -18499i), vec4<i32>(43824i, 550i, 0i, 0i), vec4<i32>(13187i, -49868i, 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -14845i, 16838i, -18938i));

var<private> global2: array<vec4<i32>, 27>;

var<private> global3: array<Struct_3, 15>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(true, false, false), 32426i, 91299u), 0u, vec2<f32>(1000f, 827f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: bool) -> bool {
    global4 = global0.b.b;
    var var_0 = Struct_4(abs(1i) & _wgslsmith_clamp_i32(2147483647i, 0i, abs(~global0.a)), global0.b);
    var var_1 = Struct_4(-(_wgslsmith_clamp_i32(2147483647i & global4.a.c, abs(global0.b.d.c), max(-28496i, u_input.b.x)) | arg_0), var_0.b);
    var var_2 = vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(countOneBits(u_input.a.xw), ~u_input.a.wx)), 0i, u_input.b.x);
    var var_3 = 0i;
    return select(true, global4.a.a.x, !any(!var_0.b.d.a) & !(-664f < _wgslsmith_f_op_f32(min(global0.b.c, -491f))));
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = Struct_2(Struct_1(vec4<bool>(!all(global0.b.d.a.yxx), !(global0.a != -21552i), func_3(1i, !global4.a.b.x), global4.a.b.x), !select(vec3<bool>(true, global4.a.b.x, global4.a.b.x), select(global4.a.b, global4.a.a.wyz, global0.b.a.a.yzx), all(vec3<bool>(true, true, global4.a.a.x))), -global4.a.c, global0.b.a.d << ((arg_0 >> (firstLeadingBit(global4.b) % 32u)) % 32u)), global0.b.d.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.x, global4.c.x)));
    global0 = Struct_4(reverseBits(u_input.a.x), global3[_wgslsmith_index_u32(global0.b.a.d << (global4.b % 32u), 15u)]);
    let var_1 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(step(678f, _wgslsmith_f_op_f32(abs(-439f)))), 1129f);
    var var_2 = ~(~0u | global4.b);
    global2 = array<vec4<i32>, 27>();
    return -12533i;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> Struct_3 {
    var var_0 = 4294967295u;
    let var_1 = vec2<i32>(~(func_2(80818u) ^ reverseBits(global4.a.c)) ^ arg_1.d.c, ~((~arg_0 >> (min(arg_1.b.a.d, 4294967295u) % 32u)) & func_2(_wgslsmith_mult_u32(0u, arg_1.b.b))));
    global1 = array<vec4<i32>, 21>();
    var var_2 = -15921i << (global4.a.d % 32u);
    let var_3 = arg_1;
    return var_3;
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    let var_0 = global4.c;
    let var_1 = func_1(u_input.b.x & (_wgslsmith_clamp_i32(~2147483647i, global0.a, global0.b.b.a.c) << (max(71087u, global4.a.d) % 32u)), func_1(_wgslsmith_dot_vec2_i32(min(~u_input.a.xz, _wgslsmith_div_vec2_i32(vec2<i32>(-1i, arg_0.d.c), u_input.b.xw)), firstLeadingBit(vec2<i32>(u_input.b.x, 2147483647i))), func_1(i32(-1i) * -98449i, global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(global0.b.a.d, arg_0.a.d)), 15u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, arg_0.b.c.x) + _wgslsmith_f_op_f32(659f * -607f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-612f * 401f))), -246f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(489f, _wgslsmith_f_op_f32(-var_0.x))))).b.c.x;
    global3 = array<Struct_3, 15>();
    return Struct_4(global4.a.c, global3[_wgslsmith_index_u32(select(_wgslsmith_div_u32(1u, ~global0.b.d.d), global4.b, true), 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_2(global0.b.a, 27625u, global0.b.b.c);
    global0 = func_4(func_1(firstLeadingBit(~0i), global0.b, _wgslsmith_f_op_f32(ceil(global4.c.x))));
    let var_0 = Struct_3(global0.b.d, func_1(_wgslsmith_dot_vec3_i32(abs(u_input.b.xyz), ~u_input.a.wwy), func_4(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, firstTrailingBit(926u)), 15u)]).b, _wgslsmith_f_op_f32(floor(global0.b.b.c.x))).b, 380f, global4.a);
    var var_1 = vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(func_1(-2147483647i, Struct_3(Struct_1(global4.a.a, var_0.b.a.a.zwz, 26713i, 1u), Struct_2(global4.a, global0.b.d.d, vec2<f32>(global4.c.x, 586f)), global4.c.x, global0.b.d), -818f).a.c, ~0i, global0.b.d.c << (var_0.b.b % 32u)), vec3<i32>(_wgslsmith_add_i32(u_input.b.x, global0.a), ~global4.a.c, _wgslsmith_div_i32(-1i, global4.a.c))), -13357i);
    global4 = func_1(1i, func_1(~(23649i << (abs(var_0.d.d) % 32u)), Struct_3(Struct_1(select(vec4<bool>(var_0.b.a.b.x, true, global0.b.a.b.x, var_0.a.a.x), vec4<bool>(false, true, true, false), var_0.d.a), vec3<bool>(false, true, var_0.a.b.x), -u_input.b.x, ~4294967295u), func_1(firstTrailingBit(53346i), global0.b, _wgslsmith_f_op_f32(-1131f * global4.c.x)).b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global4.c.x)), -504f)), func_4(func_1(var_0.a.c, global3[_wgslsmith_index_u32(global4.a.d, 15u)], var_0.c)).b.a), 504f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(384f)))))).b;
    var var_2 = select(-(~u_input.b.wxy), -vec3<i32>(select(global4.a.c, ~(-86864i), true), abs(_wgslsmith_clamp_i32(var_1.x, -28051i, 56360i)), var_1.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a);
}

