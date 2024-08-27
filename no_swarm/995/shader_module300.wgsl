struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-984f, -1029f, 451f);

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(false, Struct_1(0i), 1000f, Struct_1(i32(-2147483648)), Struct_1(-12326i)), Struct_2(false, Struct_1(2147483647i), -1493f, Struct_1(0i), Struct_1(0i)), Struct_2(true, Struct_1(1i), -550f, Struct_1(2147483647i), Struct_1(0i)), Struct_2(false, Struct_1(35727i), 198f, Struct_1(-38850i), Struct_1(-1i)), Struct_2(false, Struct_1(65761i), 283f, Struct_1(37329i), Struct_1(-43310i)), Struct_2(true, Struct_1(11727i), -1111f, Struct_1(5687i), Struct_1(i32(-2147483648))), Struct_2(false, Struct_1(-12274i), 1000f, Struct_1(4934i), Struct_1(i32(-2147483648))), Struct_2(false, Struct_1(0i), 527f, Struct_1(36423i), Struct_1(2147483647i)), Struct_2(false, Struct_1(6582i), -482f, Struct_1(1i), Struct_1(-15112i)), Struct_2(false, Struct_1(-27348i), -633f, Struct_1(-14541i), Struct_1(30055i)));

var<private> global3: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec4<f32>(-1744f, -482f, -914f, 202f)), Struct_3(vec4<f32>(331f, -476f, 510f, -234f)), Struct_3(vec4<f32>(-1164f, 976f, -1092f, 1000f)), Struct_3(vec4<f32>(436f, 237f, -1110f, -1954f)), Struct_3(vec4<f32>(-853f, -883f, 1569f, -1235f)), Struct_3(vec4<f32>(-1423f, -1934f, -203f, 1310f)), Struct_3(vec4<f32>(1035f, -205f, 1326f, 2665f)), Struct_3(vec4<f32>(-475f, -1238f, -1102f, -1000f)), Struct_3(vec4<f32>(651f, 1554f, -1000f, 826f)), Struct_3(vec4<f32>(526f, -1000f, 470f, 100f)), Struct_3(vec4<f32>(476f, -749f, -586f, 1770f)), Struct_3(vec4<f32>(1276f, 947f, 867f, -961f)), Struct_3(vec4<f32>(-1684f, 1031f, -843f, 133f)), Struct_3(vec4<f32>(-211f, 812f, 891f, -901f)), Struct_3(vec4<f32>(1399f, 2412f, -1174f, 1409f)), Struct_3(vec4<f32>(-1075f, -1402f, 592f, 246f)), Struct_3(vec4<f32>(1828f, 893f, -461f, -1130f)), Struct_3(vec4<f32>(-1521f, 1129f, -750f, 2691f)), Struct_3(vec4<f32>(-726f, -527f, 1000f, -527f)), Struct_3(vec4<f32>(1000f, -1837f, 307f, -1000f)), Struct_3(vec4<f32>(926f, 492f, 287f, -1001f)), Struct_3(vec4<f32>(-1027f, 297f, -775f, -827f)), Struct_3(vec4<f32>(-765f, 449f, -1102f, -397f)), Struct_3(vec4<f32>(-617f, 1004f, -1161f, -1581f)), Struct_3(vec4<f32>(-131f, -941f, 532f, -1912f)), Struct_3(vec4<f32>(-1081f, 584f, -645f, -1000f)), Struct_3(vec4<f32>(-1675f, 997f, -436f, 967f)), Struct_3(vec4<f32>(488f, -699f, 1809f, 1959f)), Struct_3(vec4<f32>(133f, 1000f, -1517f, -137f)), Struct_3(vec4<f32>(240f, -1279f, -1527f, 461f)), Struct_3(vec4<f32>(-468f, -549f, -1022f, -564f)), Struct_3(vec4<f32>(-182f, -992f, 1617f, -1143f)));

var<private> global4: array<u32, 8>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.a)));
    let var_1 = global1.x;
    var var_2 = abs(1i);
    return _wgslsmith_f_op_f32(f32(-1f) * -1556f);
}

