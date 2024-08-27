struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: u32;

var<private> global2: Struct_2;

var<private> global3: array<vec2<i32>, 25>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_3(Struct_2(arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1395f, -190f, 1192f, arg_1.b.x) - _wgslsmith_f_op_vec4_f32(global2.b - global2.b))), Struct_1(arg_3.b.x), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.d, -674f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.d, 217f)) - global2.b.x)), vec2<i32>(arg_1.e.x ^ arg_0, -2147483647i)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(arg_0, -1i), firstTrailingBit(0i)), 916i));
    var var_1 = vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(select(2047f, -923f, any(vec4<bool>(all(vec3<bool>(arg_2.x, arg_2.x, false)), arg_2.x, any(arg_2), all(vec3<bool>(arg_2.x, true, arg_2.x)))))));
    let var_2 = vec4<bool>(true, all(arg_2), all(!arg_2.zyw), true);
    let var_3 = arg_2.x;
    global1 = ~(~(~arg_1.a));
    return 1u;
}

fn func_2() -> Struct_4 {
    let var_0 = select(firstTrailingBit(~(-(global2.e | vec2<i32>(-14651i, -43211i)))), -global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.a | reverseBits(10230u), func_3(~(-11621i), Struct_2(28290u, vec4<f32>(681f, global2.d, global2.c.a, -1000f), global0[_wgslsmith_index_u32(4294967295u, 32u)], -978f, vec2<i32>(global2.e.x, -34443i)), vec4<bool>(true, true, true, true), Struct_2(0u, vec4<f32>(1073f, global2.d, global2.c.a, global2.c.a), global0[_wgslsmith_index_u32(global2.a, 32u)], 942f, global3[_wgslsmith_index_u32(0u, 25u)]))), 25u)], all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(any(vec4<bool>(true, false, false, false)), false), select(false, true, -15284i <= global2.e.x))));
    return Struct_4(~vec3<u32>(u_input.a, 0u, ~global2.a & global2.a), countOneBits(_wgslsmith_mod_u32(~reverseBits(global2.a), 32191u)), select(vec4<bool>(global2.e.x < -2147483647i, ~global2.a < abs(0u), true || any(vec3<bool>(true, false, false)), false), vec4<bool>(any(vec3<bool>(true, true, true)), true, u_input.a <= global2.a, any(vec3<bool>(false, false, false)) && all(vec2<bool>(false, true))), false), ~(~(~var_0.x)), Struct_2(u_input.a, _wgslsmith_f_op_vec4_f32(sign(global2.b)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-319f, -1013f)) - 1513f)), _wgslsmith_div_f32(global2.c.a, _wgslsmith_f_op_f32(719f - _wgslsmith_f_op_f32(-650f * global2.c.a))), -(~global2.e) >> ((~vec2<u32>(u_input.a, global2.a) >> (firstLeadingBit(vec2<u32>(global2.a, u_input.a)) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -211f))), arg_0.e.d) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, 384f, false))), _wgslsmith_f_op_f32(min(arg_0.e.b.x, global2.c.a)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_1.zy + _wgslsmith_f_op_vec2_f32(arg_0.e.b.wy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(428f, arg_1.x)))))), !all(arg_0.c.zy)));
    let var_1 = global2.b;
    var var_2 = arg_0;
    var_2 = func_2();
    let var_3 = _wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(4294967295u, global2.a, abs(1u)));
    return Struct_2(_wgslsmith_dot_vec3_u32(arg_0.a, var_2.a), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(364f)) * _wgslsmith_f_op_f32(633f * 1894f)), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-arg_1.x)))), arg_0.e.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_1.x)))))), var_2.e.c, 585f, abs(vec2<i32>(0i >> (u_input.a % 32u), 0i)));
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1(Struct_4(vec3<u32>(u_input.a, arg_0.a, 1u), global2.a, vec4<bool>(false, true, true, false), 1i, arg_0), vec3<f32>(global2.b.x, 1000f, global2.c.a)).b.xxz * _wgslsmith_f_op_vec3_f32(-global2.b.yxz)))))));
    global0 = array<Struct_1, 32>();
    var var_1 = func_1(Struct_4(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(global2.a, 58059u, u_input.a >> (global2.a % 32u))), firstLeadingBit(10073u), select(vec4<bool>(true, true, select(true, false, true), true), vec4<bool>(1545f == global2.b.x, false, -583f < var_0.x, u_input.a >= 13728u), false), -1i, arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -999f, arg_0.d), vec3<f32>(-443f, global2.b.x, global2.d), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))) + _wgslsmith_f_op_vec3_f32(-global2.b.yxy)))).c;
    var var_2 = 4294967295u;
    let var_3 = Struct_4(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, ~1u, 56623u), reverseBits(vec3<u32>(~1u, _wgslsmith_mod_u32(77626u, 8406u), _wgslsmith_div_u32(u_input.a, 11219u)))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, 26485u) << (vec2<u32>(0u, arg_0.a) % vec2<u32>(32u)), ~vec2<u32>(56637u, 1u)), vec4<bool>(false, all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), func_2().c.x, false), ~arg_0.e.x, func_1(Struct_4(vec3<u32>(u_input.a, firstTrailingBit(19567u), func_3(4265i, arg_0, vec4<bool>(false, true, false, true), arg_0)), min(~82651u, 1u), vec4<bool>(true, select(false, true, true), all(vec4<bool>(false, true, false, false)), true), global2.e.x, Struct_2(1u, vec4<f32>(979f, var_0.x, 1396f, -793f), func_1(Struct_4(vec3<u32>(4294967295u, 4294967295u, u_input.a), 4294967295u, vec4<bool>(false, true, true, false), global2.e.x, Struct_2(37743u, vec4<f32>(-920f, arg_0.b.x, var_0.x, global2.b.x), global0[_wgslsmith_index_u32(u_input.a, 32u)], 276f, vec2<i32>(0i, -2147483647i))), global2.b.zyx).c, 1050f, _wgslsmith_div_vec2_i32(vec2<i32>(global2.e.x, 1i), global3[_wgslsmith_index_u32(global2.a, 25u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1782f + arg_0.b.x), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -607f)))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_3.e.b.x * -553f), var_3.e.d, arg_0.c.a, _wgslsmith_f_op_f32(f32(-1f) * -848f)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(var_3.e.b, vec4<f32>(var_0.x, 416f, 1690f, 297f))))))) + _wgslsmith_f_op_vec4_f32(global2.b + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1271f)) + _wgslsmith_f_op_f32(ceil(695f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.e.d, arg_0.d))), _wgslsmith_f_op_f32(max(-799f, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~22067u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_1(Struct_4(vec3<u32>(global2.a, u_input.a, global2.a), global2.a, vec4<bool>(true, false, false, true), -544i, Struct_2(u_input.a, vec4<f32>(global2.d, global2.b.x, global2.c.a, global2.d), global0[_wgslsmith_index_u32(global2.a, 32u)], -530f, vec2<i32>(-13475i, global2.e.x))), _wgslsmith_f_op_vec3_f32(max(global2.b.wxw, vec3<f32>(global2.c.a, global2.b.x, global2.d)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.b)))), Struct_1(465f), global2.d, select(_wgslsmith_add_vec2_i32(func_2().e.e, -_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, global2.e.x), global3[_wgslsmith_index_u32(u_input.a, 25u)])), vec2<i32>(~global2.e.x, global2.e.x) & global3[_wgslsmith_index_u32(func_1(Struct_4(vec3<u32>(global2.a, 1u, global2.a), 4294967295u, vec4<bool>(true, false, false, false), 0i, Struct_2(4359u, global2.b, global0[_wgslsmith_index_u32(u_input.a, 32u)], -403f, vec2<i32>(global2.e.x, 15042i))), _wgslsmith_f_op_vec3_f32(global2.b.ywy + global2.b.wzy)).a, 25u)], global2.d != global2.d));
    global2 = Struct_2(128725u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1157f, _wgslsmith_f_op_f32(global2.b.x - var_0.d), true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1258f))))), _wgslsmith_f_op_f32(round(1f)), global2.b.x), global2.c, global2.b.x, global2.e);
    var var_1 = global2.b.yxx;
    var var_2 = u_input.a;
    global2 = func_2().e;
    let var_3 = var_0.c;
    let var_4 = Struct_2(_wgslsmith_mod_u32(var_0.a, u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -779f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-172f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-293f * var_3.a))))), global2.c, -210f, _wgslsmith_clamp_vec2_i32(~(~global3[_wgslsmith_index_u32(10959u, 25u)]), firstLeadingBit(vec2<i32>(global2.e.x, 0i)), _wgslsmith_mod_vec2_i32(global3[_wgslsmith_index_u32(global2.a, 25u)] & var_0.e, var_0.e)) ^ ~func_1(func_2(), var_0.b.yyz).e);
    var var_5 = global2.a;
    let var_6 = Struct_3(var_4, -(vec2<i32>(-1i) * -vec2<i32>(var_4.e.x, 2147483647i)) >> (~(~vec2<u32>(var_0.a, var_4.a)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i) * -vec3<i32>(1i, _wgslsmith_mult_i32(1i, var_4.e.x), _wgslsmith_div_i32(51471i, 2147483647i)));
}

