struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(-u_input.c, 32761i, -2147483647i), firstLeadingBit((-vec3<i32>(u_input.c, u_input.c, 0i) << (~u_input.b % vec3<u32>(32u))) >> (u_input.b % vec3<u32>(32u))));
    let var_1 = Struct_4(~select(u_input.b, ~vec3<u32>(1u, u_input.d, 68604u), select(vec3<bool>(true, true, true), arg_1.wzx, vec3<bool>(true, true, arg_1.x))), var_0.yx, false, ~u_input.a, firstTrailingBit(vec3<i32>(-41863i, firstTrailingBit(u_input.c) | min(u_input.c, 2147483647i), -39219i)));
    let var_2 = arg_0;
    var var_3 = var_1;
    var_3 = Struct_4(select(~(~vec3<u32>(var_1.d, var_3.d, 72973u)), ~vec3<u32>(var_3.a.x, 0u, 49139u), arg_1.zxz) & _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(var_3.a.x, 4294967295u), 265u, _wgslsmith_dot_vec3_u32(u_input.b, var_1.a)), (var_3.a ^ vec3<u32>(var_3.d, 1u, u_input.a)) | (u_input.b ^ var_1.a)), vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_sub_i32(-39087i, u_input.c)), -abs(0i)), ~(~2147483647i)), arg_1.x | true, var_3.d, vec3<i32>(_wgslsmith_clamp_i32(select(~0i, var_3.b.x, !var_3.c), 26657i, -18020i), 1i << (u_input.b.x % 32u), ~max(-17454i, ~(-90882i))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -668f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_2.a))))))));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = Struct_1(-513f, vec3<f32>(-625f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-408f, 124f) * _wgslsmith_f_op_f32(func_3(Struct_1(1340f, vec3<f32>(-382f, -1138f, 1269f), vec4<f32>(-770f, 316f, -822f, -230f)), vec4<bool>(false, true, false, true)))))), -138f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-994f))), _wgslsmith_f_op_f32(round(-1184f)), 476f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1010f))))))));
    var var_1 = firstLeadingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b), u_input.b));
    var var_2 = _wgslsmith_f_op_f32(-892f - _wgslsmith_f_op_f32(-var_0.b.x));
    global0 = 1310u;
    let var_3 = -2147483647i;
    return ~(131658u ^ countOneBits(~u_input.d));
}

fn func_1() -> vec3<bool> {
    global0 = func_2(u_input.c ^ -u_input.c);
    var var_0 = -594f;
    var var_1 = vec3<bool>(true, true, true);
    var var_2 = Struct_2(!var_1.x || any(select(!vec3<bool>(var_1.x, true, false), select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x), true), true)), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1054f, -799f)) - _wgslsmith_f_op_f32(ceil(-1401f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-964f, -363f, -1031f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(799f, -789f, 1031f), vec3<f32>(-1856f, -1848f, 637f), var_1.x))))), _wgslsmith_div_vec4_f32(vec4<f32>(-1380f, -1122f, _wgslsmith_f_op_f32(-627f - 179f), -1965f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-264f, -908f, 401f, -128f) - vec4<f32>(259f, 1318f, -193f, 244f)))));
    let var_3 = 9106u;
    return select(!vec3<bool>(any(select(vec4<bool>(true, true, var_2.a, true), vec4<bool>(var_2.a, false, true, var_1.x), vec4<bool>(var_1.x, var_2.a, true, var_1.x))), all(var_1.zz) && any(vec4<bool>(true, var_2.a, false, var_2.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c), vec4<i32>(u_input.c, -2408i, 0i, 2147483647i)) <= u_input.c), vec3<bool>(any(select(vec2<bool>(false, true), var_1.zx, true)), var_2.a, var_2.a), any(vec4<bool>(any(var_1.zy), false, !var_1.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(all(func_1()), all(select(vec3<bool>(false, false, true), func_1(), true)), false, all(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true)))), select(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false))), !vec4<bool>(true, true, 1i <= u_input.c, false), vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), select(true, any(vec2<bool>(false, true)), true))), true);
    var var_1 = true;
    var var_2 = Struct_1(1364f, vec3<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1664f) - _wgslsmith_f_op_f32(abs(-434f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1123f, -803f))), 592f, _wgslsmith_f_op_f32(-981f * _wgslsmith_f_op_f32(f32(-1f) * -920f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1295f)))))));
    var_0 = select(!(!select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true), var_0.x), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x), true))), vec4<bool>(true, all(var_0.ywz), any(!(!var_0.yy)), all(select(vec2<bool>(var_0.x, var_0.x), var_0.xx, any(vec4<bool>(false, var_0.x, var_0.x, true))))), !select(select(select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, true)), vec4<bool>(true, false, true, var_0.x), vec4<bool>(true, false, true, var_0.x)), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), !(!vec4<bool>(true, false, true, var_0.x))));
    var_1 = true;
    var var_3 = vec4<i32>(u_input.c, _wgslsmith_add_i32(u_input.c, ~(~u_input.c) >> ((u_input.b.x >> (~1u % 32u)) % 32u)), 18170i, -41448i);
    let var_4 = vec3<u32>(u_input.d, abs(u_input.b.x), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.b.x, var_2.a, var_2.b.x))))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_4.x, _wgslsmith_mod_u32(u_input.b.x, 13494u | u_input.d)), ~vec2<u32>(_wgslsmith_dot_vec2_u32(var_4.xy, vec2<u32>(var_4.x, u_input.b.x)), var_4.x)));
}

