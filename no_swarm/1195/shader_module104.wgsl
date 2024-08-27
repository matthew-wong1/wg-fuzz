struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = select(vec3<bool>(true, true, true), !vec3<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false)), true, all(vec2<bool>(true, true))), vec3<bool>(all(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), false, false));
    var_0 = !select(select(vec3<bool>(true, false, false), !(!vec3<bool>(var_0.x, var_0.x, true)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), true)), vec3<bool>((u_input.a << (4294967295u % 32u)) > ~u_input.a, all(!var_0.xz), false), !var_0.x);
    var var_1 = Struct_2(Struct_1(-681f, select(0i, _wgslsmith_sub_i32(firstLeadingBit(-17469i), -76122i << (u_input.a % 32u)), var_0.x), max(vec3<i32>(i32(-1i) * -21882i, ~(-47633i), 2147483647i), vec3<i32>(0i, -1i, 53716i)), vec2<bool>(true, true)));
    let var_2 = Struct_2(var_1.a);
    let var_3 = vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(40990u, 4294967295u, 46269u, u_input.a), vec4<u32>(u_input.a, 6257u, _wgslsmith_add_u32(0u, u_input.a), 4294967295u >> (u_input.a % 32u))), vec4<u32>(u_input.a, u_input.a, ~u_input.a, u_input.a)), u_input.a, 9665u, 0u);
    return var_2.a.c.x;
}

