struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<bool>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20>;

var<private> global1: array<u32, 16> = array<u32, 16>(1u, 11500u, 1407u, 0u, 26053u, 65520u, 26162u, 83914u, 1u, 4056u, 4294967295u, 58312u, 18950u, 0u, 3347u, 4294967295u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(172f, 333f)) - _wgslsmith_div_vec2_f32(vec2<f32>(838f, 592f), vec2<f32>(308f, 1140f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -125f), -1152f))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(224f, -679f, false)))), _wgslsmith_div_f32(-1124f, _wgslsmith_f_op_f32(f32(-1f) * -202f))), _wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29835u, 16u)], 16u)], 16u)], 16u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9863u, 16u)], 16u)], 16u)], 16u)]) >= global1[_wgslsmith_index_u32(14476u & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15055u, 16u)], 16u)], 16u)], 16u)]), vec2<u32>(5298u, 61950u)), 16u)])));
    var var_1 = Struct_2(vec4<i32>(select((-2147483647i | u_input.a) >> (_wgslsmith_clamp_u32(1415u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16212u) % 32u), -max(u_input.c.x, u_input.b), abs(8792i) >= (u_input.c.x >> (global1[_wgslsmith_index_u32(0u, 16u)] % 32u))), u_input.c.x, u_input.a, u_input.c.x), Struct_1(vec2<bool>(!all(vec3<bool>(true, true, false)), true), ~(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.c.x, u_input.a), vec4<i32>(36488i, -57737i, 55840i, u_input.a)) ^ reverseBits(vec4<i32>(2147483647i, u_input.c.x, 1i, u_input.b)))), vec2<bool>(any(vec4<bool>(true, var_0.a.x <= -983f, true, true)), true));
    var var_2 = Struct_5(vec2<f32>(_wgslsmith_div_f32(-161f, var_0.a.x), _wgslsmith_f_op_f32(trunc(-458f))));
    var_1 = Struct_2(vec4<i32>(countOneBits(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), u_input.c.yx), u_input.a, -23652i)), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.c.x, var_1.b.b.x)), abs(vec2<i32>(87353i, 2147483647i) >> (vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5209u, 16u)], 16u)], 16u)], 16u)], 4294967295u) % vec2<u32>(32u)))), ~countOneBits(var_1.a.x ^ -7219i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, 2147483647i, var_1.b.b.x), vec4<i32>(2147483647i, -2147483647i, var_1.a.x, u_input.b)) >> (1u % 32u)), Struct_1(select(var_1.c, select(vec2<bool>(true, true), var_1.c, var_1.c.x), !(!var_1.b.a.x)), -vec4<i32>(-var_1.b.b.x, _wgslsmith_dot_vec2_i32(var_1.a.wy, vec2<i32>(u_input.a, -1i)), 9532i, abs(u_input.b))), select(select(!vec2<bool>(true, var_1.b.a.x), !vec2<bool>(var_1.c.x, var_1.c.x), true), select(vec2<bool>(select(false, var_1.c.x, var_1.c.x), any(vec2<bool>(true, var_1.b.a.x))), var_1.b.a, select(var_1.c, select(vec2<bool>(true, var_1.b.a.x), vec2<bool>(var_1.b.a.x, var_1.b.a.x), vec2<bool>(false, true)), !var_1.b.a.x)), select(countOneBits(u_input.a) <= _wgslsmith_clamp_i32(var_1.b.b.x, -1i, 2147483647i), any(!var_1.c), all(!vec3<bool>(var_1.c.x, var_1.b.a.x, false)))));
    let var_3 = (abs(vec3<u32>(31729u, firstTrailingBit(global1[_wgslsmith_index_u32(12823u, 16u)]), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)] ^ 11259u)) & _wgslsmith_mult_vec3_u32(~abs(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], global1[_wgslsmith_index_u32(1u, 16u)])), select(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 4294967295u, 0u), ~vec3<u32>(30477u, 1u, 56503u), vec3<bool>(true, var_1.b.a.x, true)))) | vec3<u32>(33136u, ~(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)]), _wgslsmith_add_u32(countOneBits(global1[_wgslsmith_index_u32(1u, 16u)]), 44187u));
    return ~(var_3.x & var_3.x);
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: u32, arg_3: vec3<bool>) -> vec3<bool> {
    let var_0 = vec3<bool>(arg_0, arg_3.x, arg_0);
    global0 = array<Struct_4, 20>();
    var var_1 = _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_clamp_u32(abs(global1[_wgslsmith_index_u32(18749u, 16u)]), ~4294967295u, func_3()), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(43724u, global1[_wgslsmith_index_u32(5769u, 16u)]), vec2<u32>(global1[_wgslsmith_index_u32(arg_2, 16u)], global1[_wgslsmith_index_u32(arg_2, 16u)])), 0u))), ~firstLeadingBit(~vec2<u32>(global1[_wgslsmith_index_u32(arg_2, 16u)], arg_2)) | vec2<u32>(global1[_wgslsmith_index_u32(33464u, 16u)], firstLeadingBit(~63987u)));
    var var_2 = Struct_1(!select(select(vec2<bool>(var_0.x, false), select(vec2<bool>(true, arg_3.x), vec2<bool>(true, var_0.x), true), var_0.zz), vec2<bool>(var_0.x, true), !arg_0), max(abs(vec4<i32>(44709i, u_input.c.x, -2147483647i, u_input.c.x)) << (vec4<u32>(var_1.x, 91783u >> (0u % 32u), 4294967295u, select(0u, global1[_wgslsmith_index_u32(15312u, 16u)], false)) % vec4<u32>(32u)), firstLeadingBit(abs(~vec4<i32>(-904i, u_input.a, -19525i, u_input.a)))));
    var var_3 = Struct_2(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(-33578i, u_input.b, 38438i, var_2.b.x), -var_2.b), vec4<i32>(0i, u_input.c.x, ~u_input.b, u_input.a), vec4<i32>(_wgslsmith_mod_i32(var_2.b.x, u_input.b), _wgslsmith_dot_vec2_i32(var_2.b.ww, vec2<i32>(u_input.b, -26861i)), 0i, var_2.b.x >> (14684u % 32u))), firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.b, var_2.b.x, -2147483647i, 2147483647i))) & var_2.b), Struct_1(!vec2<bool>(var_2.a.x, all(vec4<bool>(false, false, true, true))), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.b.x, u_input.b, -46991i, u_input.a), reverseBits(vec4<i32>(-1i, 1i, u_input.b, -2147483647i)), vec4<i32>(var_2.b.x, var_2.b.x, var_2.b.x, 1i)) << (reverseBits(vec4<u32>(var_1.x, var_1.x, arg_2, var_1.x)) % vec4<u32>(32u))), !var_0.xx);
    return !var_0;
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> vec4<i32> {
    var var_0 = select(!vec3<bool>(_wgslsmith_f_op_f32(-670f - -538f) == _wgslsmith_f_op_f32(step(-1178f, -1000f)), any(select(vec3<bool>(true, arg_1.c.a.x, arg_1.c.a.x), vec3<bool>(arg_1.b.a.x, false, true), arg_1.b.a.x)), all(vec4<bool>(true, false, true, true))), vec3<bool>(select(arg_1.c.a.x, all(func_2(true, Struct_5(vec2<f32>(419f, -988f)), arg_1.a.x, vec3<bool>(arg_1.b.a.x, arg_1.c.a.x, arg_1.c.a.x))), all(!vec4<bool>(arg_1.b.a.x, false, arg_1.c.a.x, arg_1.b.a.x))), false, arg_1.b.a.x), select(!vec3<bool>(false, any(arg_1.c.a), false), vec3<bool>((1u > global1[_wgslsmith_index_u32(1u, 16u)]) && all(arg_1.b.a), true, arg_1.b.a.x), func_2(true, Struct_5(_wgslsmith_div_vec2_f32(vec2<f32>(-478f, -539f), vec2<f32>(2432f, 822f))), arg_0, vec3<bool>(true, !arg_1.c.a.x, true))));
    global0 = array<Struct_4, 20>();
    var var_1 = Struct_2(_wgslsmith_mod_vec4_i32(~arg_1.c.b, _wgslsmith_add_vec4_i32(arg_1.c.b, arg_1.c.b)), Struct_1(!arg_1.c.a, firstLeadingBit(firstTrailingBit(countOneBits(vec4<i32>(u_input.a, 2147483647i, -2147483647i, 2147483647i))))), !select(var_0.xz, vec2<bool>(true, true), any(var_0.zx)));
    let var_2 = Struct_1(var_0.xz, vec4<i32>(76658i, u_input.a, u_input.a, -48846i ^ u_input.a));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1293f * -671f)) + 658f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-707f, 674f))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f + -336f)) + -2442f))), 1062f);
    return vec4<i32>(u_input.b, -_wgslsmith_add_i32(var_1.a.x, 1i), u_input.a, ~var_1.b.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = vec2<bool>(!(_wgslsmith_f_op_f32(select(1312f, 587f, true)) < _wgslsmith_f_op_f32(-1000f + -1219f)) || true, true);
    let var_2 = Struct_2(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, var_0, 40730i, u_input.b), func_1(12325u, Struct_3(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5932u, 16u)], 16u)], 16u)], 16u)]), Struct_1(var_1, vec4<i32>(-42945i, u_input.c.x, 23322i, -4373i)), Struct_1(var_1, vec4<i32>(-1i, var_0, 4362i, 57324i))))) & select(min(min(vec4<i32>(9723i, -10622i, 39314i, u_input.b), vec4<i32>(var_0, u_input.c.x, 43018i, 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(-28303i, u_input.c.x, u_input.a, -1i), vec4<i32>(var_0, u_input.a, 23546i, u_input.c.x))), abs(vec4<i32>(u_input.b, 0i, 18885i, var_0)), vec4<bool>(!var_1.x, var_1.x, var_1.x, false && var_1.x)), Struct_1(!var_1, vec4<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, var_0), select(u_input.c.x, 1i, false)), firstTrailingBit(-2147483647i) >> (~0u % 32u), 2147483647i)), !vec2<bool>(true, any(vec3<bool>(false, false, var_1.x))));
    var var_3 = Struct_3(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(26069u, global1[_wgslsmith_index_u32(39492u, 16u)], global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15761u, 16u)], 16u)], 16u)], 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)], 16u)], var_1.x), 16u)]), global1[_wgslsmith_index_u32(13272u, 16u)]), ~_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 5275u), vec2<u32>(56000u, 1u))), var_2.b, var_2.b);
    global1 = array<u32, 16>();
    var var_4 = Struct_5(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1661f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(510f, -624f), _wgslsmith_f_op_f32(242f - 1262f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-select(max(vec2<i32>(var_2.b.b.x, 37540i), var_3.b.b.zw), u_input.c.xz << (vec2<u32>(global1[_wgslsmith_index_u32(var_3.a.x, 16u)], 0u) % vec2<u32>(32u)), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(var_4.a + var_4.a), var_3.a, var_2.a.xxz, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1305f, 111f) - vec2<f32>(1438f, -459f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1743f, 482f), _wgslsmith_f_op_vec2_f32(select(var_4.a, vec2<f32>(var_4.a.x, -1308f), var_3.b.a.x))))))));
}

