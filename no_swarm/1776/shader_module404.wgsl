struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: vec2<i32>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<u32>(43993u, 33784u, 27778u), 33026i, 1u));

var<private> global1: vec3<i32> = vec3<i32>(24756i, -3293i, -14754i);

var<private> global2: Struct_5 = Struct_5(62889u, Struct_4(24677u, Struct_1(vec3<u32>(0u, 0u, 59494u), -74451i, 41893u)), vec2<i32>(33869i, 1i), vec4<u32>(10013u, 63507u, 10237u, 21643u), 791f);

var<private> global3: vec3<i32>;

var<private> global4: array<u32, 21> = array<u32, 21>(1u, 15740u, 24900u, 25137u, 16598u, 4294967295u, 59953u, 18211u, 52590u, 119484u, 1u, 25664u, 0u, 23231u, 1u, 1u, 1u, 0u, 20648u, 63772u, 4294967295u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>) -> vec2<i32> {
    global0 = Struct_3(global2.b.b);
    let var_0 = Struct_5(global0.a.c, global2.b, vec2<i32>(countOneBits(global2.c.x & global3.x) | min(_wgslsmith_add_i32(global3.x, 1i), -global2.b.b.b), global0.a.b), ~global2.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.e), -1057f)), -838f)));
    global4 = array<u32, 21>();
    let var_1 = Struct_4(_wgslsmith_dot_vec2_u32(~(~var_0.b.b.a.zz << (global0.a.a.xz % vec2<u32>(32u))), select(~countOneBits(global2.b.b.a.yx), global2.b.b.a.yx, true)), Struct_1(global0.a.a, _wgslsmith_add_i32(global1.x, _wgslsmith_div_i32(var_0.c.x, -1i)) >> (abs(firstLeadingBit(4294967295u)) % 32u), global0.a.a.x));
    global2 = Struct_5(_wgslsmith_div_u32(var_0.a, abs(global0.a.a.x)), Struct_4(var_0.a, var_1.b), vec2<i32>(var_0.c.x >> (global2.d.x % 32u), global3.x), vec4<u32>(_wgslsmith_sub_u32(min(114301u, global4[_wgslsmith_index_u32(var_1.b.c, 21u)]), reverseBits(global2.b.a)) & _wgslsmith_div_u32(38221u, global0.a.c), _wgslsmith_add_u32(~(1u ^ var_1.b.c), var_0.a), 1u, global0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(106f)), _wgslsmith_f_op_f32(-var_0.e))), global2.e)));
    return global2.c;
}

fn func_2() -> Struct_1 {
    global2 = Struct_5(~43240u, Struct_4(~(~global0.a.c), Struct_1(vec3<u32>(44281u, 46800u, firstTrailingBit(5579u)), reverseBits(-u_input.a.x), 4294967295u)), func_3(!vec4<bool>(true, true, all(vec2<bool>(false, false)), false)), vec4<u32>(56605u, ~(global2.d.x << (global0.a.c % 32u)) & global0.a.a.x, 1u, firstLeadingBit(0u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1391f - global2.e)) - _wgslsmith_f_op_f32(-1429f * _wgslsmith_f_op_f32(f32(-1f) * -729f))))));
    let var_0 = Struct_5(countOneBits(firstLeadingBit(global2.b.b.c)), Struct_4(firstTrailingBit(abs(20877u) << (~4294967295u % 32u)), global0.a), global3.yy, ~vec4<u32>(~(~global0.a.c), ~global2.d.x, 43369u, select(~0u, ~global0.a.a.x, true)), -1590f);
    global4 = array<u32, 21>();
    let var_1 = vec2<i32>(global1.x, u_input.a.x);
    var var_2 = var_0;
    return Struct_1(vec3<u32>(~33344u, ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(501u, 21u)], 21u)], 70269u), min(-12685i, global0.a.b), ~(~_wgslsmith_mult_u32(~1u, var_0.a)));
}

fn func_1() -> Struct_1 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), ~(~vec3<i32>(_wgslsmith_mod_i32(global0.a.b, 0i), i32(-1i) * -8389i, -global3.x)), u_input.c.yx >> (func_1().a.xx % vec2<u32>(32u)), func_3(vec4<bool>(any(vec4<bool>(true, true, true, true)), false, _wgslsmith_add_i32(global0.a.b, global3.x) <= -2147483647i, (20474u == global2.d.x) & true)).x);
    global4 = array<u32, 21>();
    let var_1 = vec2<bool>(!(!(any(vec4<bool>(false, false, true, true)) && false)), true);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.e, -950f, !(var_0.a.a.x > 4294967295u)))) * -532f);
    let var_3 = Struct_2(global2.b.b, -vec3<i32>(_wgslsmith_clamp_i32(min(28654i, global2.c.x), reverseBits(22481i), _wgslsmith_dot_vec2_i32(global1.yx, vec2<i32>(1i, -10368i))), var_0.a.b, ~global1.x), max(vec2<i32>(global2.b.b.b, min(2147483647i << (0u % 32u), ~global1.x)), u_input.a), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~vec2<i32>(-1i, global3.x) & vec2<i32>(global0.a.b, global1.x))));
}

