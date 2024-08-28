struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: vec4<f32> = vec4<f32>(2565f, 505f, 755f, 1933f);

var<private> global2: vec4<f32> = vec4<f32>(1261f, -1238f, -960f, -127f);

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<bool>(true, true, true), vec2<u32>(0u, 12822u), vec3<i32>(1i, -1i, 2147483647i), vec4<i32>(-2664i, i32(-2147483648), 1i, i32(-2147483648))), Struct_1(vec3<bool>(true, true, true), vec2<u32>(1u, 19515u), vec3<i32>(-317i, 38565i, -8109i), vec4<i32>(-23158i, -1i, -5964i, -1i)), Struct_1(vec3<bool>(true, false, true), vec2<u32>(48601u, 75070u), vec3<i32>(2147483647i, -67290i, 2147483647i), vec4<i32>(-1i, -1i, i32(-2147483648), 7829i)), Struct_1(vec3<bool>(true, false, true), vec2<u32>(0u, 4294967295u), vec3<i32>(-1i, 2147483647i, -1i), vec4<i32>(-34160i, i32(-2147483648), 0i, 2147483647i)), Struct_1(vec3<bool>(true, true, true), vec2<u32>(1u, 4294967295u), vec3<i32>(38066i, -988i, i32(-2147483648)), vec4<i32>(-16041i, -1i, 0i, 0i)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(0u, 0u), vec3<i32>(0i, 0i, -10464i), vec4<i32>(15934i, 1i, i32(-2147483648), 1i)), Struct_1(vec3<bool>(false, true, true), vec2<u32>(4294967295u, 45727u), vec3<i32>(4701i, 1i, -67145i), vec4<i32>(i32(-2147483648), -1i, -28761i, 2147483647i)), Struct_1(vec3<bool>(true, false, true), vec2<u32>(106415u, 0u), vec3<i32>(2147483647i, 0i, 1i), vec4<i32>(-62964i, 18828i, 2147483647i, -1i)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = countOneBits(u_input.b);
    let var_1 = Struct_2(global3[_wgslsmith_index_u32(13320u, 8u)]);
    global2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.x + global2.x), global2.x, _wgslsmith_f_op_f32(max(-586f, global2.x)), _wgslsmith_f_op_f32(923f * 186f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1031f, _wgslsmith_f_op_f32(max(global2.x, global2.x)), 853f, _wgslsmith_f_op_f32(global2.x * 250f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -494f), _wgslsmith_f_op_f32(step(global2.x, -1000f)), -2097f, -351f)))));
    let var_2 = vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, u_input.b), _wgslsmith_add_vec2_i32(-var_1.a.d.zx, arg_0.a.d.zz)) == -41861i, !(!any(vec3<bool>(false, arg_0.a.a.x, var_1.a.a.x)) && any(select(vec2<bool>(true, arg_0.a.a.x), var_1.a.a.yx, var_1.a.a.yy))), (global1.x <= global1.x) & false);
    let var_3 = ~firstLeadingBit(39788i);
    return var_1.a.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<i32>) -> i32 {
    var var_0 = 18211u;
    var var_1 = select(~_wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a, 14u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(14515u, 1u, u_input.a, 91158u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), 14u)], _wgslsmith_dot_vec4_i32(vec4<i32>(44092i, arg_2.x, u_input.b, -43230i), vec4<i32>(arg_2.x, arg_2.x, -11383i, -32170i))), func_3(Struct_2(Struct_1(vec3<bool>(arg_1, false, arg_1), vec2<u32>(4294967295u, u_input.a), vec3<i32>(global0[_wgslsmith_index_u32(1u, 14u)], arg_2.x, u_input.b), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 14u)], arg_2.x, 9871i, -32241i))))), reverseBits(~(select(vec3<i32>(-2147483647i, 22321i, 2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(68548u, 14u)], 36502i, arg_2.x), vec3<bool>(false, arg_1, arg_1)) | -vec3<i32>(52203i, -46294i, 1i))), select(select(vec3<bool>(!arg_1, arg_1, arg_1), vec3<bool>(true, !arg_1, all(vec4<bool>(arg_1, false, arg_1, true))), false), select(vec3<bool>(select(arg_1, false, arg_1), !arg_1, arg_1), vec3<bool>(true, true, true), select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, arg_1, false), select(vec3<bool>(true, arg_1, false), vec3<bool>(false, arg_1, false), true))), vec3<bool>(any(vec3<bool>(arg_1, arg_1, true)), true, any(vec2<bool>(arg_1, false)))));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + arg_0.x)))))), -274f, _wgslsmith_f_op_f32(select(596f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -601f)))), !(!(!arg_1)))), 594f);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(step(global2.x, global2.x)), -1779f, -491f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, global1.x, -198f, global1.x), vec4<f32>(-713f, global2.x, 1000f, global1.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, global2.x, arg_0.x, global1.x), vec4<f32>(-378f, -1325f, arg_0.x, global1.x), vec4<bool>(false, false, arg_1, arg_1))), arg_1)))));
    var var_2 = global1.x;
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(select(max(u_input.b, var_1.x), ~81429i, arg_1), var_1.x), ~(-1i)) >> (u_input.a % 32u);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2) -> f32 {
    global3 = array<Struct_1, 8>();
    let var_0 = arg_2.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(385f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) + global2.x))), _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-576f - -1171f) * global2.x)))));
    let var_2 = all(!select(select(vec4<bool>(false, true, arg_2.a.a.x, false), vec4<bool>(true, arg_0, arg_2.a.a.x, var_0.a.x), vec4<bool>(arg_0, arg_0, var_0.a.x, true)), vec4<bool>(true, arg_2.a.a.x, arg_0, false), global2.x != global1.x)) | false;
    var var_3 = Struct_1(select(vec3<bool>(var_0.a.x, true, !var_2 | arg_2.a.a.x), select(select(vec3<bool>(true, var_0.a.x, true), select(vec3<bool>(false, true, arg_0), arg_2.a.a, arg_2.a.a.x), true), !arg_2.a.a, false), !(!select(arg_2.a.a, vec3<bool>(true, var_0.a.x, true), arg_2.a.a))), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.b.x, 213u), arg_2.a.b), _wgslsmith_div_vec3_i32(-arg_2.a.d.wxx, vec3<i32>(32428i, func_2(_wgslsmith_f_op_vec3_f32(-global2.zyx), var_0.a.x, -vec2<i32>(-1i, u_input.b)), ~arg_2.a.c.x)), ~var_0.d);
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    global2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1063f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(all(vec2<bool>(true, false)), _wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(19845u, 14u)], -2147483647i), vec2<i32>(-32763i, 44632i)), Struct_2(global3[_wgslsmith_index_u32(u_input.a, 8u)])))), _wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-689f, -172f, true)) + _wgslsmith_f_op_f32(-global2.x))))));
    var var_1 = vec2<f32>(188f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, ~_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a, 14u)])), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<u32>(u_input.a, u_input.a), vec3<i32>(u_input.b, 0i, global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec4<i32>(global0[_wgslsmith_index_u32(13077u, 14u)], 1i, u_input.b, global0[_wgslsmith_index_u32(11289u, 14u)]))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1315f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -551f, var_1.x, 361f)), vec4<f32>(196f, global2.x, global1.x, 1654f))), vec4<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), -1000f, _wgslsmith_f_op_f32(1000f - -750f), _wgslsmith_f_op_f32(abs(global1.x))))))));
    var_0 = _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -910f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(218f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~_wgslsmith_mult_u32(u_input.a, 42839u)), ~select(~u_input.a, firstTrailingBit(u_input.a), all(vec3<bool>(true, true, false))), u_input.a, 61537u));
}

