struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: Struct_4;

var<private> global2: Struct_3;

var<private> global3: vec2<bool>;

var<private> global4: array<vec3<u32>, 23>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec3<f32> {
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    let var_0 = _wgslsmith_clamp_u32(33474u, _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(40862u, global2.a.b.a), u_input.b.wy)), firstTrailingBit(u_input.b.xz)), ~(~_wgslsmith_mult_u32(1u << (0u % 32u), global2.a.b.a)));
    var var_1 = _wgslsmith_mult_u32(reverseBits(29681u), global2.a.b.a);
    var var_2 = !(!(!select(vec3<bool>(false, false, global2.d), select(vec3<bool>(false, global1.a.x, global2.d), global1.a, false), select(vec3<bool>(global3.x, true, global1.a.x), vec3<bool>(global3.x, global1.a.x, global1.a.x), vec3<bool>(global3.x, global2.d, false)))));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global2.b + vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1504f * global1.b.x))), _wgslsmith_f_op_f32(min(global2.b.x, 1f)), _wgslsmith_f_op_f32(min(global1.b.x, 1f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b) - _wgslsmith_f_op_vec3_f32(round(global1.b)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.b), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(124f, 751f, arg_1))), vec3<bool>(true, true, var_2.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1106f, global2.b.x, arg_1))))));
}

fn func_2(arg_0: vec4<u32>) -> vec3<f32> {
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    var var_0 = vec2<u32>(4294967295u, abs(abs(_wgslsmith_sub_u32(arg_0.x, 0u) | arg_0.x)));
    var_0 = (~arg_0.xy ^ vec2<u32>(~1u, 0u)) >> (u_input.d.xz % vec2<u32>(32u));
    var var_1 = Struct_3(Struct_2(-(reverseBits(global2.a.b.b) >> (_wgslsmith_clamp_u32(7829u, u_input.d.x, 34347u) % 32u)), global2.a.b, global2.a.c), global2.c.zww, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.b.x - -1259f), 676f, -1495f, _wgslsmith_f_op_f32(1606f + global1.b.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.c) + global2.c)))), !(!global2.d));
    return _wgslsmith_f_op_vec3_f32(var_1.c.xyz + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(-var_1.a.a, _wgslsmith_f_op_f32(abs(-950f)), global2.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-278f, 1000f, 356f)))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>) -> Struct_3 {
    global4 = array<vec3<u32>, 23>();
    global0 = array<i32, 28>();
    let var_0 = Struct_3(global2.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2389f), arg_0.b.x, 137f), global2.c, arg_0.a.x);
    global2 = var_0;
    let var_1 = var_0;
    return Struct_3(var_0.a, _wgslsmith_div_vec3_f32(vec3<f32>(global1.b.x, var_1.c.x, global1.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_1.b), vec3<f32>(275f, var_0.c.x, arg_0.b.x))))), var_0.c, var_0.d);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_1) -> vec4<f32> {
    global2 = Struct_3(arg_2.a, _wgslsmith_f_op_vec3_f32(arg_2.c.wzz - global1.b), _wgslsmith_f_op_vec4_f32(global2.c + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c))), true);
    let var_0 = func_4(Struct_4(select(!vec3<bool>(global3.x, global2.d, global1.a.x), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)] < arg_3.b, false, false), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(~vec4<u32>(arg_2.a.b.a, 0u, arg_2.a.b.a, 32983u))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global2.b))))), _wgslsmith_mult_vec4_i32(vec4<i32>((u_input.c.x >> (arg_0 % 32u)) << (u_input.b.x % 32u), arg_3.b, 0i >> (arg_2.a.c.a % 32u), 30786i), max(-select(vec4<i32>(arg_3.b, 1i, global2.a.a, global2.a.b.b), vec4<i32>(global2.a.b.b, global0[_wgslsmith_index_u32(u_input.d.x, 28u)], 0i, -28781i), arg_2.d), select(vec4<i32>(2147483647i, global2.a.c.b, global2.a.c.b, u_input.c.x), min(vec4<i32>(0i, arg_2.a.a, 0i, global0[_wgslsmith_index_u32(arg_3.a, 28u)]), vec4<i32>(9194i, u_input.c.x, arg_2.a.a, 2147483647i)), select(vec4<bool>(true, global2.d, true, true), vec4<bool>(global2.d, global2.d, global3.x, true), global2.d)))));
    var var_1 = var_0;
    global2 = func_4(Struct_4(vec3<bool>(!any(vec2<bool>(global1.a.x, var_1.d)), arg_2.d, select(global3.x, true, global1.a.x | global2.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-757f, 1352f, -173f)))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1199f), -713f, 930f))), _wgslsmith_sub_vec4_i32(min(vec4<i32>(-36030i, arg_2.a.b.b, u_input.c.x, 0i) >> (u_input.b % vec4<u32>(32u)), vec4<i32>(2147483647i, 17322i, 2147483647i, var_0.a.a)), reverseBits(min(vec4<i32>(var_0.a.c.b, global0[_wgslsmith_index_u32(arg_3.a, 28u)], global0[_wgslsmith_index_u32(50243u, 28u)], 67398i), vec4<i32>(-12991i, arg_3.b, 3970i, var_0.a.c.b)))) & reverseBits(vec4<i32>(5800i >> (arg_2.a.c.a % 32u), arg_3.b, var_0.a.b.b, _wgslsmith_mod_i32(arg_2.a.a, arg_3.b))));
    global2 = func_4(Struct_4(global1.a, _wgslsmith_f_op_vec3_f32(-global1.b)), vec4<i32>(~select(2147483647i, var_1.a.c.b, false), _wgslsmith_add_i32(u_input.c.x, -1i), ~arg_2.a.b.b >> ((u_input.d.x >> (4294967295u % 32u)) % 32u), select(1i, u_input.c.x, var_0.a.b.a >= 0u)) | vec4<i32>(-24460i, _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(20751u, 28u)], u_input.c.x), vec3<i32>(global2.a.a, u_input.c.x, global0[_wgslsmith_index_u32(0u, 28u)])), arg_2.a.a, -1i));
    return global2.c;
}

