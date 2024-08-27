struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    var var_0 = u_input.c.yy ^ u_input.c.xz;
    global0 = array<f32, 13>();
    var var_1 = -15036i;
    var var_2 = u_input.a;
    var var_3 = Struct_3(select(!(!(!vec4<bool>(true, arg_1, arg_0.e, arg_0.e))), select(!select(vec4<bool>(true, true, arg_0.e, arg_0.e), vec4<bool>(true, arg_1, arg_0.e, true), true), !select(vec4<bool>(arg_1, false, arg_1, arg_0.e), vec4<bool>(false, false, arg_1, false), vec4<bool>(false, arg_0.e, arg_0.e, false)), vec4<bool>(select(arg_0.e, arg_0.e, arg_1), arg_1, true, false)), vec4<bool>(arg_0.e, any(!vec2<bool>(false, arg_0.e)), arg_0.e, false)), Struct_2(-select(vec2<i32>(36504i, 32745i), arg_0.c, vec2<bool>(false, true)) >> (countOneBits(~vec2<u32>(54955u, arg_0.d.x)) % vec2<u32>(32u))), Struct_1(vec2<u32>(~(u_input.a.x >> (150527u % 32u)), 89380u), u_input.c.xy, arg_0.b, vec2<u32>(_wgslsmith_add_u32(1u, reverseBits(var_2.x)), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(arg_0.d.x, 115821u, u_input.a.x)), abs(vec3<u32>(var_2.x, 37481u, 0u)))), false), ~vec2<i32>(firstLeadingBit(~1i), select(select(var_0.x, var_0.x, arg_1), _wgslsmith_div_i32(-10221i, -7247i), !arg_1)));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, firstTrailingBit(u_input.c.x)), _wgslsmith_add_vec2_i32(~vec2<i32>(-2147483647i, u_input.c.x), vec2<i32>(arg_0.c.x, var_0.x))), var_0.x ^ -_wgslsmith_mult_i32(arg_0.c.x, var_0.x), -(i32(-1i) * -29048i)), -vec3<i32>(0i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0.x, u_input.c.x, var_0.x, var_3.d.x), vec4<i32>(-19670i, 33285i, var_3.b.a.x, var_3.d.x), arg_1), select(vec4<i32>(0i, u_input.b, arg_0.b.x, 33591i), vec4<i32>(arg_0.c.x, u_input.c.x, arg_0.b.x, var_0.x), arg_1)), _wgslsmith_add_i32(_wgslsmith_add_i32(22023i, arg_0.c.x), _wgslsmith_mod_i32(arg_0.c.x, arg_0.b.x))));
}

fn func_2() -> vec4<bool> {
    global0 = array<f32, 13>();
    global0 = array<f32, 13>();
    var var_0 = ~_wgslsmith_div_vec4_i32(-vec4<i32>(-1i, func_3(Struct_1(vec2<u32>(5282u, 20264u), u_input.c.yz, u_input.c.yz, vec2<u32>(102218u, 0u), true), false), countOneBits(2147483647i), -2147483647i), ~(~(vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, u_input.c.x) | vec4<i32>(u_input.c.x, -70101i, 0i, 24818i))));
    let var_1 = vec2<bool>(true, ~0u <= select(u_input.a.x, 0u, u_input.c.x <= 1i));
    var var_2 = Struct_1(countOneBits(_wgslsmith_add_vec2_u32(~u_input.a, ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.a))), var_0.ww, ~u_input.c.zy, ~select(vec2<u32>(u_input.a.x, 25088u) ^ vec2<u32>(u_input.a.x, 26693u), vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(var_1.x, var_1.x)) | reverseBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 7482u), vec2<u32>(945u, 4294967295u))), u_input.b < -53692i);
    return !(!(!vec4<bool>(any(vec3<bool>(true, var_2.e, var_2.e)), true, 1i >= var_2.b.x, true)));
}

