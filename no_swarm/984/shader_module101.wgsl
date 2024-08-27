struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_3,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(true, true, false, true, true);

var<private> global1: array<u32, 22>;

var<private> global2: array<f32, 6>;

var<private> global3: vec4<bool>;

var<private> global4: vec3<u32> = vec3<u32>(33217u, 4294967295u, 0u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    return global2[_wgslsmith_index_u32(countOneBits(~global4.x), 6u)];
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1851f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 22u)], 6u)], global2[_wgslsmith_index_u32(global4.x, 6u)])))) - global2[_wgslsmith_index_u32(~(~global4.x), 6u)]), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(2627u, 6u)])) - _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 22u)], 6u)]))), -679f, 171f), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, 15682u, global1[_wgslsmith_index_u32(39242u, 22u)] ^ 12878u), 6u)] >= global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, global1[_wgslsmith_index_u32(global4.x, 22u)] ^ global4.x), 22u)], 6u)]), select(vec4<bool>(11271u <= (global1[_wgslsmith_index_u32(global4.x, 22u)] & global1[_wgslsmith_index_u32(67434u, 22u)]), !global0[_wgslsmith_index_u32(firstLeadingBit(92582u), 5u)], true, !(!global0[_wgslsmith_index_u32(1u, 5u)])), vec4<bool>(global3.x, any(!global3.xw), !global0[_wgslsmith_index_u32(global4.x, 5u)], false && any(vec2<bool>(global3.x, global0[_wgslsmith_index_u32(17257u, 5u)]))), vec4<bool>(true, _wgslsmith_f_op_f32(trunc(-463f)) == _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 22u)], 22u)], 6u)]), false, global3.x)));
    let var_1 = ~min(~global1[_wgslsmith_index_u32((4294967295u & global4.x) | abs(0u), 22u)], _wgslsmith_div_u32(~_wgslsmith_mult_u32(16226u, 2398u), 4294967295u));
    var var_2 = select(vec2<i32>(-6003i, u_input.b.x), _wgslsmith_add_vec2_i32(-vec2<i32>(_wgslsmith_add_i32(u_input.a, 14318i), -9337i), u_input.b.zz), global3.x & true);
    global1 = array<u32, 22>();
    var var_3 = 739f;
    return Struct_4(_wgslsmith_mod_vec4_u32(~(vec4<u32>(global1[_wgslsmith_index_u32(12638u, 22u)], var_1, var_1, global4.x) ^ select(vec4<u32>(4294967295u, 67939u, 17068u, 0u), vec4<u32>(global4.x, 107465u, global1[_wgslsmith_index_u32(17082u, 22u)], 1u), global0[_wgslsmith_index_u32(global4.x, 5u)])), ~firstLeadingBit(~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global4.x, global1[_wgslsmith_index_u32(var_1, 22u)], var_1))), var_0, Struct_3(var_0.a.b.yx, global1[_wgslsmith_index_u32(17588u, 22u)], var_0.a, 23316i, var_0.b.x), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-458f * _wgslsmith_f_op_f32(min(1000f, 1128f))))), _wgslsmith_f_op_vec3_f32(var_0.a.b - _wgslsmith_div_vec3_f32(var_0.a.b, var_0.a.b)), var_0.b.x), true && any(vec2<bool>(true, false)));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = func_2();
    var var_1 = min(firstTrailingBit(u_input.b.xyx) & select(vec3<i32>(34791i, var_0.c.d, 16407i), u_input.b.xww, var_0.b.b.wxw), ~(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.c.d, var_0.c.d, -13190i), vec3<i32>(var_0.c.d, 1i, u_input.b.x)) ^ vec3<i32>(var_0.c.d, u_input.b.x, -1i))) >> (_wgslsmith_clamp_vec3_u32(var_0.a.zww, ~vec3<u32>(global4.x, 4294967295u, global1[_wgslsmith_index_u32(reverseBits(global1[_wgslsmith_index_u32(9589u, 22u)]), 22u)]), var_0.a.zwy) % vec3<u32>(32u));
    var var_2 = vec2<bool>(global3.x, global3.x);
    var_1 = ~u_input.b.zyx | -u_input.b.zxz;
    var var_3 = Struct_4(_wgslsmith_add_vec4_u32(~var_0.a, _wgslsmith_sub_vec4_u32(~vec4<u32>(15819u, 92267u, var_0.c.b, 4294967295u) ^ vec4<u32>(var_0.c.b, 4294967295u, var_0.a.x, 14972u), ~(~vec4<u32>(18199u, 62836u, 47082u, 6328u)))), Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(19898u, 6u)], global2[_wgslsmith_index_u32(var_0.a.x, 6u)]), _wgslsmith_div_f32(-368f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 22u)], 6u)])), vec3<f32>(global2[_wgslsmith_index_u32(min(39868u, 62958u), 6u)], _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -585f)), true), var_0.b.b), Struct_3(arg_0.b.yy, countOneBits(global4.x), func_2().c.c, var_0.c.d, true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.a.b.x)))), _wgslsmith_f_op_vec3_f32(ceil(var_0.c.c.b)), false), true);
    return var_0.b.b.yyw;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 22>();
    global4 = ~_wgslsmith_sub_vec3_u32(select(vec3<u32>(global4.x, 31604u, global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)], 22u)], 17180u), func_1(Struct_1(1730f, vec3<f32>(-1000f, global2[_wgslsmith_index_u32(global4.x, 6u)], -1080f), true))) >> (~(~vec3<u32>(15775u, 107783u, global1[_wgslsmith_index_u32(39241u, 22u)])) % vec3<u32>(32u)), abs(_wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(82951u, 22u)], 59567u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22790u, 22u)], 22u)]), _wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(95096u, 22u)], global4.x, 7765u), vec3<u32>(global1[_wgslsmith_index_u32(1u, 22u)], 31682u, 88505u)))));
    let var_0 = ~vec3<u32>(global4.x, abs(18497u), 9729u);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-372f, global2[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(822f, global2[_wgslsmith_index_u32(45254u, 6u)]) + vec2<f32>(1840f, -154f))))), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 22u)], 22u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(global4.x, 0u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 22u)], 5u)]), 22u)], 6u)])), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 6u)], -1415f, -441f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-847f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 22u)], 6u)], global2[_wgslsmith_index_u32(1u, 6u)]) - vec3<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 22u)], 6u)], global2[_wgslsmith_index_u32(var_0.x, 6u)], global2[_wgslsmith_index_u32(0u, 6u)]))), func_1(func_2().d).x)), all(global3.wz)), u_input.b.x, false);
    let var_2 = ~(~vec4<u32>(1u, var_1.b, global1[_wgslsmith_index_u32(max(0u, var_0.x) << (global1[_wgslsmith_index_u32(67204u, 22u)] % 32u), 22u)], 19862u));
    let var_3 = ~4294967295u;
    let var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -871f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-462f, var_1.c.b.x) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2[_wgslsmith_index_u32(var_3, 6u)], var_1.a.x))))))), var_1.b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.b, 6u)]) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.b, 6u)] - 229f), var_1.c.c))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.x, 22u)], 22u)], 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-197f * 585f)), _wgslsmith_f_op_f32(var_1.c.a - var_1.c.b.x)), select(true, false, true) & any(func_2().b.b)), var_1.d, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(35566u, 21579u), 6u)] + _wgslsmith_f_op_f32(max(-1981f, _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(34947u, 6u)], 525f))))) <= _wgslsmith_f_op_f32(sign(var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.b.zyz, firstTrailingBit(-u_input.b.wxx)), _wgslsmith_sub_i32(abs(var_1.d), 2147483647i & u_input.b.x)), countOneBits(var_0), 1090f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(var_2.x, 22u)] >> (89942u % 32u), ~0u), ~18118u), 6u)]));
}

