struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-175f, 1013f), vec2<bool>(false, false), -393f);

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<bool> {
    var var_0 = u_input.b;
    return !(!(!vec4<bool>(var_0.x > u_input.b.x, 20107u < u_input.a, global0.b.x, !global0.b.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = global1.a.x;
    let var_1 = Struct_2(~(-1i | _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)) > u_input.b.x, !any(func_3()), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 633f), global1.a) + _wgslsmith_f_op_vec2_f32(global0.a * global1.a))), !select(!global1.b, vec2<bool>(true, global0.b.x), true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))))), abs(u_input.b.x));
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, var_1.d, ~(~abs(0i))), vec3<i32>(~(~_wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), countOneBits(var_1.d), 2147483647i));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(132f, 722f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(global1.c, 248f)), _wgslsmith_f_op_f32(-global0.a.x))))), select(vec2<bool>(global1.b.x, func_3().x && (var_1.a || false)), global1.b, global1.b.x && global1.b.x), -492f);
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1197f, global1.c, 829f, -801f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2973f, -1338f, var_1.c.a.x, -401f) * vec4<f32>(var_1.c.c, global1.c, -1000f, -1000f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -2917f, global1.c, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, 234f, global0.c, var_1.c.c) * vec4<f32>(1419f, global0.a.x, 1000f, -466f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2108f, 1787f, -400f, -522f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-835f, var_1.c.a.x, 562f, 811f))), global0.b.x))))), var_1.c, ~1i, vec4<u32>(27428u, _wgslsmith_mod_u32(4294967295u, ~(u_input.a << (7753u % 32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a | u_input.a, _wgslsmith_clamp_u32(1u, 4294967295u, 0u), ~u_input.a), countOneBits(vec3<u32>(4294967295u, 1u, 1u)) << (abs(vec3<u32>(53713u, 1u, u_input.a)) % vec3<u32>(32u))), u_input.a & (u_input.a >> (~u_input.a % 32u))), _wgslsmith_sub_i32(var_1.d, u_input.b.x));
    return var_1;
}

fn func_1() -> bool {
    global2 = vec2<bool>(u_input.b.x <= 15171i, global2.x);
    var var_0 = u_input.a;
    var var_1 = func_2();
    var var_2 = select(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, u_input.a, 1u, 1u), vec4<u32>(86824u, 30182u, 1u, u_input.a)) << (~vec4<u32>(u_input.a, 14592u, u_input.a, 0u) % vec4<u32>(32u)), select(~vec4<u32>(4294967295u, u_input.a, u_input.a, 6268u) >> (vec4<u32>(u_input.a, u_input.a, 2623u, 4294967295u) % vec4<u32>(32u)), abs(vec4<u32>(65169u, u_input.a, 1u, u_input.a)) ^ firstLeadingBit(vec4<u32>(u_input.a, 19727u, u_input.a, u_input.a)), all(!vec3<bool>(false, var_1.b, false)))), ~24022u, true);
    var var_3 = func_2();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(select(vec2<bool>(global1.b.x, func_1()), vec2<bool>(func_2().a, (global1.c >= global0.c) | (u_input.b.x > 0i)), vec2<bool>(countOneBits(u_input.a) == u_input.a, all(vec4<bool>(global1.b.x, global1.b.x, global2.x, global0.b.x)) && global1.b.x)), vec2<bool>(false, true), true);
    var var_0 = vec3<u32>(u_input.a << (u_input.a % 32u), 0u, 0u);
    let var_1 = func_2();
    var var_2 = !global2.x;
    var var_3 = Struct_2(false, (global0.b.x || select(global0.b.x, func_2().b, false)) && !global2.x, Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), global0.b, _wgslsmith_f_op_f32(1513f * -130f)), -_wgslsmith_sub_i32(32895i, -var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer((vec4<u32>(~u_input.a, _wgslsmith_clamp_u32(var_0.x, u_input.a, u_input.a), 0u, ~1u) & vec4<u32>(4294967295u, 1u, ~1u, ~u_input.a)) & vec4<u32>(4294967295u, 2712u, _wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, u_input.a), vec2<u32>(var_0.x, 34108u)), vec2<u32>(4294967295u, var_0.x)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 0u), _wgslsmith_div_vec2_u32(var_0.zx, vec2<u32>(8214u, 4294967295u)))), ~0i & (2147483647i >> (max(u_input.a, 69549u) % 32u)), -744f, _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(select(vec4<u32>(1u, var_0.x, 4294967295u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 4294967295u, 1u), global1.b.x), reverseBits(vec4<u32>(u_input.a, var_0.x, 2796u, 51035u)))), select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 41875u, 4294967295u, var_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, var_0.x, var_0.x, 0u), vec4<u32>(0u, u_input.a, 13258u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_0.x, 44150u), vec4<u32>(16500u, u_input.a, 42990u, 13229u))), vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.a) ^ select(vec4<u32>(85698u, var_0.x, 0u, 1u), vec4<u32>(90077u, var_0.x, var_0.x, u_input.a), vec4<bool>(true, var_3.b, false, global2.x)), true | any(vec4<bool>(global2.x, true, true, false)))), -42620i);
}

