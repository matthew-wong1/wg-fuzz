struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true));

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 26144u);

var<private> global2: vec4<i32>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, true, true, true));

var<private> global4: vec4<u32> = vec4<u32>(19524u, 1u, 4294967295u, 0u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_div_f32(-1152f, 1f);
    global3 = Struct_1(vec4<bool>(!(global4.x == 30703u), (any(vec2<bool>(arg_2.a.x, arg_2.a.x)) && arg_2.a.x) && !any(arg_3.a), arg_3.a.x, !(global1.x != 730u)));
    global4 = vec4<u32>(min(70955u, ~_wgslsmith_mod_u32(global1.x, _wgslsmith_dot_vec3_u32(u_input.b, u_input.a.xxx))), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a.xxx), ~global4.wzz)), 16601u), 0u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a));
    global2 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, i32(-1i) * -25168i, u_input.e, ~global2.x), vec4<i32>(-11362i, 2147483647i, 2147483647i, global2.x) << ((u_input.a ^ vec4<u32>(global1.x, global4.x, 37760u, 1u)) % vec4<u32>(32u))) & vec4<i32>(countOneBits(global2.x), -22198i, _wgslsmith_add_i32(37140i, countOneBits(u_input.e)), countOneBits(~39114i)), select(select(-vec4<i32>(24092i, u_input.d.x, -2147483647i, u_input.d.x), vec4<i32>(global2.x, global2.x, u_input.e, -29738i) & vec4<i32>(0i, global2.x, -7804i, -41738i), false) & vec4<i32>(-global2.x, ~u_input.e, ~(-48209i), u_input.e), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(24683i, u_input.e, 1i, u_input.d.x)), vec4<i32>(-11410i, 34444i, -2147483647i, -39832i), ~vec4<i32>(u_input.e, 6393i, u_input.e, 7799i)) | vec4<i32>(11239i & u_input.d.x, 6064i, abs(u_input.d.x), ~u_input.d.x), vec4<bool>(true, -11043i < firstTrailingBit(-15412i), true, false)));
    let var_1 = max(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, ~u_input.a), _wgslsmith_div_u32(global4.x, u_input.a.x) << (~u_input.a.x % 32u), global1.x) << (_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(16084u, 11980u, global1.x), global4.wyx, false), ~vec3<u32>(1u, 1u, global1.x)), select(abs(u_input.a.zxw), u_input.a.yxw, vec3<bool>(arg_3.a.x, false, false))) % vec3<u32>(32u)), ~(~global4.ywx));
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(arg_0 - -1922f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), arg_1, arg_3.a.yz));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2) -> bool {
    let var_0 = vec4<bool>(global3.a.x & false, arg_2.a.x, false, any(!(!arg_2.c.a)));
    var var_1 = firstLeadingBit(arg_2.d.x);
    var var_2 = arg_2.c;
    var var_3 = Struct_2(var_2.a.yx, vec2<f32>(arg_2.b.x, -157f), arg_2.c, _wgslsmith_add_vec2_i32(arg_2.d, countOneBits(vec2<i32>(global2.x, u_input.e << (1705u % 32u)))));
    return true;
}