fn func_1(arg_0: vec2<i32>) -> vec2<i32> {
    global0 = array<f32, 13>();
    let var_0 = Struct_3(select(!select(vec4<bool>(true, true, true, true), func_2(), any(vec4<bool>(true, true, true, false))), vec4<bool>(true, true, true, true), func_2()), Struct_2(vec2<i32>(-countOneBits(arg_0.x), _wgslsmith_clamp_i32(36612i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -1i, 15865i, u_input.c.x), vec4<i32>(-48776i, -2147483647i, -1i, -49476i)), 41053i << (u_input.a.x % 32u)))), Struct_1(countOneBits(u_input.a), -(~u_input.c.yy), select(-vec2<i32>(u_input.c.x, arg_0.x), vec2<i32>(2147483647i, _wgslsmith_div_i32(1122i, 1i)), true), ~u_input.a & (~u_input.a << (reverseBits(vec2<u32>(21442u, 4294967295u)) % vec2<u32>(32u))), true), u_input.c.yy | max(vec2<i32>(u_input.c.x, ~701i), vec2<i32>(1i, -9630i | arg_0.x)));
    global0 = array<f32, 13>();
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(~(-1i), -2147483647i), 0i, 0i, arg_0.x);
    let var_2 = _wgslsmith_clamp_i32(var_1.x, -33423i, ~0i) >> (~_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.c.a.x, ~u_input.a.x, u_input.a.x), 82294u) % 32u);
    return vec2<i32>(var_2, _wgslsmith_dot_vec3_i32(max(vec3<i32>(-1i) * -vec3<i32>(u_input.b, var_0.b.a.x, u_input.c.x), vec3<i32>(var_1.x, 2147483647i, var_1.x) | abs(vec3<i32>(1i, 55116i, 33007i))), -(~(-u_input.c))));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2) -> Struct_3 {
    global0 = array<f32, 13>();
    global0 = array<f32, 13>();
    global0 = array<f32, 13>();
    var var_0 = func_1(vec2<i32>(_wgslsmith_dot_vec3_i32(~min(u_input.c, u_input.c), abs(_wgslsmith_clamp_vec3_i32(u_input.c, u_input.c, u_input.c))), i32(-1i) * -2147483647i)).x;
    var var_1 = -964f;
    return Struct_3(!func_2(), Struct_2(countOneBits(countOneBits(vec2<i32>(u_input.c.x, 1i)))), Struct_1(firstLeadingBit(~u_input.a), vec2<i32>(-35712i, u_input.b), max(firstLeadingBit(vec2<i32>(50773i, -26402i)), vec2<i32>(u_input.b, 4215i) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.a.x, u_input.c.x), vec2<i32>(30818i, -11228i))), vec2<u32>(reverseBits(u_input.a.x), arg_1), true), vec2<i32>(func_1(firstTrailingBit(_wgslsmith_mod_vec2_i32(arg_0, arg_2.a))).x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.c.x, arg_2.a.x), 1i, -1i), min(_wgslsmith_div_vec3_i32(vec3<i32>(57630i, -2147483647i, 26140i), u_input.c), abs(u_input.c)))));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1550f, 1466f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(~arg_0.c.a.x), 13u)]), global0[_wgslsmith_index_u32(u_input.a.x, 13u)])));
    let var_1 = !arg_0.a.zwx;
    var var_2 = arg_0.c;
    global0 = array<f32, 13>();
    var_2 = arg_0.c;
    return func_4(select(var_2.c, vec2<i32>(-1674i, func_4(arg_2.a, 29213u, func_4(vec2<i32>(46670i, 0i), 4294967295u, Struct_2(arg_2.a)).b).d.x), var_1.x), _wgslsmith_sub_u32((_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) & _wgslsmith_div_u32(4294967295u, u_input.a.x)) << ((~arg_0.c.d.x & 16352u) % 32u), _wgslsmith_div_u32(1u, select(arg_0.c.d.x, _wgslsmith_mult_u32(31145u, u_input.a.x), all(vec2<bool>(true, false))))), Struct_2(var_2.b)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(select(u_input.c.zz, _wgslsmith_mod_vec2_i32(u_input.c.xx, -vec2<i32>(-2147483647i, 1i)), !select(vec2<bool>(false, true), vec2<bool>(true, true), true)), u_input.a.x, Struct_2(func_1(vec2<i32>(u_input.b, -1i)))), 13693u, Struct_2(~(~u_input.c.yz)), true);
    let var_1 = func_4(~select(vec2<i32>(var_0.a.x, u_input.c.x) | -vec2<i32>(4693i, var_0.a.x), vec2<i32>(_wgslsmith_div_i32(-1i, var_0.a.x), ~0i), vec2<bool>(u_input.a.x < 4294967295u, true)), 53112u, var_0).c;
    let var_2 = Struct_4(~firstLeadingBit(vec2<i32>(u_input.b, var_0.a.x)), Struct_3(func_4(vec2<i32>(_wgslsmith_sub_i32(-2147483647i, var_1.c.x), -37491i), ~(~4294967295u), Struct_2(-vec2<i32>(u_input.b, -22764i))).a, Struct_2(u_input.c.zy), func_4(vec2<i32>(_wgslsmith_div_i32(var_0.a.x, var_0.a.x), 0i), ~(~11314u), var_0).c, firstLeadingBit(var_0.a ^ (vec2<i32>(var_1.c.x, -26599i) | vec2<i32>(28805i, u_input.c.x)))), !var_1.e, -89450i, func_4(var_0.a, _wgslsmith_sub_u32(var_1.a.x, u_input.a.x), var_0).c);
    global0 = array<f32, 13>();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1129f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(54803u, 13u)]))))));
    global0 = array<f32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-871f, global0[_wgslsmith_index_u32(0u, 13u)]))))), _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(190f, var_3))), ~firstLeadingBit(firstLeadingBit(var_2.e.d)), global0[_wgslsmith_index_u32(abs(abs(firstLeadingBit(_wgslsmith_sub_u32(var_2.e.a.x, u_input.a.x)))), 13u)]);
}