fn func_2(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = Struct_3(arg_0.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1525f, 1680f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-765f + -928f) * _wgslsmith_f_op_f32(func_3(28199u, vec4<i32>(-20774i, -1i, -2147483647i, 0i), arg_0)))), _wgslsmith_f_op_f32(-arg_0.a.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x - global1.x), -732f, _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-553f * 949f))))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-arg_0.a));
    var var_3 = Struct_1(~(-30894i));
    var var_4 = all(!select(vec2<bool>(true, all(vec4<bool>(false, true, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true)));
    return _wgslsmith_f_op_vec2_f32(round(var_0.a.zx));
}

fn func_4(arg_0: vec2<f32>) -> vec4<i32> {
    global3 = array<Struct_3, 32>();
    let var_0 = global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 8u)], 8u)];
    let var_1 = Struct_1(firstTrailingBit(-415i));
    let var_2 = select(min(vec3<i32>(var_1.a, var_1.a, _wgslsmith_dot_vec4_i32(max(vec4<i32>(1645i, var_1.a, var_1.a, var_1.a), vec4<i32>(-11508i, -1i, 2147483647i, -9955i)), min(vec4<i32>(-25495i, var_1.a, 1i, -2147483647i), vec4<i32>(var_1.a, var_1.a, var_1.a, var_1.a)))), ~vec3<i32>(var_1.a, -7232i, -1i)), firstLeadingBit((vec3<i32>(35780i, var_1.a, var_1.a) | -vec3<i32>(var_1.a, -2147483647i, -2147483647i)) << (firstLeadingBit(~u_input.a.wyx) % vec3<u32>(32u))), (firstLeadingBit(var_1.a) >= _wgslsmith_sub_i32(_wgslsmith_div_i32(var_1.a, var_1.a), 2007i)) & any(vec2<bool>(true, true)));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(~26853u, ~((global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)] & u_input.a.x) << (_wgslsmith_div_u32(u_input.a.x, 4294967295u) % 32u))), 40811u), 32u)];
    return _wgslsmith_clamp_vec4_i32(~_wgslsmith_add_vec4_i32(max(firstLeadingBit(vec4<i32>(var_1.a, var_2.x, 3926i, var_1.a)), vec4<i32>(28538i, 2147483647i, var_2.x, 25656i)), vec4<i32>(-1i, 1i, -31210i, abs(-1i))), abs(countOneBits(_wgslsmith_sub_vec4_i32(select(vec4<i32>(0i, var_2.x, -1i, 22119i), vec4<i32>(1i, -2147483647i, var_2.x, var_2.x), true), -vec4<i32>(-2147483647i, -34921i, var_1.a, -2147483647i)))), vec4<i32>(_wgslsmith_add_i32(reverseBits(firstTrailingBit(var_2.x)), ~var_1.a), 2147483647i, ~reverseBits(var_1.a >> (3298u % 32u)), -1i));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: bool) -> vec4<f32> {
    global4 = array<u32, 8>();
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(global0.xy * _wgslsmith_f_op_vec2_f32(func_2(Struct_3(vec4<f32>(3081f, 935f, 1348f, 627f))))));
    global3 = array<Struct_3, 32>();
    global3 = array<Struct_3, 32>();
    let var_1 = countOneBits(u_input.a.yx);
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, arg_1.c, -520f, -264f) * vec4<f32>(global0.x, global0.x, global1.x, -1000f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), -1236f, global1.x, 141f), false)), vec4<f32>(global1.x, -441f, -876f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(463f)))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_div_i32(reverseBits(1i), _wgslsmith_mult_i32(1i, -10376i)));
    var var_2 = vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x))), _wgslsmith_f_op_f32(floor(arg_1.a.x)));
    var var_3 = (~(-var_1.a) >> (u_input.a.x % 32u)) < -26247i;
    var var_4 = select(vec4<bool>(true, true, true, true), !select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(select(vec2<bool>(false, false), vec2<bool>(false, false), false))), select(vec4<bool>(global0.x > _wgslsmith_f_op_f32(-var_0.x), false, any(vec4<bool>(true, false, false, false)), false), select(vec4<bool>(0i > var_1.a, any(vec3<bool>(false, true, false)), true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, false, false)))), any(vec2<bool>(true, true)) || (true & (var_1.a <= 17456i))));
    return u_input.a.wxz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(2147483647i, ~_wgslsmith_div_i32(-17715i, -37758i), _wgslsmith_div_i32(abs(1i), ~firstLeadingBit(2147483647i)) >> (1u % 32u));
    let var_1 = Struct_1(~16403i ^ _wgslsmith_sub_i32(var_0.x, ~_wgslsmith_mod_i32(-2147483647i, 59457i)));
    global4 = array<u32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a & (var_1.a | -1i), vec3<u32>(~u_input.a.x, ~(global4[_wgslsmith_index_u32(u_input.a.x, 8u)] ^ 1u), ~u_input.a.x) | func_5(_wgslsmith_f_op_vec4_f32(func_1(-vec2<i32>(var_1.a, 26655i), Struct_2(false, var_1, global1.x, Struct_1(var_1.a), var_1), -vec4<i32>(-2147483647i, var_1.a, var_0.x, var_1.a), false)), global3[_wgslsmith_index_u32(~(~52123u), 32u)]), 1u, func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) * global0.x), -508f)).x, 1031f);
}

