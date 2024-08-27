struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(false, Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(true, false, false), -1i), false, vec4<f32>(1346f, 1222f, -266f, -595f), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(true, true, false), 2147483647i)), Struct_3(true, Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(false, true, true), 35073i), true, vec4<f32>(1039f, 1194f, -1000f, 465f), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(true, false, false), 9255i)), Struct_3(true, Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(false, false, true), -1i), false, vec4<f32>(395f, 821f, 821f, 971f), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), -43049i)), Struct_3(true, Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, true, false), 1i), false, vec4<f32>(1587f, 179f, 1012f, 310f), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, false, true), 11406i)), Struct_3(false, Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, false, true), 34753i), true, vec4<f32>(-911f, -1132f, 1948f, -1711f), Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, true, true), -1i)), Struct_3(false, Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(true, false, false), -11924i), true, vec4<f32>(-187f, 1663f, -1168f, 635f), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(true, true, true), -5692i)), Struct_3(true, Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(true, true, true), -52292i), false, vec4<f32>(876f, 1000f, -1388f, 699f), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(true, false, true), 40439i)), Struct_3(true, Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, false, false), 2147483647i), true, vec4<f32>(-1845f, -183f, 1262f, -753f), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, false, false), 0i)), Struct_3(true, Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(false, true, false), 0i), true, vec4<f32>(-760f, -1086f, -1101f, 949f), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, true, true), 0i)), Struct_3(false, Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, false, false), 1i), false, vec4<f32>(-918f, -1207f, 1012f, 185f), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(true, true, true), -28551i)), Struct_3(false, Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, true, false), -33366i), true, vec4<f32>(1000f, 668f, -2583f, -222f), Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, false, false), 7445i)), Struct_3(true, Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, true, false), 12947i), true, vec4<f32>(-392f, -418f, -169f, 1000f), Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(true, true, true), 0i)), Struct_3(true, Struct_1(vec4<bool>(true, true, true, false), vec3<bool>(false, true, false), 3314i), false, vec4<f32>(-1000f, 1000f, -664f, -458f), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(true, true, false), 7964i)), Struct_3(false, Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(true, true, false), 2147483647i), true, vec4<f32>(-604f, 367f, 474f, 1404f), Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(true, true, true), -34893i)), Struct_3(false, Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, true, false), 30168i), true, vec4<f32>(309f, -214f, 1351f, 621f), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, true, true), 32719i)), Struct_3(true, Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(false, true, true), -23759i), false, vec4<f32>(-776f, -901f, -1000f, 441f), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, false, false), -28624i)), Struct_3(false, Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(false, false, true), -1i), false, vec4<f32>(1000f, -896f, 1713f, -1975f), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, true, false), i32(-2147483648))), Struct_3(false, Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(true, true, false), 2147483647i), true, vec4<f32>(-482f, -1282f, 447f, 1265f), Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(false, true, false), 2147483647i)), Struct_3(true, Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, false, false), 36268i), false, vec4<f32>(508f, 772f, -1000f, -863f), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(true, false, false), 2147483647i)), Struct_3(false, Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(false, false, true), 1i), true, vec4<f32>(1303f, -1746f, 1404f, 1941f), Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(false, true, false), 37360i)), Struct_3(false, Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(true, true, true), 0i), true, vec4<f32>(-507f, 446f, 860f, -550f), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), 2147483647i)), Struct_3(false, Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, false, false), -15910i), true, vec4<f32>(-120f, 258f, -745f, 997f), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, true, false), 4166i)), Struct_3(true, Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(false, false, true), i32(-2147483648)), true, vec4<f32>(-970f, 209f, -690f, -1164f), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(true, true, false), i32(-2147483648))), Struct_3(true, Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(false, true, true), 0i), true, vec4<f32>(-962f, -1000f, 127f, 895f), Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(false, false, false), -8124i)), Struct_3(false, Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(true, false, false), 1i), true, vec4<f32>(-1003f, 1633f, -744f, 106f), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(true, true, false), -891i)), Struct_3(false, Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(false, false, true), 2098i), true, vec4<f32>(-240f, -1859f, -1270f, -1000f), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, false, true), 0i)), Struct_3(true, Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(true, true, true), -5878i), false, vec4<f32>(1170f, 670f, 849f, 1431f), Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(true, false, true), 0i)), Struct_3(true, Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(true, false, true), -28561i), true, vec4<f32>(1290f, 1890f, -1578f, 855f), Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(false, true, true), -72500i)), Struct_3(true, Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(true, false, true), -10542i), false, vec4<f32>(666f, -2127f, -1866f, 1182f), Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(false, true, false), -21174i)));

