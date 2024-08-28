struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-40691i, 1i);

var<private> global1: vec2<f32>;

var<private> global2: vec2<u32>;

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global4: array<f32, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4) -> bool {
    return !any(select(vec3<bool>(arg_0.c.b.c <= global4[_wgslsmith_index_u32(u_input.a, 27u)], !global3.x, any(vec3<bool>(arg_0.c.c.a, arg_0.c.b.a, global3.x))), vec3<bool>(!global3.x, any(vec4<bool>(global3.x, arg_0.b, true, false)), global3.x), vec3<bool>(true, !arg_0.b, all(vec4<bool>(true, true, false, arg_0.b)))));
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.c.x;
    var var_1 = select(firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, u_input.e.x, _wgslsmith_dot_vec2_u32(u_input.e.zz, vec2<u32>(4294967295u, u_input.b))) & _wgslsmith_add_u32(~global2.x, 6069u & u_input.d.x)), ~global2.x, func_3(Struct_4(~_wgslsmith_dot_vec2_u32(u_input.e.xw, vec2<u32>(4360u, 4294967295u)), global3.x, Struct_2(global2.x, Struct_1(global3.x, vec2<i32>(12543i, global0.x), -2118f, vec3<i32>(u_input.c.x, -1i, 6293i), -858f), Struct_1(false, u_input.c, global1.x, vec3<i32>(0i, 14425i, u_input.c.x), global1.x), u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -686f)))));
    let var_2 = Struct_3(global0.x, !(!(true == (global3.x | false))), Struct_1(any(!(!global3.zx)), u_input.c, global1.x, vec3<i32>(~(i32(-1i) * -16184i), global0.x ^ -var_0, var_0), _wgslsmith_f_op_f32(-540f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -573f))))));
    return Struct_2(~(~27751u), var_2.c, Struct_1(!(!any(vec2<bool>(true, global3.x))), -_wgslsmith_mult_vec2_i32(vec2<i32>(-47843i, global0.x) << (u_input.d.xy % vec2<u32>(32u)), u_input.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global2.x << (u_input.d.x % 32u), 27u)]), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global2.x, 27u)] * _wgslsmith_f_op_f32(floor(-933f)))), var_2.c.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~28312u, 27u)] + _wgslsmith_f_op_f32(min(1024f, 995f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4150u, 27u)]), -1000f))))), u_input.c.x);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b.e)) * -174f), func_2().c.e));
    global2 = u_input.d.wy;
    var var_1 = func_2().c;
    var var_2 = Struct_3(0i, arg_1.c.a, arg_1.b);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.yz, vec2<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.b, 27u)] + 1000f), arg_1.c.e), vec2<bool>(func_3(Struct_4(u_input.b, arg_1.b.a, arg_1, -1057f)), global3.x)))));
    return Struct_3(var_1.b.x, false, arg_1.b);
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(true, func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -380f), global4[_wgslsmith_index_u32(~u_input.d.x, 27u)], _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(global2.x, 27u)])), _wgslsmith_f_op_f32(select(global1.x, 418f, global3.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global4[_wgslsmith_index_u32(global2.x, 27u)], global4[_wgslsmith_index_u32(global2.x, 27u)], global4[_wgslsmith_index_u32(u_input.b, 27u)]) - vec4<f32>(-393f, global4[_wgslsmith_index_u32(u_input.b, 27u)], 373f, global1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-365f, -709f, global4[_wgslsmith_index_u32(u_input.e.x, 27u)], 1080f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-349f, -882f, global1.x, 523f) - vec4<f32>(1000f, -357f, global4[_wgslsmith_index_u32(4294967295u, 27u)], 1796f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 27u)], 1080f, -1259f, 310f) * vec4<f32>(567f, 536f, 665f, global4[_wgslsmith_index_u32(0u, 27u)]))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(489f * var_0.c.e), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 27u)]), _wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(0u, 27u)], -894f)), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(31284u, 27u)], global4[_wgslsmith_index_u32(0u, 27u)])))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1687f), -562f, 524f, _wgslsmith_f_op_f32(select(1345f, -434f, any(vec2<bool>(true, global3.x)))))));
    global0 = var_0.c.b | vec2<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), global0.x);
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.c.x, -379i), u_input.c | ~(~u_input.c));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~1u, 27u)] - 456f)));
    return func_4(true, func_2(), var_1);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    global3 = select(vec4<bool>(all(select(vec3<bool>(true, arg_1.c.a, false), global3.yxw, global3.wyw)), func_1().c.a, select(global3.x, select(arg_1.c.a && arg_1.c.a, true, !arg_3.b), select(false, global3.x || false, !arg_1.b.a)), global3.x == true), !(!vec4<bool>(arg_3.b, arg_3.b, false, false)), arg_1.c.a);
    var var_0 = arg_3;
    global0 = ~vec2<i32>(i32(-1i) * -10447i, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 34131i, var_0.a, u_input.c.x), min(vec4<i32>(0i, u_input.c.x, -26144i, u_input.c.x) ^ vec4<i32>(global0.x, -1i, -2147483647i, -1i), -vec4<i32>(arg_1.c.b.x, -21996i, var_0.a, arg_3.c.d.x))));
    var var_1 = Struct_2(~_wgslsmith_sub_u32(~67283u, ~(~global2.x)), func_1().c, Struct_1(true, select(vec2<i32>(0i, -20093i), select(vec2<i32>(0i, u_input.c.x), var_0.c.d.yz, global3.yz), false || global3.x) << (arg_0 % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.c, global4[_wgslsmith_index_u32(arg_1.a, 27u)]))), -arg_1.b.d, _wgslsmith_div_f32(func_4(false, arg_1, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(893f, -2227f, arg_3.c.c, var_0.c.c), vec4<f32>(970f, global1.x, arg_2, -1266f), vec4<bool>(arg_1.c.a, global3.x, global3.x, var_0.b)))).c.c, arg_1.b.c)), arg_1.b.b.x);
    return arg_1;
}

