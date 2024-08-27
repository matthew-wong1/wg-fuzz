struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 0i, -477i, 55049i);

var<private> global1: Struct_3 = Struct_3(13812u, -734f);

var<private> global2: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) + global1.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.b)), global1.b)))))));
    let var_1 = _wgslsmith_sub_i32(~u_input.e, global0.x);
    global2 = !select(arg_0.zz, select(vec2<bool>(true, true), !arg_0.yx, (-1i > global0.x) | any(vec3<bool>(true, global2.x, global2.x))), !select(select(vec2<bool>(true, true), vec2<bool>(global2.x, arg_0.x), arg_0.yy), !arg_0.xx, true));
    global0 = abs(_wgslsmith_mod_vec4_i32(~(vec4<i32>(global0.x, 34973i, 0i, 1i) >> (vec4<u32>(global1.a, 17700u, 63722u, u_input.d.x) % vec4<u32>(32u))), vec4<i32>(-2147483647i, u_input.e, select(u_input.e, _wgslsmith_mod_i32(var_1, global0.x), true), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, var_1), vec2<i32>(global0.x, -2147483647i))))));
    var var_2 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, var_0, 223f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-932f, var_0, global1.b), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(2351f, 390f, var_0), vec3<f32>(var_0, var_0, global1.b)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, 1718f, var_0)) - vec3<f32>(1f, 710f, _wgslsmith_f_op_f32(sign(-791f))))), Struct_3(firstLeadingBit(4055u), -698f));
    return (var_1 > countOneBits(1i)) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) < var_0);
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> vec4<u32> {
    global1 = Struct_3(4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x - arg_0))), -832f));
    var var_0 = vec3<bool>(!select(!(global2.x != global2.x), global2.x, select(false, true, func_3(vec4<bool>(true, false, true, true)))), true || all(!vec4<bool>(global2.x, false, global2.x, true)), false);
    global1 = Struct_3(_wgslsmith_mod_u32(((50886u << (u_input.a % 32u)) | (u_input.a & global1.a)) | 55825u, ~global1.a), _wgslsmith_f_op_f32(-global1.b));
    var var_1 = _wgslsmith_sub_i32(~global0.x, _wgslsmith_add_i32(_wgslsmith_div_i32(~firstTrailingBit(0i), global0.x), global0.x));
    return ~vec4<u32>(~17151u, u_input.a, firstTrailingBit(~(~global1.a)), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global1.a, 1u, 0u), vec4<u32>(4294967295u, 0u, 1985u, 73503u)), vec4<u32>(4294967295u, firstLeadingBit(global1.a), 9061u, global1.a)));
}

fn func_1() -> Struct_4 {
    var var_0 = 5102u ^ ~(~(~u_input.c.x << (max(global1.a, global1.a) % 32u)));
    let var_1 = firstTrailingBit(vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.b & 5887u, abs(global1.a)), ~vec3<u32>(0u, global1.a, 1u)), global1.a, ~u_input.a));
    var var_2 = abs(global0.zwx);
    let var_3 = global1.b;
    var var_4 = Struct_1(-(vec4<i32>(-1i, countOneBits(-93706i), -var_2.x, -26040i) & (vec4<i32>(14048i, var_2.x, 2147483647i, global0.x) << (func_2(1118f, vec3<f32>(-164f, 193f, global1.b)) % vec4<u32>(32u)))), ~(~(~(~vec3<u32>(var_1.x, global1.a, 0u)))), u_input.d.x, !vec4<bool>(global2.x, global2.x, all(select(vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(false, global2.x, false, global2.x), global2.x)), true));
    return Struct_4(var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_mod_u32(u_input.a >> (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~20784u, ~0u, select(34589u, 0u, global2.x)), max(global1.a, 1u), 17446u) % 32u), (u_input.b >> (~1u % 32u)) ^ 4294967295u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.b)) - 943f);
    var var_3 = 6380i;
    let var_4 = Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.b & var_1, ~5420u), global1.a, (u_input.d.x & 44265u) ^ 1u, var_1 >> (u_input.c.x % 32u)), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(var_1, global1.a, 40125u, 4294967295u)), vec4<u32>(~5285u, var_1, global1.a << (0u % 32u), _wgslsmith_add_u32(global1.a, 14211u)))), Struct_1(~vec4<i32>(_wgslsmith_mod_i32(15462i, var_0.a), _wgslsmith_sub_i32(global0.x, u_input.e), -16352i, 0i), select(~abs(vec3<u32>(63134u, u_input.d.x, 4294967295u)), ~vec3<u32>(u_input.d.x, 4294967295u, var_1) & (u_input.d >> (u_input.d % vec3<u32>(32u))), false), ~71599u, select(!vec4<bool>(false, false, true, global2.x), vec4<bool>(global2.x, true, true, true), select(select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(global2.x, false, false, false)), !vec4<bool>(global2.x, global2.x, true, global2.x), global2.x))), 0u, Struct_1(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(global0.x, -2147483647i, -25551i, global0.x)), vec4<i32>(u_input.e, -2147483647i, -1i, u_input.e), firstLeadingBit(~vec4<i32>(u_input.e, 6044i, global0.x, -2147483647i))), u_input.d, 4294967295u, vec4<bool>(!global2.x, true, !global2.x, true)), Struct_1(vec4<i32>(-var_0.a, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, 0i, -32023i), global0.zwx), -2147483647i), _wgslsmith_mod_i32(global0.x << (global1.a % 32u), _wgslsmith_mult_i32(-54942i, var_0.a)), global0.x), firstLeadingBit(vec3<u32>(0u, u_input.c.x, abs(1u))), ~31303u, !vec4<bool>(true | global2.x, global2.x, u_input.c.x > 41389u, !global2.x)));
    global1 = Struct_3(select(_wgslsmith_div_u32(var_1, abs(firstTrailingBit(u_input.a))), 18296u, any(var_4.b.d.yzw)), _wgslsmith_f_op_f32(-var_2));
    let var_5 = ~vec4<i32>(_wgslsmith_clamp_i32(-1i, u_input.e, ~(-44224i)), countOneBits(~var_4.e.a.x << (~u_input.a % 32u)), -(global0.x << ((global1.a << (0u % 32u)) % 32u)), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_4.d.c, ~(~global1.a | var_1)), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(0u, u_input.a)), abs(_wgslsmith_mult_vec2_u32(var_4.d.b.xy, vec2<u32>(13619u, 61685u))), abs(vec2<u32>(func_2(-925f, vec3<f32>(global1.b, var_2, 665f)).x, 4294967295u))), 2147483647i, 7707i);
}

