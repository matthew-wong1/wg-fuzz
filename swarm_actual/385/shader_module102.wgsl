struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: bool,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, true, true, true, false, false, true, false, true, false, false, false, true, true, false, false, false, true, false, true, false, false, true);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_5, arg_2: f32) -> Struct_3 {
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    let var_0 = _wgslsmith_f_op_f32(-arg_2);
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    return Struct_3(vec3<bool>(true, !arg_1.c.b.c.x, global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_0.a, ~arg_0.a), 23u)]), arg_1.b.b, _wgslsmith_mod_i32(_wgslsmith_mod_i32(i32(-1i) * -arg_1.b.b.d, i32(-1i) * -arg_1.b.b.b.x), max(max(u_input.a.x, i32(-1i) * -8497i), arg_0.e.x)));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: f32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(215f, arg_2, arg_0.b.a.x)), _wgslsmith_f_op_f32(2221f - 155f), _wgslsmith_f_op_f32(floor(-1159f)), arg_2))));
    global0 = array<bool, 23>();
    return arg_0.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5) -> Struct_5 {
    let var_0 = func_3(Struct_5(func_3(Struct_5(arg_0.b.a ^ vec3<i32>(-2147483647i, arg_1.d.c, 0i), func_2(Struct_4(20185u, arg_1.d.b.a, true, global0[_wgslsmith_index_u32(15417u, 23u)], arg_0.b.b), Struct_5(vec3<i32>(arg_0.c, -9150i, arg_0.b.b.x), arg_1.b, arg_1.b, arg_1.c), 625f), Struct_3(arg_1.d.b.c.wxy, Struct_1(vec3<i32>(u_input.a.x, arg_0.c, 1i), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(31594u, 23u)], false, false, global0[_wgslsmith_index_u32(1u, 23u)]), u_input.a.x), arg_0.b.d), Struct_3(arg_0.b.c.xwz, Struct_1(vec3<i32>(arg_0.c, 2147483647i, arg_0.b.a.x), arg_0.b.b, vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), u_input.a.x), -2147483647i)), 0u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-188f, 444f))).b.a, func_3(Struct_5(~arg_0.b.a, arg_1.c, func_3(arg_1, 1u, -1441f), Struct_3(vec3<bool>(arg_1.c.b.c.x, true, arg_1.d.a.x), arg_0.b, arg_1.c.c)), ~9426u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-435f, 3252f)))), func_2(Struct_4(1u, vec3<i32>(1i, arg_1.b.c, u_input.a.x), !arg_1.d.b.c.x, func_3(Struct_5(arg_1.c.b.a, arg_1.d, arg_0, Struct_3(vec3<bool>(arg_1.b.a.x, global0[_wgslsmith_index_u32(2315u, 23u)], arg_1.b.b.c.x), Struct_1(vec3<i32>(2147483647i, -2147483647i, arg_0.b.a.x), vec2<i32>(0i, arg_0.b.d), vec4<bool>(global0[_wgslsmith_index_u32(43495u, 23u)], false, true, arg_1.d.a.x), u_input.a.x), u_input.a.x)), 1u, -354f).b.c.x, vec2<i32>(-47214i, arg_1.b.b.a.x) ^ u_input.a), arg_1, 419f), Struct_3(vec3<bool>(true, !arg_1.c.a.x, all(arg_0.b.c.xx)), arg_1.c.b, ~1i)), 0u, _wgslsmith_f_op_f32(1f + 1233f));
    let var_1 = vec3<i32>(2147483647i, ~_wgslsmith_add_i32(countOneBits(reverseBits(u_input.a.x)), countOneBits(i32(-1i) * -49957i)), -2147483647i);
    global0 = array<bool, 23>();
    let var_2 = Struct_3(!select(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(87800u, 23u)]), arg_0.b.c.wwy, global0[_wgslsmith_index_u32(select(~50660u, _wgslsmith_sub_u32(30689u, 26235u), true), 23u)]), arg_1.b.b, reverseBits(-(~(~0i))));
    global0 = array<bool, 23>();
    return arg_1;
}

