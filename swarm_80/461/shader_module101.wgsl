struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 10>;

var<private> global1: Struct_1 = Struct_1(-2096f, 8159u, vec2<u32>(26776u, 21452u), -1000f, vec2<bool>(false, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: vec3<u32>) -> bool {
    var var_0 = arg_2.x;
    var var_1 = Struct_1(global1.a, abs(arg_3.x), ~arg_1.wx, _wgslsmith_f_op_f32(trunc(1919f)), arg_0);
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d)))), 4294967295u, min(~vec2<u32>(0u, global1.c.x), countOneBits(vec2<u32>(86893u, 4294967295u) | var_1.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)))), arg_2), var_1.b, Struct_1(_wgslsmith_f_op_f32(select(1814f, _wgslsmith_f_op_f32(-var_1.a), global1.e.x)), ~_wgslsmith_div_u32(_wgslsmith_div_u32(arg_3.x, arg_1.x), 0u), arg_3.xx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.d + -155f), _wgslsmith_f_op_f32(f32(-1f) * -1014f)), !select(arg_2, vec2<bool>(false, true), vec2<bool>(arg_0.x, arg_2.x))), Struct_2(arg_2.x, arg_1.x, false | any(!vec4<bool>(false, arg_2.x, global1.e.x, arg_0.x)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(384f - global1.a), var_1.d, any(arg_0))), 1u, arg_3.xz, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1404f * var_1.d), -232f)), global1.e)));
    var_0 = !all(select(!(!vec4<bool>(true, true, global1.e.x, true)), !(!vec4<bool>(var_2.a.e.x, true, var_2.c.e.x, arg_2.x)), arg_0.x));
    var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d - -1842f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a.d, -1000f))))), 1u, var_2.c.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1309f, -223f))), select(!global1.e, !select(arg_2, global1.e, vec2<bool>(true, false)), select(arg_2, !vec2<bool>(var_2.d.d.e.x, true), select(vec2<bool>(var_1.e.x, false), arg_2, global1.e.x)))), reverseBits(42517u), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a * -1189f))))), ~var_2.c.b >> (var_2.a.c.x % 32u), var_2.c.c, 567f, select(vec2<bool>(true, true), var_1.e, !(arg_2.x & true))), Struct_2(!(any(vec4<bool>(var_2.d.a, arg_0.x, true, true)) || true), _wgslsmith_clamp_u32(1u, countOneBits(arg_3.x), global1.b), var_1.e.x, Struct_1(_wgslsmith_f_op_f32(floor(-2093f)), arg_3.x, arg_3.xz, var_1.a, vec2<bool>(var_1.a > -1290f, true))));
    return true;
}

