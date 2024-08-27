struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
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

var<private> global0: u32 = 0u;

var<private> global1: Struct_3 = Struct_3(Struct_2(false, true, vec2<bool>(false, false), true, 50322i), vec3<bool>(true, true, true), true);

var<private> global2: vec4<f32>;

var<private> global3: vec2<bool>;

var<private> global4: Struct_3;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> vec2<bool> {
    global0 = 133935u;
    var var_0 = global2.yxw;
    global2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -530f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(121f * global2.x) + _wgslsmith_f_op_f32(861f - -662f)), global2.x)))));
    let var_1 = _wgslsmith_f_op_f32(-669f * _wgslsmith_div_f32(267f, _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.x)))))));
    return vec2<bool>(false, any(vec3<bool>(false, global1.c & arg_1.x, any(global4.b))));
}

fn func_3() -> bool {
    let var_0 = 2147483647i;
    let var_1 = ~(~(~u_input.a));
    let var_2 = true;
    var var_3 = Struct_1(all(select(!(!global1.b), vec3<bool>(false, global1.b.x | global3.x, var_2), true && var_2)), _wgslsmith_add_i32(0i, 21201i), !select(!global1.b, select(vec3<bool>(false, false, false), !global1.b, vec3<bool>(var_2, true, true)), global1.b), 1i);
    let var_4 = vec3<bool>(true, false & global1.c, global4.a.a);
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(223f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-643f, global2.x, global2.x, -1400f))) + vec4<f32>(1602f, -275f, -2736f, global2.x))))));
    global3 = vec2<bool>(global4.c, arg_1.b.x);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.zw))), Struct_1(!global3.x, ~abs(-1i ^ global4.a.e), select(select(global1.b, !vec3<bool>(arg_0.d, false, false), true), vec3<bool>(func_3(), all(vec3<bool>(arg_1.c, arg_0.a, false)), global4.a.a), all(select(vec4<bool>(true, true, arg_1.a.b, false), vec4<bool>(arg_1.c, global1.a.d, false, arg_1.b.x), arg_1.c))), -(arg_0.e & -1i) << (1u % 32u)));
    var var_2 = arg_1.c;
    var var_3 = true;
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_3(func_2(func_2(global1.a, Struct_3(global4.a, select(vec3<bool>(arg_0.b, global4.a.a, false), vec3<bool>(true, global3.x, true), vec3<bool>(arg_1.b.c.x, true, global4.c)), global4.a.a)), Struct_3(func_2(global1.a, Struct_3(global4.a, arg_2.c, global4.c)), arg_2.c, true)), vec3<bool>(!arg_1.b.c.x, all(!select(vec4<bool>(true, true, false, true), vec4<bool>(arg_2.a, true, false, true), vec4<bool>(true, global1.a.b, arg_1.b.c.x, arg_2.a))), any(vec4<bool>(!global1.b.x, arg_0.a, true, true))), any(select(vec3<bool>(false, true, any(arg_0.c)), !select(vec3<bool>(global1.a.c.x, arg_0.d, arg_1.b.c.x), global1.b, vec3<bool>(arg_2.a, false, arg_1.b.a)), arg_1.b.c)));
    global3 = vec2<bool>(arg_0.d, true);
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-712f, -1765f)), arg_2);
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * -462f))), _wgslsmith_f_op_f32(656f - var_0.a.x), arg_1.a.x));
    let var_1 = arg_1;
    return var_0.b;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(u_input.c.x > 4294967295u, global1.c, arg_0, global2.x < _wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_mod_i32(abs(arg_1.b), _wgslsmith_add_i32(global1.a.e, global4.a.e)) << (select(u_input.d, u_input.b & u_input.a.x, true) % 32u)), func_4(func_2(Struct_2(!global4.b.x, arg_1.c.x | global3.x, !global1.a.c, true, global1.a.e), Struct_3(func_2(global1.a, Struct_3(global4.a, arg_1.c, arg_0.x)), func_4(global4.a, Struct_4(global2.zw, Struct_1(arg_0.x, global4.a.e, global1.b, -1i)), Struct_1(global3.x, 23331i, vec3<bool>(false, global4.b.x, true), global1.a.e)).c, arg_0.x)), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-317f - -1276f), global2.x), Struct_1(global2.x < -766f, ~global1.a.e, vec3<bool>(true, arg_0.x, true), i32(-1i) * -2147483647i)), Struct_1(all(vec2<bool>(global4.b.x, false)), global4.a.e, global4.b, global4.a.e)).c, _wgslsmith_div_i32(arg_1.b << (u_input.b % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d, global4.a.e), -vec2<i32>(-2147483647i, global1.a.e))) >= ~(-28367i));
    global1 = var_0;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(444f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2070f)))))), vec2<f32>(global2.x, -670f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(377f, var_1.x, 2201f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, global2.x, var_1.x), global2.wzw)))))) + global2.wwz);
    global0 = 14500u;
    return arg_1;
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_4) -> Struct_3 {
    let var_0 = true;
    global1 = Struct_3(Struct_2(all(!(!arg_3.b.c.yy)), func_5(global1.b.zy, func_5(!global1.a.c, Struct_1(false, 2147483647i, vec3<bool>(true, var_0, global3.x), arg_3.b.d))).c.x, func_4(func_2(func_2(Struct_2(arg_2, true, arg_3.b.c.xy, arg_3.b.a, -46383i), Struct_3(global4.a, vec3<bool>(var_0, true, global4.b.x), global4.c)), Struct_3(global1.a, arg_3.b.c, var_0)), arg_3, func_5(global4.b.yx, Struct_1(var_0, global4.a.e, global4.b, arg_1.d))).c.zx, true, -arg_3.b.d), func_4(func_2(Struct_2(func_2(Struct_2(false, global1.c, arg_3.b.c.yy, arg_3.b.c.x, -7922i), Struct_3(global4.a, global4.b, global3.x)).c.x, arg_3.b.a | arg_1.a, global1.b.xz, any(vec3<bool>(true, arg_1.a, false)), i32(-1i) * -17411i), Struct_3(global1.a, !global1.b, all(arg_3.b.c))), Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.yz * vec2<f32>(940f, -936f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.x, global2.x))), Struct_1(global1.a.e != global1.a.e, ~1i, !vec3<bool>(arg_2, var_0, false), -global1.a.e)), Struct_1(arg_2, global1.a.e, arg_3.b.c, func_4(global1.a, Struct_4(vec2<f32>(arg_3.a.x, -297f), Struct_1(global3.x, -2147483647i, vec3<bool>(arg_3.b.c.x, true, arg_2), arg_3.b.d)), func_4(Struct_2(arg_3.b.a, true, vec2<bool>(false, global4.c), arg_1.c.x, global1.a.e), Struct_4(arg_3.a, Struct_1(global3.x, global1.a.e, global4.b, arg_3.b.b)), arg_3.b)).d)).c, !(_wgslsmith_f_op_f32(select(1504f, 229f, true)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + arg_3.a.x))));
    var var_1 = arg_3;
    let var_2 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(arg_3.b.b, global1.a.e, var_1.b.d)), firstTrailingBit(-vec3<i32>(arg_1.d, global4.a.e, 0i))), _wgslsmith_add_i32(_wgslsmith_mult_i32(var_1.b.d, -64834i), arg_1.b) & 14825i), global1.a.e, 2147483647i, ~(_wgslsmith_sub_i32(-49645i, abs(global4.a.e)) | countOneBits(2147483647i)));
    var var_3 = _wgslsmith_add_vec3_i32(~vec3<i32>(15931i, global1.a.e, global1.a.e), abs(_wgslsmith_add_vec3_i32(vec3<i32>(global4.a.e, func_4(Struct_2(var_1.b.a, false, vec2<bool>(false, true), false, arg_3.b.b), Struct_4(vec2<f32>(global2.x, var_1.a.x), arg_3.b), arg_1).b, global1.a.e), vec3<i32>(_wgslsmith_mult_i32(0i, global1.a.e), global4.a.e, _wgslsmith_sub_i32(-37952i, -15026i)))));
    return Struct_3(Struct_2(!arg_3.b.c.x, true, vec2<bool>(any(global4.b.xz), all(arg_1.c.yz)), true, _wgslsmith_sub_i32(-35099i, -countOneBits(2147483647i))), !arg_3.b.c, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!func_1(_wgslsmith_dot_vec3_u32(u_input.c, ~u_input.c), vec4<bool>(true, !global1.c, true, false)));
    global4 = func_6(~(vec4<u32>(~u_input.d, 47418u, u_input.a.x, 1u) ^ select(vec4<u32>(u_input.b, u_input.d, u_input.a.x, 4294967295u) & vec4<u32>(u_input.c.x, 4294967295u, u_input.a.x, u_input.c.x), vec4<u32>(1u, u_input.d, u_input.b, u_input.c.x), true)), func_5(global4.b.yx, func_4(func_2(global4.a, Struct_3(Struct_2(global1.c, global4.c, global1.b.xx, false, 37061i), global4.b, global4.a.c.x)), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-762f, global2.x)), Struct_1(global4.c, global1.a.e, global1.b, -1i)), Struct_1(true, _wgslsmith_dot_vec3_i32(vec3<i32>(-226i, global4.a.e, global4.a.e), vec3<i32>(global4.a.e, 12561i, global4.a.e)), select(vec3<bool>(global3.x, false, true), global1.b, vec3<bool>(global4.b.x, true, false)), i32(-1i) * -2147483647i))), any(!global4.b), Struct_4(global2.yz, func_5(!func_2(Struct_2(true, global3.x, global4.a.c, global4.c, global1.a.e), Struct_3(global4.a, global1.b, false)).c, Struct_1(!global3.x, global4.a.e << (0u % 32u), global4.b, global1.a.e))));
    global1 = func_6(~(~countOneBits(vec4<u32>(27675u, u_input.a.x, 0u, 1u))) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 0u ^ u_input.b, _wgslsmith_div_u32(0u, u_input.a.x), ~u_input.a.x), abs(select(vec4<u32>(30630u, u_input.b, 33771u, 49505u), vec4<u32>(u_input.b, 1u, 17521u, u_input.b), global3.x))), func_4(Struct_2(~22890i == ~global4.a.e, false, global4.a.c, true & global3.x, global4.a.e), Struct_4(global2.zz, Struct_1(false, -global4.a.e, global4.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global4.a.e), vec2<i32>(global1.a.e, global4.a.e)))), Struct_1(!select(global1.b.x, false, true), _wgslsmith_mod_i32(global4.a.e, 0i), vec3<bool>(select(false, global4.b.x, false), true, global4.c), global4.a.e)), true & func_3(), Struct_4(vec2<f32>(-818f, -1617f), Struct_1(any(vec2<bool>(global4.a.d, false)), 68809i, select(global1.b, global4.b, any(vec3<bool>(true, false, false))), -func_4(global4.a, Struct_4(global2.zw, Struct_1(global3.x, global1.a.e, global4.b, -1360i)), Struct_1(global3.x, global1.a.e, global1.b, -40579i)).b)));
    var var_1 = !(!global1.b);
    global2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(428f, global2.x)), -450f)), _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -340f)))))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(151f, global2.x)))))), _wgslsmith_f_op_f32(-1000f * global2.x), _wgslsmith_f_op_f32(f32(-1f) * -550f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_u32(u_input.c.x, ~u_input.b)), _wgslsmith_f_op_f32(floor(-734f)));
}

