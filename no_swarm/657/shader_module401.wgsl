struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(1u, 0u, 0u, 1u, 4294967295u, 15843u, 1u, 0u);

var<private> global1: array<i32, 29> = array<i32, 29>(0i, -15817i, 1i, i32(-2147483648), 0i, -37280i, 25067i, 1i, i32(-2147483648), -18194i, 18970i, 1i, -1i, -50159i, i32(-2147483648), i32(-2147483648), 1i, 0i, i32(-2147483648), 0i, 8472i, -3903i, i32(-2147483648), i32(-2147483648), 1i, 28199i, 2147483647i, i32(-2147483648), -1i);

var<private> global2: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-189f, -617f, 757f), vec3<f32>(-1304f, 1184f, -262f), vec3<f32>(-948f, 621f, -173f), vec3<f32>(-2358f, 1000f, 1445f), vec3<f32>(1563f, 1000f, 1140f), vec3<f32>(290f, 788f, -290f), vec3<f32>(-764f, 1000f, -894f));

var<private> global3: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec4<bool> {
    global3 = false;
    return vec4<bool>(false, true, select(all(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), false, false), any(vec2<bool>(true, true)));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1) -> u32 {
    global3 = true;
    let var_0 = Struct_1(!select(select(vec3<bool>(arg_0.x, false, false), arg_0.wwx, arg_0.yzz), vec3<bool>(!arg_0.x, arg_0.x | arg_2.a.x, true), all(arg_0)));
    global0 = array<u32, 8>();
    let var_1 = select(!select(!arg_2.a.yx, arg_0.xx, !arg_0.x), arg_0.yw, !(!arg_2.a.x));
    let var_2 = global1[_wgslsmith_index_u32(arg_1, 29u)];
    return ~arg_1;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(true, all(vec4<bool>(true, true, false, true)), any(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_div_i32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(7071u, 8u)], global0[_wgslsmith_index_u32(min(func_4(func_3(1u), global0[_wgslsmith_index_u32(~1u, 8u)], Struct_1(var_0.a)), 51074u), 8u)]), 29u)], ~2147483647i);
    var_0 = Struct_1(vec3<bool>(all(!var_0.a.yx), select(true, false, var_0.a.x), var_0.a.x));
    global3 = !all(select(!var_0.a.xy, vec2<bool>(var_0.a.x, var_0.a.x), true)) | (true | !any(!vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x)));
    let var_2 = reverseBits(~min(reverseBits(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 29u)], -65067i)), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 29u)], -5760i)) >> (vec2<u32>(global0[_wgslsmith_index_u32(~u_input.a, 8u)] >> (u_input.a % 32u), ~u_input.a) % vec2<u32>(32u)));
    return Struct_1(var_0.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    return func_2();
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    global0 = array<u32, 8>();
    global1 = array<i32, 29>();
    var var_0 = !any(vec2<bool>(func_2().a.x, _wgslsmith_f_op_f32(step(-2120f, -1903f)) == arg_2));
    var var_1 = func_5(Struct_1(!arg_0.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-123f, arg_2, arg_3.c, -1218f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(997f)), _wgslsmith_f_op_f32(-arg_2), -1000f, -2753f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c, arg_2, arg_2, arg_3.c)) + _wgslsmith_div_vec4_f32(vec4<f32>(-796f, -274f, -503f, -1522f), vec4<f32>(arg_2, arg_2, arg_2, arg_2)))))), arg_0);
    var var_2 = Struct_2(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)], 85403u), u_input.a), _wgslsmith_add_u32(_wgslsmith_mod_u32(34163u, u_input.a), ~45330u)), _wgslsmith_mult_u32(~(arg_3.a.x ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 8u)]), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_3.a.x, 8u)], 8u)], 8u)], u_input.a, 1u), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 8u)], arg_3.a.x))))), Struct_1(var_1.a), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(-1000f + arg_2), true)) - -1106f)), arg_0);
    return arg_3;
}

