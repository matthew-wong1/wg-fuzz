struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<u32>(0u, 11911u, 54071u, 0u)), Struct_1(vec4<u32>(1u, 0u, 20682u, 44223u)), Struct_1(vec4<u32>(0u, 19687u, 0u, 23843u)), Struct_1(vec4<u32>(6835u, 0u, 39072u, 35225u)), Struct_1(vec4<u32>(0u, 33092u, 28890u, 4294967295u)), Struct_1(vec4<u32>(15086u, 1u, 1u, 38689u)), Struct_1(vec4<u32>(1u, 38012u, 20434u, 29432u)), Struct_1(vec4<u32>(1u, 89912u, 12105u, 0u)), Struct_1(vec4<u32>(59087u, 1u, 1u, 0u)), Struct_1(vec4<u32>(3684u, 74893u, 79757u, 4294967295u)), Struct_1(vec4<u32>(1u, 33240u, 7278u, 60816u)), Struct_1(vec4<u32>(24525u, 0u, 1u, 1u)), Struct_1(vec4<u32>(1u, 0u, 24383u, 1026u)), Struct_1(vec4<u32>(80395u, 4294967295u, 1u, 16764u)), Struct_1(vec4<u32>(84805u, 29715u, 1u, 0u)), Struct_1(vec4<u32>(0u, 88221u, 6430u, 23022u)), Struct_1(vec4<u32>(0u, 9226u, 1u, 0u)), Struct_1(vec4<u32>(23387u, 93157u, 4294967295u, 27124u)), Struct_1(vec4<u32>(42464u, 4294967295u, 54696u, 73561u)), Struct_1(vec4<u32>(0u, 1u, 10794u, 73549u)), Struct_1(vec4<u32>(4294967295u, 81567u, 54531u, 96449u)), Struct_1(vec4<u32>(55309u, 4294967295u, 561u, 0u)), Struct_1(vec4<u32>(4294967295u, 21496u, 1u, 15751u)));

var<private> global1: array<Struct_2, 4>;

var<private> global2: array<vec4<bool>, 24>;

var<private> global3: f32 = -784f;

var<private> global4: Struct_1 = Struct_1(vec4<u32>(0u, 4294967295u, 1u, 8353u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(ceil(1000f))) - _wgslsmith_f_op_f32(step(1076f, arg_0.d.x))));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global2 = array<vec4<bool>, 24>();
    global1 = array<Struct_2, 4>();
    global1 = array<Struct_2, 4>();
    let var_0 = Struct_3(Struct_2(false, global0[_wgslsmith_index_u32(arg_0.b.a.x, 23u)], global0[_wgslsmith_index_u32(~min(49837u, 4294967295u) << ((~0u | _wgslsmith_sub_u32(40733u, arg_0.b.a.x)) % 32u), 23u)], vec3<f32>(1040f, -2474f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.d.x * 893f)))), arg_0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-839f, arg_0.d.x)) * arg_0.d.x), arg_0, ~arg_0.b.a.x, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(~arg_0.c.a.x, select(9542u, 0u, true)), global4.a.x), global4.a.x, _wgslsmith_dot_vec2_u32(~global4.a.wx, ~vec2<u32>(arg_0.b.a.x, global4.a.x)) | 9146u));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1022f)) + -1477f) - -2321f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1)) - _wgslsmith_f_op_f32(f32(-1f) * -1387f))))));
}

