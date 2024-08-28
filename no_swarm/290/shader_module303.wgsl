struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_4) -> Struct_2 {
    let var_0 = global1.c;
    let var_1 = Struct_1(var_0.c.x, select(arg_2.d.b, vec2<bool>(arg_0, any(select(vec4<bool>(var_0.b.x, true, arg_3.d, false), vec4<bool>(arg_2.b.a.b.x, true, true, false), arg_0))), var_0.b), (~(~vec3<u32>(global1.a.c.x, 1u, arg_2.b.a.c.x)) ^ (_wgslsmith_mult_vec3_u32(arg_2.c.c, vec3<u32>(15704u, 57055u, 4294967295u)) << (max(var_0.c, vec3<u32>(arg_1.x, 40762u, arg_3.a.x)) % vec3<u32>(32u)))) & _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.a.a, 15809u, 11612u) | max(vec3<u32>(arg_1.x, global1.c.a, global1.d.a), global1.c.c), ~arg_2.d.c, global1.d.c), arg_3.c);
    let var_2 = arg_1 << ((~vec2<u32>(_wgslsmith_dot_vec2_u32(arg_3.a, global1.b.a.c.yx), _wgslsmith_add_u32(arg_3.a.x, 4294967295u)) >> (vec2<u32>(_wgslsmith_add_u32(arg_2.d.a, 45235u), arg_2.c.a) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_3 = var_1.d;
    return Struct_2(arg_2.c, _wgslsmith_f_op_f32(f32(-1f) * -278f));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = 0u;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.b, _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-1817f + 733f)))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-428f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-164f, -1688f)), _wgslsmith_f_op_f32(floor(-756f)), true && all(global1.d.b))), global1.b.b) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global1.b.b, global1.b.b, global1.b.b), vec3<f32>(global1.b.b, global1.b.b, -991f)))), _wgslsmith_div_vec3_f32(vec3<f32>(-869f, 366f, 1129f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.b, global1.b.b, -328f) * vec3<f32>(-313f, -1371f, global1.b.b)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-381f, -1184f, global1.b.b))) - _wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(22179u, 12760u, global1.d.c.x), Struct_4(vec2<u32>(33662u, global1.a.a), 0u, 2147483647i, true), func_2(true, vec2<u32>(global1.a.c.x, 35754u), Struct_3(global1.a, global1.b, global1.a, Struct_1(4294967295u, vec2<bool>(false, global1.a.b.x), global1.d.c, global1.c.d)), Struct_4(global1.a.c.yy, global1.c.a, -1i, true)))))));
    var var_1 = firstTrailingBit(_wgslsmith_sub_u32(global1.a.a, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(global1.a.c.x, 75477u, global1.d.a), 1u)));
    var_1 = _wgslsmith_mult_u32(countOneBits(_wgslsmith_add_u32(countOneBits(global1.a.c.x), ~global1.d.c.x)), max(4294967295u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global1.b.a.c.x), select(vec2<u32>(4294967295u, 66618u), global1.a.c.xy, global1.d.b))));
    var var_2 = abs(countOneBits(vec2<i32>(abs(countOneBits(32306i)), min(_wgslsmith_div_i32(u_input.a, u_input.a), 2389i))));
    return global1.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(func_1(), global1.b, global1.c, Struct_1(global1.a.c.x >> (~136891u % 32u), !global1.c.b, abs(vec3<u32>(max(global1.a.a, global1.c.a), ~1u, global1.b.a.c.x)), _wgslsmith_mult_i32(~(-u_input.a), _wgslsmith_div_i32(u_input.a, -2147483647i))));
    global0 = -global1.d.d;
    global0 = i32(-1i) * -11143i;
    var var_0 = Struct_3(Struct_1(28261u, !vec2<bool>(any(vec2<bool>(global1.b.a.b.x, true)), !global1.d.b.x), vec3<u32>(~(~1u), 44571u, func_1().c.x), -reverseBits(_wgslsmith_add_i32(global1.a.d, 2800i))), func_2(func_2(true, select(vec2<u32>(28742u, 2714u), vec2<u32>(12186u, 64531u), true), Struct_3(global1.b.a, Struct_2(Struct_1(4294967295u, global1.a.b, global1.b.a.c, global1.b.a.d), global1.b.b), Struct_1(global1.c.a, vec2<bool>(global1.d.b.x, global1.a.b.x), vec3<u32>(10230u, 50143u, 45775u), global1.a.d), global1.d), Struct_4(global1.d.c.xx, 0u, global1.a.d, global1.c.b.x)).b >= _wgslsmith_f_op_f32(func_2(global1.d.b.x, vec2<u32>(global1.a.a, 30274u), Struct_3(Struct_1(28328u, vec2<bool>(global1.b.a.b.x, true), vec3<u32>(85556u, global1.b.a.a, 15667u), 1i), Struct_2(global1.b.a, global1.b.b), global1.a, global1.c), Struct_4(global1.a.c.xy, global1.d.a, u_input.a, false)).b * 1f), global1.d.c.zx, Struct_3(global1.c, Struct_2(Struct_1(4294967295u, vec2<bool>(false, true), vec3<u32>(global1.c.a, global1.d.a, 71161u), 2147483647i), -1669f), Struct_1(global1.c.c.x, vec2<bool>(true, global1.b.a.b.x), vec3<u32>(global1.a.a, global1.a.c.x, 66161u) & vec3<u32>(0u, 4294967295u, global1.c.c.x), -22577i), Struct_1(~global1.d.a, global1.b.a.b, vec3<u32>(global1.c.c.x, 25576u, 0u), -30396i)), Struct_4(~global1.b.a.c.yy ^ global1.c.c.xx, 65178u, select(_wgslsmith_div_i32(global1.d.d, global1.c.d), abs(14642i), all(vec3<bool>(true, global1.b.a.b.x, true))), countOneBits(global1.c.a) <= ~global1.d.a)), func_1(), func_2(select(global1.c.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.a.d, 1i, -17007i), vec3<i32>(global1.c.d, global1.a.d, global1.c.d)) == u_input.a, false), _wgslsmith_add_vec2_u32(global1.c.c.xy, global1.c.c.yy >> ((global1.d.c.xx | global1.d.c.zy) % vec2<u32>(32u))), Struct_3(func_2(true, global1.d.c.zx, Struct_3(Struct_1(0u, global1.d.b, vec3<u32>(4294967295u, 1u, 32103u), -11410i), Struct_2(global1.b.a, 280f), global1.c, global1.c), Struct_4(global1.c.c.xz, 16984u, global1.d.d, false)).a, global1.b, func_2(any(vec3<bool>(global1.a.b.x, global1.b.a.b.x, global1.c.b.x)), vec2<u32>(global1.b.a.a, 30097u), Struct_3(Struct_1(26380u, vec2<bool>(global1.a.b.x, global1.a.b.x), global1.c.c, global1.b.a.d), global1.b, Struct_1(20834u, vec2<bool>(false, global1.c.b.x), global1.b.a.c, 1i), global1.b.a), Struct_4(vec2<u32>(global1.d.a, 4294967295u), 73025u, 38727i, false)).a, global1.b.a), Struct_4(_wgslsmith_mult_vec2_u32(global1.c.c.zy, func_1().c.zz), select(_wgslsmith_clamp_u32(26441u, global1.a.a, 1u), 15254u, global1.b.a.b.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, -56855i, global1.c.d, u_input.a), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), (global1.d.c.x & 4294967295u) > _wgslsmith_mult_u32(23865u, 1u))).a);
    var_0 = Struct_3(global1.a, Struct_2(func_1(), var_0.b.b), Struct_1(0u, global1.b.a.b, ~func_2(func_2(var_0.a.b.x, vec2<u32>(var_0.d.a, 0u), Struct_3(global1.d, global1.b, var_0.a, global1.a), Struct_4(global1.c.c.xx, 1u, 46174i, var_0.b.a.b.x)).a.b.x, ~vec2<u32>(var_0.d.a, 1u), Struct_3(Struct_1(4294967295u, var_0.c.b, vec3<u32>(4294967295u, global1.a.a, 103353u), u_input.a), Struct_2(global1.c, var_0.b.b), var_0.d, var_0.d), Struct_4(global1.c.c.xz, 0u, 2147483647i, global1.b.a.b.x)).a.c, _wgslsmith_add_i32(~var_0.d.d, _wgslsmith_mult_i32(countOneBits(u_input.a), ~(-53570i)))), Struct_1(~var_0.c.c.x, var_0.c.b, vec3<u32>(58222u, ~var_0.a.c.x, ~5342u), firstLeadingBit(63371i)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1347f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.b, -636f) - -1523f)), -1657f));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, reverseBits(abs(vec4<u32>(69089u, var_0.a.a, 16572u, _wgslsmith_dot_vec3_u32(var_0.c.c, global1.b.a.c)))), u_input.a);
}

