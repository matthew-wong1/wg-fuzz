struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: bool, arg_3: Struct_4) -> f32 {
    var var_0 = 7071u;
    var var_1 = vec4<u32>(0u << (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 18927u)) ^ (vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 37644u) ^ vec4<u32>(4294967295u, 4294967295u, u_input.c.x, 0u)), firstTrailingBit(vec4<u32>(u_input.c.x, 1u, 1u, u_input.c.x) << (vec4<u32>(0u, 0u, 4294967295u, 0u) % vec4<u32>(32u)))) % 32u), 1u, abs(1u), 5240u);
    var var_2 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(round(-577f)), _wgslsmith_f_op_f32(1101f - _wgslsmith_f_op_f32(f32(-1f) * -1604f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1258f)) * -235f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(2410f)), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(round(254f)))))));
    let var_3 = !select(select(vec2<bool>(true, true), arg_3.a, vec2<bool>(all(vec4<bool>(arg_1, true, false, arg_3.a.x)), any(vec3<bool>(arg_1, arg_0.a.x, true)))), select(!vec2<bool>(false, arg_1), select(!arg_3.a, vec2<bool>(arg_1, arg_0.a.x), vec2<bool>(arg_3.a.x, false)), select(arg_0.a, arg_0.a, vec2<bool>(true, false))), any(vec4<bool>(arg_3.a.x && true, arg_2, select(arg_0.a.x, true, arg_2), true)));
    let var_4 = Struct_2(i32(-1i) * -u_input.d, ~_wgslsmith_dot_vec3_u32(~select(u_input.c, u_input.c, vec3<bool>(false, true, var_3.x)), u_input.c), arg_0.a, _wgslsmith_f_op_f32(step(var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.a.x - var_2.a.x))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a.x)))))), select(select(!vec3<bool>(true, false, arg_1), vec3<bool>(all(vec2<bool>(true, true)), true, all(vec3<bool>(false, arg_2, arg_3.a.x))), false), select(!vec3<bool>(var_3.x, arg_1, false), !select(vec3<bool>(arg_0.a.x, arg_1, false), vec3<bool>(arg_0.a.x, arg_3.a.x, true), vec3<bool>(true, false, arg_2)), any(!vec4<bool>(true, true, true, arg_2))), vec3<bool>(all(arg_0.a), true, var_3.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.d + -862f) + _wgslsmith_f_op_f32(-var_2.a.x))), -1000f));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_5) -> bool {
    var var_0 = arg_2.x >> (max(max(4294967295u, 2392u >> (u_input.c.x % 32u)) << (_wgslsmith_sub_u32(min(u_input.c.x, u_input.c.x), u_input.c.x) % 32u), ~max(4578u, u_input.c.x) | 1u) % 32u);
    var_0 = -32911i;
    var var_1 = Struct_2(u_input.d, 0u, vec2<bool>(false, !(!any(vec3<bool>(false, arg_0, true)))), arg_3.a.x, vec3<bool>(all(!vec2<bool>(arg_0, true)), ((arg_1.a.x >> (1u % 32u)) ^ _wgslsmith_mult_i32(-1i, -25038i)) > -2147483647i, arg_0));
    var_0 = arg_1.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(-arg_3.a);
    return any(!select(vec3<bool>(false, false, true), var_1.e, var_1.c.x)) | false;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = u_input.c.xx;
    let var_1 = arg_0.x;
    var var_2 = !(!vec3<bool>(all(vec4<bool>(true, true, true, true)), true, select(u_input.d, u_input.d, true) > u_input.b.x));
    var_2 = select(!vec3<bool>(var_2.x, !(var_2.x & true), false), !(!vec3<bool>(true, any(vec4<bool>(var_2.x, var_2.x, var_2.x, false)), all(vec3<bool>(var_2.x, var_2.x, var_2.x)))), !vec3<bool>(!all(vec4<bool>(false, var_2.x, var_2.x, var_2.x)), var_2.x, false));
    let var_3 = select(var_2.zx, vec2<bool>(!(!var_2.x), var_2.x), func_4(all(select(vec2<bool>(false, var_2.x), !var_2.yz, u_input.a.x >= 22659i)), Struct_1(-firstLeadingBit(u_input.b.xy), 10272i), vec2<i32>(-_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), ~u_input.d), Struct_5(vec4<f32>(-582f, _wgslsmith_f_op_f32(func_3(Struct_4(vec2<bool>(var_2.x, var_2.x)), false, true, Struct_4(vec2<bool>(var_2.x, var_2.x)))), _wgslsmith_f_op_f32(abs(1000f)), -203f))));
    return Struct_3(-u_input.a ^ u_input.a, Struct_2(u_input.a.x, _wgslsmith_div_u32(~(u_input.c.x << (48077u % 32u)), 4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1), vec2<u32>(51118u, 4294967295u))), vec2<bool>(any(var_2.yz) & all(vec3<bool>(var_3.x, true, var_2.x)), any(!vec3<bool>(var_3.x, var_3.x, var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-720f - 851f))) - 321f), vec3<bool>(!(!var_3.x), var_2.x & true, !(var_0.x >= var_1))), arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-267f, 920f))), _wgslsmith_f_op_f32(sign(-178f))) > 1333f);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    let var_0 = ~(~arg_1.c);
    let var_1 = _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(abs(firstTrailingBit(vec4<u32>(56261u, 463u, 53259u, 1u))) | min(~vec4<u32>(9141u, arg_0.b.b, var_0, arg_1.b.b), vec4<u32>(arg_0.b.b, arg_1.b.b, 1u, arg_1.c)), vec4<u32>(~countOneBits(0u), ~abs(4294967295u), firstLeadingBit(_wgslsmith_add_u32(arg_0.b.b, 0u)), ~arg_0.c)));
    let var_2 = min(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(abs(4294967295u), var_1), ~vec2<u32>(arg_0.b.b, var_0)), vec2<u32>(4294967295u, ~(var_1 & var_1))), select(u_input.c.yz, select(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.b.b, 16828u), u_input.c.yy) << (~vec2<u32>(var_0, 4294967295u) % vec2<u32>(32u)), abs(u_input.c.zy) >> (u_input.c.yz % vec2<u32>(32u)), any(arg_0.b.c)), arg_0.d));
    let var_3 = Struct_4(vec2<bool>(any(vec2<bool>(arg_0.b.c.x, false)) && true, any(vec3<bool>(arg_0.b.c.x, true, false)) & (firstLeadingBit(-26788i) != -arg_0.a.x)));
    var var_4 = 1862i;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(537f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(624f - arg_0.b.d) + _wgslsmith_f_op_f32(select(arg_0.b.d, arg_1.b.d, arg_1.b.c.x))))))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_clamp_i32(u_input.b.x ^ _wgslsmith_add_i32(u_input.d & u_input.a.x, 0i), u_input.a.x, _wgslsmith_mult_i32(-u_input.b.x, -2147483647i));
    var var_1 = Struct_5(vec4<f32>(455f, _wgslsmith_f_op_f32(func_5(func_2(vec4<u32>(0u, 0u, 25820u, u_input.c.x)), func_2(vec4<u32>(1u, 12681u, 3130u, 91897u)))), _wgslsmith_f_op_f32(2012f * 1f), 215f));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-148f, -487f)));
    let var_3 = firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(abs(select(49777u, 12579u, false)), u_input.c.x), ~u_input.c.zy));
    let var_4 = Struct_1(reverseBits(vec2<i32>(var_0, u_input.d << (var_3.x % 32u))), u_input.d);
    return Struct_2(39353i, ~reverseBits(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_3.x, var_3.x, 15066u), vec4<u32>(16553u, 20126u, u_input.c.x, 22816u)), u_input.c.x, var_3.x < 6522u)), vec2<bool>(select(false, true, func_2(vec4<u32>(u_input.c.x, 59458u, var_3.x, 1u)).b.b <= ~u_input.c.x), (_wgslsmith_f_op_f32(var_1.a.x - -133f) < 285f) | any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(1238f * _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x) * _wgslsmith_f_op_f32(var_1.a.x + -1786f)), true))), vec3<bool>(true, true, true));
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<i32> {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_div_f32(2568f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d, arg_0.d) * -1227f)), _wgslsmith_f_op_f32(func_5(func_2(~vec4<u32>(arg_3.x, arg_3.x, u_input.c.x, 50607u)), func_2(countOneBits(vec4<u32>(arg_3.x, 4294967295u, 106648u, arg_0.b)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1324f, arg_0.d, 625f, 854f) + vec4<f32>(arg_0.d, arg_0.d, arg_0.d, -866f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_0.d, arg_0.d, 2081f) + vec4<f32>(1920f, arg_0.d, -742f, arg_0.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(382f, -190f, arg_0.d, arg_0.d))))), vec4<f32>(arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), _wgslsmith_div_f32(arg_0.d, arg_0.d), _wgslsmith_f_op_f32(f32(-1f) * -1059f))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2020f, -331f, var_1.x, arg_0.d))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1330f, var_1.x, -1016f, arg_0.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 194f, -694f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1009f, -586f, 1000f, 1384f) - vec4<f32>(var_1.x, var_1.x, -767f, -317f))), select(!(!vec4<bool>(true, true, arg_0.c.x, false)), select(!vec4<bool>(false, true, var_0, var_0), !vec4<bool>(true, arg_0.c.x, arg_0.c.x, var_0), vec4<bool>(arg_0.c.x, false, true, var_0)), var_0))));
    let var_2 = Struct_3(reverseBits(vec4<i32>(i32(-1i) * -u_input.b.x, arg_0.a, i32(-1i) * -22267i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-4623i, 0i, -25569i, -5358i), u_input.a), _wgslsmith_mult_i32(arg_0.a, arg_2.a.x), select(7815i, 13446i, arg_0.e.x)))), arg_0, _wgslsmith_dot_vec3_u32(~(~u_input.c), abs(vec3<u32>(1510u, arg_0.b, 1u) ^ ~vec3<u32>(1u, u_input.c.x, 1u))), true);
    var var_3 = var_2.b;
    return vec2<i32>(~u_input.d, reverseBits(~(-abs(arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = false;
    let var_2 = Struct_1(func_6(func_1(), -1i, Struct_1(u_input.b.xx, select(u_input.a.x, u_input.d, true) & -u_input.a.x), ~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 1u, u_input.c.x)), vec3<u32>(u_input.c.x, 87693u, var_0.x))), (_wgslsmith_div_i32(-u_input.b.x, _wgslsmith_mod_i32(-28438i, 2147483647i)) ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.a.x), vec2<i32>(u_input.a.x, u_input.b.x)) & u_input.a.x)) ^ -1i);
    let var_3 = vec3<u32>(u_input.c.x, abs(~1u), _wgslsmith_mod_u32(~(~var_0.x), _wgslsmith_sub_u32(~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(42501u, 30444u, 4294967295u, 1u), vec4<u32>(u_input.c.x, u_input.c.x, var_0.x, u_input.c.x)))) & firstTrailingBit(~_wgslsmith_sub_u32(u_input.c.x, 84396u)));
    let var_4 = !select(func_2(~vec4<u32>(u_input.c.x, var_3.x, var_3.x, u_input.c.x) << (~vec4<u32>(19167u, u_input.c.x, 4294967295u, var_3.x) % vec4<u32>(32u))).b.e, func_2(countOneBits(vec4<u32>(1u, 0u, 26157u, var_3.x))).b.e, select(true, false, firstLeadingBit(var_2.b) > u_input.d));
    var var_5 = max(vec2<u32>(~(~(~23378u)), u_input.c.x), _wgslsmith_div_vec2_u32(var_0.zy >> (min(~var_3.xx, var_3.xz) % vec2<u32>(32u)), u_input.c.yx));
    var var_6 = 0i;
    var_5 = vec2<u32>(var_0.x, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-13785i, func_2(vec4<u32>(countOneBits(var_0.x), ~var_3.x, 6425u, abs(0u))).a.x, var_2.a.x, 1i), _wgslsmith_div_u32(_wgslsmith_div_u32(~abs(0u), var_0.x), var_0.x), vec3<u32>(abs(~(~1u)), ~_wgslsmith_sub_u32(min(5902u, u_input.c.x), 15776u), var_5.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-337f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1474f - 1690f), _wgslsmith_f_op_f32(602f * -936f))), -1000f, -1000f)));
}

