struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: Struct_3;

var<private> global2: bool = true;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> vec3<bool> {
    let var_0 = ~_wgslsmith_div_vec4_u32(select(countOneBits(vec4<u32>(41541u, u_input.b, global0[_wgslsmith_index_u32(4294967295u, 12u)], 1u)), abs(vec4<u32>(u_input.b, 2400u, 0u, 1u)), vec4<bool>(true, true, true, true)), ~abs(vec4<u32>(u_input.b, u_input.b, 20393u, u_input.b))) << (countOneBits(vec4<u32>(u_input.b & 0u, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(65925u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)]), 12u)], global0[_wgslsmith_index_u32(1u, 12u)], u_input.b) ^ abs(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 12u)], 12u)], 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67472u, 12u)], 12u)], global0[_wgslsmith_index_u32(334u, 12u)]), vec4<u32>(0u, global0[_wgslsmith_index_u32(0u, 12u)], 8024u, u_input.b)))) % vec4<u32>(32u));
    var var_1 = Struct_4(vec2<f32>(2403f, _wgslsmith_div_f32(-165f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) - _wgslsmith_f_op_f32(arg_0.x * arg_0.x)))), Struct_2(max(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, global1.d.a.x, 0i), min(global1.b.a, global1.c.zzx)), ~(~vec3<i32>(-2147483647i, 32973i, global1.c.x)))), 82242i);
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1417f)), _wgslsmith_f_op_f32(trunc(arg_0.x)), 367f)));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~var_0.xw), vec2<u32>(~4426u, global0[_wgslsmith_index_u32(0u, 12u)])), 12u)];
    global0 = array<u32, 12>();
    return vec3<bool>(true, all(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), false);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<bool>) -> bool {
    global1 = Struct_3(Struct_2(vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(global1.c, global1.c)), min(_wgslsmith_sub_i32(u_input.a, 2147483647i), u_input.a), select(46357i, global1.d.a.x & 20336i, arg_1.x))), global1.d, -global1.c, global1.d);
    global1 = Struct_3(Struct_2(~_wgslsmith_add_vec3_i32(global1.c.yww, vec3<i32>(u_input.a, global1.c.x, u_input.a))), global1.b, global1.c, Struct_2(~(~global1.d.a)));
    global2 = u_input.a >= 22691i;
    global2 = _wgslsmith_f_op_f32(-1f) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2040f - -1000f), -172f, 2147483647i <= u_input.a)) + 285f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1147f, _wgslsmith_f_op_f32(638f - 379f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-675f, -680f) * _wgslsmith_div_f32(712f, 157f)))));
    let var_0 = firstLeadingBit(global1.c);
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14131u, 12u)], 12u)], 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)]) >> (_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, 31999u, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(56547u, 61996u, global0[_wgslsmith_index_u32(3624u, 12u)]), vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.b, 12u)], 9740u))) % vec3<u32>(32u)), vec3<u32>(4294967295u, u_input.b, 23211u)) >= ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b, 1u)), ~(vec2<u32>(4294967295u, 75745u) ^ vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(1u, 12u)])));
}

fn func_2(arg_0: u32) -> Struct_2 {
    global2 = false || func_4(vec2<bool>(3969u < ~arg_0, true), select(!func_3(vec4<f32>(-1145f, 690f, 721f, -719f), 2844i), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), true), vec3<bool>(true, true, true)));
    var var_0 = true;
    let var_1 = vec4<bool>(false, any(vec2<bool>(false, true)), all(func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1484f), 372f, 143f, -1239f), firstLeadingBit(u_input.a) << (4294967295u % 32u))), true);
    let var_2 = u_input.b;
    global1 = Struct_3(Struct_2(vec3<i32>(countOneBits(-2147483647i), 3951i, _wgslsmith_add_i32(global1.a.a.x, global1.b.a.x))), Struct_2(~(vec3<i32>(-1i) * -global1.c.yxx)), vec4<i32>(min(~_wgslsmith_div_i32(u_input.a, 2147483647i), -(~0i)), u_input.a, _wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_mult_i32(countOneBits(-25075i), -16756i)), global1.c.x), global1.a);
    return global1.d;
}

