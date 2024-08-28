struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15>;

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> u32 {
    global1 = min(-1i, _wgslsmith_sub_i32(-1i >> (_wgslsmith_dot_vec2_u32(~arg_1.a.wx, _wgslsmith_sub_vec2_u32(vec2<u32>(39419u, 25788u), vec2<u32>(3661u, 24574u))) % 32u), -10808i));
    global0 = array<vec3<i32>, 15>();
    global0 = array<vec3<i32>, 15>();
    let var_0 = 1044f;
    var var_1 = false;
    return u_input.b;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> vec4<i32> {
    var var_0 = arg_0.a;
    var var_1 = var_0.c;
    var var_2 = firstTrailingBit(vec4<u32>(arg_3, select(arg_3, ~arg_2.a.x, (arg_2.c & arg_2.c) & all(vec3<bool>(arg_0.a.c, var_0.c, arg_2.c))), ~(~0u ^ ~arg_2.a.x), ~_wgslsmith_mod_u32(arg_3 | 34913u, ~39040u)));
    return ~abs(vec4<i32>(_wgslsmith_div_i32(1i, ~14211i), 1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(29777i, arg_2.b.x, 0i), u_input.c), -18462i), -81804i));
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_1(firstLeadingBit(abs(vec4<u32>(0u, 0u, 10345u, 52584u)) << (~(vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.b) >> (vec4<u32>(10448u, u_input.b, u_input.b, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), select((func_3(Struct_2(Struct_1(vec4<u32>(19643u, 0u, u_input.a, 0u), vec4<i32>(-20163i, 34086i, -31085i, u_input.c.x), true), Struct_1(vec4<u32>(97354u, 1u, u_input.a, u_input.b), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x), false), Struct_1(vec4<u32>(u_input.b, u_input.a, 33304u, u_input.a), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i), true)), u_input.a, Struct_1(vec4<u32>(0u, 30276u, u_input.b, 0u), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 1i), false), 0u) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 0u, 15862u, 4294967295u), vec4<u32>(u_input.a, 20003u, 44001u, 1u)) % vec4<u32>(32u))) ^ ~vec4<i32>(u_input.c.x, u_input.c.x, 46361i, u_input.c.x), vec4<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(~u_input.c.yy, vec2<i32>(u_input.c.x, u_input.c.x)), u_input.c.x & firstTrailingBit(u_input.c.x), _wgslsmith_add_i32(2147483647i, u_input.c.x)), vec4<bool>(true, true, true, true)), true);
    let var_1 = select(!select(vec3<bool>(true, true, var_0.c), !(!vec3<bool>(var_0.c, false, true)), var_0.c), select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(false, false, any(!vec4<bool>(var_0.c, true, true, true))), true), vec3<bool>(any(vec2<bool>(!var_0.c, all(vec3<bool>(var_0.c, var_0.c, var_0.c)))), var_0.c, select(false, !var_0.c, var_0.c)));
    global0 = array<vec3<i32>, 15>();
    global0 = array<vec3<i32>, 15>();
    let var_2 = abs(abs(vec3<i32>(u_input.c.x & 0i, u_input.c.x, 0i) << ((abs(var_0.a.xzx) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.b, var_0.a.x), vec3<u32>(u_input.a, 1u, 4294967295u))) % vec3<u32>(32u))));
    return firstTrailingBit(vec4<i32>(-(~reverseBits(15423i)), -firstLeadingBit(0i) >> (u_input.b % 32u), firstLeadingBit(u_input.c.x), 25746i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 4294967295u, u_input.a) >> (var_0.a.xzx % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_0.a.x, var_0.a.x), vec3<u32>(46196u, 16713u, 0u))) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -u_input.c.x;
    let var_0 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(select(~vec4<u32>(0u, u_input.b, 1u, 4294967295u), vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.a), vec4<bool>(false, true, true, true)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(u_input.b, u_input.a, u_input.a)), 1779u & u_input.b, func_1(u_input.c.x, Struct_1(vec4<u32>(38411u, u_input.b, u_input.a, u_input.a), vec4<i32>(-2147483647i, -11149i, u_input.c.x, u_input.c.x), true)), func_1(-9644i, Struct_1(vec4<u32>(u_input.a, u_input.b, 0u, u_input.b), vec4<i32>(-10140i, -58258i, -4884i, -22376i), false)))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(func_2(), countOneBits(vec4<i32>(u_input.c.x, -1i, 11080i, -34258i))), -vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.c.x)), !(!(u_input.c.x == u_input.c.x))), Struct_1(_wgslsmith_div_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.b, u_input.a), vec4<u32>(1u, 59156u, u_input.a, 19898u))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.a, 46227u), vec4<u32>(63972u, 0u, u_input.a, 72744u)), ~u_input.b, ~u_input.b, u_input.b ^ u_input.b)), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(0i, u_input.c.x, 0i, 32309i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), true), vec4<i32>(_wgslsmith_mult_i32(-60878i, 1i), _wgslsmith_add_i32(u_input.c.x, 85742i), -2147483647i, -13582i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -62999i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_div_i32(_wgslsmith_mod_i32(-7062i, u_input.c.x), 0i) <= u_input.c.x), Struct_1(vec4<u32>(reverseBits(u_input.a), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 48370u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 48131u)) & 16704u, firstTrailingBit(u_input.a)), _wgslsmith_mult_vec4_i32(min(~vec4<i32>(0i, -1i, 5480i, u_input.c.x), vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x)), -min(vec4<i32>(22450i, 2147483647i, u_input.c.x, u_input.c.x), vec4<i32>(2147483647i, u_input.c.x, 1i, u_input.c.x))), any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true))));
    var var_1 = vec2<u32>(firstLeadingBit(~var_0.c.a.x), _wgslsmith_mult_u32(var_0.c.a.x, abs(var_0.a.a.x)));
    let var_2 = Struct_2(Struct_1(max(_wgslsmith_div_vec4_u32(vec4<u32>(8489u, u_input.b, 0u, 1u), vec4<u32>(var_1.x, var_0.b.a.x, 34391u, 29742u)), select(vec4<u32>(u_input.b, var_1.x, u_input.a, 4294967295u), vec4<u32>(u_input.a, 1u, 0u, 14477u), vec4<bool>(var_0.b.c, false, var_0.b.c, true)) ^ _wgslsmith_mult_vec4_u32(var_0.a.a, var_0.b.a)), max(vec4<i32>(-46741i, u_input.c.x, 38691i, -2147483647i), ~vec4<i32>(var_0.a.b.x, 2147483647i, u_input.c.x, u_input.c.x)) & vec4<i32>(countOneBits(22027i), u_input.c.x ^ u_input.c.x, _wgslsmith_mod_i32(var_0.b.b.x, -1851i), ~(-20514i)), false), var_0.b, Struct_1(countOneBits(var_0.a.a >> (var_0.c.a % vec4<u32>(32u))) << (firstLeadingBit(vec4<u32>(var_1.x, 4109u, 4294967295u, var_0.c.a.x) ^ vec4<u32>(40756u, 0u, 93364u, var_0.c.a.x)) % vec4<u32>(32u)), select(var_0.c.b, _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-2147483647i, -39414i, -2147483647i, -31745i)), var_0.b.b), !all(vec4<bool>(var_0.b.c, false, var_0.b.c, var_0.a.c))), var_0.c.c));
    let var_3 = select(!(!select(vec3<bool>(true, true, var_2.b.c), select(vec3<bool>(false, true, var_0.c.c), vec3<bool>(var_0.c.c, false, true), vec3<bool>(false, var_2.c.c, var_0.b.c)), select(vec3<bool>(false, var_0.b.c, false), vec3<bool>(var_2.b.c, var_0.c.c, var_0.c.c), vec3<bool>(var_0.a.c, var_2.a.c, var_0.a.c)))), vec3<bool>(!any(!vec3<bool>(var_2.c.c, var_0.b.c, var_0.b.c)), false, !any(!vec4<bool>(false, var_2.c.c, false, true))), false);
    var var_4 = Struct_2(var_2.c, var_2.a, Struct_1(~(~var_2.c.a), var_2.c.b, select(false, true, true)));
    let var_5 = vec3<i32>(u_input.c.x, -472i, ~(-10967i));
    global1 = i32(-1i) * -(~(~(~var_5.x)));
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-571f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(800f)) - _wgslsmith_f_op_f32(floor(-152f)))), _wgslsmith_div_f32(-186f, -370f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1931f)), _wgslsmith_f_op_f32(705f + -1374f), any(vec4<bool>(true, var_2.c.c, false, var_0.a.c)))))), _wgslsmith_f_op_f32(sign(-339f))));
}

