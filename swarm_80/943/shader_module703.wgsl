struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20>;

var<private> global1: array<vec4<f32>, 5>;

var<private> global2: vec4<u32>;

var<private> global3: i32;

var<private> global4: i32 = 15542i;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> vec4<u32> {
    var var_0 = ~abs(vec3<u32>(~_wgslsmith_sub_u32(arg_1, arg_1), 0u, arg_1 >> (15548u % 32u)));
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1224f - 1125f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1090f) + -484f), 569f, _wgslsmith_f_op_f32(f32(-1f) * -137f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-182f)), _wgslsmith_f_op_f32(ceil(-430f)), -409f, -355f)), !vec4<bool>(true, true, all(vec2<bool>(false, true)), true))), global2.xxx, !vec3<bool>(all(vec3<bool>(false, true, false)) || true, true, true));
    global4 = 0i;
    var var_2 = -arg_0.x;
    global2 = vec4<u32>(countOneBits(abs(global2.x)), 0u, ~global2.x, ~arg_1 | (13440u << (_wgslsmith_add_u32(global2.x, 5182u) % 32u)));
    return select(countOneBits(vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(4294967295u), firstLeadingBit(0u)), arg_1, ~abs(5640u), (var_0.x & global2.x) >> (_wgslsmith_mod_u32(0u, var_1.b.x) % 32u))), firstTrailingBit(~(~vec4<u32>(33002u, 3891u, 12714u, global2.x)) ^ vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 25249u, 5905u), global2.ywz), var_1.b.x, _wgslsmith_dot_vec3_u32(var_1.b, u_input.a), arg_1)), true);
}

fn func_2() -> u32 {
    let var_0 = u_input.a;
    global1 = array<vec4<f32>, 5>();
    global2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 0u, u_input.a.x), ~func_3(abs(vec2<i32>(1i, 34431i)) & select(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(16895i, 19129i), false), global2.x), ~(select(~vec4<u32>(4294967295u, 4294967295u, 49706u, global2.x), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, global2.x, u_input.a.x, 4294967295u), vec4<u32>(var_0.x, global2.x, 0u, var_0.x)), false) << (_wgslsmith_add_vec4_u32(~vec4<u32>(var_0.x, 21519u, 17869u, 4294967295u), ~vec4<u32>(var_0.x, 4294967295u, 4294967295u, 4294967295u)) % vec4<u32>(32u))));
    var var_1 = global2.x;
    return ~(~(~_wgslsmith_div_u32(global2.x, u_input.a.x)));
}

fn func_1(arg_0: f32) -> Struct_3 {
    global2 = ~(~(~firstLeadingBit(~vec4<u32>(0u, 60180u, 0u, 1u))));
    global2 = _wgslsmith_clamp_vec4_u32(max(vec4<u32>(global2.x, u_input.a.x, _wgslsmith_div_u32(global2.x, 89639u), u_input.a.x) >> (vec4<u32>(~global2.x, func_2(), global2.x, _wgslsmith_add_u32(u_input.a.x, 0u)) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.a.x, 32574u, global2.x, 4294967295u))), vec4<u32>(121286u, _wgslsmith_add_u32(47166u, 0u), ~global2.x, 26227u), vec4<u32>(~u_input.a.x, 111519u, 57310u, max(countOneBits(497u), 1u) ^ func_2()));
    var var_0 = Struct_5(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a.x, 6606u, 4294967295u), global2.zzw, true) ^ min(vec3<u32>(u_input.a.x, 4294967295u, global2.x), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), ~countOneBits(u_input.a)), u_input.a.x), 5u)], ~(~_wgslsmith_div_vec3_u32(vec3<u32>(global2.x, 4294967295u, 57170u), vec3<u32>(u_input.a.x, u_input.a.x, global2.x)) << (vec3<u32>(u_input.a.x | 15925u, 84584u, firstLeadingBit(global2.x)) % vec3<u32>(32u))), !select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), vec3<bool>(all(vec4<bool>(true, false, true, true)), true, true)));
    let var_1 = Struct_3(Struct_2(Struct_1(reverseBits(firstLeadingBit(u_input.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))) + _wgslsmith_f_op_f32(arg_0 - arg_0)) - -791f), ~select(48465i, select(_wgslsmith_clamp_i32(1536i, 2147483647i, 1i), 1i, true), true));
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(step(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global1[_wgslsmith_index_u32(1u, 5u)]))) - global1[_wgslsmith_index_u32(0u, 5u)]))), ~(~(~abs(var_0.b))), vec3<bool>(!var_0.c.x, false, false));
    return Struct_3(Struct_2(var_1.a.a), -983f, var_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_1.c, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, arg_1.c, arg_1.c)), ~vec3<i32>(-19980i, -32320i, 10263i))), arg_1.c), firstTrailingBit(-1i), ~min(select(12106i, 1i, false) ^ arg_1.c, -max(0i, 2147483647i)));
    global4 = 911i;
    var var_1 = ~(arg_0.a ^ arg_0.a);
    let var_2 = arg_1.a;
    var var_3 = _wgslsmith_f_op_f32(-arg_1.b);
    return -var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(vec4<u32>(abs(_wgslsmith_mod_u32(38731u, global2.x)), global2.x >> (u_input.a.x % 32u), u_input.a.x, ~min(global2.x, 17579u)) | vec4<u32>(global2.x, 4294967295u, _wgslsmith_mult_u32(1u, global2.x), _wgslsmith_sub_u32(~4294967295u, 25811u >> (global2.x % 32u))));
    let var_0 = 31050i;
    global0 = array<Struct_4, 20>();
    let var_1 = func_4(Struct_1(_wgslsmith_mod_u32(_wgslsmith_div_u32(global2.x, u_input.a.x), _wgslsmith_mult_u32(1250u, _wgslsmith_div_u32(4294967295u, global2.x)))), func_1(_wgslsmith_f_op_f32(sign(-1065f))), func_1(_wgslsmith_f_op_f32(-756f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -321f)))).a, 766f);
    let var_2 = 906f;
    let var_3 = Struct_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, 161f) - _wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)], vec4<bool>(true, true, false, true)))))), _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(37993u, 5u)] - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(57825u, 5u)], vec4<f32>(var_2, var_2, var_2, var_2))))), _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(~global2.xww, u_input.a, func_3(vec2<i32>(6130i, 14794i), 30071u).ywy), ~u_input.a), select(vec3<bool>(_wgslsmith_f_op_f32(var_2 - -1623f) != -475f, any(vec4<bool>(true, true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true && any(vec3<bool>(false, false, true))), 0i <= min(min(var_1, 482i), ~1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0, _wgslsmith_sub_i32(i32(-1i) * -1i, var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-843f)), 1070f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1067f, _wgslsmith_f_op_f32(1170f - var_2))))), vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(971f * 386f))), _wgslsmith_f_op_f32(-var_3.a.x)), global2.yyy);
}

