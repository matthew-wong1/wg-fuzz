struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
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

var<private> global0: array<bool, 16>;

var<private> global1: array<vec4<bool>, 18>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> f32 {
    global0 = array<bool, 16>();
    let var_0 = Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(!global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 16u)], true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.e.x, 16u)], false)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 49988u), 16u)]), vec3<bool>(!global0[_wgslsmith_index_u32(u_input.c, 16u)], true, true))), vec4<i32>(reverseBits(~(-u_input.b.x)), u_input.d.x, 79217i, u_input.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1619f, _wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(425f, -735f)))), Struct_1(!vec2<bool>(!global0[_wgslsmith_index_u32(u_input.e.x, 16u)], global0[_wgslsmith_index_u32(36107u, 16u)]), vec4<i32>(abs(-u_input.d.x), _wgslsmith_add_i32(u_input.d.x, select(u_input.d.x, 42103i, global0[_wgslsmith_index_u32(u_input.c, 16u)])), u_input.d.x, -41485i), ~max(_wgslsmith_div_vec2_u32(u_input.e.yx, vec2<u32>(1u, u_input.a)), ~u_input.e.yy)), vec3<i32>(u_input.b.x, u_input.d.x, 2147483647i));
    global1 = array<vec4<bool>, 18>();
    var var_1 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1386f), Struct_1(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 16u)]), countOneBits(vec4<i32>(29931i >> (u_input.a % 32u), abs(u_input.b.x), ~(-2084i), _wgslsmith_dot_vec2_i32(u_input.d, var_0.b.xx))), u_input.e.zx), _wgslsmith_f_op_f32(-var_0.c.x), Struct_1(var_0.a.yy, var_0.d.b, u_input.e.xx));
    var var_2 = any(vec2<bool>(_wgslsmith_div_u32(_wgslsmith_mult_u32(var_1.d.c.x, var_1.d.c.x), countOneBits(var_0.d.c.x)) < ((u_input.e.x & 13706u) << (14917u % 32u)), var_1.a < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -705f)))));
    return var_1.a;
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_3, arg_3: vec4<f32>) -> bool {
    var var_0 = Struct_1(vec2<bool>(arg_2.a.a.x, arg_2.d.d.a.x), _wgslsmith_clamp_vec4_i32(-_wgslsmith_mult_vec4_i32(~arg_2.d.d.b, arg_2.d.b), arg_2.a.d.b >> (~(~vec4<u32>(arg_2.d.d.c.x, 1u, 1u, 24180u)) % vec4<u32>(32u)), arg_2.a.b << (vec4<u32>(65351u, _wgslsmith_clamp_u32(1u, 14752u, u_input.a), reverseBits(arg_2.a.d.c.x), ~u_input.e.x) % vec4<u32>(32u))), arg_2.a.d.c);
    let var_1 = abs(var_0.b.x);
    var var_2 = u_input.e;
    var var_3 = arg_2.a.d.b;
    let var_4 = _wgslsmith_clamp_u32(~10671u, abs(7606u), u_input.c) | 6617u;
    return !(u_input.a == arg_2.b);
}

