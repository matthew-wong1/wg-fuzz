struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    let var_0 = ~(vec2<i32>(-1i) * -vec2<i32>(~arg_2.d, ~arg_2.d));
    return arg_2.d;
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> i32 {
    let var_0 = Struct_4(Struct_2(true), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.c.a))), vec2<u32>(4294967295u, 1u), arg_1.c.c, 1i), ~4294967295u);
    var var_1 = vec2<bool>(!arg_1.c.c, false);
    var var_2 = ~(~1i);
    let var_3 = reverseBits(arg_1.c.d);
    var_2 = var_0.b.d;
    return _wgslsmith_mod_i32(-(~firstTrailingBit(20756i)), _wgslsmith_div_i32(countOneBits(~72439i), 19552i << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 69318u), vec2<u32>(0u, 4294967295u)) % 32u)) & var_3);
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = select(_wgslsmith_clamp_vec4_i32(reverseBits(~vec4<i32>(-17068i, -51834i, 29408i, 10576i)), _wgslsmith_mult_vec4_i32(vec4<i32>(select(1i, -22057i, arg_0), _wgslsmith_div_i32(-23240i, 2147483647i), 45512i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1926i, -3941i, -53098i), vec4<i32>(805i, -2279i, 52135i, 23776i))), vec4<i32>(i32(-1i) * -10846i, 1i, 1i, ~(-9394i))), _wgslsmith_add_vec4_i32(vec4<i32>(0i, func_2(true, arg_1, Struct_1(vec3<f32>(371f, 952f, 176f), vec2<u32>(48446u, u_input.a.x), false, 15596i)), i32(-1i) * -1i, _wgslsmith_sub_i32(974i, 25138i)), vec4<i32>(22010i, func_3(-1407f, Struct_3(4294967295u, vec2<f32>(1753f, 853f), Struct_1(vec3<f32>(2635f, 901f, 217f), u_input.a, arg_0, 10227i), 1068f), u_input.a.x), i32(-1i) * -2147483647i, -6208i))), firstLeadingBit(vec4<i32>(2147483647i, _wgslsmith_mod_i32(8788i, 25983i), _wgslsmith_sub_i32(0i, i32(-1i) * -1i), -2147483647i)), any(select(!vec4<bool>(true, false, arg_1.a, arg_1.a), vec4<bool>(false, true, arg_1.a, true), true)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true))), Struct_2(!select(true, true, true)));
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(i32(-1i) * -2147483647i) << (~4294967295u % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(11485i, 1i, -2147483647i), vec3<i32>(33934i, -1i, -3764i)), ~vec3<i32>(-16072i, -20340i, 0i)), abs(-15000i)), vec3<i32>(max(~1i, -(~2147483647i)), _wgslsmith_sub_i32(0i, firstTrailingBit(select(-1i, 0i, false))), _wgslsmith_sub_i32(-_wgslsmith_add_i32(-852i, -15301i), abs(_wgslsmith_div_i32(-1i, 29068i)))));
    var var_2 = Struct_3(1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -849f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(330f, -1219f), vec2<f32>(-1676f, 184f))), vec2<f32>(1f, 1f), !var_0.a)))), Struct_1(vec3<f32>(969f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(702f + -436f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1263f))))), u_input.a, true, ~1i), 974f);
    let var_3 = select(-_wgslsmith_div_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, 1i, var_1.x), vec3<i32>(var_2.c.d, -2147483647i, -17090i), vec3<i32>(var_2.c.d, var_2.c.d, var_2.c.d)), vec3<i32>(-61897i, var_1.x, 0i), true), vec3<i32>(var_2.c.d, ~var_2.c.d, 56628i)), vec3<i32>(var_1.x, 293i, var_2.c.d), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(var_2.c.a)));
}

