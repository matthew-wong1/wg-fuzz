struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<i32>(i32(-2147483648), 22552i, 2147483647i), vec3<u32>(1u, 35219u, 0u), true), Struct_1(vec3<i32>(18497i, 51648i, -1i), vec3<u32>(11794u, 16462u, 0u), true), Struct_1(vec3<i32>(-10274i, -1i, -4732i), vec3<u32>(1u, 55575u, 4294967295u), true), Struct_1(vec3<i32>(-1i, 48653i, -5785i), vec3<u32>(0u, 5971u, 94483u), false), Struct_1(vec3<i32>(0i, 52252i, 1i), vec3<u32>(4294967295u, 1u, 1u), false), Struct_1(vec3<i32>(0i, -3871i, 2147483647i), vec3<u32>(0u, 57619u, 35409u), false), Struct_1(vec3<i32>(-1i, 2147483647i, 1i), vec3<u32>(4294967295u, 1u, 0u), true), Struct_1(vec3<i32>(0i, 7574i, -61652i), vec3<u32>(1u, 0u, 1u), false), Struct_1(vec3<i32>(21673i, 65i, -22078i), vec3<u32>(4294967295u, 40356u, 21721u), false), Struct_1(vec3<i32>(2147483647i, -3914i, 11978i), vec3<u32>(0u, 10265u, 1u), true), Struct_1(vec3<i32>(-39045i, -1i, 2147483647i), vec3<u32>(4294967295u, 4294967295u, 5512u), true), Struct_1(vec3<i32>(-3476i, i32(-2147483648), -1i), vec3<u32>(103649u, 4294967295u, 1u), false), Struct_1(vec3<i32>(2147483647i, 0i, 1i), vec3<u32>(4294967295u, 0u, 68212u), false), Struct_1(vec3<i32>(2147483647i, -32508i, 1i), vec3<u32>(0u, 0u, 56377u), true), Struct_1(vec3<i32>(-1i, 0i, 2147483647i), vec3<u32>(20944u, 62221u, 4294967295u), true));

var<private> global1: i32;

var<private> global2: Struct_1;

var<private> global3: f32;