fn func_5(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_5, arg_3: vec2<bool>) -> vec4<f32> {
    let var_0 = firstTrailingBit(arg_0.x);
    var var_1 = func_4(Struct_4(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1310f, -1410f, arg_2.a.c.x))) * _wgslsmith_f_op_vec3_f32(sign(global2.b)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(select(min(0i, u_input.c.x), ~(-7784i), true), _wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, 33935i), max(arg_1, 2147483647i)), min(1i, min(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(50021u, 28u)])), 1i), vec4<i32>(arg_2.a.a.b.b, -abs(15711i), -_wgslsmith_add_i32(arg_1, 8654i), -_wgslsmith_mod_i32(11694i, arg_1)), -abs(vec4<i32>(global2.a.c.b, arg_2.a.a.a, 0i, 28652i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(25740i, -14541i, -2147483647i, global0[_wgslsmith_index_u32(arg_2.a.a.b.a, 28u)]), firstLeadingBit(vec4<i32>(arg_2.a.a.c.b, 26570i, arg_1, 0i))))).a.b;
    global4 = array<vec3<u32>, 23>();
    global3 = !vec2<bool>(true && global1.a.x, global2.d);
    let var_2 = arg_0;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a.c) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.c.x, 443f, -610f, global2.c.x), global2.c))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global2.a.c.a, 456f, arg_2.a, Struct_1(4325u, -1i))) * arg_2.a.c) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global2.c))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-481f + 174f) - _wgslsmith_f_op_f32(f32(-1f) * -364f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -961f, _wgslsmith_f_op_f32(sign(600f))), arg_2.a.c, !vec4<bool>(true, arg_3.x && arg_2.a.d, true, true))), global2.d));
}

fn func_6(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_4 {
    let var_0 = arg_0.yxy;
    var var_1 = -vec4<i32>(_wgslsmith_mod_i32(-57173i, u_input.c.x), -u_input.c.x | ~(-1i), _wgslsmith_mult_i32(-28239i, ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, arg_2.a), 28u)]), global2.a.a);
    let var_2 = 94530u;
    let var_3 = ~_wgslsmith_div_vec3_u32(vec3<u32>(~var_2, u_input.b.x, 4294967295u), vec3<u32>(~13560u, min(arg_2.a, 52467u), ~var_2)) & _wgslsmith_sub_vec3_u32(global4[_wgslsmith_index_u32(var_2, 23u)], ~global4[_wgslsmith_index_u32(30746u, 23u)]);
    let var_4 = any(!select(vec3<bool>(global2.d, true, global1.a.x), select(global1.a, global1.a, global3.x), !global1.a)) | func_4(Struct_4(!select(global1.a, global1.a, global1.a), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 177f, global2.c.x)))), ~(-(~vec4<i32>(global2.a.a, global0[_wgslsmith_index_u32(u_input.d.x, 28u)], global2.a.c.b, 1i)))).d;
    return Struct_4(vec3<bool>(true, false, global3.x), global2.c.zyy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_mod_u32(select(~global2.a.b.a, 67672u ^ u_input.a, false), ~global2.a.b.a >> (~80135u % 32u)));
    let var_1 = 2846i;
    var var_2 = !(!select(vec2<bool>(true, !global1.a.x), vec2<bool>(global1.a.x, !global1.a.x), vec2<bool>(true & global3.x, false)));
    global1 = func_6(_wgslsmith_f_op_vec4_f32(func_5(u_input.b.yw, 1i, Struct_5(Struct_3(Struct_2(global2.a.a, Struct_1(u_input.d.x, -20877i), Struct_1(0u, -2147483647i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, 1749f, 574f)), _wgslsmith_f_op_vec4_f32(func_1(1u, -1096f, Struct_3(Struct_2(-22286i, global2.a.b, global2.a.c), vec3<f32>(-544f, global2.c.x, global2.c.x), vec4<f32>(-820f, 693f, -948f, -406f), true), Struct_1(global2.a.b.a, global0[_wgslsmith_index_u32(18334u, 28u)]))), any(vec2<bool>(global1.a.x, true)))), vec2<bool>(true, true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(488f))))), Struct_1(18012u, 56799i));
    var var_3 = vec4<f32>(-632f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-513f * -159f) + -480f) - _wgslsmith_f_op_vec3_f32(func_2(~u_input.b)).x) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(429f - _wgslsmith_f_op_f32(f32(-1f) * -309f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(518f)) + _wgslsmith_f_op_f32(round(120f))))));
}

