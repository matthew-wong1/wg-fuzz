struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(2065f, -2837f);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(508f, -362f), true, -2382i), 666f, 325f, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    var var_0 = -u_input.b;
    var_0 = vec2<i32>(_wgslsmith_mult_i32(select(-arg_1.a.c, i32(-1i) * -1i, 12768i > u_input.b.x), ~(~arg_0.b.a.c)), _wgslsmith_div_i32(1i, _wgslsmith_sub_i32(abs(-1725i), _wgslsmith_clamp_i32(arg_1.a.c, arg_1.a.c, var_0.x)))) << (select(~vec2<u32>(reverseBits(4294967295u), arg_0.a), ~(~(~vec2<u32>(10684u, 1u))), !(true | any(vec3<bool>(arg_2.a.b, arg_1.a.b, global1.a.b)))) % vec2<u32>(32u));
    global1 = arg_0.c;
    var var_1 = _wgslsmith_f_op_f32(exp2(global0.x));
    var_0 = -(~u_input.b);
    return ~firstLeadingBit(u_input.a);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-287f, arg_2.b.b), _wgslsmith_f_op_vec2_f32(-arg_2.c.a.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(arg_2.b.a.a)))), !vec2<bool>(global1.a.b, global1.a.b))), global1.a.a, !vec2<bool>(false && arg_2.c.d, arg_2.c.d))), !select(!any(vec3<bool>(false, global1.a.b, false)), true, false), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(40564i, -598i), u_input.b), _wgslsmith_mult_vec2_i32(u_input.b, u_input.b)), -2147483647i) & abs(select(arg_2.b.a.c, arg_1 & -23795i, any(vec4<bool>(false, true, global1.a.b, false)))));
    return select(!select(!(!vec4<bool>(false, global1.a.b, var_0.b, false)), select(!vec4<bool>(false, true, global1.d, true), select(vec4<bool>(false, arg_2.c.a.b, true, true), vec4<bool>(arg_2.b.a.b, false, false, false), false), all(vec3<bool>(false, var_0.b, global1.d))), any(select(vec4<bool>(arg_2.b.a.b, arg_2.c.d, arg_2.c.d, arg_2.b.d), vec4<bool>(false, arg_2.b.d, false, true), vec4<bool>(arg_2.c.d, arg_2.c.d, false, global1.a.b)))), vec4<bool>(!(!arg_2.b.d), true, arg_2.c.a.b, var_0.b), any(vec4<bool>(global1.d, !(arg_2.c.d && arg_2.c.a.b), true, all(select(vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(true, true, global1.a.b), true)))));
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_3(min(~arg_1 | ~54231u, ~(~arg_1)) ^ ~func_2(Struct_3(10872u, Struct_2(global1.a, -809f, global1.c, global1.a.b), Struct_2(Struct_1(global1.a.a, false, 9929i), arg_0, 589f, true)), Struct_2(Struct_1(vec2<f32>(arg_0, -221f), global1.d, global1.a.c), 1671f, global0.x, global1.d), Struct_2(global1.a, -1000f, global1.b, global1.a.b), Struct_1(global1.a.a, global1.a.b, global1.a.c)), Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1184f * 100f), _wgslsmith_f_op_f32(trunc(global0.x))), false, 1i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-242f + 2731f), _wgslsmith_f_op_f32(max(global0.x, global1.a.a.x)))), 1000f, global1.d), Struct_2(global1.a, -1340f, -1000f, global1.d));
    let var_1 = Struct_2(global1.a, var_0.b.a.a.x, _wgslsmith_div_f32(876f, global0.x), any(select(!func_3(var_0.a, 60659i, var_0), !(!vec4<bool>(var_0.c.a.b, true, true, global1.a.b)), vec4<bool>(!global1.a.b, all(vec3<bool>(global1.d, false, false)), global1.a.b, false))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.a.a) * vec2<f32>(1f, -1049f)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.b.a.a)))), var_1.d, -_wgslsmith_clamp_i32(1i, 14245i, ~global1.a.c ^ (var_0.b.a.c << (u_input.a % 32u))));
    let var_3 = vec3<u32>(var_0.a, _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_sub_u32(4294967295u, ~u_input.c)), _wgslsmith_clamp_u32(func_2(Struct_3(37610u, Struct_2(global1.a, 1074f, global1.c, var_0.c.a.b), Struct_2(Struct_1(var_2.a, global1.d, -11302i), 210f, global0.x, global1.d)), Struct_2(var_0.b.a, 425f, global0.x, var_0.c.a.b), var_0.c, var_0.c.a), var_0.a, _wgslsmith_mult_u32(15694u, firstLeadingBit(71008u)))), ~(~56101u & ~_wgslsmith_mod_u32(93378u, var_0.a)));
    let var_4 = Struct_3(21736u, Struct_2(var_1.a, _wgslsmith_f_op_f32(global1.b - -562f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(748f))))), true), Struct_2(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + arg_0))), _wgslsmith_f_op_f32(abs(var_2.a.x)), true));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_4.c.b + var_4.c.a.a.x), -791f), global1.a.b, firstTrailingBit(var_2.c) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-var_4.b.a.c, var_0.c.a.c, var_1.a.c), vec3<i32>(20034i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c, -24106i, -14390i, u_input.b.x), vec4<i32>(-2147483647i, var_0.b.a.c, 69841i, var_0.c.a.c)), -var_4.b.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_1(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_mod_u32(u_input.a, u_input.c)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-452f)), _wgslsmith_f_op_f32(f32(-1f) * -138f))) - _wgslsmith_f_op_f32(-global1.a.a.x)), global1.a.b);
    let var_0 = vec4<u32>(3028u, ~(1u | select(0u, 1u, global1.d)), _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, 4380u), vec2<u32>(u_input.a, 0u))), vec2<u32>(6679u, u_input.c)), max(0u, ~(~u_input.a))) << (~reverseBits(vec4<u32>(max(44337u, 1u), 1u, _wgslsmith_div_u32(u_input.c, 54850u), 73294u)) % vec4<u32>(32u));
    global0 = global1.a.a;
    global1 = Struct_2(func_1(global1.c, _wgslsmith_add_u32(~(var_0.x & var_0.x), 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1462f * _wgslsmith_f_op_f32(f32(-1f) * -1315f))))), global1.a.a.x, global1.d);
    let var_1 = _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(var_0.x, _wgslsmith_mult_u32(max(var_0.x, u_input.a), var_0.x), _wgslsmith_mult_u32(abs(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, var_0.x))), func_2(Struct_3(var_0.x, Struct_2(global1.a, -536f, -1105f, global1.a.b), Struct_2(global1.a, global0.x, global1.c, global1.a.b)), Struct_2(global1.a, -1272f, global0.x, global1.d), Struct_2(Struct_1(global1.a.a, true, u_input.b.x), 1074f, global1.b, global1.a.b), Struct_1(vec2<f32>(790f, global1.b), true, 2147483647i)))), firstTrailingBit(~min(vec4<u32>(u_input.c, u_input.a, 60046u, u_input.c), ~vec4<u32>(1u, var_0.x, u_input.a, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(-(select(vec3<i32>(-1i, u_input.b.x, 1i), firstLeadingBit(vec3<i32>(64993i, u_input.b.x, global1.a.c)), vec3<bool>(global1.d, global1.d, true)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, var_0.x, var_1.x), vec3<u32>(1u, 19213u, 1u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.a.a.x + 321f))), 278f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -308f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1173f, 231f, _wgslsmith_f_op_f32(floor(271f)), _wgslsmith_f_op_f32(-global0.x)))))), _wgslsmith_add_u32(0u, ~(u_input.c >> (reverseBits(1u) % 32u))));
}

