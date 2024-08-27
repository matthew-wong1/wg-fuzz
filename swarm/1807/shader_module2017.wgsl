struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, false, false, false, true, false, true, false, false, false);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = ~abs(_wgslsmith_sub_vec3_u32(~firstLeadingBit(vec3<u32>(54191u, 17370u, 51972u)), vec3<u32>(~4294967295u, reverseBits(1u), 1u)));
    let var_1 = countOneBits(abs(u_input.b.x));
    let var_2 = Struct_5(var_1, ~max(13674u, var_0.x), arg_0.yx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0))));
    let var_3 = !vec4<bool>(global0[_wgslsmith_index_u32(35103u, 10u)], all(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(var_0.x, 10u)], true);
    global0 = array<bool, 10>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1340f))))), arg_0.x));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: f32) -> vec2<i32> {
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    var var_0 = Struct_2(vec2<i32>(_wgslsmith_add_i32(-63497i, countOneBits(u_input.b.x >> (4294967295u % 32u))), -43721i), Struct_1(arg_1.x, ~(~(~vec4<u32>(0u, arg_0, arg_0, 4294967295u))), abs(u_input.b), _wgslsmith_div_vec2_u32(countOneBits(firstTrailingBit(vec2<u32>(4294967295u, 88112u))), min(vec2<u32>(arg_0, 0u), vec2<u32>(39473u, 4294967295u)) >> (vec2<u32>(35631u, 0u) % vec2<u32>(32u))), select(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(26076u, 10u)], arg_1.x, arg_1.x), !vec4<bool>(global0[_wgslsmith_index_u32(2054u, 10u)], global0[_wgslsmith_index_u32(11142u, 10u)], true, global0[_wgslsmith_index_u32(0u, 10u)]), u_input.b.x >= 11737i), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), !vec4<bool>(arg_1.x, global0[_wgslsmith_index_u32(arg_0, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(6579u, 10u)]), arg_0 <= arg_0), select(true, arg_0 >= 68643u, !arg_1.x))), Struct_1(!arg_1.x, countOneBits(vec4<u32>(~arg_0, countOneBits(4294967295u), arg_0, ~arg_0)), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-1728i, 45301i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.a, u_input.a))), firstTrailingBit(vec2<u32>(arg_0, 0u)) & ~(~vec2<u32>(8132u, 1u)), select(select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(arg_0, 10u)]), select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 10u)], arg_1.x, global0[_wgslsmith_index_u32(arg_0, 10u)]), vec4<bool>(arg_1.x, true, arg_1.x, true), false), true), vec4<bool>(true, arg_1.x, false, true), !(!vec4<bool>(arg_1.x, true, arg_1.x, false)))));
    var var_1 = _wgslsmith_div_vec3_u32(~(~reverseBits(var_0.c.b.xxy)) ^ countOneBits(var_0.c.b.xzz & _wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 4294967295u, arg_0), var_0.b.b.xzy)), ~var_0.c.b.zxx);
    var_0 = Struct_2(vec2<i32>(i32(-1i) * -u_input.a, -2147483647i), var_0.c, var_0.c);
    return _wgslsmith_mult_vec2_i32(select(~(vec2<i32>(2147483647i, var_0.a.x) >> (var_1.zz % vec2<u32>(32u))), select(vec2<i32>(_wgslsmith_mult_i32(-1i, var_0.c.c.x), _wgslsmith_dot_vec2_i32(u_input.b.zy, vec2<i32>(u_input.a, u_input.b.x))), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b.c.x, 0i), ~var_0.a, max(u_input.b.yz, vec2<i32>(u_input.a, u_input.b.x))), !select(vec2<bool>(var_0.b.e.x, true), vec2<bool>(global0[_wgslsmith_index_u32(8585u, 10u)], true), arg_1.zy)), !select(vec2<bool>(false, false), arg_1.xx, !arg_1.x)), vec2<i32>(-2147483647i, ~(-(~u_input.a))));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<i32>) -> u32 {
    var var_0 = Struct_4(arg_0.x, global0[_wgslsmith_index_u32(arg_0.x, 10u)], -arg_1, select(any(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 10u)], false, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)])), all(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 10u)], true, global0[_wgslsmith_index_u32(arg_0.x, 10u)], false)), arg_0.x == _wgslsmith_add_u32(32501u, _wgslsmith_clamp_u32(0u, arg_0.x, 1u))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_0.x, 4294967295u), vec2<u32>(arg_0.x, 28907u)), arg_0.xy), 4294967295u), 102093u));
    var var_1 = arg_1;
    var_0 = Struct_4(_wgslsmith_div_u32(3215u, ~arg_0.x), var_0.d, min(arg_1, ~vec2<i32>(arg_1.x, var_0.c.x) & (u_input.b.zz << (vec2<u32>(arg_0.x, 1u) % vec2<u32>(32u)))) << (var_0.e % vec2<u32>(32u)), false, var_0.e);
    let var_2 = Struct_5(var_1.x, arg_0.x, vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -512f, -2727f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -795f), _wgslsmith_div_f32(1501f, 563f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-333f, -703f, -728f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1541f, 657f, -152f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1621f, -111f, -566f)))));
    global0 = array<bool, 10>();
    return firstLeadingBit(11436u ^ max(~_wgslsmith_sub_u32(4294967295u, 1u), var_2.b));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(countOneBits(u_input.b), func_5(vec3<u32>(64058u, 1u, 24445u), max(func_4(~26405u, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(func_3(vec3<f32>(-1799f, 1972f, -484f)))), _wgslsmith_div_vec2_i32(u_input.b.zz, vec2<i32>(u_input.a, u_input.b.x)))), Struct_2(u_input.b.xy, Struct_1(true, countOneBits(~vec4<u32>(12920u, 53012u, 56510u, 23671u)), _wgslsmith_add_vec3_i32(vec3<i32>(-8509i, 38726i, u_input.a) << (vec3<u32>(32320u, 65341u, 3552u) % vec3<u32>(32u)), vec3<i32>(u_input.b.x, u_input.a, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(55547u, 45828u))), !(!vec4<bool>(global0[_wgslsmith_index_u32(26356u, 10u)], false, global0[_wgslsmith_index_u32(65856u, 10u)], false))), Struct_1(all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(14723u, 10u)], false, true)), abs(~vec4<u32>(4294967295u, 60798u, 61397u, 4294967295u)), countOneBits(u_input.b), select(~vec2<u32>(69329u, 1u), select(vec2<u32>(4294967295u, 6218u), vec2<u32>(93250u, 1u), vec2<bool>(false, global0[_wgslsmith_index_u32(35297u, 10u)])), any(vec2<bool>(false, true))), !vec4<bool>(global0[_wgslsmith_index_u32(10312u, 10u)], true, true, true))));
    return Struct_4(4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(var_0.c.c.b.x), min(0u, func_5(var_0.c.c.b.zwz, vec2<i32>(u_input.b.x, 0i))) >> (var_0.b % 32u), var_0.b), 10u)], var_0.c.a, ~u_input.b.x == var_0.c.a.x, vec2<u32>(4294967295u, ~firstTrailingBit(0u)));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec4<bool>) -> f32 {
    var var_0 = arg_1;
    var var_1 = func_2();
    let var_2 = !(_wgslsmith_f_op_f32(-734f + -237f) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-872f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1006f)), _wgslsmith_f_op_f32(-1715f + 104f))))));
    let var_3 = -1i;
    var_1 = func_2();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-459f * 545f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(234f - 1000f))) - _wgslsmith_f_op_f32(f32(-1f) * -1659f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>((true && (u_input.b.x > -u_input.b.x)) || true, global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(firstLeadingBit(52468u), 45121u)), 10u)]);
    let var_1 = global0[_wgslsmith_index_u32(59099u << (0u % 32u), 10u)];
    global0 = array<bool, 10>();
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(-u_input.b.x, Struct_2(vec2<i32>(max(u_input.b.x, u_input.b.x), u_input.a >> (84964u % 32u)), Struct_1(false, countOneBits(vec4<u32>(0u, 75190u, 54907u, 22018u)), -u_input.b, vec2<u32>(1u, 1u), vec4<bool>(true, var_0.x, false, var_0.x)), Struct_1(true, vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(u_input.b), select(vec2<u32>(21788u, 1u), vec2<u32>(29574u, 70629u), vec2<bool>(false, true)), vec4<bool>(var_0.x, false, false, global0[_wgslsmith_index_u32(1u, 10u)]))), ~(-(~vec2<i32>(u_input.b.x, u_input.b.x))), select(!(!vec4<bool>(true, false, var_0.x, var_0.x)), !(!vec4<bool>(var_0.x, false, false, true)), !(false & var_0.x))))));
    let var_3 = vec2<u32>(0u, ~(~func_5(vec3<u32>(1u, 1u, 1u), vec2<i32>(-19813i, u_input.a))));
    let var_4 = Struct_2(max(vec2<i32>(~(i32(-1i) * -13419i), -23864i), vec2<i32>(0i, -25513i)), Struct_1(false, _wgslsmith_div_vec4_u32(~vec4<u32>(0u, var_3.x, 1u, 4294967295u), firstTrailingBit(vec4<u32>(23951u, 45281u, 1u, 4294967295u))), _wgslsmith_sub_vec3_i32(-u_input.b, ~u_input.b), _wgslsmith_add_vec2_u32(select(_wgslsmith_mod_vec2_u32(var_3, var_3), ~var_3, true), max(var_3, var_3) >> (~vec2<u32>(var_3.x, 5993u) % vec2<u32>(32u))), select(!select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 10u)], var_0.x, true, true), var_0.x), !select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(38634u, 10u)], var_0.x, var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(75306u, 10u)], true, true, global0[_wgslsmith_index_u32(35559u, 10u)])), true)), Struct_1(!(!func_2().d), _wgslsmith_mult_vec4_u32(~(vec4<u32>(var_3.x, var_3.x, var_3.x, 23099u) ^ vec4<u32>(46719u, var_3.x, var_3.x, 1u)), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, var_3.x, var_3.x, 1u), vec4<u32>(var_3.x, var_3.x, 0u, 0u)))), -u_input.b, vec2<u32>(func_5(vec3<u32>(7787u, var_3.x, 46422u), u_input.b.zx), ~72092u) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.x, 0u), ~var_3, firstTrailingBit(vec2<u32>(var_3.x, 77683u))), vec4<bool>(global0[_wgslsmith_index_u32(~(~0u), 10u)], true, var_0.x, true)));
    let var_5 = !all(!var_4.b.e);
    global0 = array<bool, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.c.x, _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(var_4.c.d.x, var_3.x, var_3.x)), countOneBits(firstTrailingBit(var_4.b.b.xwy) ^ vec3<u32>(var_3.x, var_4.c.b.x, 4294967295u))));
}

