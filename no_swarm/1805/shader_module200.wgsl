struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(vec2<i32>(-1i, 13218i), false, Struct_1(vec2<u32>(62217u, 33283u), false), 123078u), Struct_4(vec2<i32>(-67242i, 2854i), true, Struct_1(vec2<u32>(66644u, 9042u), false), 64338u));

var<private> global1: vec4<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    let var_0 = Struct_3(vec4<bool>(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false)), select(0i == u_input.c, false, _wgslsmith_f_op_f32(round(arg_0)) == _wgslsmith_f_op_f32(arg_0 + 1641f)), select(~u_input.b <= u_input.b, global1.x != _wgslsmith_clamp_i32(-1i, 7873i, -1i), true), true));
    var var_1 = Struct_3(select(!(!select(vec4<bool>(false, var_0.a.x, false, false), vec4<bool>(false, false, true, false), vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x))), var_0.a, var_0.a.x));
    let var_2 = global1.x;
    let var_3 = 1u;
    let var_4 = reverseBits(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(123638u, 1u, var_3), vec3<u32>(var_3, 0u, var_3)))) << (select(_wgslsmith_div_vec3_u32(vec3<u32>(var_3, reverseBits(u_input.b), u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(var_3, 1u, var_3), vec3<u32>(var_3, u_input.b, 17930u))), vec3<u32>(_wgslsmith_add_u32(14702u, 24449u) | min(44730u, var_3), 26924u, _wgslsmith_mod_u32(var_3, var_3) ^ max(u_input.b, 7434u)), !(true | !var_0.a.x)) % vec3<u32>(32u));
    return abs(vec3<u32>(~(~11510u), countOneBits(~var_4.x), max(var_4.x, select(var_4.x, var_3, true)))) ^ var_4;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_sub_vec3_u32(firstTrailingBit(abs(min(vec3<u32>(u_input.b, arg_0.x, arg_0.x), vec3<u32>(arg_0.x, 8460u, 31697u))) >> (~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, u_input.b, u_input.b), vec3<u32>(arg_0.x, u_input.b, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(abs(func_3(540f)), abs(~func_3(-460f))));
    var_0 = select(abs(abs(vec3<u32>(u_input.b, 0u, 35697u) ^ vec3<u32>(76915u, 20594u, 40140u))), min(~(~vec3<u32>(0u, 1u, u_input.b)), abs(vec3<u32>(var_0.x, arg_0.x, 10176u) ^ vec3<u32>(83923u, u_input.b, 633u))), select(!vec3<bool>(arg_2.x, arg_1, true), !(!arg_2), true)) | (min(abs(vec3<u32>(u_input.b, var_0.x, var_0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, 109384u, 49646u), vec3<u32>(arg_0.x, var_0.x, var_0.x)) & _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, arg_0.x, 1u), vec3<u32>(40656u, 4294967295u, arg_0.x))) << (reverseBits(vec3<u32>(1u, countOneBits(14237u), ~1u)) % vec3<u32>(32u)));
    let var_1 = max(_wgslsmith_mult_vec4_i32(vec4<i32>(abs(_wgslsmith_mod_i32(u_input.c, 1i)), -3346i, -(i32(-1i) * -31689i), -1i), vec4<i32>(66625i >> ((u_input.b >> (0u % 32u)) % 32u), 58331i, max(_wgslsmith_dot_vec2_i32(global1.zx, vec2<i32>(17221i, 2147483647i)), u_input.c | global1.x), -_wgslsmith_dot_vec2_i32(global1.xy, vec2<i32>(global1.x, u_input.c)))), -min(u_input.a, u_input.a));
    var var_2 = _wgslsmith_f_op_f32(-154f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1171f * -186f)), -863f)));
    var_0 = ~vec3<u32>(~(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(10365u, 0u)) ^ 1u), ~(var_0.x & var_0.x), ~1u);
    return 59081u;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: bool) -> StorageBuffer {
    var var_0 = ~vec4<u32>(firstTrailingBit(func_2(vec2<u32>(4294967295u, 44949u), 16668i == arg_1.x, select(vec3<bool>(false, arg_2, false), vec3<bool>(arg_2, arg_2, false), arg_2))), 0u, u_input.b, u_input.b);
    global1 = arg_1;
    let var_1 = ~(~select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, 0u) & vec4<u32>(u_input.b, 21212u, 9973u, u_input.b), select(vec4<u32>(var_0.x, 15631u, u_input.b, u_input.b), vec4<u32>(var_0.x, 63941u, u_input.b, u_input.b), arg_2)), ~(vec4<u32>(var_0.x, u_input.b, var_0.x, var_0.x) & vec4<u32>(u_input.b, u_input.b, 0u, u_input.b)), !(!vec4<bool>(arg_2, true, true, arg_2))));
    global1 = vec4<i32>(~global1.x, _wgslsmith_mod_i32(-2147483647i, countOneBits(-firstTrailingBit(arg_1.x))), arg_1.x, u_input.a.x);
    let var_2 = Struct_4(vec2<i32>(abs(_wgslsmith_add_i32(~global1.x, 2147483647i >> (u_input.b % 32u))), 1i), all(!(!(!vec3<bool>(false, arg_2, arg_2)))), Struct_1(vec2<u32>(reverseBits(~48960u), 4294967295u), !any(vec4<bool>(arg_2, false, false, arg_2)) || (_wgslsmith_mult_u32(var_1.x, 4294967295u) == var_1.x)), ~1u);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(354f - -1241f)), arg_0, _wgslsmith_f_op_f32(-arg_0), arg_0) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(711f, arg_0, -1767f, arg_0), vec4<f32>(697f, arg_0, -1088f, 951f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1437f, arg_0, 731f, arg_0)), true))))), firstTrailingBit(firstLeadingBit(~vec2<u32>(24291u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 2u)];
    global1 = u_input.a ^ ~_wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(21750i, u_input.a.x, -2147483647i, u_input.a.x), vec4<i32>(global1.x, global1.x, global1.x, -18807i)), select(u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, -2147483647i, u_input.a.x, u_input.a.x), u_input.a), false));
    global0 = array<Struct_4, 2>();
    var var_1 = _wgslsmith_mult_u32(u_input.b, firstLeadingBit(64444u));
    var var_2 = var_0.c.a;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(102f + _wgslsmith_f_op_f32(f32(-1f) * -180f))), -(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.a.x, var_0.a.x), vec4<i32>(-70261i, u_input.c, 2147483647i, global1.x))), false);
}

