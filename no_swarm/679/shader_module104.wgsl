struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 30>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1955f, 174f, -733f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-242f, 828f, -586f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1657f))), _wgslsmith_f_op_f32(floor(341f)), 1100f)));
    var var_1 = Struct_2(arg_0, max(_wgslsmith_add_i32(20929i, u_input.b), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b >> (0u % 32u), arg_0.d), arg_0.c.x)), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2448f), -1016f)), 688f, 685f));
    global0 = array<vec4<bool>, 30>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, arg_0.a.x, 49878u, 49099u)), abs(~vec4<u32>(1u, var_1.a.a.x, var_1.a.a.x, 4294967295u))), 52685i != _wgslsmith_dot_vec3_i32(~vec3<i32>(32806i, u_input.b, arg_0.c.x), -vec3<i32>(arg_0.d, arg_0.c.x, 2147483647i)), vec2<i32>(abs(~(-1i)), abs(arg_0.d)), u_input.b), -2147483647i, var_1.c);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.c.x))));
    return 19515i;
}

fn func_2(arg_0: i32, arg_1: f32) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(vec4<u32>(~39954u << (u_input.d.x % 32u), u_input.c, 2218u, ~(1u & u_input.e)), true, ~(-(~vec2<i32>(u_input.b, 0i))), func_3(Struct_1(~u_input.d, arg_1 < arg_1, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, u_input.b), vec2<i32>(29788i, -7760i)), _wgslsmith_mult_i32(arg_0, -1i)))), u_input.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, _wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(floor(arg_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1707f, arg_1, 1750f))))));
    var_0 = Struct_2(Struct_1(u_input.d, !(!(var_0.a.b || var_0.a.b)), countOneBits(vec2<i32>(arg_0, u_input.b)) << (var_0.a.a.xz % vec2<u32>(32u)), -2147483647i), (reverseBits(arg_0 >> (var_0.a.a.x % 32u)) << ((~0u << ((u_input.c | var_0.a.a.x) % 32u)) % 32u)) << (_wgslsmith_sub_u32(u_input.d.x >> (var_0.a.a.x % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.a.x, 1u), vec2<u32>(4294967295u, 0u)), 89777u)) % 32u), _wgslsmith_f_op_vec3_f32(var_0.c + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-1000f, 1000f, var_0.a.b)), _wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(floor(113f))))));
    var var_1 = _wgslsmith_mod_u32(~u_input.d.x, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(26180u, u_input.e, 0u), ~(~77034u), 45804u));
    global0 = array<vec4<bool>, 30>();
    var var_2 = _wgslsmith_f_op_f32(round(-999f));
    return -vec3<i32>(select(2147483647i, var_0.b, true), 1i, ~u_input.b);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = !arg_2.c.a.b;
    global0 = array<vec4<bool>, 30>();
    var var_1 = Struct_1(~select(~arg_2.c.a.a, vec4<u32>(_wgslsmith_mod_u32(0u, 1u), arg_2.c.a.a.x, min(0u, 11895u), u_input.d.x), vec4<bool>(any(vec3<bool>(arg_2.c.a.b, arg_2.c.a.b, arg_2.c.a.b)), all(vec2<bool>(arg_2.c.a.b, arg_2.c.a.b)), !arg_2.c.a.b, arg_2.c.a.b)), abs(arg_2.b) < min(arg_2.c.a.a.x, u_input.e), _wgslsmith_sub_vec2_i32(arg_2.c.a.c, ~(~select(vec2<i32>(18303i, -1i), vec2<i32>(arg_2.c.b, -2147483647i), vec2<bool>(arg_2.c.a.b, arg_2.c.a.b)))), -u_input.b);
    var_1 = arg_2.c.a;
    var_0 = true;
    return arg_2;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = func_4(func_2(~firstLeadingBit(u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))) & ((vec3<i32>(-1i) * -vec3<i32>(arg_0.c.a.c.x, 24557i, arg_2.c.x)) & vec3<i32>(var_0.c.a.c.x, _wgslsmith_mod_i32(arg_0.c.a.c.x, 1i), ~arg_0.c.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-330f, 794f, 1521f, 956f) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.c.x, var_0.c.c.x, arg_0.c.c.x, arg_0.c.c.x), vec4<f32>(arg_0.c.c.x, arg_0.a, -979f, -149f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1267f, arg_0.a, var_0.a, var_0.c.c.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-827f, 674f, -568f, -916f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(343f, -710f, 1000f, arg_0.a), vec4<f32>(arg_0.a, -1038f, arg_0.c.c.x, -1000f)))))), arg_0);
    var var_2 = var_1.c;
    var_2 = Struct_2(arg_0.c.a, countOneBits(_wgslsmith_clamp_i32(~func_4(vec3<i32>(-2147483647i, u_input.b, 7209i), vec4<f32>(var_2.c.x, -143f, 110f, arg_0.a), Struct_3(-567f, 22366u, Struct_2(var_1.c.a, 0i, vec3<f32>(arg_0.a, arg_0.a, -503f)))).c.b, var_0.c.a.c.x, reverseBits(i32(-1i) * -1i))), vec3<f32>(_wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-515f * _wgslsmith_div_f32(var_1.c.c.x, 1000f)), _wgslsmith_f_op_f32(trunc(-1000f)))), 1000f));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c.yy)), vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.a)), _wgslsmith_f_op_f32(-var_2.c.x)))) + vec2<f32>(-497f, var_2.c.x));
    return ~var_2.a.a.x;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: u32) -> Struct_2 {
    let var_0 = vec2<i32>(firstTrailingBit(2147483647i), -1i >> (~_wgslsmith_dot_vec3_u32(max(u_input.d.wyx, vec3<u32>(u_input.a.x, u_input.c, arg_0.x)), vec3<u32>(4294967295u, u_input.d.x, u_input.e) ^ u_input.d.wxy) % 32u));
    let var_1 = all(!(!vec3<bool>(true, var_0.x > 1i, true)));
    global0 = array<vec4<bool>, 30>();
    let var_2 = ~vec3<i32>(1i, abs(u_input.b), u_input.b);
    var var_3 = var_1;
    return func_4(_wgslsmith_div_vec3_i32(vec3<i32>(-(var_2.x & -17872i), ~firstLeadingBit(-27470i), ~(-2147483647i)), _wgslsmith_add_vec3_i32(var_2, ~var_2)), vec4<f32>(-1949f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1106f * arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(127f, -402f) - arg_2.x)))), func_4(vec3<i32>(var_2.x, func_3(Struct_1(vec4<u32>(u_input.a.x, 89369u, arg_0.x, arg_3), true, vec2<i32>(var_0.x, var_0.x), -2229i)), u_input.b), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1010f, -165f)), _wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -358f)), func_4(vec3<i32>(2147483647i, u_input.b, ~u_input.b), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(arg_1, vec4<f32>(-467f, 763f, -554f, -365f)), vec4<f32>(1364f, -1295f, 1334f, -644f))), Struct_3(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), select(arg_0.x, 1u, true), func_4(var_2, vec4<f32>(arg_2.x, 531f, arg_2.x, arg_2.x), Struct_3(625f, 1u, Struct_2(Struct_1(vec4<u32>(u_input.a.x, 43956u, 0u, 4294967295u), var_1, var_2.yz, -23387i), -14492i, vec3<f32>(525f, 1601f, arg_1.x)))).c)))).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec2<u32>(1u, ~select(func_1(Struct_3(-152f, 0u, Struct_2(Struct_1(u_input.d, true, vec2<i32>(2147483647i, u_input.b), u_input.b), -1i, vec3<f32>(913f, -1450f, -178f))), Struct_1(u_input.d, false, vec2<i32>(u_input.b, 1i), -1i), Struct_1(u_input.d, false, vec2<i32>(u_input.b, 1i), u_input.b)), ~u_input.c, all(vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-436f, -139f, 880f, -595f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(880f, -216f, -762f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -1729f, -921f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(876f, -762f, -1000f), vec3<f32>(-1033f, -1473f, -1585f)))))), 0u);
    let var_1 = func_4(~_wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b, 0i, 1i), vec3<i32>(8292i, u_input.b, -1i), vec3<i32>(u_input.b, 9212i, u_input.b)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(623i, var_0.b, 24110i), vec3<i32>(var_0.a.c.x, u_input.b, 8019i), vec3<i32>(9731i, 763i, var_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -406f)), (~1u & u_input.e) | ~u_input.e, Struct_2(Struct_1(~var_0.a.a, any(global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), var_0.a.c, 0i), var_0.a.d, _wgslsmith_f_op_vec3_f32(-var_0.c)))).c;
    global0 = array<vec4<bool>, 30>();
    var var_2 = var_1.c.x;
    let var_3 = 2633u;
    let var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), func_1(func_4(~vec3<i32>(var_0.b, var_1.a.d, -1i) & _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, var_1.b, u_input.b), vec3<i32>(var_0.a.d, var_0.a.c.x, var_1.b)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-972f, var_0.c.x, 2359f, var_0.c.x)))), Struct_3(_wgslsmith_f_op_f32(floor(-1355f)), 1660u, func_4(vec3<i32>(0i, var_0.b, var_0.b), vec4<f32>(var_0.c.x, 1491f, -887f, var_1.c.x), Struct_3(var_0.c.x, var_1.a.a.x, Struct_2(var_0.a, -1i, vec3<f32>(var_0.c.x, 1000f, 937f)))).c)), func_5(vec2<u32>(var_1.a.a.x, 27328u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x), vec4<f32>(-1956f, -740f, -1352f, 426f))), vec3<f32>(var_1.c.x, var_1.c.x, _wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)), _wgslsmith_dot_vec2_u32(~var_1.a.a.yx, ~vec2<u32>(var_3, var_3))).a, Struct_1(~(vec4<u32>(var_1.a.a.x, var_3, 0u, 1u) << (vec4<u32>(var_3, u_input.d.x, 24555u, 1u) % vec4<u32>(32u))), var_0.b < _wgslsmith_sub_i32(var_0.b, var_0.a.c.x), ~var_1.a.c, -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b, -1i), vec3<i32>(2147483647i, -8077i, 1i)))), var_0);
    var var_5 = func_5(firstLeadingBit(firstTrailingBit(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_3, 708u), var_0.a.a.wz, vec2<u32>(var_3, var_0.a.a.x)), vec2<u32>(u_input.a.x, 0u)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(sign(-472f)), var_4.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-226f * -393f) + _wgslsmith_f_op_f32(var_4.a * var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a) - -1000f)))), var_0.c, 54400u);
    let x = u_input.a;
    s_output = StorageBuffer(-325f, var_5.b, var_5.c.x, max(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_5.a.a.wzy, u_input.d.yzx), var_0.a.a.x), 58268u), _wgslsmith_add_i32(-1812i, var_1.a.c.x));
}

