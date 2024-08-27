struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<u32>(43030u, 2731u, 12980u), vec3<u32>(4294967295u, 0u, 4294967295u), 12306u, vec3<bool>(true, false, false), 0u), Struct_1(vec3<u32>(5069u, 2293u, 4294967295u), vec3<u32>(33229u, 4294967295u, 23117u), 1u, vec3<bool>(false, true, true), 27617u), Struct_1(vec3<u32>(51744u, 4294967295u, 85734u), vec3<u32>(20242u, 73509u, 32828u), 1u, vec3<bool>(false, false, false), 4294967295u), Struct_1(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 27363u, 20285u), 51274u, vec3<bool>(false, true, true), 0u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 46809u), vec3<u32>(4294967295u, 0u, 14995u), 30311u, vec3<bool>(true, true, false), 10574u), Struct_1(vec3<u32>(4294967295u, 1u, 48161u), vec3<u32>(13594u, 1u, 25702u), 6789u, vec3<bool>(true, true, true), 0u), Struct_1(vec3<u32>(4294967295u, 27557u, 11007u), vec3<u32>(27679u, 1u, 0u), 4294967295u, vec3<bool>(true, true, true), 1u), Struct_1(vec3<u32>(1u, 1u, 1u), vec3<u32>(284u, 66897u, 1u), 95929u, vec3<bool>(false, false, false), 87762u), Struct_1(vec3<u32>(1u, 0u, 1u), vec3<u32>(35666u, 24762u, 4294967295u), 0u, vec3<bool>(false, false, false), 45472u), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(39380u, 82592u, 4294967295u), 1u, vec3<bool>(true, false, true), 18191u), Struct_1(vec3<u32>(4294967295u, 10438u, 74213u), vec3<u32>(14508u, 0u, 1560u), 1u, vec3<bool>(true, false, true), 5386u), Struct_1(vec3<u32>(21056u, 1u, 4294967295u), vec3<u32>(46764u, 1u, 4294967295u), 65473u, vec3<bool>(false, true, false), 1u), Struct_1(vec3<u32>(27486u, 0u, 4294967295u), vec3<u32>(4294967295u, 22642u, 50343u), 4294967295u, vec3<bool>(false, true, false), 16587u), Struct_1(vec3<u32>(23983u, 103893u, 8425u), vec3<u32>(4294967295u, 1u, 1u), 21076u, vec3<bool>(true, false, true), 4294967295u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(2769u, 1u, 0u), 52237u, vec3<bool>(true, false, false), 96394u), Struct_1(vec3<u32>(76196u, 4980u, 7976u), vec3<u32>(48554u, 1u, 74246u), 4294967295u, vec3<bool>(true, true, false), 43102u), Struct_1(vec3<u32>(44616u, 98099u, 13681u), vec3<u32>(12018u, 4294967295u, 8797u), 0u, vec3<bool>(false, false, false), 3152u), Struct_1(vec3<u32>(78265u, 61854u, 4294967295u), vec3<u32>(42612u, 56309u, 44042u), 1u, vec3<bool>(true, false, false), 4294967295u));

