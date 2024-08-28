struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: Struct_3,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_3, 5>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> vec3<bool> {
    let var_0 = global1[_wgslsmith_index_u32(max(u_input.b.x, 1u) ^ arg_2.a.c.x, 5u)];
    var var_1 = false;
    let var_2 = Struct_2(arg_2.a, vec4<bool>(all(arg_2.b), var_0.a.b, firstLeadingBit(5097u) > u_input.a, true & arg_2.e), select(!(!arg_2.c), select(vec3<bool>(arg_2.e && arg_2.e, true & var_0.a.b, true), vec3<bool>(true, var_0.e, arg_2.a.b), !arg_2.c), !vec3<bool>(true, true, arg_2.a.b)), ~(~vec3<i32>(arg_2.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.d.x, var_0.c.x, var_0.b.x, var_0.c.x), vec4<i32>(var_0.c.x, -2147483647i, 13925i, arg_2.d.x)), 1i)), !all(vec2<bool>(arg_2.b.x, false)));
    global1 = array<Struct_3, 5>();
    var var_3 = var_2;
    return var_3.c;
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    global0 = all(select(select(vec3<bool>(all(vec2<bool>(arg_0.b, arg_0.b)), false, true), func_3(vec3<f32>(arg_0.d, -304f, arg_0.d), countOneBits(60894u), Struct_2(Struct_1(arg_0.a, arg_0.b, arg_0.c, arg_0.d, arg_0.e), vec4<bool>(arg_0.b, true, false, true), vec3<bool>(arg_0.b, arg_0.b, true), vec3<i32>(arg_0.a.x, 2147483647i, 18994i), true), _wgslsmith_f_op_f32(-1240f - arg_0.d)), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1260f, arg_0.e.x, 248f) * vec3<f32>(arg_0.d, -261f, arg_0.d)), select(2324u, 1u, arg_0.b), Struct_2(Struct_1(vec2<i32>(20219i, 19984i), false, arg_0.c, -771f, vec3<f32>(arg_0.d, -1657f, arg_0.e.x)), vec4<bool>(arg_0.b, true, false, true), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), vec3<i32>(1i, 7486i, arg_0.a.x), arg_0.b), arg_0.e.x)), select(vec3<bool>(any(vec2<bool>(arg_0.b, false)), any(vec4<bool>(arg_0.b, true, true, arg_0.b)), true), select(!vec3<bool>(arg_0.b, true, false), vec3<bool>(true, true, true), !vec3<bool>(arg_0.b, false, arg_0.b)), select(any(vec4<bool>(true, arg_0.b, arg_0.b, true)), false, any(vec2<bool>(false, arg_0.b)))), vec3<bool>(func_3(vec3<f32>(arg_0.d, -1305f, arg_0.d), 1u, Struct_2(arg_0, vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b), vec3<bool>(true, arg_0.b, arg_0.b), vec3<i32>(arg_0.a.x, -2147483647i, -2147483647i), arg_0.b), 1428f).x | !arg_0.b, select(arg_0.a.x > -28503i, false, arg_0.b), false || arg_0.b)));
    let var_0 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(5474i, -2596i, arg_0.a.x)), max(vec3<i32>(-25110i, arg_0.a.x, arg_0.a.x), vec3<i32>(arg_0.a.x, arg_0.a.x, 2147483647i))), arg_0.a.x), -2147483647i ^ arg_0.a.x), false, ~(~(~reverseBits(arg_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) * arg_0.e.x), arg_0.e);
    let var_1 = _wgslsmith_dot_vec4_i32(countOneBits(firstLeadingBit(_wgslsmith_mod_vec4_i32(-vec4<i32>(5085i, -24023i, 0i, -20234i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_0.a.x, arg_0.a.x, 2147483647i), vec4<i32>(arg_0.a.x, 31175i, arg_0.a.x, var_0.a.x))))), _wgslsmith_sub_vec4_i32(~(-firstLeadingBit(vec4<i32>(var_0.a.x, arg_0.a.x, -23096i, 92586i))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, 13800i, arg_0.a.x, arg_0.a.x), vec4<i32>(arg_0.a.x, arg_0.a.x, -5175i, -49668i)), var_0.a.x | 8725i), _wgslsmith_mult_i32(arg_0.a.x, _wgslsmith_sub_i32(-46982i, 0i)), arg_0.a.x, ~(~var_0.a.x))));
    global1 = array<Struct_3, 5>();
    global1 = array<Struct_3, 5>();
    return !select(select(vec3<bool>(true, any(vec3<bool>(true, var_0.b, false)), all(vec4<bool>(false, false, false, false))), select(select(vec3<bool>(false, true, var_0.b), vec3<bool>(var_0.b, arg_0.b, false), false), !vec3<bool>(var_0.b, arg_0.b, arg_0.b), true), arg_0.b), vec3<bool>(any(vec3<bool>(true, var_0.b, arg_0.b)), true, !arg_0.b != !arg_0.b), func_3(_wgslsmith_f_op_vec3_f32(-arg_0.e), u_input.b.x, Struct_2(var_0, vec4<bool>(arg_0.b, false, true, var_0.b), !vec3<bool>(arg_0.b, false, false), _wgslsmith_mod_vec3_i32(vec3<i32>(24418i, var_0.a.x, -2147483647i), vec3<i32>(var_0.a.x, var_0.a.x, arg_0.a.x)), var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, 502f))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = true;
    global0 = all(func_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-471f, 725f, arg_0) + vec3<f32>(arg_0, arg_0, arg_0))))), ~(max(u_input.b.x, arg_2) >> ((u_input.b.x << (arg_2 % 32u)) % 32u)), Struct_2(Struct_1(-vec2<i32>(44909i, 4853i), func_2(Struct_1(vec2<i32>(-1i, 18522i), arg_1, u_input.b, arg_0, vec3<f32>(-257f, -1198f, 1799f))).x, ~u_input.b, 1f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1664f, arg_0))), select(select(vec4<bool>(arg_1, arg_3.x, false, false), vec4<bool>(arg_1, false, arg_3.x, true), vec4<bool>(true, false, arg_3.x, arg_1)), select(vec4<bool>(true, true, arg_1, true), vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, true, arg_3.x, true)), true), arg_3, vec3<i32>(6377i, i32(-1i) * -2147483647i, reverseBits(1i)), any(vec4<bool>(arg_1, true, arg_3.x, arg_1))), _wgslsmith_f_op_f32(abs(arg_0))));
    let var_1 = Struct_2(Struct_1(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-2147483647i, 2147483647i)) | _wgslsmith_clamp_vec2_i32(vec2<i32>(7298i, 926i), vec2<i32>(0i, -1i), vec2<i32>(-1i, -1i))), arg_3.x, ~vec2<u32>(67854u, ~u_input.b.x), -1613f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, -244f, -1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -325f) - vec3<f32>(arg_0, 770f, 364f))))), select(!vec4<bool>(true, arg_3.x, true, select(false, arg_1, false)), vec4<bool>(all(!vec4<bool>(arg_3.x, false, false, arg_3.x)), true, arg_1, func_3(vec3<f32>(209f, arg_0, arg_0), 4294967295u, Struct_2(Struct_1(vec2<i32>(0i, -72i), true, u_input.b, arg_0, vec3<f32>(-213f, -1000f, -396f)), vec4<bool>(true, arg_1, arg_3.x, false), arg_3, vec3<i32>(12997i, -1i, 15234i), true), arg_0).x), true), vec3<bool>(!all(arg_3), arg_3.x, !(!any(arg_3.zy))), -abs(~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 0i, 15622i), vec3<i32>(820i, 2147483647i, -1i))), !(!arg_1 & (arg_3.x != all(arg_3.yx))));
    var var_2 = !(!select(select(vec4<bool>(arg_1, true, var_1.c.x, false), vec4<bool>(arg_3.x, arg_1, arg_3.x, var_1.b.x), !var_1.b), vec4<bool>(!arg_3.x, arg_1, !var_1.b.x, u_input.b.x == 4294967295u), !(var_1.a.b | arg_1)));
    var var_3 = _wgslsmith_div_u32(u_input.b.x, _wgslsmith_sub_u32(select(u_input.a, ~64235u, all(vec4<bool>(var_2.x, var_2.x, arg_3.x, var_2.x))), var_1.a.c.x));
    return select(select(_wgslsmith_mult_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(14875u, arg_2, var_1.a.c.x), vec3<u32>(16115u, 60319u, 0u))), _wgslsmith_add_vec3_u32(vec3<u32>(9354u, u_input.a, arg_2), vec3<u32>(u_input.a, arg_2, 455u))), vec3<u32>(u_input.b.x, var_1.a.c.x, _wgslsmith_clamp_u32(arg_2, 11381u, 0u)), false), abs(select(vec3<u32>(55509u ^ arg_2, arg_2 | 65177u, _wgslsmith_dot_vec4_u32(vec4<u32>(49665u, 1u, var_1.a.c.x, arg_2), vec4<u32>(u_input.b.x, 4294967295u, 1u, arg_2))), ~firstLeadingBit(vec3<u32>(13092u, var_1.a.c.x, 5928u)), true)), vec3<bool>(!arg_3.x, true, (1i ^ _wgslsmith_div_i32(var_1.a.a.x, 8254i)) < -31430i));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    return ~_wgslsmith_clamp_vec3_u32(vec3<u32>(39862u, ~(~39223u), firstTrailingBit(11212u << (1u % 32u))), ~func_4(_wgslsmith_f_op_f32(-1588f - -476f), arg_0.b, _wgslsmith_sub_u32(arg_0.c.x, arg_0.c.x), func_2(Struct_1(vec2<i32>(15958i, arg_0.a.x), true, arg_0.c, arg_0.d, arg_0.e))), ~reverseBits(vec3<u32>(1u, u_input.b.x, 84433u) >> (vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<u32>(u_input.a | u_input.a, 4294967295u, u_input.a), func_1(Struct_1(vec2<i32>(1i, -14398i), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)), vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, u_input.a)), 1f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1534f, 545f, -1125f)))))), select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), func_2(Struct_1(vec2<i32>(39303i, 30887i), false, vec2<u32>(4294967295u, u_input.a), 187f, vec3<f32>(-366f, -250f, 770f))), true), false));
    global1 = array<Struct_3, 5>();
    global1 = array<Struct_3, 5>();
    var var_1 = Struct_2(Struct_1(vec2<i32>(1i, 1i), true, _wgslsmith_add_vec2_u32(~(vec2<u32>(var_0.x, 12598u) << (vec2<u32>(var_0.x, 62112u) % vec2<u32>(32u))), abs(_wgslsmith_add_vec2_u32(var_0.yx, var_0.xy))), -686f, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-422f, -457f, -1546f)))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, false), true, true, true)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true)), select(vec3<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), !any(vec4<bool>(true, true, false, true))), func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1250f, 1064f, 255f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(503f, 149f, -947f) + vec3<f32>(-791f, 268f, 272f)), all(vec4<bool>(true, true, true, false)))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.x, var_0.x), min(u_input.b.x, var_0.x)), Struct_2(Struct_1(vec2<i32>(2147483647i, 27472i), true, var_0.zy, 1000f, vec3<f32>(901f, -1158f, -172f)), vec4<bool>(true, false, false, true), vec3<bool>(true, true, true), vec3<i32>(-32382i, -2147483647i, -1i), true), -1154f), !(!any(vec3<bool>(true, false, false)))), -min(abs(_wgslsmith_div_vec3_i32(vec3<i32>(51339i, 1i, -390i), vec3<i32>(1i, -2147483647i, 61301i))), abs(~vec3<i32>(-1i, -5339i, -1i))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)));
    var var_2 = 4294967295u & _wgslsmith_sub_u32(var_0.x | u_input.b.x, _wgslsmith_mod_u32(0u & ~var_1.a.c.x, 4294967295u));
    var var_3 = vec4<i32>(max(firstLeadingBit(var_1.a.a.x & 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.a.x, 7167i) & -var_1.a.a, _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, var_1.d.x), var_1.a.a, var_1.d.xz), vec2<i32>(var_1.a.a.x, 2147483647i)))), _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(~var_1.a.a, select(vec2<i32>(var_1.d.x, var_1.d.x), vec2<i32>(27162i, -2147483647i), var_1.b.zw)), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_1.a.a.x, 2147483647i), -var_1.a.a)), select(-1i, var_1.a.a.x, true), var_1.d.x);
    var var_4 = var_1.a;
    let var_5 = ~(-(vec3<i32>(1i, -22615i, var_3.x) << (vec3<u32>(62339u, var_0.x, 1u) % vec3<u32>(32u))) << (func_4(-1105f, false, firstTrailingBit(_wgslsmith_mult_u32(4294967295u, var_0.x)), vec3<bool>(func_3(var_4.e, var_1.a.c.x, Struct_2(var_1.a, var_1.b, var_1.c, vec3<i32>(-2147483647i, 4378i, var_1.d.x), false), 1306f).x, all(vec4<bool>(false, true, false, var_4.b)), all(var_1.b))) % vec3<u32>(32u)));
    let var_6 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(var_3.x, min(var_3.x, -2147483647i)), ~_wgslsmith_sub_vec2_i32(-vec2<i32>(-25196i, var_5.x), var_1.d.xz)), true, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.zx, var_0.xz), ~vec2<u32>(var_4.c.x, 99321u)), vec2<u32>(var_4.c.x, _wgslsmith_sub_u32(29199u, 0u))) | select(countOneBits(var_0.yz >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))), ~vec2<u32>(var_1.a.c.x, var_4.c.x), select(!vec2<bool>(var_1.b.x, var_4.b), vec2<bool>(true, true), func_2(var_1.a).x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_4.d, _wgslsmith_f_op_f32(-1781f * _wgslsmith_f_op_f32(-var_4.d)))), var_4.e.x), vec3<f32>(828f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4.d + _wgslsmith_f_op_f32(exp2(var_1.a.e.x))))), var_4.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(965f * var_4.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1137f, 237f)))), all(var_1.b))), ~(var_1.a.c.x & ~(var_4.c.x & u_input.b.x)), _wgslsmith_f_op_f32(abs(var_6.d)), -1130f, 1i);
}