fn func_5(arg_0: Struct_5, arg_1: bool) -> Struct_5 {
    let var_0 = reverseBits(select(_wgslsmith_clamp_vec2_u32(~vec2<u32>(30951u, 1u), vec2<u32>(38429u, 0u), vec2<u32>(1u, 0u)), ~vec2<u32>(32126u, 4294967295u), vec2<bool>(!arg_1, arg_1)) ^ _wgslsmith_div_vec2_u32(~firstLeadingBit(vec2<u32>(4956u, 4294967295u)), vec2<u32>(~35922u, 1u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-443f))))) + 529f);
    var var_2 = Struct_2(~(~7951u));
    var_2 = Struct_2(var_2.a);
    var var_3 = func_2(Struct_4(var_2.a, ~firstTrailingBit(vec3<i32>(-11162i, u_input.a.x, -1i)), var_0.x == _wgslsmith_div_u32(0u, ~var_2.a), arg_0.b.b.c.x, _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a.x, arg_0.b.b.d), vec2<i32>(68985i, 2147483647i)), vec2<i32>(u_input.a.x, 2147483647i) & vec2<i32>(23902i, -41690i), vec2<i32>(arg_0.d.b.b.x, 2147483647i)) << (var_0 % vec2<u32>(32u))), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1396f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-733f, -539f)))) - var_1));
    return Struct_5(countOneBits(vec3<i32>(0i, i32(-1i) * -arg_0.a.x, _wgslsmith_clamp_i32(0i, var_3.c, func_4(arg_0.d, arg_0).c.b.b.x))), Struct_3(arg_0.d.a, arg_0.d.b, arg_0.a.x), arg_0.d, Struct_3(var_3.b.c.ywx, func_4(Struct_3(!vec3<bool>(arg_0.d.a.x, false, true), arg_0.d.b, var_3.c), arg_0).d.b, 0i));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = (vec2<u32>(1u, 1u) ^ vec2<u32>(_wgslsmith_mult_u32(countOneBits(4294967295u), ~4294967295u), ~_wgslsmith_clamp_u32(33633u, 4294967295u, 22744u))) >> (reverseBits(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(35980u, 4294967295u)), ~vec2<u32>(1u, 0u))) % vec2<u32>(32u));
    var var_1 = func_5(func_4(func_3(Struct_5(-arg_0.a, func_2(Struct_4(var_0.x, vec3<i32>(93395i, u_input.a.x, arg_0.d), arg_0.c.x, true, vec2<i32>(arg_0.b.x, 6004i)), Struct_5(vec3<i32>(-44027i, u_input.a.x, 0i), Struct_3(arg_0.c.zxw, arg_0, -1i), Struct_3(vec3<bool>(arg_0.c.x, global0[_wgslsmith_index_u32(var_0.x, 23u)], true), arg_0, -2147483647i), Struct_3(arg_1.wzw, Struct_1(vec3<i32>(u_input.a.x, 1i, u_input.a.x), u_input.a, arg_1, -2147483647i), arg_0.a.x)), 273f), func_2(Struct_4(var_0.x, vec3<i32>(-3064i, u_input.a.x, -2147483647i), true, arg_1.x, vec2<i32>(arg_0.b.x, 16067i)), Struct_5(vec3<i32>(-53129i, 28015i, 19770i), Struct_3(arg_0.c.xzy, Struct_1(vec3<i32>(arg_0.d, arg_0.a.x, -1i), vec2<i32>(arg_0.a.x, u_input.a.x), vec4<bool>(true, true, arg_1.x, false), u_input.a.x), arg_0.b.x), Struct_3(arg_1.wwx, Struct_1(vec3<i32>(-40699i, 11564i, -55352i), vec2<i32>(-55257i, u_input.a.x), arg_0.c, u_input.a.x), arg_0.d), Struct_3(arg_0.c.xyx, arg_0, arg_0.d)), -1384f), func_2(Struct_4(var_0.x, vec3<i32>(u_input.a.x, 0i, 2147483647i), false, true, arg_0.a.zz), Struct_5(vec3<i32>(arg_0.d, -1i, -39607i), Struct_3(arg_1.wzz, Struct_1(vec3<i32>(u_input.a.x, arg_0.b.x, -108i), arg_0.b, arg_1, 2147483647i), arg_0.d), Struct_3(arg_1.zww, arg_0, 1i), Struct_3(arg_1.xzy, arg_0, 9391i)), -529f)), _wgslsmith_div_u32(firstLeadingBit(1u), var_0.x), -207f), Struct_5(vec3<i32>(19107i, 1i, -12896i) | _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, arg_0.b.x, arg_0.b.x), vec3<i32>(1i, arg_0.b.x, u_input.a.x)), func_2(Struct_4(0u, vec3<i32>(-2147483647i, -47682i, arg_0.a.x), true, arg_0.c.x, u_input.a), Struct_5(arg_0.a, Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 23u)], arg_1.x, true), Struct_1(arg_0.a, arg_0.a.xx, arg_1, arg_0.a.x), -26974i), Struct_3(arg_1.yxw, Struct_1(arg_0.a, arg_0.b, arg_0.c, 24137i), -1i), Struct_3(vec3<bool>(false, false, arg_0.c.x), arg_0, u_input.a.x)), _wgslsmith_f_op_f32(1000f - -842f)), func_2(Struct_4(1u, vec3<i32>(1i, -1i, u_input.a.x), false, false, vec2<i32>(u_input.a.x, u_input.a.x)), Struct_5(arg_0.a, Struct_3(arg_0.c.xxw, Struct_1(vec3<i32>(0i, 1i, arg_0.d), u_input.a, vec4<bool>(true, arg_0.c.x, true, false), u_input.a.x), arg_0.a.x), Struct_3(arg_0.c.wzy, Struct_1(vec3<i32>(-1i, arg_0.b.x, 1i), u_input.a, vec4<bool>(arg_0.c.x, arg_1.x, false, global0[_wgslsmith_index_u32(var_0.x, 23u)]), u_input.a.x), arg_0.d), Struct_3(vec3<bool>(true, arg_0.c.x, false), Struct_1(arg_0.a, vec2<i32>(u_input.a.x, u_input.a.x), arg_0.c, arg_0.b.x), arg_0.d)), -1608f), Struct_3(!arg_1.wxx, func_3(Struct_5(vec3<i32>(arg_0.b.x, arg_0.b.x, -13884i), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 23u)], true, true), Struct_1(arg_0.a, arg_0.a.yx, arg_0.c, arg_0.a.x), -1i), Struct_3(vec3<bool>(arg_0.c.x, arg_0.c.x, global0[_wgslsmith_index_u32(74127u, 23u)]), Struct_1(arg_0.a, arg_0.a.yz, arg_0.c, -1i), arg_0.b.x), Struct_3(arg_1.xyy, arg_0, arg_0.b.x)), 36544u, -288f).b, u_input.a.x))), false);
    global0 = array<bool, 23>();
    var_0 = ~vec2<u32>(1u, var_0.x ^ _wgslsmith_mult_u32(var_0.x, 16454u));
    var var_2 = vec2<i32>(min(46988i, ~_wgslsmith_div_i32(u_input.a.x, -29422i) | func_5(func_5(Struct_5(vec3<i32>(u_input.a.x, arg_0.d, 0i), var_1.b, var_1.c, Struct_3(arg_1.yxw, arg_0, 61600i)), true), true).d.c), abs(_wgslsmith_div_i32(27517i, arg_0.a.x)) >> (_wgslsmith_add_u32(39329u, var_0.x) % 32u));
    return Struct_2(countOneBits(_wgslsmith_mod_u32(22047u, var_0.x)));
}