var<private> global2: f32 = -1183f;

var<private> global3: array<vec2<f32>, 29>;

var<private> global4: vec3<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<u32>, arg_3: u32) -> bool {
    var var_0 = global0.c;
    global0 = Struct_2(global0.a, u_input.a, global0.a.b.x, select(!vec4<bool>(true, false, global0.d.x, true), global0.d, vec4<bool>(true, all(vec4<bool>(global0.c, false, false, true)), any(global0.d), -1i >= global0.a.c)));
    let var_1 = arg_2.x;
    global1 = array<Struct_3, 29>();
    let var_2 = ~(-4070i);
    return !(any(select(!vec4<bool>(global0.d.x, true, false, false), !global0.a.a, select(vec4<bool>(false, true, global0.d.x, global0.a.a.x), vec4<bool>(global0.c, global0.c, true, global0.d.x), global0.a.b.x))) | !all(vec2<bool>(global0.c, global0.d.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(279f, _wgslsmith_f_op_f32(step(-175f, _wgslsmith_div_f32(960f, -1475f)))))) * global4.x);
    var var_1 = Struct_1(global0.d, vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) + _wgslsmith_f_op_f32(706f + global4.x)) >= _wgslsmith_f_op_f32(-global4.x), true, arg_2), u_input.a);
    let var_2 = abs(abs(u_input.e.xwy));
    let var_3 = Struct_4(vec4<u32>(_wgslsmith_dot_vec3_u32(select(u_input.c, vec3<u32>(4294967295u, 18107u, 9678u), arg_1.d.yxy) & vec3<u32>(u_input.c.x, 12815u, u_input.b), ~vec3<u32>(125471u, u_input.c.x, 4294967295u)), ~(~0u), 51989u, ~min(4294967295u, 42795u) >> (~4294967295u % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(445f, global4.x, global4.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, 250f) * vec3<f32>(-580f, global4.x, global4.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-3172f, global4.x, global4.x) + vec3<f32>(global4.x, global4.x, -596f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(4294967295u, 29u)], vec2<f32>(354f, -892f)) * vec2<f32>(-268f, global4.x)))), Struct_2(arg_1.a, select(u_input.a, ~(-26452i), var_2.x > 1i) >> (~1u % 32u), _wgslsmith_add_u32(u_input.b, u_input.c.x << (u_input.c.x % 32u)) <= u_input.c.x, !arg_0), ~var_2.zx);
    let var_4 = Struct_4(var_3.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4.x)) - 263f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 112f)))) + var_3.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_f_op_f32(trunc(var_3.c.x))), -1062f) * vec2<f32>(global4.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1845f)))))), arg_1, vec2<i32>(var_3.d.a.c, max(1i, countOneBits(~var_3.d.a.c))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1027f, -1486f, true)), -1000f)), 916f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-2014f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1294f, _wgslsmith_f_op_f32(-var_4.b.x))), global4.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(912f, global4.x, global4.x, 1000f))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1474f, 639f, var_4.c.x, global4.x))))));
}

