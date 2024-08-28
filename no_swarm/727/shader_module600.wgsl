struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<i32, 14> = array<i32, 14>(-42044i, 1i, 0i, 2147483647i, 14696i, 6720i, -31859i, -1i, -11398i, -1i, -6174i, -1i, 0i, i32(-2147483648));

var<private> global2: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(6871u, 0u, 67059u, 1u), vec4<u32>(13878u, 1335u, 5432u, 47415u), vec4<u32>(26790u, 4294967295u, 1u, 76804u), vec4<u32>(27093u, 76515u, 1193u, 0u), vec4<u32>(0u, 0u, 4294967295u, 24082u), vec4<u32>(21615u, 0u, 4294967295u, 1u), vec4<u32>(0u, 4294967295u, 6585u, 5574u), vec4<u32>(1u, 4294967295u, 1u, 40415u), vec4<u32>(70580u, 1u, 3702u, 5609u), vec4<u32>(4294967295u, 0u, 18032u, 13249u), vec4<u32>(0u, 55559u, 13932u, 0u), vec4<u32>(245u, 104431u, 23643u, 53514u), vec4<u32>(14636u, 36349u, 26739u, 4294967295u), vec4<u32>(46461u, 1u, 1u, 57492u), vec4<u32>(1u, 1u, 36771u, 1u), vec4<u32>(7831u, 0u, 20894u, 54607u), vec4<u32>(4294967295u, 8871u, 1u, 24848u), vec4<u32>(12u, 42084u, 78424u, 4294967295u), vec4<u32>(3828u, 0u, 19720u, 1u), vec4<u32>(16453u, 0u, 57417u, 3625u), vec4<u32>(36893u, 4294967295u, 36797u, 30612u), vec4<u32>(0u, 69168u, 1u, 4294967295u), vec4<u32>(25618u, 1u, 47877u, 1u), vec4<u32>(19643u, 10601u, 1u, 1u), vec4<u32>(1u, 3099u, 1u, 1u));

var<private> global3: Struct_3;

