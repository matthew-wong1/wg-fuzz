struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec3<f32> {
    var var_0 = vec4<u32>(u_input.a.x, 17037u, ~30670u, 4294967295u);
    global0 = array<Struct_4, 2>();
    let var_1 = select(firstLeadingBit(_wgslsmith_div_vec3_i32(max(~vec3<i32>(-4450i, 2147483647i, -32911i), vec3<i32>(0i, 2147483647i, 0i) << (var_0.wzz % vec3<u32>(32u))), vec3<i32>(countOneBits(-2147483647i), min(10461i, 1i), 1i))), -min(reverseBits(vec3<i32>(1i, 1i, 1i)), vec3<i32>(-2147483647i, _wgslsmith_mult_i32(37143i, 0i), reverseBits(87630i))), false);
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(713f * 162f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1372f - 1086f))), 1f)))));
    let var_3 = Struct_2(min(var_1.x, reverseBits(-(~(-36864i)))), vec4<f32>(var_2.x, var_2.x, -885f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_2.x)), 2164f, any(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(var_2.x)))))));
    return var_3.b.ywy;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: vec3<bool>) -> Struct_5 {
    let var_0 = vec2<u32>(41162u, u_input.a.x);
    let var_1 = _wgslsmith_f_op_f32(-712f * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_2 = -1i;
    var_2 = firstLeadingBit(-1i);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, -239f), _wgslsmith_f_op_vec3_f32(vec3<f32>(2770f, -491f, var_1) * vec3<f32>(-765f, var_1, -1174f))))));
    return Struct_5(vec3<bool>((arg_0 == arg_1.x) || arg_2.x, arg_0, all(vec4<bool>(arg_2.x, true, arg_0, true))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: Struct_4) -> Struct_2 {
    global0 = array<Struct_4, 2>();
    global0 = array<Struct_4, 2>();
    var var_0 = true;
    global0 = array<Struct_4, 2>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))));
    return Struct_2(arg_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(980f, 173f, 334f, 345f)))));
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(~firstLeadingBit(-abs(vec4<i32>(22001i, -1i, -17300i, -1i))), func_2(true, vec3<bool>(true, true, true), vec3<bool>(true, u_input.a.x < ~u_input.a.x, true)), global0[_wgslsmith_index_u32(u_input.a.x, 2u)]);
    var_0 = Struct_2(_wgslsmith_clamp_i32(2147483647i, var_0.a, -(10573i | firstTrailingBit(var_0.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(177f, _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(-var_0.b)), true)));
    var var_1 = _wgslsmith_dot_vec4_i32(~(-_wgslsmith_add_vec4_i32(-vec4<i32>(var_0.a, var_0.a, 5272i, -22340i), ~vec4<i32>(-69509i, var_0.a, 0i, 64201i))), -abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(28856i, var_0.a, -1i, -2147483647i), vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, 0i, var_0.a, var_0.a), vec4<i32>(2147483647i, var_0.a, var_0.a, -2147483647i)))));
    global0 = array<Struct_4, 2>();
    global0 = array<Struct_4, 2>();
    return Struct_3(true);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_4 {
    let var_0 = max(-_wgslsmith_dot_vec3_i32(abs(_wgslsmith_div_vec3_i32(arg_1, arg_1)), vec3<i32>(arg_1.x, -29971i, arg_1.x)), ~arg_1.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -935f) - _wgslsmith_div_f32(1321f, arg_2.a.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_f_op_f32(-arg_2.a.x)))))));
    let var_2 = _wgslsmith_clamp_u32(~(_wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x) ^ ~1u), _wgslsmith_div_u32(~u_input.a.x, 30148u), _wgslsmith_dot_vec3_u32(~(~u_input.a), vec3<u32>(~u_input.a.x, u_input.a.x, 4294967295u)) >> (u_input.a.x % 32u));
    var var_3 = arg_1.zz;
    var_3 = arg_1.xx;
    return global0[_wgslsmith_index_u32(u_input.a.x, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), ~_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(1i, 1i, 1i)), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(0i, 2147483647i, 37620i))), -firstTrailingBit(vec3<i32>(-42861i, -2147483647i, 2147483647i))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1672f, 1594f, -352f))) + vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-751f, -820f, -359f))))), Struct_2(2147483647i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-705f, -1164f, 1000f, 1531f))))))));
    let var_1 = select(!(!vec4<bool>(true, select(false, false, false), any(vec3<bool>(true, false, true)), var_0.a > var_0.a)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, false))), vec4<bool>(-var_0.a >= -1i, true, true, any(vec2<bool>(false, true)) && true), !(!func_2(true, vec3<bool>(true, true, true), vec3<bool>(true, false, true)).a.x)), true);
    global0 = array<Struct_4, 2>();
    let var_2 = var_1.x;
    var var_3 = Struct_1(func_4(vec4<i32>(_wgslsmith_mult_i32(var_0.a, var_0.a), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, var_0.a, 37714i), vec3<i32>(var_0.a, 2147483647i, var_0.a)), var_0.a), var_0.a, 5487i), func_2(all(vec2<bool>(var_2, false)), select(!var_1.yxy, !vec3<bool>(var_2, false, var_2), false), vec3<bool>(any(var_1.yy), all(var_1.yw), select(true, var_1.x, false))), global0[_wgslsmith_index_u32(0u, 2u)]).b.xyx);
    let var_4 = func_5(func_1(), select(countOneBits(vec3<i32>(~var_0.a, ~var_0.a, 0i)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a, var_0.a, -49389i) << (u_input.a % vec3<u32>(32u)), vec3<i32>(var_0.a, 1i, 38971i))), var_2), Struct_1(_wgslsmith_f_op_vec3_f32(-var_3.a)), Struct_2(-54598i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, -991f, 1547f, var_3.a.x) + vec4<f32>(1429f, 740f, var_3.a.x, var_3.a.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.a.x, var_3.a.x, 814f, var_3.a.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.a.x, var_3.a.x, var_3.a.x, 357f), vec4<f32>(-272f, 559f, 237f, var_3.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(36360u, 110364u));
}