fn func_2(arg_0: f32, arg_1: u32) -> i32 {
    let var_0 = Struct_3(true, Struct_1(197f, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(5902i, -34727i, 4818i), vec3<i32>(0i, -23832i, 6294i)), func_3()), -vec3<i32>(-9404i >> (1u % 32u), i32(-1i) * -2147483647i, 1i), select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false), all(vec4<bool>(false, true, true, false))), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true))));
    let var_1 = var_0;
    let var_2 = Struct_3(true, Struct_1(_wgslsmith_f_op_f32(-2110f + arg_0), 1i, vec3<i32>(6127i, ~_wgslsmith_clamp_i32(3446i, 7613i, 1i), abs(_wgslsmith_clamp_i32(var_0.b.b, -21045i, -2147483647i))), vec2<bool>(!any(vec4<bool>(var_1.b.d.x, true, false, var_1.b.d.x)), false)));
    var var_3 = false;
    var_3 = all(!(!(!vec4<bool>(true, var_1.b.d.x, false, false)))) && var_2.b.d.x;
    return var_2.b.c.x;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec3<bool>) -> Struct_3 {
    let var_0 = firstLeadingBit(u_input.a);
    var var_1 = Struct_2(Struct_1(arg_0, 56493i, vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, -38223i), vec3<i32>(-18149i, -43389i, 2147483647i)), 0i, _wgslsmith_mult_i32(0i, -18469i)), ~(-1i), -(~(-16939i))), arg_1));
    let var_2 = var_1.a;
    var_1 = Struct_2(Struct_1(arg_0, max(var_2.b >> (u_input.a % 32u), ~abs(0i)), ~vec3<i32>(-7029i, -2147483647i, var_2.c.x & var_2.b), select(arg_3.yz, arg_1, vec2<bool>(true && arg_2, !arg_3.x))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) + 1965f);
    return Struct_3(false, var_1.a);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = func_4(2023f, vec2<bool>(1i < func_2(_wgslsmith_f_op_f32(arg_0 + arg_0), u_input.a), arg_3.d.x), true, vec3<bool>(((arg_2.x << (u_input.a % 32u)) & 23442i) >= arg_2.x, any(vec4<bool>(arg_3.d.x, any(vec3<bool>(true, arg_3.d.x, arg_3.d.x)), !arg_3.d.x, arg_3.d.x == false)), true));
    let var_1 = _wgslsmith_add_u32(1u, 1u) | min(u_input.a, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~0u, 1u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_3.a) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(arg_3.a - _wgslsmith_f_op_f32(arg_0 * arg_0)))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -910f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * arg_0);
    var_2 = _wgslsmith_f_op_f32(max(var_0.b.a, -394f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a) * 1747f), _wgslsmith_f_op_f32(238f + 1f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-806f + _wgslsmith_f_op_f32(round(arg_3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.a, -316f)) * var_0.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_div_f32(-1745f, 420f), abs(~vec2<i32>(0i, 0i) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(37373u, 0u), vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u))), -vec3<i32>(-1i, ~51687i, -18622i), Struct_1(_wgslsmith_f_op_f32(158f + _wgslsmith_f_op_f32(899f + 610f)), -firstLeadingBit(23513i), (vec3<i32>(1i, -49737i, 2147483647i) << (vec3<u32>(76749u, u_input.a, 1u) % vec3<u32>(32u))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, 4294967295u, u_input.a)) % vec3<u32>(32u)), !vec2<bool>(var_0, var_0)))));
    var var_2 = -1i;
    var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-17082i, 0i, -10529i, -2147483647i)), vec4<i32>(4223i, -1i, -2147483647i, 2147483647i)), _wgslsmith_sub_vec4_i32(select(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-36289i, 19272i, -24160i, -26323i), select(vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(true, var_0, var_0, true), vec4<bool>(var_0, var_0, true, var_0))), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 34014i, 23768i, 13053i), max(vec4<i32>(23884i, 11441i, 2147483647i, 6242i), vec4<i32>(-6751i, 0i, -2147483647i, 20639i))))), _wgslsmith_add_i32(_wgslsmith_div_i32(select(-22234i, _wgslsmith_add_i32(3088i, 31018i), true), 2147483647i), _wgslsmith_mod_i32(~5937i, 13278i) | _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 14932i, 1i), vec3<i32>(1013i, 54599i, -1i)), 1i)));
    var var_3 = func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(func_1(-783f, vec2<i32>(-33493i, -1i), countOneBits(vec3<i32>(18737i, 16245i, -3990i)), func_4(var_1, vec2<bool>(var_0, true), var_0, vec3<bool>(var_0, true, true)).b))))), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-1012f - 1021f))), vec2<bool>(select(true, var_0, var_0) & true, any(func_4(1161f, vec2<bool>(var_0, true), var_0, vec3<bool>(var_0, var_0, true)).b.d)), func_4(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1, -396f), 1000f), vec2<bool>(var_0, var_0), func_4(_wgslsmith_f_op_f32(abs(-757f)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(var_0, true)), true, select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, true, true), var_0)).a, vec3<bool>(u_input.a >= 4294967295u, true, any(vec4<bool>(false, true, var_0, var_0)))).a, select(vec3<bool>(!var_0, var_0, true), vec3<bool>(!var_0, var_0, var_0), !vec3<bool>(var_0, var_0, false))).b.d, var_1 < var_1, !(!vec3<bool>(var_0, false, all(vec2<bool>(var_0, false)))));
    var_3 = func_4(155f, !select(vec2<bool>(!var_3.a, true), vec2<bool>(var_1 > -642f, var_3.a), select(select(var_3.b.d, vec2<bool>(var_0, var_3.a), false), !var_3.b.d, false)), false, !(!select(!vec3<bool>(var_3.b.d.x, var_0, false), !vec3<bool>(var_0, true, var_3.a), false)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_3.b.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.c.x, _wgslsmith_div_u32(~78512u, u_input.a) & u_input.a, _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 41468u), ~79738u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, 11109u), vec4<u32>(u_input.a, u_input.a, 34224u, 1u)), u_input.a | u_input.a), vec4<u32>(0u, 0u, 23331u ^ u_input.a, ~19683u)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, 4294967295u, 4294967295u, 61539u) | vec4<u32>(u_input.a, 4294967295u, 13060u, u_input.a)), ~abs(vec4<u32>(0u, 73214u, 0u, 38604u)))));
}