var<private> global4: Struct_1 = Struct_1(vec3<i32>(-1i, 1i, -10026i), vec3<u32>(16550u, 24060u, 44264u), false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec3<u32> {
    var var_0 = arg_0;
    let var_1 = arg_1;
    global3 = _wgslsmith_f_op_f32(arg_2 + -1064f);
    global4 = var_1;
    let var_2 = 4294967295u;
    return vec3<u32>(~(~var_1.b.x) ^ _wgslsmith_sub_u32(min(6587u, 0u), var_2), 1u, abs(_wgslsmith_clamp_u32(var_2, global2.b.x, u_input.b)) & global2.b.x) & vec3<u32>(var_1.b.x & global2.b.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, var_1.b.x, 4294967295u)), ~abs(vec3<u32>(var_2, 777u, 0u))), ~var_1.b.x);
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1496f - 829f) * 310f), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1345f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(490f, 1999f))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(891f, -1000f)))))));
    let var_1 = true;
    let var_2 = _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.b, ~(~4294967295u), ~(~global4.b.x))), arg_0.b);
    var var_3 = arg_0;
    global2 = Struct_1(-vec3<i32>(var_3.a.x, var_3.a.x, ~global4.a.x), _wgslsmith_mod_vec3_u32(func_3(arg_0, global0[_wgslsmith_index_u32(~68995u, 15u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~arg_0.b), all(!vec3<bool>(true, false, var_1)) | var_3.c);
    return -2147483647i;
}

fn func_4(arg_0: vec3<i32>, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(global4.a.x, firstTrailingBit(-4548i), firstTrailingBit(~arg_1), arg_0.x), (firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(49947i, global2.a.x, global4.a.x, 2147483647i), vec4<i32>(global2.a.x, global4.a.x, -1i, -14164i))) >> (firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 63614u, 4294967295u, global4.b.x), vec4<u32>(4294967295u, global2.b.x, global2.b.x, 9535u))) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.b, global2.b.x, 0u, u_input.c) ^ vec4<u32>(u_input.b, 0u, 39784u, global2.b.x)), ~countOneBits(vec4<u32>(u_input.a, 34439u, u_input.b, u_input.c))) % vec4<u32>(32u)));
    var_0 = vec4<i32>(global2.a.x, -1i, _wgslsmith_mod_i32(0i, global4.a.x), _wgslsmith_sub_i32(-7755i, arg_1));
    let var_1 = select(select(!select(select(vec3<bool>(true, global4.c, global4.c), vec3<bool>(true, false, true), true), !vec3<bool>(true, global2.c, false), global2.c), !select(!vec3<bool>(global2.c, global2.c, global4.c), select(vec3<bool>(global2.c, global4.c, global2.c), vec3<bool>(global4.c, true, global2.c), true), select(vec3<bool>(global2.c, global2.c, global4.c), vec3<bool>(false, global2.c, global2.c), true)), global4.c), vec3<bool>(all(vec4<bool>(false, global2.c, true, false)) | !(!global4.c), true, all(vec3<bool>(true, false, global2.c))), any(vec2<bool>(global2.c, select(true, any(vec4<bool>(global2.c, false, global4.c, false)), false))));
    var var_2 = global0[_wgslsmith_index_u32(global4.b.x, 15u)];
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(global2.b.xx, vec2<u32>(~6153u, countOneBits(var_2.b.x))), reverseBits(global2.b.x << (4294967295u % 32u))), 15u)];
    return global0[_wgslsmith_index_u32(55054u, 15u)];
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: f32, arg_3: vec2<bool>) -> vec3<i32> {
    global1 = ~min((~global2.a.x & _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, global4.a.x, 2147483647i), vec4<i32>(-2147483647i, 2147483647i, -21191i, global2.a.x))) << (6532u % 32u), _wgslsmith_mod_i32(abs(global4.a.x), global4.a.x));
    global0 = array<Struct_1, 15>();
    global4 = func_4(global4.a, 30400i & func_2(Struct_1(vec3<i32>(0i, global4.a.x, global4.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, global4.b.x, u_input.a), vec3<u32>(8003u, 78076u, 4294967295u)), true)));
    global2 = global0[_wgslsmith_index_u32(~(global2.b.x & select(4294967295u, global2.b.x, 46356u <= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global4.b.x, 0u, u_input.c), vec4<u32>(global4.b.x, 53228u, 8252u, global2.b.x)))), 15u)];
    var var_0 = global0[_wgslsmith_index_u32(0u, 15u)];
    return abs(abs(vec3<i32>(global4.a.x, -69i, 2147483647i)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    global0 = array<Struct_1, 15>();
    var var_0 = ~firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(9600u, global2.b.x, 25642u, u_input.a), ~firstTrailingBit(vec4<u32>(0u, global4.b.x, 68173u, 79603u))));
    var var_1 = !select(select(vec3<bool>(!global4.c, global2.c != false, global4.c), select(select(vec3<bool>(global2.c, true, global4.c), vec3<bool>(global4.c, global2.c, false), arg_0.c), select(vec3<bool>(false, false, true), vec3<bool>(global2.c, global4.c, false), vec3<bool>(global2.c, global2.c, arg_0.c)), select(vec3<bool>(global2.c, false, global4.c), vec3<bool>(global4.c, global4.c, arg_0.c), vec3<bool>(global4.c, true, global4.c))), select(vec3<bool>(global4.c, arg_0.c, global4.c), !vec3<bool>(true, false, global2.c), var_0.x > var_0.x)), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), !global4.c), true);
    let var_2 = vec4<bool>((global4.b.x & 21697u) != _wgslsmith_sub_u32(countOneBits(u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 11398u, arg_0.b.x, u_input.a), vec4<u32>(var_0.x, global2.b.x, 13604u, global4.b.x))), !var_1.x && all(var_1.yx), any(vec2<bool>(true, func_4(global2.a, 2147483647i).c)) && all(vec3<bool>(true, true, any(vec4<bool>(global4.c, false, arg_0.c, false)))), true);
    let var_3 = func_4(min(-global2.a, firstTrailingBit(global2.a)), max(~_wgslsmith_mod_i32(~global4.a.x, _wgslsmith_div_i32(8203i, arg_1.x)), _wgslsmith_div_i32(arg_0.a.x, arg_1.x >> (47155u % 32u))));
    return func_4(var_3.a, global4.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global0[_wgslsmith_index_u32(global4.b.x, 15u)];
    var var_0 = global2.a.x;
    let var_1 = global4.c;
    var var_2 = func_5(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(global4.a.x, global2.a.x, select(global2.a.x, global2.a.x, global4.c)), _wgslsmith_clamp_vec3_i32(func_1(vec4<f32>(752f, 1000f, -754f, 853f), vec4<f32>(1953f, 1354f, 1558f, -117f), 2151f, vec2<bool>(false, global2.c)), global2.a, -global4.a)), ~global4.b, global2.c), global2.a.zx);
    var var_3 = select(!(!(!select(vec2<bool>(false, var_2.c), vec2<bool>(global4.c, true), var_2.c))), !vec2<bool>(all(vec2<bool>(false, false)), global2.c), vec2<bool>(var_2.c, !(var_2.c | true)));
    var var_4 = ~4294967295u;
    var var_5 = func_5(func_5(global0[_wgslsmith_index_u32(27628u, 15u)], vec2<i32>(max(_wgslsmith_dot_vec3_i32(global2.a, global4.a), global2.a.x), global2.a.x >> (18423u % 32u))), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(global2.a.x, _wgslsmith_mult_i32(21871i, -1i))), var_2.a.yx, vec2<i32>(~(-2147483647i), min(~39633i, global4.a.x))));
    global4 = Struct_1(vec3<i32>(~0i, ~(abs(-2147483647i) ^ func_4(vec3<i32>(var_2.a.x, -56730i, 0i), -2147483647i).a.x), -1i), vec3<u32>((~global2.b.x ^ func_3(Struct_1(global2.a, var_2.b, var_3.x), Struct_1(var_2.a, vec3<u32>(var_2.b.x, var_5.b.x, var_5.b.x), var_2.c), 1824f).x) << (~34091u % 32u), var_2.b.x, abs(1u)), select(all(!select(vec3<bool>(true, true, global4.c), vec3<bool>(true, false, var_5.c), true)), !global4.c, func_4(_wgslsmith_mod_vec3_i32(var_5.a, func_5(Struct_1(vec3<i32>(-49884i, 2147483647i, var_5.a.x), var_5.b, global2.c), global4.a.xy).a), ~(5573i << (var_5.b.x % 32u))).c));
    let var_6 = all(vec3<bool>(global2.a.x <= 11190i, true, var_5.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(var_5.b.x | u_input.a, ~0u, ~7848u | global2.b.x, _wgslsmith_dot_vec2_u32(global2.b.zy, reverseBits(vec2<u32>(u_input.b, global4.b.x)))), vec4<u32>(global4.b.x, 75877u, select(var_2.b.x, 25526u, true), ~global4.b.x) >> (~(~vec4<u32>(var_2.b.x, global4.b.x, var_2.b.x, 23031u)) % vec4<u32>(32u))), 18845i, i32(-1i) * -func_5(global0[_wgslsmith_index_u32(func_5(Struct_1(vec3<i32>(-1907i, var_2.a.x, -2147483647i), vec3<u32>(7088u, global4.b.x, 34384u), true), vec2<i32>(global2.a.x, global2.a.x)).b.x, 15u)], select(vec2<i32>(global4.a.x, var_5.a.x), vec2<i32>(var_5.a.x, 1i), vec2<bool>(true, true))).a.x);
}

