struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<bool, 23> = array<bool, 23>(true, false, false, false, true, false, false, false, true, false, false, false, true, false, false, false, false, true, false, false, true, true, false);

var<private> global2: array<bool, 4> = array<bool, 4>(true, true, false, false);

var<private> global3: u32;

var<private> global4: array<Struct_2, 20>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4) -> Struct_1 {
    global1 = array<bool, 23>();
    let var_0 = 0i | ~(-select(-arg_0.x, arg_1.b, !global1[_wgslsmith_index_u32(0u, 23u)]));
    global2 = array<bool, 4>();
    var var_1 = !vec3<bool>(global2[_wgslsmith_index_u32(min(countOneBits(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), 4294967295u), 4u)], false, true);
    let var_2 = arg_1.c.b;
    return Struct_1(vec3<bool>(!(_wgslsmith_add_u32(20021u, 73090u) < (u_input.b << (u_input.b % 32u))), var_2.c.x, !(!global2[_wgslsmith_index_u32(~u_input.b, 4u)])), !vec2<bool>(!(0i > u_input.c), var_2.b.x), !arg_1.c.d);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = ~(~u_input.d.x);
    global0 = all(arg_2.c);
    let var_1 = ~(~(~45081u));
    global3 = 0u;
    global3 = firstLeadingBit(56218u);
    return countOneBits(vec2<u32>(min(1u, ~1u), ~(~1u)) ^ vec2<u32>(~abs(var_1), max(var_0, ~u_input.d.x)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = ~firstLeadingBit(func_3(func_2(vec3<i32>(u_input.c, u_input.c, 2147483647i), Struct_4(vec2<i32>(-20703i, -18622i), u_input.c, Struct_2(arg_1, Struct_1(arg_1.a, arg_1.b, vec3<bool>(true, false, arg_1.a.x)), vec2<i32>(u_input.c, 19224i), vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b, 23u)]), arg_1))), arg_0.x, Struct_1(vec3<bool>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(arg_0.x, 23u)]), arg_1.c.xz, arg_1.a))) >> (min(vec2<u32>(1159u, ~(~0u)), firstLeadingBit(vec2<u32>(1765u, u_input.a.x) & u_input.a.zy) >> (firstLeadingBit(firstTrailingBit(arg_0.zx)) % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = false;
    let var_1 = -_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(-2147483647i, u_input.c)), firstLeadingBit(vec2<i32>(-10647i, 65702i)), abs(vec2<i32>(-1i, 22971i))), vec2<i32>(u_input.c, select(0i, 2147483647i, global1[_wgslsmith_index_u32(arg_0.x, 23u)]))) | vec2<i32>(abs(-48786i), u_input.c | 29008i);
    global0 = arg_1.b.x;
    var var_2 = ~_wgslsmith_dot_vec2_u32(~(~arg_0.yx), vec2<u32>(arg_0.x, arg_0.x) >> (vec2<u32>(arg_0.x, var_0.x) % vec2<u32>(32u)));
    return ~abs(~arg_0.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: bool) -> vec4<bool> {
    global2 = array<bool, 4>();
    global2 = array<bool, 4>();
    global0 = !func_2(firstTrailingBit(vec3<i32>(-u_input.c, _wgslsmith_add_i32(29876i, -34689i), ~u_input.c)), Struct_4(min(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(-51255i, -42825i)) | abs(vec2<i32>(u_input.c, -2147483647i)), ~(~u_input.c), global4[_wgslsmith_index_u32(57615u, 20u)])).a.x;
    var var_0 = Struct_3(false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -412f, 882f, 1378f)) * _wgslsmith_div_vec4_f32(vec4<f32>(937f, 1000f, 754f, 1489f), vec4<f32>(1981f, 453f, 2629f, -357f))) * vec4<f32>(_wgslsmith_div_f32(-1049f, 1391f), -246f, _wgslsmith_f_op_f32(-1000f - -1593f), 1593f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), vec4<bool>(any(arg_1), (u_input.c <= 42387i) | true, !all(vec3<bool>(arg_2, false, arg_1.x)), !(arg_0.x && arg_0.x)))));
    let var_1 = Struct_4(-vec2<i32>(firstLeadingBit(u_input.c | u_input.c), max(_wgslsmith_clamp_i32(34676i, 2147483647i, -2098i), countOneBits(u_input.c))), ~abs(0i), Struct_2(func_2(vec3<i32>(-45142i, max(0i, -22195i), u_input.c), Struct_4(vec2<i32>(2147483647i, 31998i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2147483647i, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c)), Struct_2(Struct_1(arg_1.wzx, vec2<bool>(arg_2, arg_1.x), vec3<bool>(false, arg_0.x, false)), Struct_1(arg_1.zyx, vec2<bool>(false, arg_1.x), arg_1.zyy), vec2<i32>(u_input.c, -1i), arg_1.xwx, Struct_1(arg_1.xyw, arg_0, vec3<bool>(arg_0.x, var_0.a, false))))), Struct_1(!vec3<bool>(arg_1.x, arg_2, arg_2), arg_0, select(!arg_1.xwx, vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 4u)], false, false), vec3<bool>(true, global1[_wgslsmith_index_u32(6252u, 23u)], true))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(0i, u_input.c), -1i), ~vec2<i32>(u_input.c, -26572i)), select(vec3<bool>(any(vec2<bool>(true, arg_1.x)), true, !global2[_wgslsmith_index_u32(1u, 4u)]), arg_1.zwy, all(arg_1.xyy)), Struct_1(!(!vec3<bool>(var_0.a, false, true)), arg_1.zz, func_2(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, -1044i, 1i), vec3<i32>(u_input.c, u_input.c, 28571i)), Struct_4(vec2<i32>(u_input.c, u_input.c), 2147483647i, global4[_wgslsmith_index_u32(0u, 20u)])).c)));
    return select(select(select(select(arg_1, !arg_1, func_2(vec3<i32>(1i, 2147483647i, 1i), var_1).c.x), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)]), select(vec4<bool>(var_1.c.a.b.x, arg_1.x, true, arg_2), vec4<bool>(true, true, false, arg_1.x), global2[_wgslsmith_index_u32(4294967295u, 4u)]), 1809f != var_0.b.x), vec4<bool>(arg_0.x, !var_1.c.e.c.x, all(arg_1), global1[_wgslsmith_index_u32(0u, 23u)])), !arg_1, true), vec4<bool>(true, var_1.c.e.c.x, arg_2, true), !(!(!all(arg_1.zwx))));
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: vec4<bool>) -> Struct_3 {
    global3 = 1u;
    let var_0 = true;
    global4 = array<Struct_2, 20>();
    let var_1 = vec2<bool>(func_2(vec3<i32>(2147483647i, u_input.c, u_input.c), Struct_4(vec2<i32>(7792i, ~(-2147483647i)), ~(~1i), global4[_wgslsmith_index_u32(0u, 20u)])).c.x, false);
    var var_2 = arg_2.b.yyz;
    return Struct_3(!any(arg_3), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, -1023f, 2083f, var_2.x) - vec4<f32>(-205f, arg_2.b.x, var_2.x, -2385f)) * _wgslsmith_f_op_vec4_f32(-arg_2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_2.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~(~_wgslsmith_add_u32(abs(u_input.b), min(19249u, u_input.b))), select(!(!select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 4u)], global2[_wgslsmith_index_u32(1u, 4u)]), vec2<bool>(false, true))), vec2<bool>((global2[_wgslsmith_index_u32(u_input.b, 4u)] | true) & false, (u_input.c & u_input.c) >= -1i), true), Struct_5(!select(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(5002u, 23u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(0u, 4u)]), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)])), _wgslsmith_div_vec4_f32(vec4<f32>(725f, -372f, -123f, _wgslsmith_f_op_f32(f32(-1f) * -654f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-819f, -1182f, -1734f, -1247f)), vec4<f32>(-729f, 1062f, 1050f, -183f)))), Struct_1(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 4u)], global2[_wgslsmith_index_u32(1u, 4u)], true)), vec2<bool>(true, global2[_wgslsmith_index_u32(96720u, 4u)]), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(76615u, 0u, u_input.b), vec3<u32>(u_input.d.x, 1u, u_input.d.x)), 4u)], !global1[_wgslsmith_index_u32(u_input.a.x, 23u)], true)), ~firstLeadingBit(u_input.a.x)), func_4(vec2<bool>(true, true), vec4<bool>(any(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(u_input.b, 4u)], false)), true, global1[_wgslsmith_index_u32(min(~39300u, func_1(vec3<u32>(41249u, 1u, u_input.a.x), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 4u)], global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 4u)], false), vec3<bool>(global2[_wgslsmith_index_u32(46375u, 4u)], true, true)))), 23u)], global2[_wgslsmith_index_u32(59280u, 4u)] && true), true));
    var var_1 = Struct_3(true, var_0.b);
    let var_2 = true;
    let var_3 = select(select(vec4<bool>(true, func_2(~vec3<i32>(u_input.c, u_input.c, -3289i), Struct_4(vec2<i32>(2147483647i, -2147483647i), -15782i, global4[_wgslsmith_index_u32(u_input.b, 20u)])).b.x, false, var_0.a), !(!vec4<bool>(false, var_0.a, var_2, true)), func_4(func_4(!vec2<bool>(true, var_0.a), func_4(vec2<bool>(true, global2[_wgslsmith_index_u32(18951u, 4u)]), vec4<bool>(var_2, var_0.a, true, var_2), var_1.a), func_2(vec3<i32>(u_input.c, u_input.c, u_input.c), Struct_4(vec2<i32>(-10646i, u_input.c), 35242i, Struct_2(Struct_1(vec3<bool>(true, var_2, var_0.a), vec2<bool>(true, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 4u)], var_0.a, true)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(var_1.a, false), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 4u)], false)), vec2<i32>(u_input.c, u_input.c), vec3<bool>(false, var_1.a, false), Struct_1(vec3<bool>(true, global1[_wgslsmith_index_u32(75684u, 23u)], var_0.a), vec2<bool>(var_2, var_1.a), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]))))).b.x).zy, !vec4<bool>(global1[_wgslsmith_index_u32(1u, 23u)], var_2, var_1.a, global2[_wgslsmith_index_u32(u_input.d.x, 4u)]), var_0.a)), !(!(!vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(46239u, 4u)]))), func_5(u_input.b, !vec2<bool>(var_1.a, true), Struct_5(!select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(1u, 23u)]), vec3<bool>(true, var_1.a, false), var_0.a), var_1.b, Struct_1(!vec3<bool>(global2[_wgslsmith_index_u32(3267u, 4u)], true, false), !vec2<bool>(var_0.a, var_0.a), vec3<bool>(global1[_wgslsmith_index_u32(1u, 23u)], var_2, false)), u_input.a.x), vec4<bool>(any(vec4<bool>(var_0.a, global2[_wgslsmith_index_u32(1u, 4u)], var_1.a, var_1.a)), _wgslsmith_add_u32(u_input.a.x, u_input.b) != func_1(vec3<u32>(44536u, u_input.a.x, u_input.d.x), Struct_1(vec3<bool>(true, var_1.a, true), vec2<bool>(true, var_2), vec3<bool>(var_0.a, var_1.a, global2[_wgslsmith_index_u32(1u, 4u)]))), func_4(!vec2<bool>(global2[_wgslsmith_index_u32(19017u, 4u)], global2[_wgslsmith_index_u32(17842u, 4u)]), func_4(vec2<bool>(false, var_1.a), vec4<bool>(var_0.a, global2[_wgslsmith_index_u32(u_input.d.x, 4u)], true, global1[_wgslsmith_index_u32(44818u, 23u)]), global2[_wgslsmith_index_u32(0u, 4u)]), var_2).x, true && var_0.a)).a);
    let var_4 = var_1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec4<u32>(~u_input.d.x, ~16565u, u_input.d.x ^ 0u, u_input.b), vec4<u32>(~0u, ~67845u, u_input.a.x, 65655u)), ~u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c & ~u_input.c), vec2<i32>(firstLeadingBit(firstTrailingBit(-23774i)), u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