fn func_4(arg_0: Struct_2) -> u32 {
    global0 = array<vec2<f32>, 10>();
    var var_0 = !vec4<bool>(true, true, arg_0.c, !select(global1.b == global1.c.x, arg_0.c, true));
    var var_1 = _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(123948u, firstLeadingBit(~4294967295u), ~25196u << (_wgslsmith_clamp_u32(global1.c.x, arg_0.b, 16942u) % 32u)), 42108u);
    var var_2 = !select(!(!vec4<bool>(false, false, var_0.x, true)), select(select(vec4<bool>(true, false, true, global1.e.x), select(vec4<bool>(false, arg_0.d.e.x, global1.e.x, false), vec4<bool>(false, var_0.x, global1.e.x, arg_0.c), global1.e.x), vec4<bool>(false, global1.e.x, true, var_0.x)), !(!vec4<bool>(var_0.x, global1.e.x, global1.e.x, false)), vec4<bool>(!arg_0.a, true, true, arg_0.a)), vec4<bool>(true, true, true, true));
    var_1 = _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(global1.c.x, 0u, 17116u) | vec3<u32>(39003u, 4294967295u, 4294967295u), ~vec3<u32>(40649u, 1u, global1.c.x)) << ((select(max(vec3<u32>(global1.b, 1u, arg_0.b), vec3<u32>(arg_0.b, 111839u, global1.c.x)), vec3<u32>(global1.c.x, 1u, arg_0.d.c.x), true) >> ((_wgslsmith_add_vec3_u32(vec3<u32>(global1.b, arg_0.b, arg_0.d.b), vec3<u32>(0u, 102u, global1.b)) >> (abs(vec3<u32>(arg_0.b, global1.c.x, arg_0.d.c.x)) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), ((vec3<u32>(arg_0.b, 26398u, 0u) << (vec3<u32>(41600u, global1.c.x, 0u) % vec3<u32>(32u))) << ((vec3<u32>(4294967295u, global1.c.x, 4294967295u) ^ vec3<u32>(arg_0.b, 62626u, global1.b)) % vec3<u32>(32u))) & max(firstTrailingBit(vec3<u32>(86082u, 4294967295u, arg_0.d.b)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b, arg_0.d.b, 0u), vec3<u32>(arg_0.d.c.x, arg_0.d.b, 17974u)) << (vec3<u32>(23172u, 1u, 0u) % vec3<u32>(32u))));
    return arg_0.d.b ^ 0u;
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_4(Struct_1(global1.d, func_4(Struct_2(func_3(vec2<bool>(true, global1.e.x), vec4<u32>(115541u, global1.b, global1.c.x, global1.b), vec2<bool>(true, true), vec3<u32>(60986u, 47265u, 0u)), max(1u, global1.c.x), global1.e.x, Struct_1(global1.a, 1u, vec2<u32>(global1.b, global1.c.x), 1605f, global1.e))), global1.c, _wgslsmith_div_f32(2357f, global1.d), select(global1.e, select(!global1.e, !vec2<bool>(global1.e.x, true), any(global1.e)), select(vec2<bool>(true, true), global1.e, select(global1.e, vec2<bool>(global1.e.x, true), global1.e.x)))), ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(2616u, global1.c.x, 46u, 1u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(16683u, 0u, 82099u, 28413u), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b, global1.c.x, 25343u, 24223u), vec4<u32>(38058u, global1.c.x, global1.c.x, 1u)), vec4<u32>(1u, global1.b, global1.c.x, global1.c.x))), Struct_1(-2078f, reverseBits(6346u), vec2<u32>(~firstTrailingBit(global1.c.x), global1.b), global1.a, select(global1.e, vec2<bool>(global1.e.x, true), global1.e.x)), Struct_2(false, _wgslsmith_mod_u32(1u, 29020u), true, Struct_1(_wgslsmith_div_f32(global1.d, _wgslsmith_div_f32(global1.d, 185f)), ~1u, vec2<u32>(1u, 1u), global1.d, select(global1.e, select(global1.e, global1.e, global1.e.x), true))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-var_0.a.a), 4294967295u, var_0.c.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) * _wgslsmith_div_f32(global1.d, -1581f)))), !vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(global1.e.x, true, var_0.a.e.x), true)), any(!vec3<bool>(var_0.a.e.x, global1.e.x, var_0.a.e.x))));
    let var_1 = var_0.d;
    global0 = array<vec2<f32>, 10>();
    global1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-326f)) - -685f)), var_0.c.d)), select(1u, firstTrailingBit(0u), !(!var_0.a.e.x)), var_0.d.d.c, -1487f, var_1.d.e);
    return reverseBits(vec2<u32>(reverseBits(firstTrailingBit(0u)), firstLeadingBit(1u)));
}

fn func_1() -> Struct_2 {
    var var_0 = firstTrailingBit(select(vec2<i32>(u_input.a, ~countOneBits(u_input.a)), -firstTrailingBit(~vec2<i32>(u_input.a, u_input.a)), global1.e.x));
    var_0 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~abs(vec2<i32>(u_input.a, u_input.a)), (vec2<i32>(43092i, var_0.x) << (vec2<u32>(global1.b, global1.c.x) % vec2<u32>(32u))) | vec2<i32>(-7273i, -1i)) << (func_2() % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -2868i, -2147483647i));
    let var_1 = any(select(vec3<bool>(global1.e.x, global1.e.x, all(select(vec3<bool>(true, global1.e.x, true), vec3<bool>(global1.e.x, true, global1.e.x), vec3<bool>(true, global1.e.x, global1.e.x)))), !vec3<bool>(all(vec3<bool>(global1.e.x, true, true)), !global1.e.x, any(vec3<bool>(true, global1.e.x, true))), true));
    let var_2 = firstLeadingBit(vec2<u32>(~(~(~102414u)), ~global1.c.x | ~(global1.b & global1.b)));
    global0 = array<vec2<f32>, 10>();
    return Struct_2(true, reverseBits(var_2.x), !var_1, Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * 617f)), 109f)), _wgslsmith_sub_u32(55604u, var_2.x) << (var_2.x % 32u), ~((vec2<u32>(var_2.x, 1u) >> (vec2<u32>(61960u, global1.b) % vec2<u32>(32u))) >> (~global1.c % vec2<u32>(32u))), -1000f, vec2<bool>(true, all(select(vec4<bool>(false, global1.e.x, var_1, true), vec4<bool>(true, true, false, global1.e.x), var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec4<u32>(1u, countOneBits(_wgslsmith_sub_u32(~global1.b, func_2().x)), 4294967295u, abs(~var_0.d.b));
    var var_2 = vec3<f32>(var_0.d.d, _wgslsmith_f_op_f32(-global1.a), 283f);
    global0 = array<vec2<f32>, 10>();
    global0 = array<vec2<f32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, global1.d, var_2.x))))), 29672i, ~(~(firstTrailingBit(vec3<i32>(5071i, u_input.a, 0i)) >> (vec3<u32>(102647u, global1.c.x, 4294967295u) % vec3<u32>(32u)))), vec4<u32>(~(~(~1u)), _wgslsmith_add_u32(global1.b, ~var_0.b), (abs(66156u) | (4294967295u << (var_0.d.c.x % 32u))) ^ 1u, ~(~(~67669u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a))), 1869f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1276f)))));
}

