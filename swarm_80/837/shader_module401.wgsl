struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(1224f, -525f, 2372f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3.c;
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), abs(vec3<i32>(0i, -46974i, 1i))), _wgslsmith_add_i32(-9646i, i32(-1i) * -1i)), 1i, -43921i, firstLeadingBit(abs(-61944i >> (arg_1.c.b % 32u)))), firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(0i, -77609i, 0i), abs(-14197i), ~(-6873i), -60265i)) & _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(1i, 1i, 1i, 1i)));
    global0 = array<f32, 3>();
    var var_2 = vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(~var_1.x, i32(-1i) * -84052i), var_1.zy), -var_1.x, select(1i, -14599i, !any(vec2<bool>(arg_3.a, false))), ~(-(~firstLeadingBit(var_1.x))));
    global0 = array<f32, 3>();
    return (~select(arg_3.c.b, 0u, arg_3.c.d.x) << (_wgslsmith_sub_u32(63215u, min(4939u, 1u)) % 32u)) & (u_input.a.x ^ (min(var_0.b, _wgslsmith_add_u32(u_input.a.x, arg_3.c.b)) << (~arg_2.c.b % 32u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = reverseBits(firstLeadingBit(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_2, 1i, arg_2), ~vec3<i32>(1i, arg_2, 1i))) | abs(-vec3<i32>(-56135i, arg_2, -732i) << (vec3<u32>(arg_0.c.b, 41473u, arg_1.c.b) % vec3<u32>(32u))));
    var var_1 = Struct_1(vec3<bool>(!(!select(arg_0.c.a.x, true, arg_1.c.a.x)), any(vec3<bool>(true, arg_1.a, false)) || all(vec3<bool>(true, arg_1.b.x, arg_0.a)), arg_1.b.x), arg_3.x, -151f, vec2<bool>(true, true));
    var_1 = arg_0.c;
    let var_2 = Struct_1(arg_1.c.a, _wgslsmith_clamp_u32(func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1652f, -2309f))), Struct_2(true, arg_1.b, Struct_1(vec3<bool>(var_1.d.x, true, var_1.d.x), 0u, var_1.c, vec2<bool>(true, var_1.d.x))), Struct_2(false, vec4<bool>(false, arg_0.c.d.x, arg_1.a, var_1.a.x), arg_0.c), Struct_2(all(vec2<bool>(false, arg_0.a)), vec4<bool>(arg_0.c.a.x, var_1.a.x, arg_0.c.d.x, arg_1.c.d.x), Struct_1(vec3<bool>(arg_0.c.a.x, var_1.d.x, var_1.a.x), arg_3.x, arg_0.c.c, var_1.d))), 4294967295u, select(~0u, 1u, any(var_1.a.yy))), 1961f, arg_1.b.zx);
    var_1 = Struct_1(!select(select(select(vec3<bool>(arg_1.c.a.x, var_1.d.x, var_2.a.x), var_1.a, var_1.a), var_2.a, !arg_0.b.yyz), vec3<bool>(var_2.b < var_1.b, true, true), true), var_1.b, _wgslsmith_f_op_f32(-2213f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(60720u, 3u)] + arg_0.c.c))))), !select(vec2<bool>(!var_1.a.x, all(arg_0.c.d)), vec2<bool>(true, !arg_1.c.d.x), true));
    return Struct_1(!arg_0.b.yyw, ~_wgslsmith_mod_u32(arg_1.c.b, 34524u), _wgslsmith_div_f32(-559f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-267f * var_2.c) + _wgslsmith_f_op_f32(-1531f + -111f)), -1051f))), var_1.a.yx);
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = Struct_3(vec4<i32>(58653i, -(~(-2147483647i)) | -firstTrailingBit(0i), ~(-5975i), reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-4304i, -2147483647i, 2147483647i, 0i), vec4<i32>(1i, 0i, -71773i, 5006i), vec4<i32>(75181i, 18988i, 41035i, 0i)), ~vec4<i32>(22351i, -2147483647i, 0i, 34394i)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-867f))))), _wgslsmith_f_op_f32(arg_0.c + -1609f), all(func_2(Struct_2(false, vec4<bool>(true, false, arg_0.d.x, true), arg_0), Struct_2(false, vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.a.x, arg_0.a.x), arg_0), ~23364i, vec4<u32>(1u, 8785u, u_input.b, arg_0.b) & vec4<u32>(57225u, u_input.a.x, u_input.b, 42036u)).a.zz))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, arg_0.c, 289f, 980f))), vec4<f32>(1f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(96450u, 3u)])), arg_0.c, _wgslsmith_f_op_f32(arg_0.c * -565f))) * vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 3u)]), _wgslsmith_f_op_f32(sign(-1045f)))), _wgslsmith_f_op_f32(f32(-1f) * -1589f), -558f)), Struct_1(arg_0.a, _wgslsmith_add_u32(u_input.b, ~4294967295u), -115f, !vec2<bool>(arg_0.d.x, false & arg_0.a.x)), vec3<i32>(_wgslsmith_sub_i32(1i, ~firstLeadingBit(1i)), -2147483647i, -1i));
    var var_1 = ~24434u;
    var var_2 = Struct_3(var_0.a >> (vec4<u32>(_wgslsmith_add_u32(arg_0.b, 39785u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(27723u, 1u, var_0.d.b, 68929u), vec4<u32>(11794u, arg_0.b, u_input.b, 1u)), ~32964u, 37118u) % vec4<u32>(32u)), arg_0.c, vec4<f32>(_wgslsmith_f_op_f32(-218f - _wgslsmith_div_f32(-1342f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.d.b, 3u)] * 1071f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(156f, global0[_wgslsmith_index_u32(71883u, 3u)])))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.c - var_0.d.c)))), 728f, _wgslsmith_f_op_f32(var_0.d.c - _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a.x, 3u)])))), Struct_1(var_0.d.a, firstTrailingBit(_wgslsmith_add_u32(arg_0.b, ~1u)), _wgslsmith_f_op_f32(f32(-1f) * -678f), select(!(!var_0.d.d), !func_2(Struct_2(false, vec4<bool>(false, true, arg_0.d.x, var_0.d.d.x), arg_0), Struct_2(true, vec4<bool>(true, var_0.d.a.x, arg_0.a.x, true), var_0.d), 2147483647i, vec4<u32>(0u, u_input.b, arg_0.b, 75185u)).d, select(vec2<bool>(true, true), vec2<bool>(arg_0.d.x, var_0.d.d.x), !var_0.d.d))), vec3<i32>(~_wgslsmith_div_i32(1i, var_0.a.x), ~1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-30516i, -38362i, var_0.e.x), vec3<i32>(var_0.e.x, 23700i, var_0.e.x), arg_0.a), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.e.x, var_0.a.x, var_0.e.x), var_0.e))));
    var_1 = 4294967295u;
    let var_3 = !vec2<bool>(arg_0.d.x, arg_0.b >= 4294967295u);
    return select(vec3<i32>(1i, select(-64190i, var_0.a.x << (31229u % 32u), var_0.d.a.x), var_2.a.x) << ((~u_input.a & _wgslsmith_clamp_vec3_u32(vec3<u32>(13393u, 4294967295u, arg_0.b), firstLeadingBit(u_input.a), vec3<u32>(arg_0.b, var_2.d.b, 4294967295u))) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_2.e.x, var_0.a.x) & vec3<i32>(-21177i, 8674i, var_0.a.x), abs(vec3<i32>(1i, var_2.a.x, -29513i))), max(firstLeadingBit(var_0.e), var_2.e)), countOneBits(vec3<i32>(_wgslsmith_sub_i32(-37703i, -47010i), _wgslsmith_add_i32(1i, 1i), reverseBits(var_0.e.x)))), select(func_2(Struct_2(true, select(vec4<bool>(var_2.d.a.x, false, false, var_3.x), vec4<bool>(arg_0.a.x, false, true, false), var_2.d.d.x), Struct_1(vec3<bool>(var_3.x, arg_0.d.x, arg_0.d.x), 18934u, var_0.b, arg_0.a.xy)), Struct_2(func_2(Struct_2(arg_0.a.x, vec4<bool>(true, true, true, var_2.d.d.x), var_2.d), Struct_2(var_3.x, vec4<bool>(true, var_2.d.d.x, false, false), var_2.d), -26651i, vec4<u32>(28801u, 0u, arg_0.b, 0u)).d.x, !vec4<bool>(false, var_0.d.d.x, var_2.d.d.x, arg_0.d.x), Struct_1(vec3<bool>(true, var_0.d.d.x, true), 0u, var_0.c.x, vec2<bool>(var_0.d.d.x, var_3.x))), var_2.a.x << (~u_input.b % 32u), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 61882u, u_input.b, u_input.a.x), vec4<u32>(arg_0.b, 0u, var_0.d.b, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.b, 0u, arg_0.b, var_2.d.b), vec4<u32>(0u, u_input.b, arg_0.b, 9303u)), vec4<u32>(u_input.a.x, var_0.d.b, var_0.d.b, 4294967295u) << (vec4<u32>(var_2.d.b, var_0.d.b, var_2.d.b, 79513u) % vec4<u32>(32u)))).a, select(func_2(Struct_2(false, vec4<bool>(true, arg_0.a.x, var_0.d.a.x, var_2.d.d.x), arg_0), Struct_2(arg_0.a.x, vec4<bool>(false, false, false, true), var_0.d), -var_0.e.x, ~vec4<u32>(61058u, var_0.d.b, var_0.d.b, 0u)).a, arg_0.a, !arg_0.a), vec3<bool>(!any(var_2.d.a.yx), _wgslsmith_f_op_f32(568f * 2069f) > _wgslsmith_f_op_f32(var_0.b + -886f), _wgslsmith_f_op_f32(step(var_2.d.c, global0[_wgslsmith_index_u32(4294967295u, 3u)])) > arg_0.c)));
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec3_i32(-firstTrailingBit(-abs(vec3<i32>(-1i, -25713i, -55489i))), -func_4(func_2(Struct_2(true, vec4<bool>(true, true, false, false), Struct_1(vec3<bool>(true, false, false), u_input.a.x, 506f, vec2<bool>(true, true))), Struct_2(false, vec4<bool>(true, false, false, true), Struct_1(vec3<bool>(false, true, false), 1u, 1555f, vec2<bool>(false, false))), -17957i << (u_input.a.x % 32u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, u_input.b, u_input.a.x), vec4<u32>(6147u, u_input.a.x, u_input.b, u_input.a.x)))));
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    let var_1 = func_2(Struct_2(!select(true, true, all(vec3<bool>(true, true, true))), select(vec4<bool>(false, true, 1390f == global0[_wgslsmith_index_u32(63176u, 3u)], var_0 < -625i), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false))), Struct_1(vec3<bool>(true, true, true), 11789u, _wgslsmith_f_op_f32(func_2(Struct_2(true, vec4<bool>(false, true, false, true), Struct_1(vec3<bool>(false, false, false), u_input.a.x, 1445f, vec2<bool>(false, false))), Struct_2(false, vec4<bool>(true, true, true, false), Struct_1(vec3<bool>(true, false, true), 1u, -342f, vec2<bool>(true, true))), 0i, vec4<u32>(5626u, u_input.b, 10435u, u_input.b)).c - _wgslsmith_f_op_f32(-1114f * global0[_wgslsmith_index_u32(u_input.b, 3u)])), vec2<bool>(var_0 < 28709i, true))), Struct_2(!any(vec2<bool>(true, true)), vec4<bool>(!select(false, false, true), false, false, false), Struct_1(vec3<bool>(true, true, true), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_sub_u32(u_input.a.x, 48684u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 3u)] * global0[_wgslsmith_index_u32(1u, 3u)]) + global0[_wgslsmith_index_u32(~36383u, 3u)]), vec2<bool>(true, select(false, false, false)))), -var_0, _wgslsmith_add_vec4_u32(abs(~vec4<u32>(4294967295u, u_input.a.x, u_input.b, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(21260u, u_input.a.x, 1u, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, 52434u)))) ^ vec4<u32>(u_input.b, 1u, ~(u_input.a.x >> (44244u % 32u)), firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(0u, 17571u)))));
    global0 = array<f32, 3>();
    return select(select(!var_1.a, var_1.a, !(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, var_1.b, 1u, var_1.b), vec4<u32>(u_input.a.x, var_1.b, u_input.a.x, 0u)) == ~var_1.b)), var_1.a, vec3<bool>(true, any(var_1.d), !var_1.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(10180i, -30918i, -1876i, 0i), vec4<i32>(1i, 2147483647i, 10558i, -1i)), abs(14186i), 1i), ~vec3<i32>(-2147483647i, 2147483647i, 2147483647i), select(-vec3<i32>(1i, -1i, -1i), vec3<i32>(-30731i, 2147483647i, -43365i), func_1())) >> (reverseBits(vec3<u32>(func_3(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], Struct_2(false, vec4<bool>(false, false, false, true), Struct_1(vec3<bool>(true, true, false), u_input.b, 123f, vec2<bool>(true, false))), Struct_2(false, vec4<bool>(false, false, false, true), Struct_1(vec3<bool>(true, false, true), u_input.b, global0[_wgslsmith_index_u32(u_input.a.x, 3u)], vec2<bool>(true, true))), Struct_2(true, vec4<bool>(false, true, false, true), Struct_1(vec3<bool>(true, true, true), u_input.b, -621f, vec2<bool>(true, false)))), min(4294967295u, u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, 0u))) % vec3<u32>(32u)));
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    var var_1 = func_1().zz;
    var_1 = !func_1().yx;
    let var_2 = abs(var_0);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(vec2<u32>(u_input.a.x, u_input.b) << (firstTrailingBit(vec2<u32>(10848u, 20234u)) % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-656f, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec2<f32>(-1647f, global0[_wgslsmith_index_u32(1u, 3u)]))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(24741u, 3u)]) - vec2<f32>(-662f, 107f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 3u)], -197f), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], -2443f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 3u)], -648f)))), func_1().xy)), u_input.a.zy);
}