fn func_6(arg_0: Struct_4, arg_1: u32) -> Struct_2 {
    var var_0 = !(!(!select(!vec4<bool>(global3.x, global3.x, true, true), vec4<bool>(arg_0.b, false, false, global3.x), arg_0.b)));
    let var_1 = any(vec4<bool>(func_5(firstTrailingBit(~u_input.d.yx), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(794f, global4[_wgslsmith_index_u32(global2.x, 27u)])), Struct_3(func_2().d, true, arg_0.c.b)).c.a, true, false, true));
    global4 = array<f32, 27>();
    var var_2 = arg_0.c.c;
    global2 = vec2<u32>(~1u, 1u) | (vec2<u32>(_wgslsmith_add_u32(~47573u, 0u << (1u % 32u)), ~(global2.x ^ 71369u)) << (u_input.e.xw % vec2<u32>(32u)));
    return Struct_2(global2.x, func_4(false, func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(710f, global4[_wgslsmith_index_u32(0u, 27u)]), arg_0.d, _wgslsmith_f_op_f32(trunc(global1.x))))).c, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -190f), global4[_wgslsmith_index_u32(firstLeadingBit(1u), 27u)], arg_0.a <= 25053u)) == _wgslsmith_f_op_f32(arg_0.c.b.c + 2359f), vec2<i32>(select(_wgslsmith_div_i32(2617i, var_2.d.x), 17530i, global3.x && true), 23488i), _wgslsmith_div_f32(_wgslsmith_div_f32(-421f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 27u)])), func_1().c.e), ~(~var_2.d), -106f), global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(0u, true, func_6(Struct_4(32712u, global3.x, func_5(u_input.d.xx, Struct_2(u_input.a, Struct_1(global3.x, u_input.c, -343f, vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), global1.x), Struct_1(global3.x, vec2<i32>(1i, 0i), 283f, vec3<i32>(-1i, 0i, global0.x), global1.x), u_input.c.x), -774f, func_1()), 652f), 40601u ^ _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.e, vec4<u32>(52531u, 0u, u_input.a, u_input.a), vec4<u32>(u_input.e.x, u_input.d.x, 16630u, u_input.a)), u_input.e)), -1000f);
    global4 = array<f32, 27>();
    let var_1 = global3.zxy;
    let var_2 = vec3<u32>(4294967295u, global2.x, _wgslsmith_mult_u32(16600u, u_input.b));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.b.c), -764f, global1.x);
    let var_4 = Struct_1(!select(true, true, select(2147483647i, 1i, false) <= reverseBits(-1i)), min(vec2<i32>(-37758i, global0.x), u_input.c), global1.x, ~var_0.c.c.d, global1.x);
    var var_5 = Struct_3(~(-2147483647i), var_4.a, func_1().c);
    global2 = vec2<u32>(18167u, global2.x) ^ firstTrailingBit(vec2<u32>(u_input.e.x, 8490u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(304f, -310f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.c.c)))));
}

