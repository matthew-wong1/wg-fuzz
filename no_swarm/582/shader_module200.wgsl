struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-1000f, -1000f, -871f, -675f), vec4<f32>(-316f, -1000f, -369f, 778f), vec4<f32>(-379f, -1654f, 1533f, -773f), vec4<f32>(-209f, -352f, 418f, 936f), vec4<f32>(-563f, -1213f, 1805f, -1709f), vec4<f32>(316f, -552f, 1000f, -1426f), vec4<f32>(1081f, 376f, -591f, 769f), vec4<f32>(-486f, -995f, -422f, -810f), vec4<f32>(1105f, -468f, -1578f, -537f), vec4<f32>(-396f, 857f, 1775f, 1134f), vec4<f32>(1214f, 1518f, 200f, -807f));

var<private> global1: vec4<i32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<u32>) -> vec2<i32> {
    global1 = -(~u_input.d);
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(arg_2.x, 11u)] * global0[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1068f, -1000f, 1597f, 462f) * global0[_wgslsmith_index_u32(0u, 11u)]))))), global0[_wgslsmith_index_u32(~38313u, 11u)], select(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), false), vec4<bool>(!any(vec3<bool>(false, true, false)), false, ~global1.x > reverseBits(global1.x), false), true)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.d.xwy, global1.zxz), u_input.c.xzw) | (vec3<i32>(39815i, 10986i, -6897i) >> (_wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(1305u, 0u, 6440u)) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(f32(-1f) * -1538f), Struct_1(vec3<i32>(select(_wgslsmith_dot_vec2_i32(global1.yw, global1.wz), ~arg_0, true), _wgslsmith_div_i32(countOneBits(-2147483647i), -global1.x), 1i)), _wgslsmith_dot_vec2_i32(firstLeadingBit(global1.xy), u_input.d.ww), arg_2.x >> (firstTrailingBit(~27778u) % 32u));
    let var_2 = _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d.x, -2147483647i), vec2<i32>(1i, -23233i)), -var_1.a.a.xz, vec2<bool>(true, true)), abs(var_1.a.a.xx)), max(-15480i, global1.x >> (_wgslsmith_dot_vec2_u32(arg_2, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.x, var_1.e), arg_2)) % 32u)), min(~(-(-2147483647i & global1.x)), _wgslsmith_add_i32(countOneBits(~var_1.a.a.x), 0i)));
    let var_3 = var_1.c;
    return select(-vec2<i32>(_wgslsmith_sub_i32(~(-2147483647i), var_2), global1.x), -firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -26160i), vec2<i32>(-33679i, var_3.a.x))), false);
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global1 = u_input.c;
    var var_0 = -(func_3(-2147483647i << (~u_input.e.x % 32u), ~vec2<u32>(1u, u_input.b.x), u_input.b.xz) & u_input.c.yx);
    var var_1 = Struct_4(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0.xz, global1.zy), 0i, u_input.d.x ^ 45536i), -arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(507f, 722f, 1484f) - vec3<f32>(-1329f, 2268f, 310f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2784f, 1119f, 1562f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(364f, 473f, 506f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-429f, -439f, 1633f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(859f, -807f, -1239f)), vec3<f32>(-826f, -1217f, 162f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-741f - -253f) * _wgslsmith_f_op_f32(abs(-1418f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1895f, -1089f)), -429f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(-522f, 267f, 187f)))), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-883f, 972f))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -2272f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(377f, -118f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-109f, -225f), vec2<f32>(-173f, 1000f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-358f, -280f))))))));
    let var_2 = firstTrailingBit(firstLeadingBit(-1i)) | global1.x;
    let var_3 = Struct_4(Struct_1(arg_0), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-862f * var_1.d.x), -1384f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1511f, -1000f)))), 165f), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-2079f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.d.x))))), var_1.b, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1.c.xy)) - vec2<f32>(331f, var_1.c.x)))))));
    return var_1.a;
}

fn func_1() -> vec3<u32> {
    global0 = array<vec4<f32>, 11>();
    var var_0 = Struct_3(Struct_2(func_2(-vec3<i32>(0i, -2147483647i, u_input.d.x)), _wgslsmith_f_op_f32(sign(-606f)), Struct_1(vec3<i32>(~u_input.d.x, select(u_input.c.x, -1i, false), u_input.d.x)), -17042i, ~(~(~u_input.e.x))), func_2(global1.wyw | u_input.c.zyx), vec2<u32>(_wgslsmith_mod_u32(min(u_input.e.x, ~u_input.a), ~(~u_input.a)), 0u), func_2(~(~vec3<i32>(u_input.d.x, u_input.c.x, 620i))), Struct_2(func_2(global1.yzx), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1034f)))), Struct_1(vec3<i32>(global1.x, u_input.c.x, -1i) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), _wgslsmith_dot_vec3_i32(u_input.d.wxz, _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.c.x, u_input.c.x, global1.x), _wgslsmith_mod_vec3_i32(u_input.d.xxw, global1.zyw))), ~u_input.e.x));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.b))) - _wgslsmith_div_f32(530f, 1000f)))), -132f);
    global0 = array<vec4<f32>, 11>();
    var var_2 = Struct_1(global1.xyy);
    return _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(u_input.b, _wgslsmith_div_vec3_u32(firstTrailingBit(u_input.b), min(u_input.b, u_input.e.wzz)))), vec3<u32>(select(0u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_0.e.e, var_0.c.x, var_0.c.x, var_0.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.e, u_input.b.x, 23558u, u_input.a), u_input.e)), all(vec2<bool>(true, true))), select(0u, ~countOneBits(u_input.e.x), true), 4294967295u), u_input.e.xwx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.c.x, _wgslsmith_sub_i32(4764i, ~max(-2147483647i, -1i)), u_input.c.x, ~countOneBits(select(2147483647i, -2147483647i, all(vec2<bool>(true, false)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(156f))), 443f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-605f)))));
    let var_2 = select(u_input.b, firstLeadingBit(func_1()), select(all(vec2<bool>(true, true)), _wgslsmith_mod_u32(u_input.b.x, u_input.a) > _wgslsmith_mult_u32(4294967295u, u_input.a), select(true, true, true))) >> (~firstTrailingBit(_wgslsmith_add_vec3_u32(~u_input.b, u_input.b)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, countOneBits(_wgslsmith_sub_i32(func_3(reverseBits(-1i), var_2.xy, ~var_2.xy).x, -42001i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_1.x - -783f)) + _wgslsmith_f_op_f32(max(723f, _wgslsmith_div_f32(var_1.x, 857f))))), -11366i);
}