fn func_2(arg_0: bool, arg_1: i32) -> i32 {
    let var_0 = false;
    var var_1 = !all(!vec4<bool>(arg_0, false | global3.a.x, any(global3.a.zx), u_input.a.x < 62729u));
    var_1 = !(!func_4(~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2260f * 598f)), Struct_2(vec2<bool>(global3.a.x, false), _wgslsmith_f_op_vec2_f32(func_3(131f, vec2<f32>(603f, -1333f), Struct_1(global3.a), Struct_1(vec4<bool>(false, var_0, arg_0, false)))), Struct_1(vec4<bool>(true, global3.a.x, arg_0, arg_0)), _wgslsmith_mult_vec2_i32(global2.yz, u_input.d))));
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>((global4.x & firstTrailingBit(13738u)) >> (global4.x % 32u), u_input.b.x, _wgslsmith_add_u32(global4.x & (u_input.b.x & u_input.c), global1.x ^ _wgslsmith_mult_u32(global4.x, 1u))), abs(vec3<u32>(select(~u_input.a.x, 4352u, all(vec2<bool>(false, global3.a.x))), ~(30833u & global4.x), ~_wgslsmith_mult_u32(77841u, 0u))));
    let var_3 = Struct_1(!select(global3.a, global3.a, !(!global3.a)));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(~(-1i), abs(5761i)), vec2<i32>(1i, (-2147483647i >> (u_input.c % 32u)) & _wgslsmith_dot_vec2_i32(vec2<i32>(-8729i, u_input.e), -global2.xy)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>) -> bool {
    let var_0 = func_2(true, reverseBits((i32(-1i) * -arg_1.d.x) >> ((global1.x & _wgslsmith_clamp_u32(34058u, global4.x, 78271u)) % 32u)));
    let var_1 = ~vec4<u32>(~global1.x, 66109u, global1.x, ~(~global4.x));
    var var_2 = arg_1.c;
    var var_3 = abs(u_input.a);
    global1 = ~_wgslsmith_sub_vec2_u32(var_1.yz, var_1.zw);
    return true;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    global3 = Struct_1(select(!vec4<bool>(arg_2.a.x, arg_2.a.x, true, arg_2.a.x), vec4<bool>(var_0.b.x >= -866f, false, any(select(vec4<bool>(true, var_0.c.a.x, global3.a.x, global3.a.x), global3.a, global3.a.x)), var_0.a.x), select(var_0.c.a, arg_2.a, var_0.c.a)));
    var var_1 = -852f;
    var_1 = 1000f;
    let var_2 = arg_0;
    return var_2;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_2 {
    global2 = -abs(arg_1) & _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(33434i, -2147483647i, 0i, global2.x), arg_1) & vec4<i32>(u_input.e, -2147483647i, min(global2.x, u_input.d.x), arg_0.d.x), arg_1);
    var var_0 = true;
    global2 = firstLeadingBit(vec4<i32>(16084i, countOneBits(-u_input.e & global2.x), countOneBits(_wgslsmith_dot_vec3_i32(arg_1.zwx, vec3<i32>(2147483647i, u_input.e, -21156i))), arg_1.x));
    var var_1 = arg_0;
    global2 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(-(27056i << (u_input.a.x % 32u)), func_5(arg_0, ~(-19934i), arg_0.c).d.x), _wgslsmith_mult_i32(16432i ^ (var_1.d.x | 32132i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global2.x, arg_0.d.x), 1i, func_5(arg_0, -17699i, Struct_1(global3.a)).d.x))), 70549i, _wgslsmith_mod_i32(var_1.d.x, -1i), _wgslsmith_sub_i32(2076i, var_1.d.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(Struct_2(vec2<bool>(func_1(global3.a.x, Struct_2(vec2<bool>(global3.a.x, global3.a.x), vec2<f32>(648f, -1656f), Struct_1(vec4<bool>(true, true, true, true)), global2.yw), global0[_wgslsmith_index_u32(24967u, 5u)]), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(696f, 382f) - vec2<f32>(-730f, 726f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2137f, 575f))), Struct_1(vec4<bool>(true, global3.a.x, true, true)), ~vec2<i32>(-1i, u_input.d.x) | reverseBits(vec2<i32>(global2.x, global2.x))), global2.x << (global1.x % 32u), Struct_1(select(select(vec4<bool>(global3.a.x, true, false, global3.a.x), vec4<bool>(global3.a.x, false, global3.a.x, global3.a.x), vec4<bool>(true, true, true, false)), vec4<bool>(global3.a.x, true, true, true), global3.a.x))), vec4<i32>(-reverseBits(11967i), u_input.e, countOneBits(select(global2.x, u_input.e, global3.a.x)), -54186i) >> ((firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.b.x, 1u, global4.x, u_input.c))) | u_input.a) % vec4<u32>(32u)));
    var var_1 = var_0.b.x;
    var var_2 = global4.x;
    var var_3 = var_0;
    var var_4 = var_3.c.a;
    var var_5 = _wgslsmith_f_op_f32(1345f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-383f + -486f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(var_0.b.x, var_3.b, Struct_1(var_3.c.a), func_6(Struct_2(global3.a.zz, vec2<f32>(971f, 2109f), var_3.c, global2.yy), vec4<i32>(var_0.d.x, -2147483647i, global2.x, -19638i)).c)).x * -733f)));
    let var_6 = ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, 202f);
}

