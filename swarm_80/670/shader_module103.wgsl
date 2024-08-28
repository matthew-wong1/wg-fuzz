struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: vec4<i32> = vec4<i32>(1i, 19467i, 2147483647i, -11432i);

var<private> global1: u32;

var<private> global2: vec2<bool>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: vec3<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_i32(max(-2147483647i, -1i), arg_2.a) ^ 1i;
    var var_1 = 129f;
    global1 = _wgslsmith_mult_u32(arg_2.c.e, u_input.a);
    let var_2 = Struct_4(arg_2);
    let var_3 = var_2.a;
    return select(vec4<bool>(!var_2.a.c.b, true, global2.x, arg_2.c.c >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.a) + _wgslsmith_f_op_f32(-var_3.c.a))), select(select(!select(vec4<bool>(true, true, var_3.b.x, global2.x), vec4<bool>(false, true, arg_1, false), vec4<bool>(true, arg_1, false, arg_1)), vec4<bool>(any(vec3<bool>(var_2.a.c.b, false, arg_1)), false, var_3.c.c == arg_2.c.c, select(true, true, false)), all(!vec4<bool>(var_3.c.b, var_3.c.b, var_3.c.b, var_2.a.c.b))), select(select(vec4<bool>(false, var_3.c.b, var_2.a.c.b, true), vec4<bool>(arg_1, var_2.a.b.x, false, true), select(vec4<bool>(global2.x, false, true, true), vec4<bool>(var_2.a.c.b, false, true, true), vec4<bool>(arg_1, false, false, true))), !vec4<bool>(global2.x, true, true, var_3.c.b), global2.x), false), select(vec4<bool>(false, any(var_3.b), var_2.a.c.a == _wgslsmith_f_op_f32(516f - -1069f), true), select(vec4<bool>(var_2.a.c.b, false & var_3.c.b, false, var_2.a.b.x), select(vec4<bool>(global2.x, true, var_3.c.b, false), vec4<bool>(true, true, true, true), var_2.a.b.x), vec4<bool>(var_2.a.c.b, arg_2.c.b, var_2.a.b.x, arg_1)), false));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec3<bool>) -> i32 {
    var var_0 = func_3(countOneBits(_wgslsmith_clamp_i32(firstTrailingBit(global0.x), -global0.x, global0.x)), !arg_2.b.x, Struct_2(-_wgslsmith_add_i32(~0i, 62953i), select(arg_3.zy, select(arg_2.b, !arg_2.b, false), !(arg_2.a > global0.x)), arg_2.c), global0.yyy);
    let var_1 = Struct_2(18456i, vec2<bool>(false, any(!(!vec2<bool>(arg_2.c.b, arg_2.c.b)))), Struct_1(-801f, !all(func_3(2147483647i, var_0.x, Struct_2(arg_2.c.d.x, arg_3.zy, arg_2.c), global0.xyz).zzw), _wgslsmith_f_op_f32(arg_2.c.a - 1031f), _wgslsmith_mod_vec4_i32(arg_2.c.d, vec4<i32>(abs(1i), min(0i, 2147483647i), ~(-1i), -2147483647i)), ~(~(~0u))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(1035f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f) * _wgslsmith_f_op_f32(1171f * arg_2.c.c)))), -1572f, -953f);
    global1 = 1u;
    let var_3 = Struct_4(Struct_2(~(-1i), func_3(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a, var_1.c.d.x), vec2<i32>(-2147483647i, arg_2.a)), !(global0.x <= -2147483647i), Struct_2(var_1.c.d.x, vec2<bool>(var_0.x, global2.x), var_1.c), global0.xwy).wz, Struct_1(_wgslsmith_f_op_f32(-428f + 2823f), select(all(vec4<bool>(global2.x, var_1.b.x, global2.x, global2.x)), false && var_1.b.x, true), arg_2.c.a, var_1.c.d, _wgslsmith_mod_u32(firstTrailingBit(u_input.a), abs(0u)))));
    return abs(abs(_wgslsmith_mult_i32(_wgslsmith_add_i32(-8521i, -81783i), i32(-1i) * -775i) << ((~u_input.a << (arg_0.x % 32u)) % 32u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(trunc(arg_0.x)) != _wgslsmith_f_op_f32(step(862f, arg_0.x));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(378f - -902f), arg_0.x)));
    let var_2 = true;
    let var_3 = vec3<i32>(-40631i & global0.x, global0.x, max(i32(-1i) * -func_2(vec4<u32>(arg_1.x, u_input.a, 5195u, u_input.a), arg_1, Struct_2(global0.x, vec2<bool>(false, var_2), Struct_1(arg_0.x, global2.x, arg_0.x, vec4<i32>(34625i, 13504i, global0.x, -818i), 41124u)), vec3<bool>(var_2, var_2, global2.x)), global0.x));
    var var_4 = vec3<bool>(global2.x, any(!select(vec4<bool>(var_2, global2.x, var_2, false), vec4<bool>(var_2, global2.x, false, true), arg_0.x <= var_1.a.x)), false);
    return Struct_2(countOneBits(var_3.x | var_3.x), var_4.yx, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.x + 979f)))), true, _wgslsmith_f_op_f32(round(arg_0.x)), -_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, 23659i, -1i, 2147483647i), -vec4<i32>(var_3.x, var_3.x, 2147483647i, var_3.x)), min(arg_1.x << (~u_input.a % 32u), firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 1u)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-581f, arg_1.c.a, arg_1.c.c) - vec3<f32>(-324f, 479f, -933f))))));
    var var_1 = global2.x;
    var var_2 = arg_0;
    let var_3 = true | !any(arg_1.b);
    global0 = arg_0.a.c.d & ~arg_0.a.c.d;
    return func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-658f * -442f), var_2.a.c.c, 152f, 130f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(360f, arg_0.a.c.c, var_0.a.x, 386f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c.a, 1000f, arg_0.a.c.c, arg_0.a.c.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.x, 2439f, var_2.a.c.a, var_2.a.c.a)))))), abs(~abs(~vec2<u32>(arg_2, u_input.a)))).c;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<i32>) -> vec4<i32> {
    let var_0 = _wgslsmith_sub_u32(abs(18631u), 0u);
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(410f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.c.a))), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1709f, -714f, arg_1.a.c.a, arg_0.c.c) * vec4<f32>(var_1.a.c.a, 638f, var_1.a.c.a, -448f)), ~vec2<u32>(45815u, arg_0.c.e)).c.c)))));
    let var_3 = -countOneBits(max(~(~vec3<i32>(arg_2.x, var_1.a.c.d.x, -13249i)), arg_1.a.c.d.yyy));
    let var_4 = arg_0;
    return ~(-_wgslsmith_clamp_vec4_i32(~(~arg_1.a.c.d), reverseBits(arg_2), firstTrailingBit(firstLeadingBit(var_1.a.c.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(Struct_2(~(~18794i) & global0.x, vec2<bool>(!(u_input.a > 4294967295u), false), func_4(Struct_4(Struct_2(1i, vec2<bool>(global2.x, true), Struct_1(-270f, global2.x, -444f, vec4<i32>(19699i, 7080i, global0.x, global0.x), 58292u))), func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1432f, 197f, 375f, 683f), vec4<f32>(723f, 837f, 520f, -1720f)), ~vec2<u32>(4294967295u, 415u)), firstLeadingBit(0u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.a, u_input.a)))), Struct_4(func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1837f, 122f, 620f, -415f))), vec2<u32>(49883u, countOneBits(u_input.a)))), -min(abs(vec4<i32>(-67710i, global0.x, global0.x, global0.x)), vec4<i32>(-51301i, 30983i, -13662i, 59666i)) << (select(~(~vec4<u32>(1u, u_input.a, 4294967295u, u_input.a)), reverseBits(vec4<u32>(u_input.a, 14135u, 1u, u_input.a)) & (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(11348u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), !func_3(-59652i, false, Struct_2(global0.x, vec2<bool>(true, false), Struct_1(-277f, global2.x, 656f, vec4<i32>(global0.x, -71665i, global0.x, -33681i), 83625u)), global0.xzx)) % vec4<u32>(32u)));
    global1 = u_input.a;
    let var_0 = _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(12522u, 0u, 63574u, 4294967295u), countOneBits(vec4<u32>(u_input.a, 5288u, u_input.a, 4294967295u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 45820u), ~vec4<u32>(4294967295u, 38457u, 19194u, u_input.a))), abs(~vec4<u32>(~u_input.a, firstLeadingBit(u_input.a), u_input.a, u_input.a)));
    var var_1 = _wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec4_u32(~abs(max(vec4<u32>(0u, 5571u, var_0, u_input.a), vec4<u32>(4294967295u, u_input.a, 0u, var_0))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(6566u, 0u, 11870u, u_input.a), ~vec4<u32>(var_0, u_input.a, 0u, var_0), vec4<u32>(4693u, u_input.a, 15682u, var_0))));
    global0 = -(select(-vec4<i32>(global0.x, global0.x, global0.x, -1i), vec4<i32>(abs(global0.x), global0.x, _wgslsmith_add_i32(global0.x, 1i), global0.x), select(vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(global2.x, true, true, global2.x), global2.x)) | func_1(vec4<f32>(_wgslsmith_f_op_f32(min(1000f, 1218f)), _wgslsmith_f_op_f32(step(1505f, -405f)), _wgslsmith_f_op_f32(-595f * 965f), _wgslsmith_f_op_f32(439f - 608f)), ~select(vec2<u32>(var_0, 20234u), vec2<u32>(0u, u_input.a), vec2<bool>(global2.x, false))).c.d);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1424f * _wgslsmith_f_op_f32(-1000f - 349f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2777f))))), global2.x || (true | global2.x), -360f, ~(~vec4<i32>(_wgslsmith_sub_i32(0i, 57156i), -global0.x, global0.x, global0.x & global0.x)), ~1u);
    var var_3 = vec2<bool>(select(select(!any(vec4<bool>(true, var_2.b, var_2.b, false)), 332f <= _wgslsmith_f_op_f32(ceil(387f)), select(false, select(false, true, var_2.b), global2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(238f * -1143f), 683f)) == var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(720f + var_2.a) * _wgslsmith_f_op_f32(var_2.c + -1000f)) == _wgslsmith_f_op_f32(-1260f * 298f)), true);
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-vec4<i32>(1i, var_2.d.x, var_2.d.x, -574i) ^ var_2.d)));
}

