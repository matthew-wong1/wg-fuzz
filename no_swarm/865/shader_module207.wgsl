struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false));

var<private> global2: Struct_2 = Struct_2(vec2<bool>(false, false), -1314f, false, Struct_1(-549f, 1167f));

var<private> global3: vec4<f32> = vec4<f32>(-1340f, -560f, -2133f, 286f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> f32 {
    var var_0 = u_input.b;
    let var_1 = 4294967295u;
    global0 = ~(~select(~max(vec4<u32>(64881u, 1u, global0.x, var_1), vec4<u32>(0u, var_1, global0.x, u_input.c)), vec4<u32>(~10588u, var_1 << (12009u % 32u), 0u, firstTrailingBit(global0.x)), true));
    global2 = Struct_2(vec2<bool>(global2.a.x, !select(true, !global2.a.x, any(global2.a))), -576f, any(select(!vec4<bool>(true, true, global2.a.x, global2.a.x), !select(vec4<bool>(global2.a.x, true, false, false), vec4<bool>(global2.c, global2.a.x, false, global2.c), false), vec4<bool>(true, global2.a.x, !global2.c, all(vec3<bool>(true, global2.a.x, global2.a.x))))), global2.d);
    global1 = array<vec3<bool>, 28>();
    return 239f;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    let var_0 = ~(~(~global0.x) | ~select(36691u, 162478u, arg_0.x)) | ~firstTrailingBit(u_input.c);
    let var_1 = vec4<i32>(u_input.a | _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a | -1i, min(u_input.a, u_input.a), u_input.a), u_input.a), firstLeadingBit(abs(abs(~u_input.a))), _wgslsmith_mod_i32(-u_input.a, firstTrailingBit(~max(u_input.a, u_input.a))), _wgslsmith_div_i32(~(~(i32(-1i) * -1i)), u_input.a));
    let var_2 = !select(!select(vec4<bool>(false, false, global2.c, arg_0.x), select(vec4<bool>(true, false, true, global2.a.x), vec4<bool>(false, true, arg_0.x, arg_0.x), true), vec4<bool>(true, false, true, arg_0.x)), !select(select(vec4<bool>(false, true, arg_0.x, true), vec4<bool>(true, arg_0.x, global2.c, true), false), !vec4<bool>(false, arg_0.x, global2.a.x, arg_0.x), select(vec4<bool>(true, false, true, global2.c), vec4<bool>(false, false, global2.a.x, false), false)), !(!(!vec4<bool>(false, global2.c, true, true))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_1.a, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.a, 2323f), _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_div_f32(arg_1.a, _wgslsmith_div_f32(1730f, arg_2.x)))));
    let var_4 = global2.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-185f + _wgslsmith_f_op_f32(-1058f * -1606f)), var_3.a.x, false)))) + global2.d.a);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = !any(select(!vec4<bool>(global2.c, global2.c, global2.a.x, global2.a.x), !vec4<bool>(global2.a.x, global2.c, global2.a.x, global2.c), global2.a.x)) & true;
    let var_1 = true;
    var var_2 = Struct_3(vec4<f32>(global3.x, _wgslsmith_f_op_f32(func_4(!vec3<bool>(var_0, true, global2.a.x), Struct_1(791f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec2_f32(-vec2<f32>(249f, global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.x))) * _wgslsmith_f_op_f32(floor(634f))), -1300f));
    var var_3 = -_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(0i, 1i)) ^ -29658i, -5551i, _wgslsmith_mod_i32(~8560i, u_input.a), u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(u_input.a), _wgslsmith_div_i32(-24126i, u_input.a), ~1i, u_input.a), (vec4<i32>(-8599i, u_input.a, u_input.a, -31810i) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 35602u, 84265u, arg_1.x), vec4<u32>(global0.x, arg_1.x, 2363u, global0.x)) % vec4<u32>(32u))));
    global2 = Struct_2(vec2<bool>(true, any(select(select(vec4<bool>(var_1, true, true, true), vec4<bool>(true, true, true, global2.c), vec4<bool>(true, global2.c, true, var_1)), vec4<bool>(var_1, global2.a.x, var_1, true), var_0))), _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -620f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -734f) * -592f))), var_0 | var_0, Struct_1(global3.x, 1145f));
    return Struct_2(vec2<bool>(any(!select(vec4<bool>(global2.a.x, var_0, var_1, true), vec4<bool>(true, global2.c, true, var_0), vec4<bool>(var_0, global2.c, true, false))), all(select(vec2<bool>(true, true), global2.a, global2.a))), _wgslsmith_f_op_f32(-arg_0.a.x), select(var_1, var_1, true), Struct_1(-1000f, _wgslsmith_div_f32(global2.d.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-434f - arg_0.a.x), _wgslsmith_f_op_f32(-2447f + arg_0.a.x))))));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32((vec2<i32>(0i, 33086i) & select(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(7904i, u_input.a), global2.c)) ^ (vec2<i32>(u_input.a, 57418i) << (~vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))), vec2<i32>(1i & abs(u_input.a), -5949i)), _wgslsmith_div_vec2_i32(-vec2<i32>(13632i, 2147483647i), vec2<i32>(~1i, select(reverseBits(u_input.a), _wgslsmith_add_i32(8380i, 30497i), any(global1[_wgslsmith_index_u32(32904u, 28u)])))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1555f, arg_0.d.a, -226f, -425f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-292f, 1000f, 320f, global3.x) - vec4<f32>(-551f, arg_0.d.b, 1052f, global2.b)), global2.b > 186f)))));
    global1 = array<vec3<bool>, 28>();
    let var_2 = ~u_input.c;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1042f, -1619f), _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-853f * _wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(4294967295u, 28u)], Struct_1(arg_0.b, global3.x), var_1.a.yy))))))));
    return Struct_1(1005f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.x * -618f))))));
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    global1 = array<vec3<bool>, 28>();
    var var_0 = func_2(Struct_3(_wgslsmith_f_op_vec4_f32(arg_3.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_2.a, vec4<f32>(arg_2.a.x, global2.b, -442f, arg_2.a.x)))))), vec2<u32>(global0.x, global0.x));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-772f - arg_0.d.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    let var_2 = Struct_1(_wgslsmith_div_f32(-2212f, var_0.d.b), _wgslsmith_f_op_f32(func_5(arg_0).a * _wgslsmith_f_op_f32(1343f - -1856f)));
    global2 = func_2(arg_3, global0.zz | vec2<u32>(u_input.c ^ firstLeadingBit(arg_1), ~firstTrailingBit(u_input.b)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-arg_3.a));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = ~u_input.c;
    global1 = array<vec3<bool>, 28>();
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.d.a, -783f, arg_0.a, -230f), vec4<f32>(arg_1.b, -1481f, -123f, arg_0.a), false)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.d.b, arg_0.b, global2.b, 1000f))))), vec4<f32>(_wgslsmith_f_op_f32(-global2.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(global2.b * global2.d.a)), _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -710f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(832f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -454f, 311f, 794f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, -921f, -1376f, global2.d.b))))));
    global1 = array<vec3<bool>, 28>();
    return func_2(arg_3, max(~global0.yz, global0.xx));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    global1 = array<vec3<bool>, 28>();
    global0 = ~min(~countOneBits(vec4<u32>(u_input.c, 32596u, 4294967295u, u_input.b)), reverseBits(reverseBits(vec4<u32>(38878u, 36597u, u_input.b, global0.x))));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_0, _wgslsmith_f_op_vec4_f32(-arg_0))));
    let var_0 = func_7(global2.d, global2.d, arg_0.x, func_6(Struct_2(vec2<bool>(global2.c, global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(183f * -518f)), _wgslsmith_f_op_f32(global2.d.a * global2.b) > _wgslsmith_f_op_f32(f32(-1f) * -185f), func_5(func_2(Struct_3(vec4<f32>(-998f, -813f, -840f, global3.x)), global0.yw))), ~(~global0.x), Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_0)))), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(global3.x, arg_0.x), -283f, _wgslsmith_f_op_f32(-279f + arg_0.x)))));
    var var_1 = var_0.c;
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.b, global2.b)))), _wgslsmith_f_op_f32(round(3209f)))), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(-select(vec4<i32>(45098i, -17017i, 26317i, u_input.a), vec4<i32>(u_input.a, 31801i, u_input.a, -2147483647i), vec4<bool>(false, true, false, true)), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-57i, u_input.a, u_input.a, -26355i), vec4<i32>(u_input.a, u_input.a, -8087i, u_input.a)), abs(u_input.a), -28991i)), -_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.a, 20680i, u_input.a, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, 24457i), vec4<bool>(global2.a.x, false, true, global2.c)), -vec4<i32>(-17708i, 22614i, 2147483647i, 9248i))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a)));
    let var_3 = Struct_1(global2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2.d.b)), global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2)))));
    global1 = array<vec3<bool>, 28>();
    let var_4 = var_3;
    let var_5 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - -936f)))), -942f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-549f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, global3.x, global2.d.a, var_3.a) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, var_4.b, var_1.a, var_2) * vec4<f32>(182f, -508f, 1500f, global3.x)))))));
    let var_6 = _wgslsmith_f_op_f32(var_5.a.x - global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(var_1.b.x), i32(-1i) * -1341i, i32(-1i) * -2147483647i, u_input.a) >> (select(vec4<u32>(37559u, ~33435u, _wgslsmith_add_u32(u_input.c, u_input.b), 77284u), ~(~vec4<u32>(4294967295u, global0.x, 1u, global0.x)), select(vec4<bool>(global2.c, true, global2.a.x, global2.c), vec4<bool>(false, global2.a.x, true, true), any(vec3<bool>(global2.c, false, global2.a.x)))) % vec4<u32>(32u)), select(_wgslsmith_clamp_vec3_i32(var_1.b.wyx, -(var_1.b.yzw | vec3<i32>(-19406i, 28932i, var_1.b.x)), -select(var_1.b.wyy, var_1.b.yyw, global2.a.x)), var_1.b.xyx, all(global2.a)), ~_wgslsmith_mod_u32(43367u, _wgslsmith_sub_u32(4294967295u, ~u_input.c)));
}