fn func_7(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32, arg_3: f32) -> Struct_2 {
    var var_0 = arg_0.b;
    var_0 = func_5(Struct_1(vec3<bool>(true, true, arg_0.b.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.c, arg_0.c, arg_0.c, -897f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, -1000f, arg_3, arg_3)), arg_0.b.a.x != true))))), arg_0.b);
    global0 = array<u32, 8>();
    var_0 = func_5(arg_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-554f, arg_0.c, -2276f, arg_3))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3, -193f, arg_0.c, -484f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1134f, 487f, 1273f, 659f), vec4<f32>(arg_0.c, -1354f, 421f, arg_3)) * vec4<f32>(arg_0.c, arg_0.c, arg_0.c, arg_0.c)))), arg_0.d);
    let var_1 = _wgslsmith_div_vec2_i32((vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(0i, global1[_wgslsmith_index_u32(4294967295u, 29u)]), vec2<i32>(global1[_wgslsmith_index_u32(arg_2, 29u)], 0i))) | min(vec2<i32>(global1[_wgslsmith_index_u32(0u, 29u)], _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(arg_2, 29u)], 20140i, -1i)), max(~vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], 0i), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 29u)], -2147483647i)))), -vec2<i32>(~global1[_wgslsmith_index_u32(1u, 29u)] << (~94885u % 32u), global1[_wgslsmith_index_u32(~u_input.a, 29u)]));
    return func_6(func_5(func_2(), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(arg_3 * arg_3), _wgslsmith_f_op_f32(f32(-1f) * -1747f), _wgslsmith_f_op_f32(f32(-1f) * -773f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, -1869f, 981f, 535f) + vec4<f32>(1146f, 1871f, arg_3, -105f))))), arg_0.d), global1[_wgslsmith_index_u32(arg_2, 29u)], _wgslsmith_f_op_f32(-102f * -649f), Struct_2(arg_0.a, Struct_1(!arg_0.d.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, -1281f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(541f * arg_3))), func_5(Struct_1(select(arg_0.d.a, arg_1, true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(644f, arg_0.c, -712f, 539f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1329f, arg_0.c, arg_3, arg_0.c)), false || arg_1.x)), arg_0.d)));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    return func_7(func_6(func_5(Struct_1(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -401f, -600f, 669f) - vec4<f32>(821f, arg_1.x, 1000f, arg_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -302f, -2211f, -604f))), func_2()), _wgslsmith_mod_i32(arg_0, _wgslsmith_div_i32(-1i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(u_input.a, 8u)]), 29u)])), 534f, Struct_2(~firstTrailingBit(vec2<u32>(u_input.a, u_input.a)), Struct_1(vec3<bool>(false, true, false)), arg_1.x, Struct_1(vec3<bool>(true, false, true)))), func_3(0u).xyy, firstLeadingBit(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.a, 8u)], 25458u, 1u), abs(vec4<u32>(u_input.a, 4294967295u, 43273u, 33985u))), 8u)]), _wgslsmith_f_op_f32(f32(-1f) * -379f));
}