var<private> global4: vec4<u32> = vec4<u32>(10516u, 55017u, 48736u, 1u);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-208f, -127f, global3.c.a.x, 1773f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-197f, -249f, -157f, -1243f))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false))))));
    var var_1 = var_0.x;
    global3 = arg_0.b;
    let var_2 = var_0.wyw;
    var var_3 = global3.c;
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(990f, var_0.x), 204f, true)))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_0.e.b.a.x * -582f), _wgslsmith_f_op_f32(var_0.x - var_3.a.x), arg_0.d.a.x), firstTrailingBit(vec2<i32>(-67071i, 1i) << (global4.yx % vec2<u32>(32u))))), global3.b, global3.a.b);
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    var var_0 = global3.a;
    global0 = countOneBits(~select(_wgslsmith_add_vec4_u32(vec4<u32>(global4.x, 26210u, 3113u, 2911u), ~vec4<u32>(global4.x, global4.x, arg_3.b.x, global3.b.x)), reverseBits(vec4<u32>(global3.b.x, arg_3.b.x, 6514u, 44111u)), vec4<bool>(true, any(vec4<bool>(false, false, false, true)), true, true)));
    var var_1 = max(~min(_wgslsmith_clamp_vec4_u32(~global2[_wgslsmith_index_u32(global4.x, 25u)], _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 29495u, global3.b.x, arg_3.b.x), vec4<u32>(global0.x, 4294967295u, 6198u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(global4.x, 29053u, arg_3.b.x, 82729u), global2[_wgslsmith_index_u32(4294967295u, 25u)])), global2[_wgslsmith_index_u32(~1u, 25u)]), _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(arg_3.b.x, 25u)], vec4<u32>(0u, 0u, 9744u, arg_3.b.x) >> (vec4<u32>(arg_3.b.x, 147901u, 11074u, global4.x) % vec4<u32>(32u))), ~(~countOneBits(global2[_wgslsmith_index_u32(global0.x, 25u)]))));
    return func_2(Struct_4(1i, arg_3, func_2(Struct_4(var_0.b.b.x, Struct_3(Struct_2(-1200f, var_0.b), vec2<u32>(1u, global3.b.x), Struct_1(arg_1, arg_3.a.b.b)), func_2(Struct_4(var_0.b.b.x, Struct_3(arg_3.a, vec2<u32>(1u, 564u), arg_3.a.b), Struct_1(vec3<f32>(-1083f, -1000f, 588f), arg_3.c.b), Struct_1(global3.c.a, arg_3.c.b), Struct_2(328f, Struct_1(arg_3.c.a, var_0.b.b)))).a.b, var_0.b, func_2(Struct_4(2147483647i, arg_3, arg_3.c, Struct_1(vec3<f32>(1024f, arg_3.c.a.x, -902f), arg_3.a.b.b), global3.a)).a)).a.b, Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, 414f, arg_2), global3.a.b.a), vec3<f32>(global3.a.a, arg_2, arg_1.x))), abs(vec2<i32>(global1[_wgslsmith_index_u32(2255u, 14u)], -12780i))), global3.a)).a;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_3 {
    global1 = array<i32, 14>();
    var var_0 = global3.a;
    var var_1 = vec4<bool>(any(vec2<bool>(true, true)), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, false, true))), any(vec2<bool>(true, true)), true);
    var var_2 = !vec3<bool>(var_1.x, all(select(var_1.wxz, select(vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.yxy, vec3<bool>(false, var_1.x, true)), var_1.x)), any(var_1.yz));
    var var_3 = reverseBits(firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(arg_1.b.b.x, -1i) | -arg_1.b.b.x, global3.c.b.x, arg_1.b.b.x)));
    return func_2(Struct_4(37485i, func_2(Struct_4(21922i, func_2(Struct_4(-40744i, Struct_3(Struct_2(var_0.b.a.x, Struct_1(vec3<f32>(arg_0.x, arg_1.a, arg_0.x), var_0.b.b)), vec2<u32>(4294967295u, global0.x), global3.a.b), Struct_1(arg_0, var_0.b.b), Struct_1(var_0.b.a, vec2<i32>(arg_1.b.b.x, arg_1.b.b.x)), arg_1)), Struct_1(vec3<f32>(arg_1.a, 1003f, global3.c.a.x), var_0.b.b), var_0.b, Struct_2(338f, var_0.b))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a, global3.a.a, -1325f)))), ~vec2<i32>(arg_1.b.b.x, -1i)), Struct_1(arg_1.b.a, vec2<i32>(-global3.a.b.b.x, 1i)), func_3(~_wgslsmith_dot_vec2_i32(global3.c.b, vec2<i32>(var_0.b.b.x, var_0.b.b.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(global3.a.b.a)), arg_0, select(vec3<bool>(true, true, true), var_1.yzx, vec3<bool>(var_2.x, false, true)))), _wgslsmith_f_op_f32(arg_0.x * -614f), func_2(Struct_4(var_0.b.b.x, Struct_3(Struct_2(1490f, arg_1.b), global0.xy, Struct_1(arg_0, vec2<i32>(var_3.x, global1[_wgslsmith_index_u32(u_input.a, 14u)]))), Struct_1(arg_1.b.a, global3.a.b.b), Struct_1(vec3<f32>(-756f, arg_0.x, -1406f), vec2<i32>(-2147483647i, -2147483647i)), Struct_2(306f, arg_1.b))))));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    var var_0 = func_2(Struct_4(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(1u, 14u)], global3.a.b.b.x), func_2(Struct_4(1i, arg_0, global3.c, Struct_1(vec3<f32>(169f, -1791f, 2554f), global3.a.b.b), func_4(vec3<f32>(global3.a.a, 569f, arg_0.a.a), Struct_2(922f, Struct_1(vec3<f32>(-939f, global3.c.a.x, -100f), vec2<i32>(27936i, arg_0.a.b.b.x)))).a)), func_3(1i, vec3<f32>(_wgslsmith_f_op_f32(global3.c.a.x - -2280f), _wgslsmith_f_op_f32(select(global3.a.b.a.x, 1521f, true)), _wgslsmith_f_op_f32(floor(arg_0.c.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -633f), Struct_3(arg_0.a, vec2<u32>(15415u, global4.x), arg_0.c)).b, func_3(2147483647i, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.a), _wgslsmith_f_op_f32(select(arg_0.a.b.a.x, 219f, true)), 435f), _wgslsmith_f_op_f32(-221f - global3.c.a.x), Struct_3(global3.a, vec2<u32>(global0.x, arg_0.b.x) & global3.b, func_3(1i, global3.a.b.a, 1000f, arg_0).b)).b, func_3(1i, arg_0.c.a, func_4(arg_0.c.a, global3.a).a.b.a.x, Struct_3(func_4(arg_0.c.a, arg_0.a).a, vec2<u32>(global0.x, global3.b.x), func_3(-1i, arg_0.c.a, arg_0.c.a.x, arg_0).b)))).a;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.b.a)))), _wgslsmith_clamp_vec2_i32((vec2<i32>(global3.c.b.x, global3.a.b.b.x) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(global3.a.b.b.x, -35054i), global3.a.b.b)) >> (global3.b % vec2<u32>(32u)), vec2<i32>(arg_0.a.b.b.x, ~1i), min(vec2<i32>(-2147483647i, ~arg_0.a.b.b.x), var_0.b.b)));
    var var_2 = 1i;
    var_0 = Struct_2(var_0.a, global3.a.b);
    let var_3 = Struct_4(-5207i, func_4(func_3(_wgslsmith_mod_i32(~27459i, countOneBits(var_0.b.b.x)), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), -1466f, arg_0.a.a), global3.c.a.x, func_4(_wgslsmith_f_op_vec3_f32(-arg_0.a.b.a), Struct_2(-427f, Struct_1(vec3<f32>(var_1.a.x, 518f, arg_0.c.a.x), var_0.b.b)))).b.a, Struct_2(func_3(-global1[_wgslsmith_index_u32(4294967295u, 14u)], _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(578f, -488f, var_0.a))), var_1.a.x, arg_0).b.a.x, global3.c)), func_2(Struct_4(-9427i, arg_0, global3.c, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b.a.x, -1000f, -926f) * var_0.b.a), global3.c.b << (global4.yx % vec2<u32>(32u))), func_4(func_3(34459i, global3.a.b.a, arg_0.a.b.a.x, arg_0).b.a, global3.a).a)).c, Struct_1(global3.a.b.a, vec2<i32>(-1i, -6409i)), global3.a);
    return Struct_2(509f, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3.c.a.x, var_3.e.a, 279f), var_0.b.a) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(187f, var_0.b.a.x, var_1.a.x)))), func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_0.c.a - var_0.b.a), _wgslsmith_f_op_vec3_f32(global3.c.a * vec3<f32>(-1000f, -1153f, -734f)))), Struct_2(1537f, var_0.b)).c.b));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(func_5(func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a.b.a), _wgslsmith_f_op_vec3_f32(sign(global3.a.b.a))), func_3(_wgslsmith_sub_i32(global3.c.b.x, -21600i), _wgslsmith_f_op_vec3_f32(global3.c.a + global3.c.a), _wgslsmith_f_op_f32(663f + 437f), func_2(Struct_4(global1[_wgslsmith_index_u32(global3.b.x, 14u)], Struct_3(Struct_2(1717f, Struct_1(vec3<f32>(667f, -919f, global3.c.a.x), global3.c.b)), vec2<u32>(66060u, 1u), global3.a.b), Struct_1(vec3<f32>(1167f, -1765f, global3.a.b.a.x), global3.c.b), Struct_1(vec3<f32>(-845f, 1368f, global3.a.b.a.x), global3.c.b), Struct_2(global3.a.a, Struct_1(vec3<f32>(global3.c.a.x, 985f, global3.c.a.x), vec2<i32>(global1[_wgslsmith_index_u32(87101u, 14u)], global1[_wgslsmith_index_u32(global4.x, 14u)])))))))), global4.xw, global3.a.b);
    let var_1 = select(select(vec3<bool>(any(vec4<bool>(true, true, true, true)), false, true), vec3<bool>(true, true, true), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, all(vec3<bool>(true, false, false))), true)), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, false))), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, global4.x > 80283u), true));
    let var_2 = func_5(func_2(Struct_4(global3.a.b.b.x, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a.x, var_0.a.a, global3.c.a.x)), Struct_2(global3.c.a.x, global3.a.b)), Struct_1(vec3<f32>(var_0.c.a.x, 743f, var_0.c.a.x), vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_0.b.x, 14u)])), global3.a.b, func_3(var_0.a.b.b.x | 12844i, global3.a.b.a, _wgslsmith_f_op_f32(round(-1020f)), Struct_3(Struct_2(var_0.a.b.a.x, Struct_1(vec3<f32>(-1632f, -1000f, 1114f), vec2<i32>(-72231i, 2147483647i))), vec2<u32>(0u, global0.x), Struct_1(vec3<f32>(1226f, 293f, 444f), vec2<i32>(global3.a.b.b.x, 12836i))))))).b;
    global4 = _wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a, global0.x, min(1u, u_input.a), ~global4.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(58258u, var_0.b.x, 18413u, 1u), vec4<u32>(u_input.a, 46004u, global4.x, global3.b.x)), !select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(true, true, var_1.x, false))), ~vec4<u32>(8289u, 1u, 23578u, ~global4.x)) << (vec4<u32>(~(~38630u), _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global0.wzx, global4.zxz), reverseBits(26064u)), var_0.b.x ^ _wgslsmith_div_u32(1u, 4294967295u)), ~(~_wgslsmith_add_u32(u_input.a, 1u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(global0.x, var_0.b.x), firstTrailingBit(~global4.x))) % vec4<u32>(32u));
    global1 = array<i32, 14>();
    return Struct_3(func_5(func_4(var_2.a, var_0.a)), ~min(vec2<u32>(var_0.b.x, 4294967295u), max(~global3.b, ~global3.b)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a) - vec3<f32>(1143f, func_3(0i, vec3<f32>(1421f, -840f, 638f), var_0.c.a.x, Struct_3(var_0.a, vec2<u32>(global4.x, 75195u), var_2)).b.a.x, global3.a.a)), ~(-var_2.b)));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = any(vec4<bool>(select(true, all(vec2<bool>(true, true)), true), (true & any(vec3<bool>(false, false, false))) && !(-2147483647i < global3.c.b.x), !(!all(vec4<bool>(false, true, true, false))), false));
    global1 = array<i32, 14>();
    let var_1 = arg_1;
    global1 = array<i32, 14>();
    let var_2 = !(arg_0.c.b.x > global1[_wgslsmith_index_u32(1u, 14u)]);
    return global3.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(global3.a.a, Struct_1(_wgslsmith_f_op_vec3_f32(sign(global3.c.a)), ~(-global3.a.b.b))), global0.yy, func_6(func_1(), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1667f, global3.c.a.x, _wgslsmith_f_op_f32(-global3.a.b.a.x), global3.c.a.x) * vec4<f32>(_wgslsmith_f_op_f32(floor(-222f)), -1169f, _wgslsmith_f_op_f32(-global3.c.a.x), global3.a.b.a.x))));
    var var_1 = global3.a;
    let var_2 = !vec2<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), false)), true);
    let var_3 = 1i;
    global4 = firstLeadingBit(vec4<u32>(u_input.a, global0.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(global4.x, global4.x, global3.b.x) >> (vec3<u32>(26790u, var_0.b.x, 6213u) % vec3<u32>(32u))), ~_wgslsmith_add_vec3_u32(global4.wzw, vec3<u32>(global3.b.x, 1u, global4.x))), 1u));
    var_1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a.b.a * _wgslsmith_f_op_vec3_f32(-global3.a.b.a))), Struct_2(1f, Struct_1(vec3<f32>(-2799f, _wgslsmith_f_op_f32(select(-481f, var_1.a, var_2.x)), _wgslsmith_f_op_f32(-var_0.a.a)), -var_0.a.b.b))).a;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(Struct_4(-2147483647i, Struct_3(var_0.a, ~global4.wz, func_3(var_1.b.b.x, var_0.c.a, global3.a.b.a.x, var_0).b), var_0.c, Struct_1(global3.c.a, ~var_0.c.b), var_0.a)).c.a.x, ~(~(~global0.xzy)), firstTrailingBit(~(~vec4<u32>(0u, 4294967295u, 80349u, global0.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.a.b.a.x, -1444f, global3.c.a.x, -634f), vec4<f32>(-1723f, var_0.c.a.x, 837f, 589f), vec4<bool>(true, false, var_2.x, var_2.x))) - vec4<f32>(global3.c.a.x, var_1.b.a.x, var_0.c.a.x, var_0.a.b.a.x)))))));
}

