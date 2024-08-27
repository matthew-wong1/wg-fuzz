struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1057f, Struct_1(22327u, true), vec4<bool>(false, true, true, false));

var<private> global1: array<vec4<bool>, 7>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> bool {
    let var_0 = select(!global1[_wgslsmith_index_u32(1601u, 7u)], !global1[_wgslsmith_index_u32(abs(global0.b.a), 7u)], true);
    global1 = array<vec4<bool>, 7>();
    global1 = array<vec4<bool>, 7>();
    var var_1 = global0.a;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-890f, -1000f) * global0.a);
    return true;
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> u32 {
    global0 = Struct_2(466f, Struct_1(4294967295u, select(!global0.b.b, false, global0.c.x)), !select(arg_0, global1[_wgslsmith_index_u32(~1u, 7u)], global0.a == _wgslsmith_f_op_f32(-624f - global0.a)));
    global1 = array<vec4<bool>, 7>();
    let var_0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(firstLeadingBit(-(~u_input.a.xy))), vec2<i32>(_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_mult_i32(u_input.a.x, 1i)), ~(~u_input.a.x)), (reverseBits(u_input.a.x) >> (3577u % 32u)) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, arg_1, 61323u, 6496u), max(vec4<u32>(global0.b.a, 29760u, arg_1, 8507u), vec4<u32>(global0.b.a, 4294967295u, global0.b.a, arg_1))) % 32u)));
    let var_1 = Struct_5(Struct_2(138f, global0.b, global0.c));
    var var_2 = u_input.a.yz;
    return global0.b.a;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_f32(floor(-1382f)), Struct_1(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_2.a, arg_0.d.x, 4294967295u, 4294967295u), vec4<u32>(1u, global0.b.a, arg_0.a, global0.b.a)), ~vec4<u32>(21332u, 68897u, 46831u, 4294967295u)), func_3(select(vec4<bool>(arg_1.x, arg_1.x, global0.c.x, false), vec4<bool>(false, arg_1.x, true, true), global1[_wgslsmith_index_u32(global0.b.a, 7u)]), global0.b.a) > (arg_0.a << (~4294967295u % 32u))), global1[_wgslsmith_index_u32(~(~(~4294967295u)) << (~_wgslsmith_dot_vec2_u32(~arg_0.d, vec2<u32>(0u, arg_0.e)) % 32u), 7u)]);
    let var_0 = -594f;
    global0 = Struct_2(global0.a, arg_0.c, vec4<bool>(arg_2.c.b, any(!global0.c.zyz), !all(select(vec2<bool>(true, arg_1.x), global0.c.wy, arg_0.c.b)), (arg_2.c.b | false) || arg_2.c.b));
    global0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -465f), Struct_1(arg_2.c.a, false), global0.c);
    return Struct_2(global0.a, Struct_1(arg_2.e, !(!all(global0.c.wzw))), global1[_wgslsmith_index_u32(abs(select(global0.b.a, 36095u, all(select(vec4<bool>(arg_2.c.b, arg_1.x, true, global0.b.b), vec4<bool>(arg_1.x, false, global0.c.x, true), false)))), 7u)]);
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> u32 {
    global0 = func_4(Struct_3(0u, ~1u, global0.b, vec2<u32>(~(0u >> (global0.b.a % 32u)), _wgslsmith_clamp_u32(1u, 15378u, 26118u)), _wgslsmith_mod_u32(global0.b.a, 10642u)), vec2<bool>(false, any(vec3<bool>(arg_1 <= -2147483647i, arg_0.x == arg_1, func_2()))), Struct_3(34415u, global0.b.a, Struct_1(_wgslsmith_mod_u32(~57333u, func_3(vec4<bool>(global0.c.x, global0.c.x, true, true), global0.b.a)), false), reverseBits(_wgslsmith_clamp_vec2_u32(~vec2<u32>(82252u, global0.b.a), vec2<u32>(global0.b.a, global0.b.a), firstLeadingBit(vec2<u32>(2094u, global0.b.a)))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, min(global0.b.a, 4294967295u), 54215u), 0u)));
    global0 = func_4(Struct_3(34056u, _wgslsmith_mult_u32(35695u, 51879u), func_4(Struct_3(global0.b.a, ~global0.b.a, Struct_1(51293u, false), vec2<u32>(0u, 21024u) >> (vec2<u32>(global0.b.a, 18666u) % vec2<u32>(32u)), ~global0.b.a), func_4(Struct_3(global0.b.a, 22969u, Struct_1(global0.b.a, global0.c.x), vec2<u32>(80955u, 10763u), 11063u), vec2<bool>(true, true), Struct_3(94691u, global0.b.a, Struct_1(1u, global0.b.b), vec2<u32>(44561u, global0.b.a), 0u)).c.ww, Struct_3(global0.b.a, global0.b.a, global0.b, ~vec2<u32>(global0.b.a, 10409u), _wgslsmith_clamp_u32(4294967295u, global0.b.a, global0.b.a))).b, ~(~firstTrailingBit(vec2<u32>(1u, 1u))), _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(global0.b.a, global0.b.a)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.a, 4294967295u, 0u, 91897u), vec4<u32>(10027u, 13335u, 75301u, global0.b.a)), global0.b.a))), vec2<bool>(select(global0.c.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a) > (arg_0.x ^ arg_0.x), global0.b.b), select(global0.b.a, ~7972u, arg_0.x <= -2147483647i) == _wgslsmith_sub_u32(countOneBits(global0.b.a), global0.b.a)), Struct_3(_wgslsmith_div_u32(firstLeadingBit(global0.b.a ^ global0.b.a), global0.b.a), ~1u, global0.b, ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global0.b.a), vec2<u32>(66926u, 1u))), global0.b.a));
    global1 = array<vec4<bool>, 7>();
    let var_0 = _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(reverseBits(0u), 0u, _wgslsmith_clamp_u32(global0.b.a, 5567u, 46314u))), firstLeadingBit(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(4294967295u, global0.b.a, 17134u)), vec3<u32>(1u, 0u, global0.b.a), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(global0.b.a, 0u, global0.b.a), vec3<u32>(global0.b.a, 15677u, global0.b.a))))));
    global0 = Struct_2(-1000f, global0.b, global0.c);
    return func_3(!func_4(Struct_3(~4294967295u, _wgslsmith_mod_u32(55484u, global0.b.a), global0.b, select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global0.b.a, 24033u), global0.b.b), global0.b.a), !(!global0.c.yy), Struct_3(26625u, 29308u, Struct_1(0u, global0.b.b), ~vec2<u32>(var_0, var_0), min(var_0, var_0))).c, global0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~19849u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(func_1(u_input.a.xz, 0i), max(global0.b.a, 34681u) >> (~global0.b.a % 32u), global0.b.a, 1098u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * -532f)), _wgslsmith_f_op_f32(ceil(global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1808f * 936f)), 1209f), 14553u, min(max(~vec4<u32>(global0.b.a, 4294967295u, global0.b.a, global0.b.a) | _wgslsmith_sub_vec4_u32(vec4<u32>(14931u, 52902u, 22298u, 16932u), vec4<u32>(0u, 1u, global0.b.a, 4294967295u)), ~(~vec4<u32>(global0.b.a, global0.b.a, 0u, 0u))), vec4<u32>(global0.b.a, global0.b.a, 0u, ~global0.b.a)));
}

