struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(545f, 1691f), vec2<f32>(-364f, -932f), 369f);

var<private> global1: bool = true;

var<private> global2: array<i32, 14> = array<i32, 14>(0i, -1i, 2147483647i, i32(-2147483648), 1723i, 0i, 44797i, 15276i, 1i, 0i, -20994i, -2938i, 9649i, 10439i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global2 = array<i32, 14>();
    var var_0 = vec3<u32>(u_input.c, _wgslsmith_mod_u32(1u, u_input.c) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 14049u, select(10130u, u_input.b.x, true), u_input.c), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(9521u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(56400u, 24228u, u_input.b.x, 66870u)), vec4<u32>(4294967295u, 15388u, u_input.b.x, 1u) | vec4<u32>(19485u, u_input.b.x, u_input.c, u_input.b.x))) % 32u), _wgslsmith_mult_u32(u_input.c, 18511u));
    var var_1 = vec2<f32>(859f, arg_0.b.x);
    let var_2 = _wgslsmith_f_op_f32(ceil(arg_3.c));
    global1 = any(vec4<bool>(u_input.b.x <= (var_0.x >> (0u % 32u)), true, max(global2[_wgslsmith_index_u32(var_0.x, 14u)], -23951i) < global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, var_0.x), vec4<u32>(u_input.c, 63649u, var_0.x, u_input.b.x)), 14u)], true)) | false;
    return 762f;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(1000f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_1(global0.b, vec2<f32>(global0.b.x, 630f), global0.c), Struct_1(vec2<f32>(global0.a.x, global0.b.x), vec2<f32>(global0.b.x, global0.a.x), global0.b.x), Struct_1(vec2<f32>(-1000f, global0.a.x), vec2<f32>(-276f, 748f), global0.c), Struct_1(global0.b, vec2<f32>(376f, -291f), global0.c))))) * global0.a.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.a, global0.a)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a.x, -1000f), _wgslsmith_f_op_vec2_f32(trunc(global0.b)), !vec2<bool>(var_0, var_0))))), global0.b, _wgslsmith_f_op_f32(round(global0.b.x)));
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1731f, var_1.c, true))), _wgslsmith_f_op_f32(exp2(var_1.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.b.x + 394f), _wgslsmith_f_op_f32(trunc(689f)))) - vec2<f32>(-597f, -2132f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b.x, -388f))))), _wgslsmith_f_op_f32(-602f + var_1.c))));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_1.b), vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(abs(-928f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - _wgslsmith_f_op_f32(round(502f))));
    global0 = var_1;
    return Struct_1(vec2<f32>(474f, 1f), vec2<f32>(global0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.c, _wgslsmith_f_op_f32(-var_1.b.x))), -941f)), _wgslsmith_f_op_f32(1f * var_1.c));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32, arg_3: vec3<i32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(global0.a, _wgslsmith_f_op_vec2_f32(global0.a - vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_2)), global0.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.x, global0.b.x), global0.a))), 1190f);
    let var_1 = func_2();
    global0 = var_0;
    var var_2 = var_1;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global0.c)), _wgslsmith_f_op_f32(329f + _wgslsmith_f_op_f32(min(2394f, -611f))))) - _wgslsmith_f_op_f32(-702f + _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(1361f - 1836f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.c, -2644f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1397f)) + global0.a.x)));
    return ~676i;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a.x, -288f, global0.b.x))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-838f, -616f, 388f))))))));
    var var_1 = func_4(func_2(), reverseBits(~(u_input.b | abs(vec3<u32>(u_input.c, u_input.b.x, u_input.c)))), 1246f, ~vec3<i32>(_wgslsmith_sub_i32(-30110i, global2[_wgslsmith_index_u32(reverseBits(u_input.b.x), 14u)]), max(~global2[_wgslsmith_index_u32(1u, 14u)], 1i), u_input.d));
    var var_2 = true;
    var var_3 = u_input.d;
    let var_4 = func_2();
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    global1 = any(!vec4<bool>(~u_input.b.x == ~arg_1.x, any(!vec3<bool>(arg_2.x, false, arg_2.x)), !arg_2.x && select(arg_2.x, true, false), arg_2.x | arg_2.x));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1555f)), -562f, -552f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, global0.c, -550f) - vec3<f32>(-872f, 1126f, global0.a.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, global0.a.x) - vec3<f32>(-1307f, 209f, var_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(965f, var_0, global0.b.x)), vec3<f32>(-152f, -1000f, -2470f), vec3<bool>(arg_2.x, false, arg_2.x)))), !vec3<bool>(arg_2.x, true, arg_2.x))));
    global0 = Struct_1(var_1.yx, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1202f, _wgslsmith_f_op_f32(-647f - -1936f)) + vec2<f32>(146f, _wgslsmith_f_op_f32(-global0.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2660f, -281f) - vec2<f32>(var_1.x, -2483f)) * vec2<f32>(var_0, arg_0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x))))));
    let var_2 = false;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = vec2<u32>(var_0, 1u) | u_input.b.zy;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.a.x, -1000f))))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_div_f32(global0.a.x, global0.b.x))), -608f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -702f), 1321f))), _wgslsmith_f_op_f32(trunc(global0.a.x)));
    var var_3 = func_5(func_1(), u_input.b.zx >> (~select(~vec2<u32>(8443u, u_input.b.x), ~vec2<u32>(40000u, var_1.x), true) % vec2<u32>(32u)), !(!vec2<bool>(false, all(vec3<bool>(false, false, false)))), var_0);
    let var_4 = var_2.a.x;
    var var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(649f, var_2.b.x), var_3.b)), vec2<f32>(2100f, global0.c), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.x, -606f), var_2.a))))), _wgslsmith_f_op_f32(select(func_2().b.x, -324f, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(abs(firstLeadingBit(firstLeadingBit(vec4<u32>(var_1.x, 18296u, 4294967295u, var_1.x)))), ~abs(~vec4<u32>(32166u, 12481u, 4294967295u, 10765u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(sign(425f)))), func_5(func_2(), u_input.b.xy, !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), firstTrailingBit(var_0)).a.x), firstLeadingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(-66840i, 2147483647i, global2[_wgslsmith_index_u32(var_1.x, 14u)]), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(var_0, 14u)], u_input.e, -42707i), vec3<i32>(-2147483647i, 0i, -2147483647i)), vec3<i32>(0i, 0i, u_input.d)))), firstTrailingBit(~(vec2<u32>(u_input.c, var_0) ^ vec2<u32>(var_1.x, var_1.x))));
}

