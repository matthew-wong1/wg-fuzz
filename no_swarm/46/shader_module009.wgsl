struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_4,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-237f, vec2<bool>(false, false), vec3<bool>(true, true, false), -1231f), Struct_1(578f, vec2<bool>(false, true), vec3<bool>(false, false, false), 1632f), Struct_1(551f, vec2<bool>(true, true), vec3<bool>(true, true, false), -294f), Struct_1(1231f, vec2<bool>(false, true), vec3<bool>(false, false, true), 525f), Struct_1(-1451f, vec2<bool>(true, false), vec3<bool>(false, false, true), -697f), Struct_1(-666f, vec2<bool>(true, true), vec3<bool>(true, false, false), 434f), Struct_1(601f, vec2<bool>(true, false), vec3<bool>(false, false, false), 1446f), Struct_1(-1535f, vec2<bool>(false, false), vec3<bool>(true, true, false), -1312f), Struct_1(-1177f, vec2<bool>(true, true), vec3<bool>(true, false, true), -736f), Struct_1(1191f, vec2<bool>(false, false), vec3<bool>(true, true, false), 227f), Struct_1(163f, vec2<bool>(false, true), vec3<bool>(false, true, false), -1000f), Struct_1(-948f, vec2<bool>(false, true), vec3<bool>(false, true, true), 3657f), Struct_1(-616f, vec2<bool>(true, false), vec3<bool>(false, true, true), -2503f), Struct_1(-1148f, vec2<bool>(false, true), vec3<bool>(true, true, false), -1720f), Struct_1(-606f, vec2<bool>(false, true), vec3<bool>(false, false, true), -762f), Struct_1(-311f, vec2<bool>(false, true), vec3<bool>(false, false, false), -1000f), Struct_1(906f, vec2<bool>(true, false), vec3<bool>(true, true, false), -569f), Struct_1(1487f, vec2<bool>(false, true), vec3<bool>(true, false, true), 460f), Struct_1(883f, vec2<bool>(false, false), vec3<bool>(true, true, false), 457f), Struct_1(2277f, vec2<bool>(false, false), vec3<bool>(true, false, false), -263f), Struct_1(485f, vec2<bool>(true, false), vec3<bool>(true, false, false), -111f), Struct_1(-1000f, vec2<bool>(false, false), vec3<bool>(false, false, false), -1800f), Struct_1(-947f, vec2<bool>(true, false), vec3<bool>(true, true, false), -647f), Struct_1(-1108f, vec2<bool>(false, false), vec3<bool>(false, false, false), 499f), Struct_1(2420f, vec2<bool>(true, false), vec3<bool>(true, true, false), 498f), Struct_1(-250f, vec2<bool>(true, false), vec3<bool>(false, true, false), 1607f), Struct_1(101f, vec2<bool>(false, false), vec3<bool>(true, true, false), -190f), Struct_1(-1433f, vec2<bool>(true, false), vec3<bool>(false, false, true), -1273f), Struct_1(-404f, vec2<bool>(false, false), vec3<bool>(true, true, false), 534f), Struct_1(982f, vec2<bool>(false, true), vec3<bool>(true, false, false), 280f));

var<private> global1: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: vec4<f32>) -> vec3<bool> {
    var var_0 = 1u;
    let var_1 = vec3<u32>(68312u, 1u, ~reverseBits(~(~70231u)));
    global0 = array<Struct_1, 30>();
    var_0 = ~countOneBits(~(4294967295u >> (1u % 32u)));
    var var_2 = arg_0;
    return vec3<bool>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, 7744i), -31783i) <= -arg_1, -539f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(sign(arg_2)))), false);
}