fn func_8(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_u32((_wgslsmith_mult_vec4_u32(~vec4<u32>(18016u, 39436u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], 8u)], 8u)], 68646u), ~vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(38264u, 8u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)])) << (reverseBits(~vec4<u32>(global0[_wgslsmith_index_u32(arg_2.a.x, 8u)], 1u, global0[_wgslsmith_index_u32(20226u, 8u)], 0u)) % vec4<u32>(32u))) ^ (vec4<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(37316u, 8u)], global0[_wgslsmith_index_u32(12174u, 8u)]), _wgslsmith_div_u32(71245u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44306u, 8u)], 8u)], 95350u, u_input.a, arg_2.a.x), vec4<u32>(global0[_wgslsmith_index_u32(arg_2.a.x, 8u)], 42418u, u_input.a, 21769u)), arg_2.a.x) >> ((~vec4<u32>(27888u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30371u, 8u)], 8u)], 4294967295u, 54000u) | vec4<u32>(0u, 128078u, 40697u, 4294967295u)) % vec4<u32>(32u))), (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 8u)], arg_2.a.x, arg_2.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19785u, 8u)], 8u)], 4294967295u, arg_2.a.x, u_input.a), vec4<u32>(arg_2.a.x, 4294967295u, 17202u, 32071u))) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(38808u, global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], 0u), vec4<u32>(arg_2.a.x, arg_2.a.x, 64588u, 69835u)), 1u, abs(4294967295u), u_input.a) % vec4<u32>(32u))) & select(vec4<u32>(countOneBits(u_input.a), ~0u, arg_2.a.x, global0[_wgslsmith_index_u32(func_6(arg_2.d, 2147483647i, arg_2.c, Struct_2(arg_2.a, arg_2.d, -2444f, arg_2.b)).a.x, 8u)]), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 3876u, 27505u, 53524u), vec4<u32>(arg_2.a.x, 1u, arg_2.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47902u, 8u)], 8u)], 8u)])), ~vec4<u32>(9146u, arg_2.a.x, 22682u, 4294967295u)), func_3(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 8u)])));
    global3 = any(!(!vec2<bool>(global1[_wgslsmith_index_u32(41369u, 29u)] != global1[_wgslsmith_index_u32(arg_2.a.x, 29u)], false)));
    let var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(var_0.x, 0u), firstLeadingBit(58770u), firstLeadingBit(_wgslsmith_clamp_u32(var_0.x, global0[_wgslsmith_index_u32(var_0.x, 8u)], u_input.a))) << (vec3<u32>(~0u, func_6(func_6(arg_2.b, arg_0.x, 1045f, arg_2).b, global1[_wgslsmith_index_u32(var_0.x, 29u)] & arg_0.x, _wgslsmith_f_op_f32(arg_2.c - arg_2.c), arg_2).a.x, _wgslsmith_sub_u32(reverseBits(23059u), ~arg_2.a.x)) % vec3<u32>(32u)), ~vec3<u32>(arg_2.a.x, ~arg_2.a.x | firstLeadingBit(global0[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(~var_0.x, 8u)], ~arg_2.a.x, min(12755u, u_input.a))));
    var var_2 = !((_wgslsmith_div_u32(0u, ~0u) > _wgslsmith_add_u32(func_7(arg_2, arg_2.b.a, arg_2.a.x, arg_2.c).a.x, arg_2.a.x)) && !func_1(71878i, _wgslsmith_f_op_vec3_f32(vec3<f32>(490f, arg_2.c, 1311f) - vec3<f32>(1063f, 894f, arg_2.c))).b.a.x);
    var var_3 = abs(select(0i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(0u, 29u)], arg_0.x), func_6(Struct_1(!vec3<bool>(arg_1.x, true, arg_1.x)), _wgslsmith_mult_i32(65816i, _wgslsmith_clamp_i32(32016i, 1i, global1[_wgslsmith_index_u32(var_1.x, 29u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)), func_6(arg_2.b, select(11765i, global1[_wgslsmith_index_u32(6140u, 29u)], arg_1.x), _wgslsmith_f_op_f32(-arg_2.c), arg_2)).b.a.x));
    return Struct_1(vec3<bool>(arg_2.d.a.x, (1i < global1[_wgslsmith_index_u32(var_1.x, 29u)]) != true, !(false & all(arg_2.d.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!select(true, any(vec4<bool>(true, true, true, true)), true), _wgslsmith_mod_u32(max(select(1u, u_input.a, false), global0[_wgslsmith_index_u32(u_input.a, 8u)] & 1u), u_input.a) != u_input.a, !(global1[_wgslsmith_index_u32(u_input.a, 29u)] < -firstTrailingBit(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 29u)])));
    var var_1 = -1i ^ -_wgslsmith_dot_vec4_i32(~min(vec4<i32>(-2147483647i, 0i, 0i, -43454i), vec4<i32>(12979i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)], -2147483647i)), abs(vec4<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 29u)], 1i, -2395i, 0i)));
    global0 = array<u32, 8>();
    let var_2 = Struct_2(vec2<u32>(firstLeadingBit(firstLeadingBit(~4294967295u)), ~abs(global0[_wgslsmith_index_u32(0u, 8u)]) ^ (1u >> ((4294967295u << (global0[_wgslsmith_index_u32(1u, 8u)] % 32u)) % 32u))), func_8(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45177u, 8u)], 29u)], -5561i, 1i), min(vec3<i32>(global1[_wgslsmith_index_u32(26655u, 29u)], global1[_wgslsmith_index_u32(46600u, 29u)], -13315i), vec3<i32>(-9922i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], 29u)], global1[_wgslsmith_index_u32(7968u, 29u)]))), global1[_wgslsmith_index_u32(1u, 29u)], i32(-1i) * -global1[_wgslsmith_index_u32(0u, 29u)]), vec2<bool>(true, true), func_1(1i, vec3<f32>(_wgslsmith_f_op_f32(round(391f)), -992f, _wgslsmith_f_op_f32(trunc(1054f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1114f)) + func_6(Struct_1(var_0), 30696i, -554f, Struct_2(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(0u, 8u)]), Struct_1(var_0), -992f, Struct_1(var_0))).c))), func_5(func_7(Struct_2(~vec2<u32>(u_input.a, 1u), Struct_1(var_0), -1941f, Struct_1(var_0)), vec3<bool>(true, !var_0.x, true), ~6311u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(263f * 1190f) + _wgslsmith_f_op_f32(min(140f, 200f)))).d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -486f, 1152f, 814f)), func_7(Struct_2(vec2<u32>(28692u, 1u), Struct_1(vec3<bool>(true, var_0.x, var_0.x)), _wgslsmith_f_op_f32(-143f * -408f), Struct_1(var_0)), !var_0, 76067u << (_wgslsmith_add_u32(u_input.a, u_input.a) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1825f) + -340f)).b));
    var var_3 = reverseBits(-firstLeadingBit(vec3<i32>(~global1[_wgslsmith_index_u32(1u, 29u)], 1i, firstTrailingBit(2975i))));
    let var_4 = func_7(Struct_2(func_7(var_2, !(!vec3<bool>(var_0.x, var_0.x, var_0.x)), ~func_1(var_3.x, global2[_wgslsmith_index_u32(u_input.a, 7u)]).a.x, var_2.c).a, Struct_1(!(!vec3<bool>(var_0.x, var_0.x, true))), _wgslsmith_f_op_f32(-var_2.c), Struct_1(vec3<bool>(true, func_3(30429u).x, var_0.x | true))), !vec3<bool>(true, true, var_3.x < _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.a, 29u)], -2147483647i)), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(111f, _wgslsmith_f_op_f32(-var_2.c), !var_2.b.a.x)) + _wgslsmith_f_op_f32(var_2.c - 697f)) * func_1(firstTrailingBit(global1[_wgslsmith_index_u32(~64051u, 29u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, var_2.c, 276f) * global2[_wgslsmith_index_u32(~u_input.a, 7u)])).c)).a.x;
    var var_5 = ~((reverseBits(min(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 8u)], 4294967295u, 1371u, 90241u), vec4<u32>(var_4, var_4, var_4, var_4))) | ~reverseBits(vec4<u32>(var_4, 0u, 1u, 61657u))) << (vec4<u32>(~select(global0[_wgslsmith_index_u32(u_input.a, 8u)], 1u, var_0.x), ~select(15191u, u_input.a, true), _wgslsmith_mult_u32(var_4, 1u), 0u) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_3.x), _wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(-func_7(Struct_2(vec2<u32>(54635u, u_input.a), Struct_1(var_0), var_2.c, var_2.d), vec3<bool>(var_2.d.a.x, var_2.d.a.x, var_0.x), 5480u, var_2.c).c))), global2[_wgslsmith_index_u32(21433u ^ ~var_4, 7u)], abs(~_wgslsmith_add_i32(-43686i << (u_input.a % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(2192u, 29u)], var_3.x), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 29u)], -4642i)))));
}