fn func_1(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = Struct_3(arg_0.d, select(u_input.a, ~arg_0.b, _wgslsmith_div_u32(abs(16680u), 69563u) < _wgslsmith_div_u32(59177u, reverseBits(u_input.a))), func_3(select(select(vec2<bool>(false, false), arg_0.d.d.a, !global0[_wgslsmith_index_u32(u_input.a, 16u)]), vec2<bool>(any(arg_0.a.a.xx), true), _wgslsmith_f_op_f32(-345f - 180f) < arg_0.a.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a.c.x + arg_0.a.c.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), -941f, true))), arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-684f, 290f, -917f, -172f), vec4<f32>(265f, -1000f, arg_0.a.c.x, arg_0.d.c.x)), vec4<f32>(736f, arg_0.d.c.x, 564f, arg_0.d.c.x)))), arg_0.d);
    var var_1 = arg_0.d;
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-arg_0.d.c.xy), false, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, u_input.b.x, abs(-2147483647i)), select(vec3<i32>(2147483647i, var_0.d.b.x, 14773i) ^ vec3<i32>(-1i, var_0.a.e.x, -18488i), firstTrailingBit(arg_0.d.d.b.wxz), vec3<bool>(true, arg_0.c, true))), 1i), _wgslsmith_div_vec2_u32(countOneBits(countOneBits(arg_0.a.d.c) & ~arg_0.d.d.c), vec2<u32>(max(select(arg_0.b, 1u, true), 1u), 1u << ((0u >> (arg_0.a.d.c.x % 32u)) % 32u))));
    let var_3 = firstLeadingBit(~vec4<u32>(3721u, 40651u, _wgslsmith_clamp_u32(abs(0u), _wgslsmith_mult_u32(var_1.d.c.x, var_0.a.d.c.x), 1u & var_2.d.x), reverseBits(1u) | ~var_1.d.c.x));
    let var_4 = Struct_5(949f, var_1.d, _wgslsmith_f_op_f32(round(-221f)), Struct_1(vec2<bool>(var_1.a.x, any(vec3<bool>(arg_0.c, arg_0.c, false))), ~(~(~vec4<i32>(28933i, -50654i, arg_0.d.d.b.x, arg_0.a.b.x))), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.e.x, 25248u), min(arg_0.b, var_2.d.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(17408u, 1u) ^ var_0.a.d.c, vec2<u32>(var_2.d.x, 20335u)))));
    return select(~vec4<i32>(-var_4.d.b.x, 6713i, ~(-32754i), 31256i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(5702i, -30164i, -24498i, u_input.b.x), vec4<i32>(firstLeadingBit(var_1.b.x), ~0i, -44762i, i32(-1i) * -2147483647i)), true) & vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 39140i, -2147483647i, 0i), vec4<i32>(var_2.c.x, arg_0.a.b.x, -54918i, -35993i)), countOneBits(var_4.d.b)), _wgslsmith_add_i32(var_1.b.x, 0i), arg_0.d.e.x, -_wgslsmith_dot_vec4_i32(var_1.d.b, _wgslsmith_div_vec4_i32(var_0.a.d.b, var_4.d.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 16>();
    global1 = array<vec4<bool>, 18>();
    global1 = array<vec4<bool>, 18>();
    var var_0 = 11563i;
    let var_1 = Struct_1(vec2<bool>(true, true), vec4<i32>(-1i, u_input.b.x, u_input.b.x, firstLeadingBit(-u_input.b.x)) | _wgslsmith_mult_vec4_i32(~reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, -1i, 2147483647i)), func_1(Struct_3(Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(17221u, 16u)], true, false), vec4<i32>(-2147483647i, -6786i, u_input.b.x, u_input.b.x), vec3<f32>(-706f, -405f, 1548f), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(0u, 16u)], false), vec4<i32>(u_input.b.x, -1i, u_input.d.x, 1i), u_input.e.yz), vec3<i32>(u_input.d.x, 0i, -2147483647i)), 25837u, true, Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(u_input.e.x, 16u)]), vec4<i32>(u_input.d.x, u_input.b.x, u_input.b.x, u_input.d.x), vec3<f32>(1266f, 1000f, -1000f), Struct_1(vec2<bool>(true, true), vec4<i32>(3463i, u_input.d.x, 1i, u_input.b.x), vec2<u32>(1u, u_input.a)), vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x))))), countOneBits(u_input.e.xy) >> (max(vec2<u32>(u_input.a, _wgslsmith_div_u32(u_input.c, u_input.a)), ~vec2<u32>(62850u, u_input.a) ^ vec2<u32>(u_input.c, 0u)) % vec2<u32>(32u)));
    let var_2 = Struct_1(select(var_1.a, vec2<bool>(!var_1.a.x, false), select(select(select(vec2<bool>(global0[_wgslsmith_index_u32(116922u, 16u)], false), var_1.a, var_1.a), vec2<bool>(true, var_1.a.x), vec2<bool>(true, true)), select(select(var_1.a, var_1.a, false), select(vec2<bool>(false, var_1.a.x), var_1.a, true), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 62609u), 16u)]), global0[_wgslsmith_index_u32(~u_input.a ^ _wgslsmith_mult_u32(u_input.a, var_1.c.x), 16u)])), vec4<i32>(0i, func_1(Struct_3(Struct_2(vec3<bool>(false, var_1.a.x, false), vec4<i32>(var_1.b.x, u_input.d.x, u_input.d.x, -2147483647i), vec3<f32>(-2012f, -1582f, 1965f), Struct_1(var_1.a, vec4<i32>(var_1.b.x, 27707i, 28152i, u_input.d.x), vec2<u32>(1u, 0u)), var_1.b.ywz), u_input.a, true, Struct_2(vec3<bool>(false, false, false), vec4<i32>(var_1.b.x, 8509i, 2147483647i, 2147483647i), vec3<f32>(-1148f, -318f, 1000f), var_1, var_1.b.zyz))).x, max(4884i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b.x, 2147483647i), 1i)), -_wgslsmith_clamp_i32(var_1.b.x, u_input.b.x, u_input.d.x)), select(~u_input.e.xx, var_1.c, var_1.a.x) | _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(max(vec2<u32>(1u, var_1.c.x), vec2<u32>(var_1.c.x, u_input.e.x)), ~u_input.e.zy), var_1.c));
    var_0 = ~(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(var_1.b, var_1.b), var_2.b) & ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, var_1.b.x), u_input.d.x, abs(u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-21556i);
}

