struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: bool) -> Struct_4 {
    global0 = array<Struct_1, 28>();
    let var_0 = arg_0;
    var var_1 = min(~u_input.b.x, _wgslsmith_dot_vec2_u32(var_0.b, vec2<u32>(~(~arg_0.b.x), _wgslsmith_dot_vec3_u32(arg_1.wwy, arg_1.yww) & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, arg_2.b.b.x), vec2<u32>(arg_0.b.x, arg_1.x)))));
    let var_2 = i32(-1i) * -14061i;
    global0 = array<Struct_1, 28>();
    return arg_2;
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_4) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.a) * -902f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_1)), arg_0.x))), u_input.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(615f)))), _wgslsmith_add_vec2_u32(u_input.b, ~(u_input.b << (arg_2.a.b % vec2<u32>(32u))))), func_2(func_2(Struct_1(192f, arg_2.a.b), firstTrailingBit(min(vec4<u32>(86621u, 99791u, arg_2.a.b.x, 71702u), vec4<u32>(arg_2.a.b.x, 36921u, arg_2.a.b.x, arg_2.b.b.x))), arg_2, any(arg_2.d)).b, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), abs(arg_2.b.b.x), min(u_input.b.x, u_input.b.x), 0u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2.a.b.x, arg_2.a.b.x), vec3<u32>(4294967295u, u_input.b.x, arg_2.b.b.x)), 1u << (arg_2.a.b.x % 32u), u_input.b.x & u_input.b.x, arg_2.b.b.x)), Struct_4(Struct_1(_wgslsmith_f_op_f32(-arg_1), vec2<u32>(arg_2.a.b.x, 37668u)), Struct_1(arg_0.x, vec2<u32>(u_input.b.x, arg_2.a.b.x)), u_input.a.x, arg_2.d, arg_2.d.xy), any(!(!vec3<bool>(arg_2.d.x, true, arg_2.d.x)))).a, ~vec2<u32>(~_wgslsmith_div_u32(arg_2.a.b.x, 28586u), u_input.b.x));
    global0 = array<Struct_1, 28>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-112f * 1236f), arg_2.a.b);
    var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -548f), global0[_wgslsmith_index_u32(~func_2(func_2(Struct_1(-508f, arg_2.b.b), ~vec4<u32>(4294967295u, var_0.b.b.x, var_0.b.b.x, 4294967295u), func_2(Struct_1(-1087f, vec2<u32>(1u, u_input.b.x)), vec4<u32>(var_0.e.x, 0u, 0u, 89334u), arg_2, false), !arg_2.e.x).a, vec4<u32>(var_1.b.x << (0u % 32u), arg_2.a.b.x, var_0.b.b.x, _wgslsmith_mod_u32(arg_2.b.b.x, 4294967295u)), Struct_4(func_2(global0[_wgslsmith_index_u32(0u, 28u)], vec4<u32>(var_0.c.b.x, var_0.e.x, 0u, 1u), arg_2, true).a, var_0.c, _wgslsmith_mod_i32(arg_2.c, -1i), !vec3<bool>(true, arg_2.d.x, false), arg_2.d.xz), arg_2.e.x || true).a.b.x, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a)) - -765f), u_input.b), vec2<u32>(min(arg_2.b.b.x, _wgslsmith_div_u32(~1u, var_1.b.x)), u_input.b.x));
    var_0 = Struct_2(_wgslsmith_f_op_f32(var_1.a + 1120f), global0[_wgslsmith_index_u32(~var_0.b.b.x, 28u)], Struct_1(arg_1, _wgslsmith_div_vec2_u32(~min(u_input.b, vec2<u32>(0u, u_input.b.x)), func_2(global0[_wgslsmith_index_u32(var_1.b.x << (28248u % 32u), 28u)], reverseBits(vec4<u32>(54700u, var_1.b.x, arg_2.b.b.x, 4294967295u)), Struct_4(global0[_wgslsmith_index_u32(arg_2.b.b.x, 28u)], Struct_1(1091f, vec2<u32>(0u, var_0.e.x)), -1371i, vec3<bool>(true, arg_2.e.x, arg_2.e.x), vec2<bool>(arg_2.d.x, arg_2.d.x)), false).a.b)), Struct_1(1563f, ~func_2(func_2(Struct_1(-918f, vec2<u32>(5511u, var_0.d.b.x)), vec4<u32>(9174u, var_0.b.b.x, arg_2.a.b.x, var_0.e.x), arg_2, arg_2.d.x).b, ~vec4<u32>(109237u, 34640u, u_input.b.x, 1u), func_2(Struct_1(999f, vec2<u32>(79232u, 34165u)), vec4<u32>(29698u, arg_2.b.b.x, arg_2.b.b.x, u_input.b.x), arg_2, arg_2.d.x), all(vec4<bool>(arg_2.d.x, false, false, arg_2.d.x))).b.b), reverseBits(firstTrailingBit(var_0.d.b)));
    return vec3<bool>(true && (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1185f, arg_1)) >= _wgslsmith_f_op_f32(f32(-1f) * -153f)), !arg_2.d.x, any(select(vec3<bool>(true, !arg_2.d.x, !arg_2.d.x), !select(arg_2.d, arg_2.d, arg_2.d), true)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = select(!(!func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, 807f, -745f, -1392f) - vec4<f32>(arg_2.a, 370f, -1659f, -513f)), _wgslsmith_f_op_f32(1073f + -1672f), func_2(Struct_1(444f, u_input.b), vec4<u32>(1u, u_input.b.x, arg_2.b.x, 0u), Struct_4(Struct_1(-545f, u_input.b), arg_2, 1i, vec3<bool>(true, true, arg_3), vec2<bool>(arg_3, false)), false))), select(!(!vec3<bool>(true, false, arg_3)), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(754f, arg_2.a, -1455f, 788f)), _wgslsmith_f_op_f32(213f * _wgslsmith_f_op_f32(f32(-1f) * -860f)), func_2(global0[_wgslsmith_index_u32(~16534u, 28u)], firstLeadingBit(vec4<u32>(0u, u_input.b.x, arg_2.b.x, arg_0)), Struct_4(Struct_1(arg_2.a, vec2<u32>(1u, 29310u)), global0[_wgslsmith_index_u32(4294967295u, 28u)], 37668i, vec3<bool>(arg_3, false, true), vec2<bool>(false, false)), !arg_3)), func_2(Struct_1(arg_2.a, ~vec2<u32>(26278u, arg_0)), ~(~vec4<u32>(24314u, 90584u, 30506u, 4294967295u)), Struct_4(Struct_1(arg_2.a, u_input.b), arg_2, 37823i & u_input.c.x, vec3<bool>(false, true, false), !vec2<bool>(false, arg_3)), any(!vec3<bool>(arg_3, true, arg_3))).d), true);
    let var_1 = -2684i;
    let var_2 = Struct_4(func_2(arg_2, ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 4294967295u, arg_2.b.x, 84461u) ^ vec4<u32>(arg_0, 1u, 23249u, 32196u), countOneBits(vec4<u32>(arg_2.b.x, 39888u, arg_1, 11714u))), func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, _wgslsmith_div_u32(0u, arg_2.b.x)), 28u)], ~(~vec4<u32>(19192u, arg_2.b.x, 4294967295u, 29703u)), Struct_4(Struct_1(arg_2.a, u_input.b), Struct_1(arg_2.a, vec2<u32>(u_input.b.x, 43162u)), 0i, select(var_0, vec3<bool>(false, true, false), vec3<bool>(arg_3, true, true)), vec2<bool>(arg_3, var_0.x)), false || (arg_3 == var_0.x)), true).b, func_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1130f, -1216f)))), ~(~vec2<u32>(arg_1, u_input.b.x))), min(~vec4<u32>(u_input.b.x, arg_2.b.x, 1u, 0u), vec4<u32>(arg_0, 25181u, 75494u, arg_2.b.x) ^ min(vec4<u32>(33592u, 106520u, arg_1, arg_0), vec4<u32>(1u, u_input.b.x, 81993u, 30814u))), Struct_4(arg_2, arg_2, 1i, func_2(global0[_wgslsmith_index_u32(~u_input.b.x, 28u)], vec4<u32>(arg_1, arg_1, arg_2.b.x, u_input.b.x), Struct_4(global0[_wgslsmith_index_u32(1u, 28u)], Struct_1(arg_2.a, u_input.b), u_input.c.x, var_0, vec2<bool>(var_0.x, false)), arg_3).d, var_0.yz), true).a, 0i, var_0, vec2<bool>(true | func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1929f, arg_2.a, 601f, -331f) + vec4<f32>(arg_2.a, arg_2.a, arg_2.a, arg_2.a)), _wgslsmith_f_op_f32(385f + arg_2.a), func_2(Struct_1(-559f, u_input.b), vec4<u32>(153991u, 1u, 27216u, 25043u), Struct_4(Struct_1(arg_2.a, vec2<u32>(arg_0, 0u)), global0[_wgslsmith_index_u32(arg_1, 28u)], 14590i, vec3<bool>(var_0.x, true, true), vec2<bool>(false, false)), true)).x, 95344u == func_2(Struct_1(-646f, u_input.b), ~vec4<u32>(53006u, arg_0, 0u, 55903u), func_2(Struct_1(arg_2.a, arg_2.b), vec4<u32>(arg_1, 0u, arg_2.b.x, arg_1), Struct_4(Struct_1(arg_2.a, arg_2.b), global0[_wgslsmith_index_u32(arg_2.b.x, 28u)], -63228i, var_0, var_0.yy), var_0.x), arg_3).b.b.x));
    let var_3 = countOneBits(~max(vec3<u32>(u_input.b.x, u_input.b.x, 40047u) >> (vec3<u32>(arg_1, 19894u, 1u) % vec3<u32>(32u)), select(vec3<u32>(4294967295u, arg_0, 0u), vec3<u32>(79915u, 42117u, arg_2.b.x), vec3<bool>(true, var_2.e.x, true))) & vec3<u32>(56812u, _wgslsmith_mod_u32(var_2.a.b.x << (4294967295u % 32u), 54801u), ~(~arg_1)));
    global0 = array<Struct_1, 28>();
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-382f, -1000f, -764f) + vec3<f32>(535f, 1347f, 442f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-144f, -726f)), _wgslsmith_f_op_f32(1088f - 1501f), _wgslsmith_f_op_f32(sign(-253f))) * vec3<f32>(_wgslsmith_div_f32(-635f, 1000f), -571f, _wgslsmith_f_op_f32(func_1(u_input.b.x, 1529u, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], true))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-567f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-361f - var_0.x) + var_0.x)), 15298u >= u_input.b.x)) * 1728f);
    global0 = array<Struct_1, 28>();
    let var_2 = _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(~((0u ^ u_input.b.x) << (u_input.b.x % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 56154u ^ u_input.b.x), abs(u_input.b))));
    let var_3 = func_2(func_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), u_input.b), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 37033u, u_input.b.x, 39767u), vec4<u32>(var_2, 4294967295u, 1u, var_2)) & 54419u, u_input.b.x, ~_wgslsmith_div_u32(u_input.b.x, u_input.b.x)), func_2(Struct_1(var_0.x, u_input.b & vec2<u32>(2433u, u_input.b.x)), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, u_input.b.x, var_2)), min(vec4<u32>(u_input.b.x, var_2, 4294967295u, u_input.b.x), vec4<u32>(var_2, var_2, var_2, 1u))), func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, 1u, 6264u), vec4<u32>(1u, 4990u, u_input.b.x, 1u)), 28u)], ~vec4<u32>(u_input.b.x, 18983u, 32527u, 51599u), Struct_4(global0[_wgslsmith_index_u32(0u, 28u)], Struct_1(-337f, u_input.b), 2865i, vec3<bool>(false, true, false), vec2<bool>(true, false)), true), true), true).a, _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, abs(var_2), var_2), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(30582u, u_input.b.x, 26451u, u_input.b.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, var_2, var_2, u_input.b.x), ~vec4<u32>(var_2, 4294967295u, 0u, 8423u))), ~firstTrailingBit(~vec4<u32>(var_2, 1u, 6701u, var_2))), func_2(global0[_wgslsmith_index_u32(abs(u_input.b.x), 28u)], vec4<u32>(abs(~0u), abs(50755u), u_input.b.x, 4294967295u | (50131u | u_input.b.x)), func_2(global0[_wgslsmith_index_u32(10269u, 28u)], max(~vec4<u32>(u_input.b.x, var_2, u_input.b.x, var_2), vec4<u32>(var_2, u_input.b.x, u_input.b.x, u_input.b.x)), func_2(func_2(Struct_1(1000f, u_input.b), vec4<u32>(var_2, 0u, 1u, u_input.b.x), Struct_4(global0[_wgslsmith_index_u32(35752u, 28u)], Struct_1(266f, u_input.b), u_input.c.x, vec3<bool>(true, false, false), vec2<bool>(false, true)), true).a, firstLeadingBit(vec4<u32>(0u, var_2, 0u, var_2)), func_2(global0[_wgslsmith_index_u32(var_2, 28u)], vec4<u32>(1u, 0u, 4294967295u, var_2), Struct_4(Struct_1(var_0.x, u_input.b), Struct_1(-211f, vec2<u32>(var_2, var_2)), u_input.a.x, vec3<bool>(false, false, true), vec2<bool>(true, false)), false), true), true), !any(vec4<bool>(true, false, true, false)) && any(vec3<bool>(true, true, true))), !(!((563f >= var_0.x) & true)));
    var_1 = _wgslsmith_f_op_f32(func_1(~var_3.b.b.x << (0u % 32u), 48197u, func_2(func_2(global0[_wgslsmith_index_u32(4294967295u, 28u)], vec4<u32>(~u_input.b.x, 89428u, ~20290u, ~0u), Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2, var_2), 28u)], global0[_wgslsmith_index_u32(abs(var_2), 28u)], _wgslsmith_clamp_i32(var_3.c, -1i, u_input.a.x), vec3<bool>(false, var_3.d.x, false), !vec2<bool>(var_3.e.x, var_3.d.x)), !all(vec4<bool>(false, false, var_3.d.x, true))).a, vec4<u32>(39260u, 1u, 0u, ~18805u ^ max(4294967295u, var_2)), var_3, !(1550f >= var_0.x)).b, var_3.d.x));
    let var_4 = -vec4<i32>(~_wgslsmith_mult_i32(u_input.a.x, firstLeadingBit(17959i)), 0i, abs(u_input.c.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, var_3.c), _wgslsmith_mod_i32(-2147483647i, -2147483647i)), var_3.c));
    var var_5 = func_2(func_2(Struct_1(_wgslsmith_f_op_f32(round(897f)), u_input.b), ~(~(~vec4<u32>(u_input.b.x, var_2, 20309u, 12555u))), func_2(global0[_wgslsmith_index_u32(var_2, 28u)], _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 70773u, var_3.a.b.x), vec4<u32>(var_2, u_input.b.x, var_2, u_input.b.x)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), Struct_4(Struct_1(-1971f, vec2<u32>(var_2, 1u)), func_2(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], vec4<u32>(0u, u_input.b.x, u_input.b.x, 25381u), Struct_4(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(89845u, 28u)], -17733i, var_3.d, vec2<bool>(var_3.d.x, var_3.d.x)), var_3.d.x).a, func_2(var_3.a, vec4<u32>(1u, 24686u, u_input.b.x, 89577u), Struct_4(global0[_wgslsmith_index_u32(var_2, 28u)], Struct_1(var_0.x, vec2<u32>(1u, u_input.b.x)), var_3.c, vec3<bool>(var_3.e.x, true, true), vec2<bool>(true, false)), var_3.e.x).c, var_3.d, func_3(vec4<f32>(var_0.x, 701f, var_0.x, var_3.a.a), var_3.a.a, var_3).zz), var_3.d.x), ~1u >= reverseBits(_wgslsmith_mult_u32(var_3.b.b.x, u_input.b.x))).b, vec4<u32>(select(44341u, 0u, all(vec2<bool>(var_3.e.x, var_3.d.x))), 1u, 4294967295u, ~var_3.b.b.x) >> (~(~(~vec4<u32>(28322u, u_input.b.x, 17662u, 4294967295u))) % vec4<u32>(32u)), var_3, true).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(reverseBits(-15165i), -(~u_input.a.x)));
}

