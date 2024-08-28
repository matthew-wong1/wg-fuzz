struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec3<i32> {
    var var_0 = 51877u;
    var var_1 = true;
    var_1 = _wgslsmith_dot_vec3_u32(~firstLeadingBit(~vec3<u32>(arg_3, arg_0.c.x, u_input.a)), min(vec3<u32>(arg_1.c.x, firstLeadingBit(1u), ~arg_1.c.x), select(vec3<u32>(u_input.a, arg_3, arg_0.c.x), arg_0.c, vec3<bool>(false, arg_1.b, true)) ^ arg_0.c)) >= u_input.b;
    var_0 = 45623u;
    var_0 = ~max(arg_1.c.x, _wgslsmith_div_u32(34246u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, 125816u)), vec2<u32>(u_input.a, arg_3))));
    return _wgslsmith_mod_vec3_i32(vec3<i32>(-28647i, u_input.c.x & _wgslsmith_mult_i32(arg_0.a, _wgslsmith_add_i32(u_input.c.x, 33635i)), arg_1.a), max(-select(vec3<i32>(arg_2, u_input.c.x, u_input.c.x), vec3<i32>(-30388i, -10494i, u_input.c.x), !vec3<bool>(false, arg_0.b, false)), ~(~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -2147483647i, arg_2), vec3<i32>(arg_1.a, -51366i, arg_0.a)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<u32>) -> i32 {
    let var_0 = abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(-16333i, arg_1.x), _wgslsmith_dot_vec2_i32(u_input.c, arg_1)), func_3(Struct_1(arg_2.a, false, arg_2.c), arg_2, 2867i, 49841u) & (vec3<i32>(1i, u_input.c.x, 6543i) | vec3<i32>(arg_1.x, arg_2.a, -2147483647i))));
    let var_1 = Struct_1(26135i, !arg_2.b, ~(~vec3<u32>(19889u, 12063u, 1u) >> (vec3<u32>(1u, 0u | arg_0.c.x, arg_2.c.x) % vec3<u32>(32u))));
    var var_2 = false || all(!vec3<bool>(true, true, any(vec3<bool>(arg_2.b, false, false))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(118f * _wgslsmith_f_op_f32(trunc(-299f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1222f))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -513f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1916f, 826f)), 1654f)));
    let var_4 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1983i, 16778i, var_1.a) & vec3<i32>(-1i, 3838i, arg_2.a), vec3<i32>(arg_2.a, arg_0.a, u_input.c.x)), vec3<i32>(2147483647i, var_1.a, 13149i) | -vec3<i32>(var_1.a, 2147483647i, var_0)), ~(vec3<i32>(18131i, arg_2.a, 0i) >> (select(arg_2.c, vec3<u32>(0u, arg_2.c.x, var_1.c.x), true) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_mult_i32(-1i, 1i), 207i, _wgslsmith_mult_i32(var_0, _wgslsmith_mult_i32(min(arg_0.a, var_0), _wgslsmith_div_i32(1i, -6671i)))));
    return abs(arg_2.a);
}

fn func_1() -> Struct_1 {
    var var_0 = 1000f;
    var var_1 = vec4<i32>(u_input.c.x, _wgslsmith_add_i32(abs(1i >> (u_input.b % 32u)), select(~48460i, u_input.c.x, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -u_input.c.x, -2147483647i, -func_2(Struct_1(-2147483647i, false, vec3<u32>(4294967295u, u_input.a, 20057u)), vec2<i32>(46673i, u_input.c.x), Struct_1(u_input.c.x, false, vec3<u32>(52505u, u_input.a, u_input.b)), vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b)), ~firstLeadingBit(u_input.c.x)), vec4<i32>(countOneBits(0i >> (1u % 32u)), u_input.c.x, ~(u_input.c.x | 2147483647i), -50755i)), 62612i);
    let var_2 = Struct_1(~(-abs(1i) >> (~(~0u) % 32u)), ~44350i <= var_1.x, vec3<u32>(~(abs(u_input.b) << (abs(u_input.a) % 32u)), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), abs(vec2<u32>(1u, u_input.b)))), ~2689u >> (1u % 32u)));
    var var_3 = var_2;
    var var_4 = Struct_1(4327i, var_3.b, vec3<u32>(~((4294967295u << (var_3.c.x % 32u)) ^ ~73204u), _wgslsmith_clamp_u32(var_3.c.x, 2635u, ~(~var_2.c.x)), ~var_2.c.x ^ _wgslsmith_mult_u32(min(var_3.c.x, 68467u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 6129u, var_2.c.x, 2850u), vec4<u32>(var_3.c.x, var_2.c.x, var_2.c.x, 4294967295u)))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = abs(~(_wgslsmith_div_vec2_u32(~var_0.c.zx, ~vec2<u32>(u_input.a, var_0.c.x)) & (var_0.c.yy | vec2<u32>(47390u, 52904u))));
    var_0 = func_1();
    var_0 = Struct_1(-24587i, true, ~(~(~(~vec3<u32>(49290u, 23802u, var_0.c.x)))));
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-615f, _wgslsmith_f_op_f32(trunc(1473f))))));
    let var_4 = all(!(!(!vec2<bool>(var_0.b, true))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(Struct_1(-1i >> (~u_input.a % 32u), any(select(vec3<bool>(true, var_2.b, false), vec3<bool>(var_4, true, false), vec3<bool>(var_2.b, var_4, var_4))), vec3<u32>(firstTrailingBit(u_input.b), ~u_input.b, 1u)), func_1(), 0i, ~(~var_0.c.x) | ~1u).x, -_wgslsmith_sub_i32(~2291i, -40678i), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2016f + 630f), _wgslsmith_f_op_f32(round(-322f))), 716f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-2191f)), _wgslsmith_f_op_f32(step(-631f, 999f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-400f, -133f, 1000f) * vec3<f32>(-964f, -213f, 1426f)))))));
}

