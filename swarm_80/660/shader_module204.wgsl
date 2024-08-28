struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(41047u, -1799f, 165u, false);

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(29447u, 551f, 0u, false), Struct_1(1u, 1000f, 15184u, true), Struct_1(1u, 860f, 113653u, false), Struct_1(0u, 1147f, 25561u, false), Struct_1(1u, -1351f, 167378u, false), Struct_1(156500u, 449f, 66721u, false), Struct_1(20563u, -407f, 1u, true), Struct_1(4294967295u, -738f, 4294967295u, true), Struct_1(1u, -966f, 0u, false), Struct_1(1u, -1992f, 21759u, true), Struct_1(1u, -264f, 0u, true), Struct_1(1u, -1142f, 0u, true), Struct_1(4294967295u, 952f, 14986u, false), Struct_1(39121u, 241f, 21725u, true), Struct_1(4294967295u, 543f, 1049u, true), Struct_1(8397u, -875f, 1454u, true), Struct_1(84021u, -359f, 0u, true), Struct_1(11853u, -159f, 0u, true), Struct_1(1u, 617f, 33122u, true), Struct_1(46928u, -681f, 3559u, true), Struct_1(80161u, 329f, 0u, true), Struct_1(4294967295u, -1216f, 7754u, true), Struct_1(28198u, -774f, 12192u, false), Struct_1(0u, 438f, 4294967295u, true), Struct_1(1u, -195f, 1u, false));

var<private> global4: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-524f, _wgslsmith_f_op_f32(-1562f + _wgslsmith_f_op_f32(trunc(arg_2))), -494f))));
    var var_1 = Struct_2(arg_2, Struct_1(global4.a.a >> (firstTrailingBit(_wgslsmith_div_u32(arg_3, global4.a.a)) % 32u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(580f + _wgslsmith_f_op_f32(floor(arg_0.c.b))), _wgslsmith_f_op_f32(round(513f)), global4.a.d | !global2.d)), 90977u, !(!(global0.x > 41688i))), arg_0.b);
    let var_2 = Struct_1(~16415u, var_1.b.b, 0u, true && any(vec4<bool>(true, arg_0.c.d, select(global2.d, arg_0.c.d, global2.d), all(vec2<bool>(global4.a.d, true)))));
    let var_3 = var_2.d;
    var var_4 = abs(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.c, u_input.a), vec2<u32>(u_input.b.x, arg_0.c.c)), 0u));
    return arg_0.c;
}

fn func_1() -> i32 {
    global3 = array<Struct_1, 25>();
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1429f);
    var var_0 = global3[_wgslsmith_index_u32(u_input.a, 25u)];
    global2 = func_2(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4.a.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b - var_0.b) + _wgslsmith_div_f32(global4.a.b, var_0.b))), global4.a, global4.a), ~(~u_input.c), 1798f, 0u);
    return u_input.c.x;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>) -> vec3<i32> {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b, 497f) + _wgslsmith_f_op_f32(f32(-1f) * -687f)))), -146f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1376f, 2072f) - _wgslsmith_f_op_f32(763f - global2.b)))))));
    global4 = Struct_3(global4.a);
    global4 = Struct_3(func_2(Struct_2(-870f, func_2(Struct_2(-2305f, global4.a, Struct_1(1u, var_1.x, 4294967295u, global2.d)), vec3<i32>(-1i, global0.x, -1i), -204f, 0u), func_2(Struct_2(var_1.x, global4.a, Struct_1(u_input.b.x, -546f, u_input.a, global4.a.d)), vec3<i32>(u_input.c.x, 26099i, 56844i), global2.b, arg_0.x << (1u % 32u))), u_input.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1606f + -1191f))), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 78154u, 0u), arg_1) | arg_1.x)));
    global1 = global4.a.b;
    return abs(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, u_input.c.x), _wgslsmith_mult_i32(global0.x << (u_input.a % 32u), u_input.c.x ^ 15584i), min(_wgslsmith_dot_vec4_i32(vec4<i32>(30515i, -2147483647i, -48i, 13175i), vec4<i32>(u_input.c.x, -11365i, u_input.c.x, global0.x)), global0.x)), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.c.x, u_input.c.x, -u_input.c.x, func_1());
    let var_1 = Struct_2(-1307f, global4.a, global3[_wgslsmith_index_u32(global4.a.c, 25u)]);
    global1 = var_1.b.b;
    var var_2 = func_3(u_input.b.zwz, vec4<u32>(_wgslsmith_mult_u32(0u, 35459u), 4294967295u, ~(u_input.b.x & func_2(var_1, u_input.c, 1096f, u_input.b.x).c), 40716u));
    var var_3 = func_3(~_wgslsmith_mod_vec3_u32(u_input.b.wyy, ~_wgslsmith_clamp_vec3_u32(u_input.b.xxx, vec3<u32>(global4.a.c, 4612u, var_1.b.a), u_input.b.yzx)), vec4<u32>(global2.c, ~_wgslsmith_div_u32(global4.a.a, var_1.b.a), 22372u, _wgslsmith_dot_vec2_u32(u_input.b.yw, ~u_input.b.zx))).zx;
    let var_4 = Struct_3(func_2(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -145f), func_2(Struct_2(-839f, Struct_1(19300u, 2052f, 4294967295u, global2.d), global3[_wgslsmith_index_u32(0u, 25u)]), vec3<i32>(var_3.x, var_3.x, u_input.c.x), _wgslsmith_f_op_f32(trunc(global2.b)), _wgslsmith_dot_vec3_u32(u_input.b.ywy, vec3<u32>(global2.a, 0u, global2.c))), global3[_wgslsmith_index_u32(~(~22330u), 25u)]), select(min(countOneBits(vec3<i32>(var_3.x, 0i, u_input.c.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -1i, -24627i), var_0.wzw)), u_input.c, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.b.c, ~global4.a.c), 38345u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(584f, 557f, global4.a.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(297f, global4.a.b, global2.b)))))), u_input.b.yy, ~vec3<u32>(~global2.a, 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 0u, global4.a.c, global4.a.c)), ~u_input.b)));
}

