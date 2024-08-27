struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(9835i, i32(-2147483648), 0i, -1i), 0u, vec3<u32>(1u, 1u, 0u), 2147483647i, 48713u);

var<private> global1: vec4<i32> = vec4<i32>(-34065i, 1031i, 47515i, 2147483647i);

var<private> global2: array<vec2<u32>, 15>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec4<i32> {
    global0 = Struct_1(~vec4<i32>(reverseBits(24505i), 0i >> (_wgslsmith_clamp_u32(u_input.a, global0.c.x, 0u) % 32u), _wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(global1.x, global0.d)), arg_1.d & ~31608i), abs(arg_2.c.x), vec3<u32>(0u ^ ~arg_2.e, min(global0.c.x, 102319u), 29961u) << (vec3<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_2.c.x, arg_1.e, u_input.a, arg_0.x), vec4<u32>(u_input.a, arg_1.c.x, 35352u, 39876u), vec4<bool>(true, arg_3, true, arg_3)), ~vec4<u32>(global0.e, u_input.a, 70288u, arg_0.x)), abs(54120u), firstLeadingBit(arg_1.e)) % vec3<u32>(32u)), global0.d, 1u);
    let var_0 = 0i;
    global0 = arg_2;
    return arg_2.a;
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    let var_0 = vec3<i32>(-_wgslsmith_dot_vec4_i32(global0.a, func_3(global2[_wgslsmith_index_u32(u_input.a, 15u)], Struct_1(vec4<i32>(global1.x, global1.x, global0.d, -40986i), u_input.a, vec3<u32>(0u, global0.c.x, 1u), global0.d, 1u), Struct_1(vec4<i32>(1i, 20941i, 2147483647i, 0i), 0u, global0.c, global1.x, 35016u), arg_0.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(5155u, 1u, global0.c.x, 55186u), vec4<u32>(u_input.a, global0.e, u_input.a, u_input.a), vec4<u32>(6646u, 46732u, 1132u, global0.e)) % vec4<u32>(32u))), global0.a.x, -51256i);
    return global1.x;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = select(-44272i >= min(-global1.x, global1.x), true, any(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, any(vec3<bool>(true, true, true))))));
    let var_1 = countOneBits(~(~global0.b));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: vec2<bool>) -> vec2<bool> {
    var var_0 = func_4(Struct_1(vec4<i32>(-1i, func_2(arg_3), ~_wgslsmith_sub_i32(arg_2, 48087i), 1i), _wgslsmith_dot_vec2_u32(~(vec2<u32>(5870u, 0u) | global2[_wgslsmith_index_u32(arg_1, 15u)]), global0.c.zz), vec3<u32>(countOneBits(1u), max(arg_1, 65765u) << (arg_1 % 32u), global0.b), global1.x, ~arg_1));
    var var_1 = 6632u;
    var var_2 = Struct_1(vec4<i32>(~(~(-40082i) >> ((1u | arg_1) % 32u)), _wgslsmith_dot_vec3_i32(-max(vec3<i32>(var_0.d, var_0.d, global1.x), global0.a.yxw), vec3<i32>(-2147483647i, -1i, _wgslsmith_div_i32(arg_2, -40617i))), (abs(global1.x) >> (~45738u % 32u)) | var_0.d, func_2(select(arg_3, arg_3, select(vec2<bool>(arg_3.x, arg_3.x), vec2<bool>(arg_3.x, arg_3.x), vec2<bool>(false, false))))), _wgslsmith_add_u32(1u, firstTrailingBit(~124288u)), ~vec3<u32>(func_4(Struct_1(var_0.a, 101396u, var_0.c, arg_2, 0u)).e, ~1u ^ (4294967295u ^ global0.e), func_4(func_4(Struct_1(global0.a, 73519u, global0.c, global1.x, 4294967295u))).e), arg_2, ~(~_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1, global0.c.x), 59170u)));
    let var_3 = any(select(!(!(!vec3<bool>(false, arg_3.x, false))), vec3<bool>(!(!arg_3.x), false, false), select(select(select(vec3<bool>(false, arg_3.x, false), vec3<bool>(true, arg_3.x, true), false), select(vec3<bool>(true, true, arg_3.x), vec3<bool>(arg_3.x, true, arg_3.x), vec3<bool>(true, arg_3.x, arg_3.x)), !vec3<bool>(true, false, arg_3.x)), select(!vec3<bool>(arg_3.x, arg_3.x, true), vec3<bool>(true, true, true), all(vec4<bool>(false, arg_3.x, false, false))), select(select(vec3<bool>(arg_3.x, false, arg_3.x), vec3<bool>(true, arg_3.x, false), arg_3.x), vec3<bool>(false, arg_3.x, arg_3.x), vec3<bool>(false, true, false)))));
    var_1 = reverseBits(_wgslsmith_dot_vec4_u32(select(min(~vec4<u32>(var_2.e, var_2.e, arg_1, 24515u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 42107u, arg_1, arg_1), vec4<u32>(4294967295u, 4294967295u, 1u, arg_1))), ~firstTrailingBit(vec4<u32>(9103u, global0.c.x, 28975u, 0u)), (u_input.a | 1u) == _wgslsmith_sub_u32(arg_0, var_0.c.x)), vec4<u32>(arg_0, 1u, var_2.e, _wgslsmith_div_u32(1u, arg_1)) & ~abs(vec4<u32>(0u, u_input.a, 87210u, u_input.a))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(10015u, u_input.a, -24362i, vec2<bool>(any(vec3<bool>(true, false, true)) | true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)))), vec2<bool>(select(true, select(all(vec3<bool>(false, true, false)), true, true), true), true), vec2<bool>(!select(true, true, true), true));
    let var_1 = -2147483647i;
    global1 = _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(max(global1.x << (global0.e % 32u), ~global0.a.x), func_2(func_1(32078u, global0.e, -17812i, vec2<bool>(false, var_0.x))), 0i, global0.d), ~global0.a), select(global0.a, -_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-49977i, 39248i, 28169i, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 0i, 1i, 1i), vec4<i32>(-1i, var_1, 52519i, var_1))), any(!vec4<bool>(var_0.x, true, var_0.x, false))));
    let var_2 = 1000f;
    let var_3 = Struct_1(-vec4<i32>(1i | global1.x, i32(-1i) * -7584i, ~0i, max(_wgslsmith_dot_vec3_i32(vec3<i32>(12291i, 41458i, global0.a.x), vec3<i32>(26640i, var_1, -22222i)), reverseBits(70881i))), 4294967295u, global0.c, 6947i, 1u);
    var var_4 = vec2<f32>(-1259f, var_2);
    global0 = Struct_1(-(~var_3.a), countOneBits(var_3.c.x >> (~(global0.e | u_input.a) % 32u)), ~(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.e), var_3.c.xy), var_3.b ^ 16619u, global0.e)), var_3.a.x, ~_wgslsmith_div_u32(53337u, ~13760u));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.x);
}