var<private> global1: array<vec3<i32>, 19>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: bool) -> vec3<u32> {
    global1 = array<vec3<i32>, 19>();
    return vec3<u32>(~(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(4294967295u, 4294967295u)) << (u_input.c % 32u)), 1u | _wgslsmith_clamp_u32(~0u, 1u, _wgslsmith_add_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 41216u, u_input.c, 2119u), vec4<u32>(u_input.c, u_input.c, 25646u, 0u)))), ~(~u_input.c));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec3<bool> {
    global1 = array<vec3<i32>, 19>();
    global1 = array<vec3<i32>, 19>();
    global2 = !select(vec3<bool>(false, true, true), !(!(!vec3<bool>(true, arg_1, global2.x))), global2.x);
    global2 = vec3<bool>(true, all(select(select(select(vec4<bool>(arg_1, true, false, true), vec4<bool>(arg_1, global2.x, true, arg_1), vec4<bool>(arg_1, false, true, global2.x)), !vec4<bool>(true, arg_1, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(!global2.x, true, select(true, false, false), true), !(1177f < arg_0.e))), !(!global2.x && !global2.x) && global2.x);
    return vec3<bool>(!any(!select(vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, global2.x, true), vec3<bool>(false, global2.x, false))), (arg_0.d << ((firstTrailingBit(55569u) | 1637u) % 32u)) <= 2147483647i, false);
}

fn func_1() -> i32 {
    var var_0 = ~(-1i);
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(74203u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, u_input.c, u_input.c, 1u) & ~vec4<u32>(4294967295u, 0u, u_input.c, u_input.c), ~vec4<u32>(16881u, 2822u, 1u, 87839u)), select(firstTrailingBit(u_input.c), ~(~u_input.c), true)), ~countOneBits(vec3<u32>(u_input.c, u_input.c, 4294967295u)) >> (_wgslsmith_add_vec3_u32((vec3<u32>(u_input.c, u_input.c, u_input.c) ^ vec3<u32>(u_input.c, u_input.c, u_input.c)) & _wgslsmith_add_vec3_u32(vec3<u32>(54753u, 254u, 0u), vec3<u32>(u_input.c, u_input.c, 4294967295u)), abs(vec3<u32>(u_input.c, u_input.c, 4294967295u))) % vec3<u32>(32u)));
    let var_2 = var_1.x;
    let var_3 = Struct_1(func_2(false), _wgslsmith_div_vec3_u32(var_1, var_1), 42393u, select(!func_3(Struct_2(443f, vec2<i32>(u_input.b, -12926i), u_input.c, -17002i, -1000f), true), !vec3<bool>(any(vec3<bool>(global2.x, global2.x, false)), true, all(global2.xy)), !global2.x), 32107u);
    var var_4 = var_3.b.x & 0u;
    return ~u_input.b | _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, u_input.a), abs(vec2<i32>(u_input.b, u_input.b))) << (~(0u << (var_3.e % 32u)) % 32u), ~(u_input.b & _wgslsmith_div_i32(1i, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-738f, vec2<i32>(max(19104i, func_1()), -1i | u_input.a), select(u_input.c, 24472u, true), reverseBits(48263i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-680f)) * _wgslsmith_f_op_f32(148f - 822f))))));
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(~u_input.a, ~(-45181i), 1i, var_0.b.x), countOneBits(-(vec4<i32>(2147483647i, u_input.a, 0i, -14588i) ^ vec4<i32>(var_0.b.x, var_0.d, 2147483647i, var_0.b.x))));
    var var_2 = _wgslsmith_add_vec3_i32(global1[_wgslsmith_index_u32(0u, 19u)], vec3<i32>(var_1.x, _wgslsmith_mod_i32(var_1.x, var_0.b.x), _wgslsmith_mult_i32(_wgslsmith_add_i32(-67221i, -2013i), var_0.b.x) << (1u % 32u)));
    var var_3 = var_0;
    var_2 = (vec3<i32>(var_3.d, reverseBits(var_3.d), _wgslsmith_add_i32(min(var_1.x, var_2.x), -var_2.x)) << (~(select(vec3<u32>(var_3.c, var_3.c, var_3.c), vec3<u32>(var_0.c, 63423u, 1u), global2.x) ^ select(vec3<u32>(0u, 1u, 11035u), vec3<u32>(var_0.c, var_0.c, 0u), global2.x)) % vec3<u32>(32u))) << (~(~(~vec3<u32>(0u, var_3.c, u_input.c))) % vec3<u32>(32u));
    var var_4 = u_input.a < -1i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, ~121757u, var_3.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.c, var_3.c, 4294967295u, 36220u), vec4<u32>(1u, var_3.c, u_input.c, 23686u), vec4<u32>(var_3.c, var_3.c, 4294967295u, 75605u)) & ~vec4<u32>(u_input.c, var_0.c, var_3.c, var_0.c)), _wgslsmith_f_op_f32(-var_3.e));
}