fn func_6(arg_0: Struct_2) -> vec3<f32> {
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    let var_0 = func_5(func_4(Struct_3(func_5(func_5(Struct_5(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 23u)], true, true), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -23609i), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(2291u, 23u)], global0[_wgslsmith_index_u32(arg_0.a, 23u)], true, global0[_wgslsmith_index_u32(24143u, 23u)]), u_input.a.x), u_input.a.x), Struct_3(vec3<bool>(true, false, true), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -74792i), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], false, false, global0[_wgslsmith_index_u32(0u, 23u)]), u_input.a.x), u_input.a.x), Struct_3(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.a, 23u)], true), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a, 23u)], false, true, global0[_wgslsmith_index_u32(4294967295u, 23u)]), 0i), u_input.a.x)), global0[_wgslsmith_index_u32(22835u, 23u)]), func_5(Struct_5(vec3<i32>(-10335i, 2147483647i, 31145i), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 23u)], global0[_wgslsmith_index_u32(arg_0.a, 23u)], global0[_wgslsmith_index_u32(arg_0.a, 23u)]), Struct_1(vec3<i32>(u_input.a.x, 31971i, 23137i), vec2<i32>(u_input.a.x, -28437i), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 23u)], true, true), u_input.a.x), u_input.a.x), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], true), Struct_1(vec3<i32>(u_input.a.x, 1i, u_input.a.x), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(26328u, 23u)], true, global0[_wgslsmith_index_u32(arg_0.a, 23u)], global0[_wgslsmith_index_u32(10724u, 23u)]), 0i), 7752i), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 23u)], true, false), Struct_1(vec3<i32>(-12016i, u_input.a.x, u_input.a.x), u_input.a, vec4<bool>(true, global0[_wgslsmith_index_u32(46781u, 23u)], global0[_wgslsmith_index_u32(46091u, 23u)], false), -43232i), u_input.a.x)), true).c.a.x).b.a, func_5(func_4(Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(1u, 23u)], false, global0[_wgslsmith_index_u32(arg_0.a, 23u)]), Struct_1(vec3<i32>(0i, u_input.a.x, u_input.a.x), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(5463u, 23u)], global0[_wgslsmith_index_u32(arg_0.a, 23u)], global0[_wgslsmith_index_u32(arg_0.a, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]), u_input.a.x), 20035i), Struct_5(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), Struct_3(vec3<bool>(true, true, false), Struct_1(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, -25710i), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a, 23u)], false, false, false), u_input.a.x), -1i), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 23u)], true, global0[_wgslsmith_index_u32(arg_0.a, 23u)]), Struct_1(vec3<i32>(2147483647i, -858i, u_input.a.x), vec2<i32>(-1i, -29008i), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a, 23u)], global0[_wgslsmith_index_u32(arg_0.a, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], false), -1i), u_input.a.x), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(38071u, 23u)], false), Struct_1(vec3<i32>(u_input.a.x, -2147483647i, -39741i), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], true, true), u_input.a.x), -9782i))), u_input.a.x != 0i).c.b, _wgslsmith_mult_i32(-19084i, -1i) >> (~arg_0.a % 32u)), func_5(Struct_5(vec3<i32>(u_input.a.x, 1536i, u_input.a.x), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(arg_0.a, 23u)], global0[_wgslsmith_index_u32(arg_0.a, 23u)]), Struct_1(vec3<i32>(82951i, u_input.a.x, u_input.a.x), vec2<i32>(-1i, u_input.a.x), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a, 23u)], global0[_wgslsmith_index_u32(9544u, 23u)], true, false), u_input.a.x), u_input.a.x), func_2(Struct_4(arg_0.a, vec3<i32>(0i, u_input.a.x, u_input.a.x), false, false, u_input.a), Struct_5(vec3<i32>(-1i, u_input.a.x, u_input.a.x), Struct_3(vec3<bool>(true, false, true), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.a, 23u)], global0[_wgslsmith_index_u32(arg_0.a, 23u)], global0[_wgslsmith_index_u32(15026u, 23u)]), u_input.a.x), 8899i), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 23u)], global0[_wgslsmith_index_u32(arg_0.a, 23u)], false), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 1i), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(arg_0.a, 23u)]), -1i), -1i), Struct_3(vec3<bool>(true, false, true), Struct_1(vec3<i32>(11682i, 0i, 52327i), vec2<i32>(83544i, -1i), vec4<bool>(global0[_wgslsmith_index_u32(25593u, 23u)], global0[_wgslsmith_index_u32(arg_0.a, 23u)], false, global0[_wgslsmith_index_u32(arg_0.a, 23u)]), -30285i), u_input.a.x)), -862f), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(56690u, 23u)], true, false), Struct_1(vec3<i32>(-13532i, u_input.a.x, 21607i), u_input.a, vec4<bool>(false, false, false, false), u_input.a.x), u_input.a.x)), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(52279u, 0u)), 23u)])), !global0[_wgslsmith_index_u32(6379u, 23u)]);
    global0 = array<bool, 23>();
    var var_1 = _wgslsmith_div_i32(min(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_div_i32(var_0.b.b.b.x, 0i)), 1i), -_wgslsmith_div_i32(4010i, _wgslsmith_clamp_i32(0i, u_input.a.x, var_0.d.c))) >> (29884u % 32u);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(216f, 642f), -1520f, _wgslsmith_f_op_f32(650f - 296f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1496f, -285f, 541f) - vec3<f32>(948f, 1000f, 1074f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1469f, -1695f, 1108f), vec3<f32>(-482f, 816f, 675f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-611f, -1000f, -488f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-592f, 930f, 171f) * vec3<f32>(-595f, 493f, 792f))), 1u <= _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.a), vec2<u32>(56265u, 39801u)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-553f)), 580f, _wgslsmith_f_op_f32(-1445f - 1310f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(394f, 510f, -166f), vec3<f32>(-1252f, -107f, 1000f)), vec3<f32>(-1900f, 365f, 500f), vec3<bool>(var_0.c.a.x, false, false)))))), !(_wgslsmith_f_op_f32(select(-755f, 491f, any(var_0.b.a))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(626f * 806f) - -1456f))));
}