fn func_1() -> Struct_2 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1034f, -261f))) + 904f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(Struct_2(true, Struct_1(vec4<u32>(0u, 125179u, global4.a.x, 1u)), Struct_1(vec4<u32>(4294967295u, global4.a.x, global4.a.x, 0u)), vec3<f32>(-1000f, -353f, -735f), false), 105f)), _wgslsmith_f_op_f32(step(839f, 906f)), true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-430f - 749f) + -982f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(global4.a.x, 4u)])))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1054f)), _wgslsmith_f_op_f32(f32(-1f) * -1155f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1903f))))))));
    var var_1 = global4.a.xw;
    let var_2 = vec3<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, false)))), _wgslsmith_sub_u32(max(~1u, ~global4.a.x), _wgslsmith_div_u32(_wgslsmith_add_u32(var_1.x, var_1.x), var_1.x)) >= _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global4.a.x, 64018u, 1u, 41789u), vec4<u32>(3023u, 4294967295u, global4.a.x, 4294967295u)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(global4.a, global4.a), select(global4.a, vec4<u32>(0u, 122523u, global4.a.x, 44634u), vec4<bool>(true, false, true, true))), 1u), false);
    global0 = array<Struct_1, 23>();
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.yz) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 559f) * var_0.ww))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.zw - _wgslsmith_f_op_vec2_f32(step(var_0.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -208f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -376f) * vec2<f32>(var_0.x, var_0.x))))), all(vec2<bool>(var_2.x, all(var_2))))));
    return global1[_wgslsmith_index_u32(var_1.x ^ ~52414u, 4u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = func_1().c;
    var var_1 = vec2<bool>(!any(select(!global2[_wgslsmith_index_u32(global4.a.x, 24u)], global2[_wgslsmith_index_u32(27164u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)])), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(arg_0.d.x * -2224f)) >= _wgslsmith_f_op_f32(ceil(func_1().d.x))));
    global4 = func_1().b;
    global4 = func_1().c;
    let var_2 = Struct_3(Struct_2(true, var_0, Struct_1(~(~vec4<u32>(0u, 104828u, 1u, arg_0.c.a.x))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d.x, arg_1.x, _wgslsmith_f_op_f32(1024f * 491f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(301f, -683f, 2013f)))), _wgslsmith_mod_u32(func_1().b.a.x, _wgslsmith_mult_u32(64542u, global4.a.x)) != 0u), _wgslsmith_f_op_f32(f32(-1f) * -387f), Struct_2(~0u < (arg_0.b.a.x >> (min(0u, 4294967295u) % 32u)), func_1().c, Struct_1(~vec4<u32>(global4.a.x, 24417u, 1u, 1u)), arg_0.d, (_wgslsmith_div_f32(arg_1.x, arg_0.d.x) > -921f) && arg_0.e), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, global4.a.x), vec2<u32>(var_0.a.x, global4.a.x)), var_0.a.xz), _wgslsmith_add_u32(~global4.a.x, reverseBits(arg_0.c.a.x))), global4.a.zxx);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(func_1(), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-645f - -509f), _wgslsmith_f_op_f32(955f + -2132f), 1396f, 226f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(963f, -645f, 309f, -1100f))), vec4<f32>(-1079f, 724f, -965f, -672f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(func_1().b.a.x, 4u)], -914f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1f)) * _wgslsmith_f_op_f32(f32(-1f) * -1316f))), func_1(), 1u, _wgslsmith_sub_vec3_u32(max(vec3<u32>(69062u, global4.a.x, 24043u), global4.a.ywx) << ((select(vec3<u32>(1u, 0u, global4.a.x), global4.a.wxw, vec3<bool>(false, false, false)) << (~global4.a.wxw % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(global4.a, ~global4.a), abs(~global4.a.x), global4.a.x)));
    global2 = array<vec4<bool>, 24>();
    let var_1 = var_0;
    var var_2 = global1[_wgslsmith_index_u32(99202u, 4u)];
    let var_3 = 0u;
    global4 = Struct_1(_wgslsmith_div_vec4_u32(select(var_0.a.b.a, abs(vec4<u32>(4294967295u, 1267u, var_0.d, 16581u)), vec4<bool>(!var_1.a.e, true, true, var_1.a.a)), ~func_4(var_0.c, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-404f, -565f, var_2.d.x, var_0.c.d.x)))).c.a));
    var var_4 = func_4(Struct_2(true, func_1().b, var_2.c, _wgslsmith_f_op_vec3_f32(-var_1.c.d), var_0.a.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.c.d.x, 855f, -384f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.a.d.x, var_0.b, var_2.d.x, -623f), vec4<f32>(-1291f, 2914f, var_1.a.d.x, 1316f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d.x, var_0.a.d.x, var_0.c.d.x, var_0.c.d.x) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.d.x, var_1.a.d.x, 182f, -848f)))))))));
    let var_5 = var_1.c.b;
    global0 = array<Struct_1, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a ^ _wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(u_input.a, -17828i)));
}

