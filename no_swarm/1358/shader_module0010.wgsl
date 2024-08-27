struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<f32>) -> bool {
    let var_0 = arg_0;
    let var_1 = 1u <= u_input.c;
    let var_2 = var_1;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.xx))) - var_0.xy), vec2<f32>(arg_1, -1913f));
    var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_0.yz))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zx * arg_0.xy))))))));
    return true;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(366f - _wgslsmith_f_op_f32(floor(451f)));
    var var_1 = _wgslsmith_f_op_f32(var_0 * var_0);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -428f) + 485f);
    let var_3 = vec2<i32>(u_input.e, -u_input.b.x);
    var var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-273f)), var_0) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_0), vec2<f32>(304f, var_0))))))));
    return true;
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = max(vec3<i32>(-(i32(-1i) * -u_input.e), ~u_input.d, _wgslsmith_sub_i32(12972i, u_input.b.x)), vec3<i32>(u_input.a.x, u_input.b.x, -2147483647i));
    var_0 = _wgslsmith_mod_vec3_i32(-_wgslsmith_div_vec3_i32(u_input.b, u_input.b) << (_wgslsmith_mult_vec3_u32(select(vec3<u32>(40063u, 49503u, 102681u), vec3<u32>(1u, u_input.c, 45119u), vec3<bool>(false, true, arg_0)), vec3<u32>(36570u, 26789u, 0u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.e, u_input.a.x), u_input.a.x, var_0.x), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(var_0.x, u_input.a.x, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(48310i, u_input.b.x, -41278i), u_input.b), select(u_input.b, vec3<i32>(1i, 2038i, 1i), vec3<bool>(false, arg_0, arg_0))))) >> (~vec3<u32>(max(0u, u_input.c), ~firstTrailingBit(7818u), 81865u | _wgslsmith_add_u32(u_input.c, u_input.c)) % vec3<u32>(32u));
    var var_1 = Struct_2(Struct_1(countOneBits(max(firstLeadingBit(-1i), u_input.e)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1558f)))), abs(vec3<u32>(u_input.c, u_input.c, reverseBits(15182u))), !(arg_0 || !arg_0), vec2<u32>(u_input.c, ~(~u_input.c))));
    var var_2 = _wgslsmith_div_vec4_i32(-countOneBits(vec4<i32>(_wgslsmith_clamp_i32(var_1.a.a, u_input.a.x, -53706i), firstTrailingBit(var_0.x), max(var_0.x, var_1.a.a), 43227i)), ~(-select(~vec4<i32>(var_0.x, var_1.a.a, u_input.a.x, 0i), countOneBits(vec4<i32>(var_1.a.a, 0i, var_0.x, -1i)), select(vec4<bool>(var_1.a.d, arg_0, arg_0, true), vec4<bool>(false, arg_0, arg_0, var_1.a.d), vec4<bool>(var_1.a.d, var_1.a.d, false, true)))));
    let var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(~var_2.x << (16767u % 32u), _wgslsmith_dot_vec2_i32(var_0.xx, ~var_0.xx), countOneBits(_wgslsmith_add_i32(u_input.a.x, var_1.a.a)), i32(-1i) * -83628i) & min(countOneBits(vec4<i32>(u_input.b.x, var_0.x, u_input.e, var_2.x)), ~vec4<i32>(var_0.x, u_input.a.x, -1i, var_1.a.a)), ~abs(vec4<i32>(-1i) * -vec4<i32>(-791i, 1i, var_0.x, 1i)));
    return _wgslsmith_f_op_f32(var_1.a.b + 188f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(func_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-329f, -2007f, -801f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1462f, -1000f, -677f))) * vec3<f32>(-999f, 1255f, -205f)))), -1088f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(839f, -439f, -1877f, -113f)))), true);
    let var_1 = ~abs(vec2<u32>(1u, u_input.c) | _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(u_input.c, 53681u), vec2<u32>(u_input.c, u_input.c)));
    let var_2 = select(u_input.c, var_1.x, !func_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(237f)), -867f, _wgslsmith_f_op_f32(-1000f + 696f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(676f, -877f)), -1000f), _wgslsmith_div_vec4_f32(vec4<f32>(1050f, -820f, -1910f, -162f), _wgslsmith_div_vec4_f32(vec4<f32>(558f, 1000f, -1460f, -517f), vec4<f32>(-1000f, 397f, -1227f, 1383f)))));
    var_0 = select(!vec2<bool>(var_0.x, select(false, !var_0.x, var_0.x && var_0.x)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(func_2(), !any(vec2<bool>(true, var_0.x))), true), select(!vec2<bool>(var_0.x, any(vec4<bool>(var_0.x, true, false, false))), select(vec2<bool>(false, false), vec2<bool>(!var_0.x, false & var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), var_0.x)), 47591u > var_1.x));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-715f)) - 1f)), 1f, _wgslsmith_f_op_f32(func_3(true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -497f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2684f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1118f, -255f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(916f)), _wgslsmith_f_op_f32(530f + 543f))))));
    var_0 = !select(select(!vec2<bool>(var_0.x, var_0.x), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x), true), false), vec2<bool>(var_0.x, true)), vec2<bool>(!all(vec2<bool>(true, var_0.x)), func_1(var_3.zwz, _wgslsmith_f_op_f32(var_3.x - 1339f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-127f, -260f, 771f, var_3.x))))), !select(vec2<bool>(true, false), vec2<bool>(true, true), false));
    let var_4 = u_input.b;
    let var_5 = vec4<bool>(false, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.x, true, var_0.x), var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)))), true, true);
    var var_6 = max(firstTrailingBit(-vec4<i32>(var_4.x, var_4.x, 79541i, var_4.x) >> (abs(vec4<u32>(4294967295u, u_input.c, 10592u, u_input.c)) % vec4<u32>(32u))) & vec4<i32>(~(-u_input.e), 1675i & u_input.a.x, max(57312i, var_4.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(13739u, 1u), var_1) % 32u), u_input.d), ~vec4<i32>(691i, u_input.e, var_4.x, u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-5597i, var_4.x, u_input.b.x));
}

