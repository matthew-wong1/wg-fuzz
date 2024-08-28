struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_3,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    var var_0 = vec3<u32>(max(u_input.b.x, _wgslsmith_div_u32(select(countOneBits(u_input.d), ~u_input.b.x, global0.x), ~u_input.d)), u_input.d, max(_wgslsmith_sub_u32(u_input.b.x, firstLeadingBit(~u_input.b.x)), u_input.d ^ _wgslsmith_mult_u32(u_input.d, _wgslsmith_clamp_u32(85882u, 33724u, 4294967295u))));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(-281f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1763f)), -296f))), 2116f, 822f, _wgslsmith_div_f32(-341f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1185f, _wgslsmith_f_op_f32(109f - -963f)))));
    var_0 = countOneBits((_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 60652u, 17268u), ~u_input.b.wxy, u_input.b.xzz) << (~vec3<u32>(u_input.b.x, var_0.x, 0u) % vec3<u32>(32u))) >> ((~_wgslsmith_mult_vec3_u32(u_input.b.zxy, vec3<u32>(4294967295u, 0u, var_0.x)) ^ u_input.b.wyx) % vec3<u32>(32u)));
    let var_2 = global0.xy;
    var var_3 = 4294967295u;
    return var_2.x;
}

fn func_2() -> bool {
    global0 = vec4<bool>(true, all(vec4<bool>(true, func_3(), true, !global0.x)), true, true);
    let var_0 = Struct_1(0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(-283f))) + _wgslsmith_f_op_f32(-736f * _wgslsmith_f_op_f32(f32(-1f) * -1636f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(327f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1471f)) + 1651f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(632f))))), true, vec4<i32>(u_input.c, -2141i, 1i | u_input.e.x, u_input.c));
    global0 = select(!vec4<bool>(false, all(select(global0.zw, vec2<bool>(global0.x, var_0.d), global0.wx)), true && !var_0.d, all(!vec4<bool>(false, var_0.d, var_0.d, global0.x))), vec4<bool>(false, var_0.d, false, any(vec4<bool>(false, global0.x, 43097i < var_0.e.x, var_0.d))), true);
    global0 = vec4<bool>(func_3(), global0.x, var_0.e.x > (-1i >> (0u % 32u)), var_0.d);
    global0 = !vec4<bool>(!(global0.x || global0.x), global0.x, true, !func_3());
    return global0.x;
}

fn func_1() -> Struct_4 {
    let var_0 = u_input.d;
    let var_1 = select(vec4<bool>(true, any(!select(vec3<bool>(true, true, true), global0.wwz, global0.x)), true, true), !(!vec4<bool>(func_2(), true, u_input.b.x > 1u, all(vec4<bool>(global0.x, true, global0.x, false)))), true);
    global0 = var_1;
    global0 = vec4<bool>(global0.x, true, !func_3(), func_3());
    global0 = var_1;
    return Struct_4(u_input.c | max(~(-12422i), -1i), Struct_3(Struct_1(firstTrailingBit(2147483647i), 381f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1229f, -1139f), vec2<f32>(859f, 1767f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1231f, -169f)))), select(true, true, all(vec2<bool>(var_1.x, true))), vec4<i32>(-u_input.a.x, _wgslsmith_mod_i32(2147483647i, -40016i), u_input.a.x >> (var_0 % 32u), _wgslsmith_add_i32(u_input.a.x, 47004i)))), Struct_3(Struct_1(-11763i, -269f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(590f, -565f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(852f, 715f))), true, min(abs(vec4<i32>(u_input.e.x, 2147483647i, u_input.a.x, u_input.e.x)), abs(vec4<i32>(u_input.c, u_input.a.x, u_input.e.x, 24110i))))), ~u_input.b.wyw & u_input.b.ywy, max(0u, _wgslsmith_div_u32(~(u_input.d & u_input.d), _wgslsmith_dot_vec3_u32(select(u_input.b.wzy, u_input.b.xxx, var_1.yzx), ~u_input.b.wwx))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_4(i32(-1i) * -1i, var_0.c, Struct_3(var_0.c.a), select(u_input.b.xxw ^ _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(13280u, 4294967295u, 4294967295u)), vec3<u32>(u_input.d, var_0.e, 63300u) << (vec3<u32>(0u, u_input.b.x, u_input.d) % vec3<u32>(32u))), u_input.b.xww, !global0.xxy), 1u);
    let var_1 = 4294967295u >> (var_0.d.x % 32u);
    var var_2 = vec3<bool>(var_0.b.a.d, true, var_0.b.a.d);
    var_0 = Struct_4(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(2147483647i, 42385i, -2147483647i)), reverseBits(var_0.c.a.e.wzx)) | (2147483647i << (abs(~var_1) % 32u)), var_0.c, func_1().c, _wgslsmith_add_vec3_u32(vec3<u32>(var_1, 1u, firstLeadingBit(67284u)), var_0.d) & _wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_0.d.x), vec3<u32>(var_0.d.x, 94941u, var_1)), ~vec3<u32>(33101u, u_input.b.x, 1u)), _wgslsmith_sub_u32(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(48706u, 0u), ~vec2<u32>(43137u, u_input.b.x))));
    let var_3 = vec2<i32>(_wgslsmith_add_i32(25167i, _wgslsmith_sub_i32(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-20698i, 3612i, -2147483647i), vec3<i32>(u_input.e.x, u_input.e.x, 1i))), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.b.a.a, 1i) >> (vec3<u32>(47359u, 62190u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a, var_0.c.a.e.x, 1i), vec3<i32>(u_input.a.x, -6173i, u_input.e.x), vec3<i32>(-2147483647i, 9781i, var_0.a))))), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.a.e);
}