fn func_1() -> i32 {
    global2 = select(min(global1.d.a.x, u_input.a) == ~(-9305i), !(-1i != (_wgslsmith_dot_vec4_i32(global1.c, global1.c) ^ firstLeadingBit(-1i))), false);
    global1 = Struct_3(global1.a, global1.d, _wgslsmith_mod_vec4_i32(-vec4<i32>(-global1.a.a.x, abs(2147483647i), u_input.a << (28667u % 32u), global1.a.a.x), vec4<i32>(1i, global1.a.a.x, global1.a.a.x, ~1i) & global1.c), func_2(countOneBits(~1u)));
    global2 = true;
    var var_0 = 0i;
    let var_1 = Struct_5(_wgslsmith_mult_i32(u_input.a, -24076i), Struct_1(1149f, vec2<bool>((-85238i >> (global0[_wgslsmith_index_u32(0u, 12u)] % 32u)) >= ~0i, any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-939f + 1741f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), firstTrailingBit(max(_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(48629u, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)]), vec2<u32>(0u, global0[_wgslsmith_index_u32(25882u, 12u)])), vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], 38592u)))), Struct_1(_wgslsmith_f_op_f32(-745f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1340f))))), vec2<bool>(!func_4(vec2<bool>(false, true), vec3<bool>(false, true, true)), !any(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -963f)) + 1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2366f, -146f, -168f, 987f))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1821f, -272f, -1454f, 1158f)))), _wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 12u)], 12u)]) & vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 1871u), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<u32>(~1u, _wgslsmith_add_u32(12871u, u_input.b)))));
    return _wgslsmith_clamp_i32(~(-abs(_wgslsmith_mod_i32(var_1.a, -38449i))), u_input.a, abs(u_input.a & (_wgslsmith_sub_i32(57660i, u_input.a) & u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-812f, 563f)), vec2<f32>(-1209f, _wgslsmith_f_op_f32(205f * 1737f)))))), Struct_2(vec3<i32>(-1i) * -(~global1.b.a)), func_1());
    global2 = func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1671f, _wgslsmith_f_op_f32(step(var_0.a.x, 1186f)), -348f, _wgslsmith_div_f32(-142f, var_0.a.x))) * vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-770f + var_0.a.x) + _wgslsmith_div_f32(var_0.a.x, var_0.a.x)), _wgslsmith_div_f32(-104f, 652f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.x * 321f))))), func_1()).x;
    var var_1 = global0[_wgslsmith_index_u32(1u, 12u)];
    var var_2 = -1000f;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-1869f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * 402f) * _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))), var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1311f, var_0.a.x)), var_0.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-171f * 459f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.a.x, -740f)), _wgslsmith_f_op_f32(-1495f + -1115f), var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-743f, var_0.a.x, -2420f, 420f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.x, var_0.a.x, 1237f, 368f), vec4<f32>(-1000f, -1532f, var_0.a.x, 476f)))))))));
    let var_4 = vec2<i32>(global1.c.x, ~1i) >> (~_wgslsmith_add_vec2_u32(vec2<u32>(36642u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 12u)], 12u)]), (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 37082u) | vec2<u32>(u_input.b, 31253u)) ^ ~vec2<u32>(0u, 0u)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.a, -abs(max(min(vec2<i32>(-1i, u_input.a), var_0.b.a.zz), vec2<i32>(1i, var_0.b.a.x))), 2147483647i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -1065f, -773f) + vec3<f32>(var_3.x, -1118f, var_3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1330f, -334f, -576f) + vec3<f32>(var_0.a.x, -324f, -701f))) - var_3.zxx))));
}