fn func_7(arg_0: vec3<f32>, arg_1: Struct_5) -> Struct_1 {
    let var_0 = func_4(arg_1.d, func_5(arg_1, true)).d;
    let var_1 = !vec3<bool>(true, true, !(true | global0[_wgslsmith_index_u32(1742u, 23u)]));
    let var_2 = -136f;
    global0 = array<bool, 23>();
    var var_3 = 1u;
    return func_4(func_3(arg_1, firstLeadingBit(54742u), _wgslsmith_f_op_f32(ceil(-1944f))), Struct_5(~arg_1.d.b.a, arg_1.d, Struct_3(arg_1.b.a, func_5(Struct_5(vec3<i32>(arg_1.c.b.b.x, -44635i, 2159i), Struct_3(arg_1.d.b.c.xwy, var_0.b, -47969i), var_0, Struct_3(arg_1.c.b.c.yzz, arg_1.d.b, u_input.a.x)), global0[_wgslsmith_index_u32(~4294967295u, 23u)]).c.b, reverseBits(reverseBits(-18928i))), Struct_3(vec3<bool>(arg_1.d.b.c.x, false, arg_1.b.b.c.x & global0[_wgslsmith_index_u32(11142u, 23u)]), func_2(Struct_4(17702u, var_0.b.a, false, var_1.x, vec2<i32>(u_input.a.x, u_input.a.x)), func_4(Struct_3(vec3<bool>(true, true, true), Struct_1(vec3<i32>(u_input.a.x, var_0.c, u_input.a.x), var_0.b.b, vec4<bool>(var_0.a.x, arg_1.c.b.c.x, true, false), -1i), arg_1.c.b.a.x), Struct_5(vec3<i32>(2147483647i, arg_1.b.c, var_0.b.b.x), arg_1.d, Struct_3(vec3<bool>(var_0.a.x, true, true), arg_1.d.b, u_input.a.x), arg_1.d)), 1531f).b, _wgslsmith_add_i32(firstTrailingBit(2118i), max(6734i, arg_1.b.c))))).b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1004f, -1000f, 889f)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(508f, -154f, 355f))), _wgslsmith_f_op_vec3_f32(func_6(func_1(Struct_1(vec3<i32>(59261i, 0i, u_input.a.x), vec2<i32>(u_input.a.x, 70800i), vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(29719u, 23u)], true, false), u_input.a.x), vec4<bool>(true, global0[_wgslsmith_index_u32(31963u, 23u)], false, global0[_wgslsmith_index_u32(17209u, 23u)]))))))), func_4(func_4(Struct_3(func_2(Struct_4(4294967295u, vec3<i32>(-1688i, u_input.a.x, u_input.a.x), true, false, vec2<i32>(26518i, -1i)), Struct_5(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), Struct_3(vec3<bool>(false, true, false), Struct_1(vec3<i32>(u_input.a.x, -2147483647i, 28580i), u_input.a, vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], false), 4368i), u_input.a.x), Struct_3(vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 23u)]), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x), vec4<bool>(global0[_wgslsmith_index_u32(17918u, 23u)], true, true, global0[_wgslsmith_index_u32(30540u, 23u)]), u_input.a.x), u_input.a.x), Struct_3(vec3<bool>(true, true, true), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, 10360i), vec4<bool>(false, true, global0[_wgslsmith_index_u32(4359u, 23u)], false), u_input.a.x), -5159i)), 1298f).b.c.xwz, func_5(Struct_5(vec3<i32>(34184i, 7341i, 45158i), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(25544u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], true), Struct_1(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), u_input.a, vec4<bool>(false, false, false, true), u_input.a.x), u_input.a.x), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(46540u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], true), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -26685i), u_input.a, vec4<bool>(true, false, global0[_wgslsmith_index_u32(27807u, 23u)], global0[_wgslsmith_index_u32(72096u, 23u)]), -2147483647i), -1i), Struct_3(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(1u, 23u)], false, false, true), u_input.a.x), 0i)), false).b.b, _wgslsmith_div_i32(u_input.a.x, 3094i)), Struct_5(vec3<i32>(u_input.a.x, u_input.a.x, 0i), func_5(Struct_5(vec3<i32>(u_input.a.x, 0i, 55930i), Struct_3(vec3<bool>(true, true, true), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, 12493i), u_input.a, vec4<bool>(false, true, true, true), u_input.a.x), 0i), Struct_3(vec3<bool>(true, false, global0[_wgslsmith_index_u32(32819u, 23u)]), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(65674u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(59439u, 23u)]), -9568i), -1i), Struct_3(vec3<bool>(false, true, true), Struct_1(vec3<i32>(u_input.a.x, 24575i, u_input.a.x), u_input.a, vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(33237u, 23u)]), u_input.a.x), 2147483647i)), true).b, func_4(Struct_3(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(32635u, 23u)]), Struct_1(vec3<i32>(u_input.a.x, -56845i, u_input.a.x), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(18871u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], true), 58582i), 2147483647i), Struct_5(vec3<i32>(-33615i, u_input.a.x, 0i), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(5526u, 23u)], true, global0[_wgslsmith_index_u32(1u, 23u)]), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(1800u, 23u)], true, false), 2147483647i), 0i), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(0u, 23u)], true, global0[_wgslsmith_index_u32(81311u, 23u)]), Struct_1(vec3<i32>(u_input.a.x, 0i, u_input.a.x), vec2<i32>(u_input.a.x, 5725i), vec4<bool>(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(43836u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], true), u_input.a.x), u_input.a.x), Struct_3(vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 23u)]), Struct_1(vec3<i32>(0i, 1i, 1i), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], false, global0[_wgslsmith_index_u32(1u, 23u)]), -2147483647i), u_input.a.x))).b, Struct_3(vec3<bool>(true, false, global0[_wgslsmith_index_u32(7947u, 23u)]), Struct_1(vec3<i32>(u_input.a.x, 6174i, 2147483647i), u_input.a, vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(25418u, 23u)]), u_input.a.x), 14170i))).c, func_4(Struct_3(func_4(Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(3570u, 23u)]), Struct_1(vec3<i32>(u_input.a.x, -2147483647i, 0i), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 23u)], false, global0[_wgslsmith_index_u32(0u, 23u)]), u_input.a.x), u_input.a.x), Struct_5(vec3<i32>(5685i, -12311i, u_input.a.x), Struct_3(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec2<i32>(-39557i, 0i), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]), 19009i), u_input.a.x), Struct_3(vec3<bool>(false, global0[_wgslsmith_index_u32(37574u, 23u)], true), Struct_1(vec3<i32>(17527i, u_input.a.x, 48780i), u_input.a, vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(1u, 23u)]), -1i), -19328i), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(63061u, 23u)], false, false), Struct_1(vec3<i32>(18546i, 37733i, -29087i), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], true, false, true), -43483i), u_input.a.x))).c.b.c.yzz, Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 23u)], true), 2147483647i), 35847i), Struct_5(~vec3<i32>(2147483647i, -26262i, 12201i), func_2(Struct_4(40595u, vec3<i32>(0i, u_input.a.x, 1i), global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], vec2<i32>(0i, u_input.a.x)), Struct_5(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], true, global0[_wgslsmith_index_u32(37951u, 23u)]), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -5955i), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(39058u, 23u)], true, false, true), u_input.a.x), u_input.a.x), Struct_3(vec3<bool>(true, false, false), Struct_1(vec3<i32>(-28561i, 15043i, 1i), vec2<i32>(18339i, u_input.a.x), vec4<bool>(false, true, global0[_wgslsmith_index_u32(1u, 23u)], true), 1i), -2147483647i), Struct_3(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), Struct_1(vec3<i32>(2147483647i, 1i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(global0[_wgslsmith_index_u32(51766u, 23u)], false, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]), u_input.a.x), -14050i)), -547f), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(13349u, 23u)], global0[_wgslsmith_index_u32(21051u, 23u)], global0[_wgslsmith_index_u32(32445u, 23u)]), Struct_1(vec3<i32>(-2568i, u_input.a.x, -1i), u_input.a, vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(19365u, 23u)]), u_input.a.x), u_input.a.x), func_4(Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(54560u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]), Struct_1(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(649u, 23u)], global0[_wgslsmith_index_u32(11012u, 23u)], global0[_wgslsmith_index_u32(17202u, 23u)], global0[_wgslsmith_index_u32(49640u, 23u)]), u_input.a.x), u_input.a.x), Struct_5(vec3<i32>(-30662i, 17970i, u_input.a.x), Struct_3(vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 23u)]), Struct_1(vec3<i32>(-26093i, u_input.a.x, u_input.a.x), u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(38656u, 23u)], true, global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(20963u, 23u)]), u_input.a.x), 72259i), Struct_3(vec3<bool>(true, false, false), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -29492i), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(global0[_wgslsmith_index_u32(8406u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], true, global0[_wgslsmith_index_u32(7744u, 23u)]), -2147483647i), u_input.a.x), Struct_3(vec3<bool>(true, global0[_wgslsmith_index_u32(46796u, 23u)], true), Struct_1(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec2<i32>(-14621i, u_input.a.x), vec4<bool>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], true, true), u_input.a.x), u_input.a.x))).b))));
    let var_1 = abs(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(1u, 1u, 1u)), firstLeadingBit(vec3<u32>(13928u, 1u, min(24806u, 3202u))), max(select(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 26485u, 0u), vec3<u32>(39723u, 11335u, 37447u)), ~vec3<u32>(0u, 38724u, 26815u), true), vec3<u32>(1u, 1u, 1u))));
    let var_2 = !func_3(func_4(func_3(Struct_5(var_0.a, Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(15174u, 23u)], global0[_wgslsmith_index_u32(var_1.x, 23u)], var_0.c.x), var_0, 2147483647i), Struct_3(var_0.c.wxz, Struct_1(vec3<i32>(var_0.d, u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, -1i), vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(64468u, 23u)], global0[_wgslsmith_index_u32(var_1.x, 23u)]), 82361i), -1i), Struct_3(var_0.c.yyw, Struct_1(var_0.a, var_0.a.xz, vec4<bool>(false, var_0.c.x, true, global0[_wgslsmith_index_u32(var_1.x, 23u)]), u_input.a.x), -5836i)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, var_1.x, var_1.x), vec4<u32>(var_1.x, 1723u, 4294967295u, var_1.x)), _wgslsmith_f_op_f32(trunc(519f))), Struct_5(-vec3<i32>(var_0.d, 2741i, -32386i), Struct_3(var_0.c.zyz, Struct_1(var_0.a, var_0.b, vec4<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 23u)], var_0.c.x, true), var_0.b.x), -16614i), Struct_3(vec3<bool>(var_0.c.x, var_0.c.x, true), var_0, var_0.d), func_4(Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(11328u, 23u)], false, true), Struct_1(vec3<i32>(-25472i, var_0.d, 0i), u_input.a, vec4<bool>(true, var_0.c.x, false, global0[_wgslsmith_index_u32(var_1.x, 23u)]), u_input.a.x), 44423i), Struct_5(vec3<i32>(-2147483647i, var_0.d, u_input.a.x), Struct_3(var_0.c.wzx, var_0, u_input.a.x), Struct_3(var_0.c.wyy, Struct_1(vec3<i32>(var_0.a.x, 1i, -1i), vec2<i32>(-15169i, -2147483647i), vec4<bool>(false, var_0.c.x, false, true), u_input.a.x), var_0.d), Struct_3(var_0.c.yww, Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, -7224i), vec2<i32>(var_0.d, u_input.a.x), var_0.c, var_0.d), u_input.a.x))).b)), (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, 41952u, var_1.x, var_1.x)) >> ((4294967295u << (0u % 32u)) % 32u)) & ~_wgslsmith_dot_vec3_u32(var_1, vec3<u32>(27688u, var_1.x, 4453u)), 1024f).b.c;
    var var_3 = vec2<u32>(~var_1.x, abs(34856u));
    let var_4 = Struct_3(vec3<bool>(true, var_2.x, true), func_3(Struct_5(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 18893i, u_input.a.x), vec3<i32>(var_0.d, -7774i, -1i)), firstLeadingBit(var_0.a)), func_3(Struct_5(vec3<i32>(var_0.b.x, var_0.d, u_input.a.x), Struct_3(vec3<bool>(true, false, var_0.c.x), Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, 23565i), vec2<i32>(-7551i, u_input.a.x), var_2, var_0.d), 2147483647i), Struct_3(vec3<bool>(false, true, var_0.c.x), Struct_1(var_0.a, vec2<i32>(-1i, var_0.b.x), var_2, 12204i), var_0.b.x), Struct_3(var_0.c.yxx, var_0, u_input.a.x)), var_1.x, _wgslsmith_div_f32(-1058f, -1056f)), func_2(Struct_4(4294967295u, vec3<i32>(var_0.b.x, u_input.a.x, 2147483647i), var_2.x, false, vec2<i32>(var_0.d, 1i)), func_4(Struct_3(var_2.xyx, var_0, u_input.a.x), Struct_5(var_0.a, Struct_3(var_2.xzy, Struct_1(vec3<i32>(var_0.a.x, u_input.a.x, u_input.a.x), var_0.a.zz, vec4<bool>(var_0.c.x, false, var_2.x, true), var_0.d), u_input.a.x), Struct_3(var_0.c.zzw, var_0, 2147483647i), Struct_3(var_0.c.xyz, Struct_1(vec3<i32>(var_0.d, -2147483647i, u_input.a.x), u_input.a, var_0.c, -1i), var_0.a.x))), 418f), Struct_3(!vec3<bool>(var_2.x, true, var_2.x), func_7(vec3<f32>(737f, 1460f, -1123f), Struct_5(var_0.a, Struct_3(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), var_0, var_0.d), Struct_3(var_0.c.zwz, var_0, -1i), Struct_3(var_0.c.xxw, var_0, 24129i))), 0i)), ~var_3.x, -921f).b, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x | (-18210i << (var_3.x % 32u)), func_2(Struct_4(var_1.x, var_0.a, var_0.c.x, false, vec2<i32>(0i, u_input.a.x)), Struct_5(var_0.a, Struct_3(var_2.zwz, var_0, var_0.a.x), Struct_3(vec3<bool>(var_2.x, var_2.x, global0[_wgslsmith_index_u32(0u, 23u)]), Struct_1(vec3<i32>(-1i, u_input.a.x, var_0.a.x), var_0.a.xz, var_0.c, 32510i), u_input.a.x), Struct_3(vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 23u)], var_0.c.x, true), Struct_1(vec3<i32>(10977i, var_0.a.x, 0i), vec2<i32>(u_input.a.x, 5513i), vec4<bool>(var_2.x, var_0.c.x, false, false), 5054i), u_input.a.x)), _wgslsmith_f_op_f32(step(-217f, 1000f))).b.a.x)));
    global0 = array<bool, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(~vec4<u32>(var_1.x, var_3.x, var_3.x, 28703u))), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, var_3.x, var_3.x) >> (_wgslsmith_mult_u32(27771u, var_1.x) % 32u), ~(18949u ^ var_1.x), var_3.x, 16629u), vec4<bool>(true, true, true != (var_2.x != false), var_4.b.c.x)), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -594f), reverseBits(1u), ~var_1.x);
}

