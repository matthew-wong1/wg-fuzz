struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> f32 {
    var var_0 = Struct_1(select(firstTrailingBit(~(-vec2<i32>(arg_0, arg_0))), _wgslsmith_add_vec2_i32(abs(vec2<i32>(arg_0, arg_0)), vec2<i32>(_wgslsmith_mod_i32(arg_0, -46152i), arg_0)), true), arg_0, arg_1);
    var_0 = Struct_1(var_0.a, _wgslsmith_mod_i32(67725i, firstTrailingBit(-firstLeadingBit(var_0.b))), _wgslsmith_sub_i32(1i | _wgslsmith_div_i32(-18288i, arg_0), 41479i) <= _wgslsmith_div_i32(var_0.a.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 618i), vec2<i32>(var_0.b, var_0.a.x)))));
    let var_1 = _wgslsmith_add_i32(select(firstTrailingBit(i32(-1i) * -39170i), arg_0, !arg_2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, min(_wgslsmith_div_i32(41405i, var_0.a.x), arg_0), countOneBits(_wgslsmith_add_i32(0i, 63276i)), -(~var_0.b)), firstLeadingBit(vec4<i32>(-1i, 4945i, -1i, var_0.b)) >> (vec4<u32>(countOneBits(71972u), ~u_input.a.x, 1u, u_input.a.x ^ u_input.b.x) % vec4<u32>(32u))));
    let var_2 = Struct_1(min(var_0.a >> (vec2<u32>(~4294967295u, ~u_input.a.x) % vec2<u32>(32u)), firstTrailingBit(var_0.a)), var_0.a.x, all(select(select(vec4<bool>(arg_1, true, false, true), vec4<bool>(arg_1, arg_2.x, arg_1, false), vec4<bool>(arg_1, arg_1, false, true)), vec4<bool>(false, false, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, false))) || true);
    let var_3 = 33367u;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1082f, 790f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(178f + _wgslsmith_f_op_f32(step(-1452f, -993f))) * _wgslsmith_f_op_f32(step(1000f, -758f))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> vec2<bool> {
    let var_0 = !(false | any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1716f + -625f) - _wgslsmith_div_f32(-914f, -643f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_0.x, arg_1, 0i), _wgslsmith_clamp_i32(arg_1, -38597i, arg_1)), !(!var_0), vec3<bool>(any(vec4<bool>(var_0, var_0, var_0, var_0)), true, var_0)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-709f, 676f, -1000f)))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(433f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2222f * 1002f) * _wgslsmith_div_f32(680f, -701f)), 1f)));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), -842f, -507f);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(346f, 954f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(543f, 1662f, 1261f, 114f) - vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-583f, -1238f, var_1.x, var_1.x))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1463f, 935f, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1488f, var_1.x, 122f, 115f)))), vec4<f32>(_wgslsmith_f_op_f32(-258f + 771f), -409f, _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_div_f32(var_1.x, var_1.x))))));
    var var_3 = Struct_1(~select(vec2<i32>(arg_0.x, 60254i) << (firstLeadingBit(vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_0.ww, arg_0.zw, vec2<i32>(1i, arg_1)), arg_0.wz), select(!vec2<bool>(var_0, var_0), select(vec2<bool>(true, var_0), vec2<bool>(true, true), vec2<bool>(true, var_0)), !vec2<bool>(var_0, var_0))), -29743i, true);
    return select(!select(vec2<bool>(false, -965f != var_2.x), vec2<bool>(false, !var_0), true), select(vec2<bool>(true, true), !vec2<bool>(true, any(vec3<bool>(false, var_0, false))), vec2<bool>(true, var_3.c)), -2147483647i < (-89654i | (arg_1 | ~var_3.b)));
}

fn func_1() -> Struct_1 {
    var var_0 = 45137i;
    let var_1 = abs(~vec3<u32>(1u, _wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), _wgslsmith_clamp_u32(u_input.a.x, u_input.b.x, ~4294967295u)));
    let var_2 = var_1.x;
    let var_3 = ~var_2;
    var var_4 = !(!select(vec2<bool>(true, false), vec2<bool>(true, any(vec3<bool>(false, false, false))), func_2(~vec4<i32>(0i, 0i, -2147483647i, 2147483647i), 1i)));
    return Struct_1(vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-5874i, -10969i, 1i), -vec3<i32>(16113i, -27117i, -1i)), _wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -34787i, 1i, -2147483647i), vec4<i32>(-1i, 71i, -2147483647i, -19517i)), -1i)), firstTrailingBit(1i) ^ 1i, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-164f, _wgslsmith_f_op_f32(f32(-1f) * -1362f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2388f)) - -909f))));
    var var_1 = Struct_1(vec2<i32>(1i, 1i), ~11681i, true);
    var_1 = func_1();
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.b.x), reverseBits(~(~u_input.b.x))), ~(firstLeadingBit(~u_input.b.zy) & u_input.b.zy));
    var var_3 = _wgslsmith_div_vec4_i32(firstLeadingBit(max(countOneBits(vec4<i32>(0i, var_1.b, var_1.a.x, var_1.b)), -vec4<i32>(1i, 19858i, -4648i, var_1.a.x))) << (vec4<u32>(u_input.b.x, 1u, u_input.a.x, _wgslsmith_sub_u32(u_input.a.x << (4294967295u % 32u), 0u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(-vec4<i32>(_wgslsmith_sub_i32(5840i, 0i), -1i, max(var_1.a.x, 0i), -4270i), vec4<i32>(-1i) * -vec4<i32>(var_1.b, 36030i, var_1.b, var_1.b)));
    var var_4 = func_1();
    var var_5 = !all(vec4<bool>(!(!var_1.c), any(vec2<bool>(true, true)), var_1.c, !var_1.c));
    var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.b, 0i, -45692i, 44817i), vec4<i32>(0i, var_3.x, var_1.b, var_4.b)), _wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.b, var_1.a.x, -31359i, var_1.b), vec4<i32>(var_1.b, -44504i, var_3.x, var_3.x)))), abs(-2147483647i), abs(reverseBits(~u_input.a.x)) >> (_wgslsmith_mult_u32(_wgslsmith_div_u32(8826u, _wgslsmith_div_u32(u_input.a.x, 40831u)), 4294967295u) % 32u), vec2<u32>(30174u, u_input.b.x) & min(vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(u_input.a.x, 1u)), _wgslsmith_mult_vec2_u32(u_input.a.xy, select(vec2<u32>(58342u, 4294967295u) & ~u_input.a.xx, vec2<u32>(14560u, 1u), func_2(vec4<i32>(var_3.x, -2147483647i, -15113i, var_3.x) >> (vec4<u32>(54844u, 12704u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), ~var_1.a.x))));
}