fn func_2() -> Struct_2 {
    var var_0 = global0.a;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 1179f, global4.x, -681f)) + _wgslsmith_div_vec4_f32(vec4<f32>(1453f, global4.x, -436f, global4.x), vec4<f32>(global4.x, global4.x, global4.x, -312f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -1000f, -578f, global4.x) + vec4<f32>(964f, 1000f, global4.x, global4.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(!select(var_0.a, vec4<bool>(global0.a.b.x, false, true, false), global0.d), Struct_2(global0.a, max(2147483647i, -2147483647i), func_3(u_input.c.x, u_input.b, vec4<u32>(1u, 25761u, 11301u, u_input.c.x), 1u), select(vec4<bool>(false, false, true, true), var_0.a, var_0.a)), any(var_0.a)))));
    let var_2 = select(global0.d, vec4<bool>(global0.c, !func_3(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c.x, 49020u), vec3<u32>(25837u, u_input.c.x, u_input.c.x)), vec4<u32>(0u, 41339u, 0u, 68634u), 4294967295u), !global0.c, global0.c), global0.d.x);
    var var_3 = ~(~(~(4294967295u >> (u_input.c.x % 32u)))) >> (~(~((u_input.c.x & u_input.c.x) & ~u_input.b)) % 32u);
    global3 = array<vec2<f32>, 29>();
    return Struct_2(global0.a, _wgslsmith_clamp_i32(~_wgslsmith_div_i32(-22642i & global0.b, min(var_0.c, global0.a.c)), global0.a.c, -u_input.a), !all(var_0.a), !(!select(select(global0.a.a, var_2, vec4<bool>(true, true, false, false)), !vec4<bool>(var_0.b.x, global0.d.x, var_0.a.x, var_0.a.x), global0.d.x)));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_4(global0.a.a, Struct_2(Struct_1(global0.a.a, vec3<bool>(global0.d.x, false, var_0.a.a.x), 0i), _wgslsmith_add_i32(var_0.a.c, -49066i), false, vec4<bool>(global0.c, false, global0.d.x, true)), true)).yxw)));
    var var_2 = global0.a;
    let var_3 = true;
    let var_4 = Struct_2(Struct_1(global0.a.a, !(!var_2.b), ~(u_input.e.x ^ 1i)), ~((-u_input.e.x & _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.b), vec2<i32>(u_input.a, 2147483647i))) & ~0i), true, var_2.a);
    return Struct_4(vec4<u32>(u_input.c.x, u_input.c.x | (13756u | u_input.b), 3789u, abs(_wgslsmith_div_u32(select(u_input.b, u_input.c.x, true), ~u_input.b))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(496f + 1333f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.x))) - var_1.x), -1004f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, global4.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -534f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(u_input.b, 29u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(998f, global4.x) * global3[_wgslsmith_index_u32(7191u, 29u)]))))), var_4, max(vec2<i32>(_wgslsmith_sub_i32(min(var_2.c, 18295i), u_input.a & var_4.b), _wgslsmith_div_i32(abs(global0.a.c), var_4.a.c)), ~(~u_input.e.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 29>();
    var var_0 = func_1();
    var var_1 = ~(var_0.a.zx & (_wgslsmith_mult_vec2_u32(var_0.a.yx, abs(vec2<u32>(u_input.b, u_input.b))) << (~u_input.c.xz % vec2<u32>(32u))));
    let var_2 = func_2();
    var_1 = vec2<u32>(max(abs(~(~54019u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, ~u_input.c.x, ~var_1.x), vec3<u32>(_wgslsmith_div_u32(4760u, u_input.c.x), var_1.x, var_0.a.x))), ~var_0.a.x);
    var var_3 = func_2().a;
    let x = u_input.a;
    s_output = StorageBuffer(max(0u, 15287u), _wgslsmith_div_f32(var_0.c.x, global4.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1198f + var_0.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1212f, -431f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(254f)) - _wgslsmith_f_op_f32(sign(160f))))));
}