fn func_2(arg_0: bool) -> Struct_5 {
    return Struct_5(global0[_wgslsmith_index_u32(1u, 30u)], abs(~77803i), arg_0, Struct_4(Struct_1(_wgslsmith_f_op_f32(-722f * _wgslsmith_f_op_f32(-562f + 303f)), func_1(func_1(vec2<bool>(arg_0, arg_0), u_input.c.x, -346f, vec4<f32>(-302f, 1048f, 2208f, -1627f)).zz, 1i, -250f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-533f, -477f, -2030f, -1195f) * vec4<f32>(-110f, 545f, 1209f, -263f))).zy, select(vec3<bool>(arg_0, true, false), func_1(vec2<bool>(arg_0, true), -3974i, 1000f, vec4<f32>(1808f, 519f, 157f, -267f)), select(vec3<bool>(true, arg_0, true), vec3<bool>(true, false, arg_0), arg_0)), 1836f), firstTrailingBit(~u_input.c.x >> (u_input.d % 32u)), Struct_2(Struct_1(-1458f, vec2<bool>(false, true), !vec3<bool>(arg_0, true, false), _wgslsmith_f_op_f32(f32(-1f) * -1381f))), _wgslsmith_mod_vec3_i32(u_input.c, u_input.c)), vec3<bool>(select(true, all(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, arg_0, arg_0))), false), arg_0, arg_0));
}

fn func_3(arg_0: f32, arg_1: Struct_5) -> vec4<i32> {
    var var_0 = all(select(vec2<bool>(false, !arg_1.e.x), !func_1(vec2<bool>(false, true), -2147483647i, 228f, vec4<f32>(arg_1.a.d, arg_1.a.d, arg_1.a.d, arg_1.d.c.a.a)).xx, arg_1.a.c.x)) != (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.d.a.a)))) >= _wgslsmith_f_op_f32(509f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.d.a.d)) - _wgslsmith_f_op_f32(trunc(-1135f)))));
    let var_1 = vec2<i32>(~1853i, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.c), vec3<i32>(-11567i, _wgslsmith_sub_i32(min(2147483647i, arg_1.d.b), -4284i), 1i)));
    var var_2 = true;
    let var_3 = ~1u;
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.a.a - arg_0) + 642f)))))));
    return vec4<i32>(-_wgslsmith_dot_vec3_i32(~arg_1.d.d, _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-68913i, arg_1.b, u_input.c.x)), vec3<i32>(u_input.c.x, var_1.x, 26541i), vec3<i32>(u_input.c.x, var_1.x, -1i) >> (vec3<u32>(var_3, 745u, 3703u) % vec3<u32>(32u)))), u_input.c.x, var_1.x >> (~(~u_input.b.x) % 32u), _wgslsmith_dot_vec4_i32(select(vec4<i32>(max(-18298i, 1i), -2147483647i, var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 11566i, 0i), u_input.c)), -select(vec4<i32>(var_1.x, u_input.c.x, 17579i, -2147483647i), vec4<i32>(arg_1.b, 1i, 2147483647i, u_input.c.x), vec4<bool>(true, false, arg_1.a.b.x, true)), true), vec4<i32>(~(i32(-1i) * -17160i), 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b, 2147483647i, var_1.x), arg_1.d.d) >> (_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) % 32u), -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 435f, -1007f), vec3<f32>(-1241f, -803f, 2268f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(170f, 226f, 1000f)), true)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-459f, -923f, -112f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-106f, -176f, -128f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1767f, 819f, -823f))))), vec3<f32>(637f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -247f))), 1f), func_1(vec2<bool>(true | any(vec2<bool>(false, true)), true), u_input.c.x, -876f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(698f, -965f, -865f, -1852f)) - vec4<f32>(-1545f, -2106f, 105f, -1510f))))));
    global1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-54827i, min(~u_input.c.x, u_input.c.x)), ~(~abs(abs(u_input.b.x))), _wgslsmith_add_vec4_i32(-(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -1i, u_input.c.x, u_input.c.x), vec4<i32>(-1i, -65147i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 2579i, u_input.c.x, 0i))), select(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.c.x), vec4<i32>(24413i, -6515i, u_input.c.x, u_input.c.x)), func_3(-1000f, func_2(true)), any(vec3<bool>(false, false, true)) | true)), -1835f, ~(-_wgslsmith_div_i32(-u_input.c.x, -1i)));
}

