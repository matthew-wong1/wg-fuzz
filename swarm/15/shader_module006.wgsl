struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32 = -1629f;

var<private> global2: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_3(vec2<u32>(4294967295u, 1u))));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> vec4<u32> {
    var var_0 = select(!select(!select(vec4<bool>(arg_2, false, arg_2, arg_2), vec4<bool>(arg_2, false, arg_2, arg_2), vec4<bool>(arg_2, true, arg_2, false)), !select(vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, false, arg_2, arg_2), false), select(vec4<bool>(false, arg_2, false, arg_2), !vec4<bool>(arg_2, true, arg_2, arg_2), true)), select(select(vec4<bool>(arg_2 & arg_2, true, arg_2, true), select(vec4<bool>(true, arg_2, false, arg_2), vec4<bool>(false, arg_2, true, arg_2), true), _wgslsmith_mod_i32(2147483647i, 2147483647i) <= u_input.c.x), !(!vec4<bool>(true, false, arg_2, false)), select(!(!vec4<bool>(true, false, arg_2, true)), vec4<bool>(all(vec3<bool>(false, arg_2, false)), any(vec2<bool>(false, true)), true, !arg_2), all(!vec3<bool>(true, arg_2, arg_2)))), select(!vec4<bool>(!arg_2, true, true, false), !(!(!vec4<bool>(arg_2, arg_2, arg_2, true))), true));
    var_0 = select(!select(vec4<bool>(arg_2 && var_0.x, false, var_0.x | var_0.x, false), !select(vec4<bool>(arg_2, false, false, arg_2), vec4<bool>(arg_2, var_0.x, arg_2, false), var_0.x), !vec4<bool>(false, arg_2, true, arg_2)), !vec4<bool>(!any(vec2<bool>(true, true)), arg_2, arg_2, arg_2), !(!(any(vec3<bool>(true, var_0.x, arg_2)) == !var_0.x)));
    let var_1 = Struct_5(arg_0, arg_2, true, (-33395i ^ -_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, -2147483647i, global0.x))) & _wgslsmith_clamp_i32(global0.x, -(u_input.c.x & global0.x), firstLeadingBit(~(-10283i))));
    var var_2 = 11165u;
    var var_3 = vec4<i32>((22572i | var_1.d) << (4294967295u % 32u), _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, -2147483647i, global0.x), vec3<i32>(global0.x, -35758i, var_1.d)) >> (reverseBits(u_input.a) % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(u_input.c.x, u_input.c.x << (1u % 32u), max(global0.x, -67565i)))), min(var_1.d, abs(_wgslsmith_sub_i32(global0.x, _wgslsmith_sub_i32(global0.x, u_input.c.x)))), var_1.d);
    return ~vec4<u32>(select(34260u >> (u_input.a.x % 32u), 4294967295u ^ ~arg_0.a.x, any(select(vec2<bool>(var_0.x, false), var_0.yw, vec2<bool>(true, var_1.c)))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(58051u, 1u), countOneBits(~var_1.a.a.x)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0.a.x, 1u), reverseBits(var_1.a.a.x | arg_1)), ~(~countOneBits(arg_0.a.x)));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: f32) -> vec4<u32> {
    let var_0 = u_input.a.x;
    var var_1 = vec3<i32>(i32(-1i) * -18731i, abs(-7920i), 2147483647i);
    var var_2 = 0i;
    var var_3 = select((select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, var_1.x, arg_1), u_input.c, u_input.c), vec3<i32>(16715i, var_1.x, global0.x), true) | u_input.c) >> (u_input.a % vec3<u32>(32u)), u_input.c, vec3<bool>(all(vec2<bool>(!arg_0.x, all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)))), true | !(!arg_0.x), true));
    var_3 = firstTrailingBit(vec3<i32>(~1i, -13430i, u_input.c.x));
    return _wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_0, u_input.a.x, u_input.b, u_input.a.x)), _wgslsmith_sub_vec4_u32(func_3(Struct_3(u_input.a.zy), 0u, arg_0.x), vec4<u32>(var_0, var_0, u_input.b, 42861u))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(min(min(vec4<u32>(0u, var_0, u_input.b, var_0), vec4<u32>(u_input.b, var_0, var_0, var_0)), vec4<u32>(1u, 4294967295u, var_0, u_input.a.x) & vec4<u32>(36292u, 4294967295u, 34020u, var_0)), ~vec4<u32>(72271u, u_input.b, u_input.b, 1u) & abs(vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.b))), _wgslsmith_mod_vec4_u32(~(vec4<u32>(var_0, 0u, u_input.b, var_0) >> (vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0)), min(vec4<u32>(var_0, u_input.b, 1u, 1u), vec4<u32>(46157u, var_0, 14090u, 0u))))));
}

fn func_1() -> Struct_2 {
    let var_0 = 1f;
    let var_1 = select(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~11324u), ~(u_input.a.xy | vec2<u32>(83208u, u_input.a.x))), 1u), 9932u, all(vec2<bool>(true, !all(vec4<bool>(false, true, false, false)))));
    global0 = u_input.c.zy;
    var var_2 = func_2(vec2<bool>(true, true), 1i, -1229f);
    var var_3 = 4294967295u;
    return Struct_2(Struct_1(32460u), 31178i >> (1u % 32u), abs(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, global0.x, global0.x), vec4<i32>(53959i, u_input.c.x, global0.x, u_input.c.x), vec4<i32>(-57225i, u_input.c.x, 1i, -31258i)) >> (vec4<u32>(1u, 1u, var_2.x, var_1) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec4<i32>(-42369i, 1i, -var_0.c.x, var_0.b & (var_0.b ^ _wgslsmith_clamp_i32(var_0.c.x, global0.x, -global0.x)));
    var_0 = func_1();
    var_0 = func_1();
    global2 = array<Struct_4, 1>();
    let var_2 = func_1();
    var var_3 = Struct_5(Struct_3(select(func_3(Struct_3(vec2<u32>(var_2.a.a, 24478u)), 29273u, true).zz, vec2<u32>(23663u, 32312u), !all(vec3<bool>(true, true, false)))), all(vec2<bool>(true, all(vec2<bool>(false, true)) | true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), -42929i);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a << (_wgslsmith_dot_vec3_u32((vec3<u32>(1u, var_0.a.a, 1u) ^ u_input.a) << (u_input.a % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mult_u32(47875u, 0u), reverseBits(var_2.a.a), _wgslsmith_mod_u32(0u, u_input.a.x))) % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-417f)) * _wgslsmith_f_op_f32(abs(-529f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -340f))))));
}

