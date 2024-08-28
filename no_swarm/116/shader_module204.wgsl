struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec4<f32> = vec4<f32>(1181f, -221f, -644f, 1301f);

var<private> global2: bool = false;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<f32> {
    var var_0 = all(!vec4<bool>(_wgslsmith_f_op_f32(min(-1000f, global1.x)) > _wgslsmith_f_op_f32(438f + global1.x), !global0.x | !global0.x, select(true, true, true), global0.x));
    var var_1 = select(global0.x, !global0.x || global0.x, global0.x);
    let var_2 = vec2<u32>(u_input.b, ~(~0u));
    var var_3 = vec2<bool>(false, true);
    var var_4 = 1408f;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-664f, global1.x, global1.x, 867f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, -1000f, global1.x, global1.x), vec4<f32>(-822f, 1000f, 176f, -173f), false))))))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(u_input.d.x, ~(vec3<i32>(arg_1.a, 2147483647i, arg_1.b.x) >> (vec3<u32>(0u, 2343u, 27664u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.zyy * global1.xzx) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2070f, -999f, global1.x) + vec3<f32>(-364f, 569f, global1.x))))));
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-438f, global1.x)), -480f);
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3())))));
    global0 = !(!select(vec3<bool>(arg_1.b.x == var_1, true, true), select(!vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, global0.x, global0.x)), select(!vec3<bool>(true, global0.x, false), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, false), true), vec3<bool>(true, global0.x, global0.x))));
    return Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1215f, -339f, 608f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(global1.zzw))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_2, -1132f) - vec3<f32>(var_0.b.x, var_0.b.x, 410f))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())))));
    global2 = false;
    var var_0 = _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.b, abs(~4294967295u), u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(41714u, 41162u, 1u, 4294967295u), vec4<u32>(u_input.b, 1u, 1156u, u_input.b)))), _wgslsmith_div_vec4_u32(~vec4<u32>(~u_input.b, _wgslsmith_div_u32(130018u, 1u), ~4294967295u, 1u), vec4<u32>(25778u, _wgslsmith_add_u32(1u, ~22981u), ~(u_input.b & 69275u), _wgslsmith_div_u32(25257u, firstLeadingBit(1u)))));
    global2 = true;
    let var_1 = 308f;
    return Struct_2(func_2(~vec4<u32>(~0u, 1u, ~4294967295u, 4294967295u), arg_0.a, firstLeadingBit(vec2<u32>(_wgslsmith_sub_u32(0u, u_input.b), 26466u))).a, _wgslsmith_f_op_vec3_f32(-arg_1.b));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = var_0.a;
    var var_2 = arg_1.a;
    let var_3 = _wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_add_i32(-arg_3.a, abs(var_1.a)), i32(-1i) * -var_0.a.b.x, func_2(vec4<u32>(50666u, 1u, 22375u, 0u), func_4(Struct_2(arg_3, global1.yzy), arg_1).a, _wgslsmith_sub_vec2_u32(vec2<u32>(72979u, u_input.b), vec2<u32>(72729u, u_input.b))).a.b.x), countOneBits(var_1.b));
    var var_4 = var_0.a.a;
    return var_0.a;
}

fn func_1() -> f32 {
    var var_0 = global1.x;
    var var_1 = func_5(_wgslsmith_div_f32(484f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1027f))) - _wgslsmith_f_op_f32(364f - 373f))), func_4(func_2(~vec4<u32>(4294967295u, u_input.b, 0u, u_input.b) ^ ~vec4<u32>(u_input.b, 43800u, u_input.b, u_input.b), Struct_1(1i, vec3<i32>(u_input.d.x, 2147483647i, 42301i)), vec2<u32>(u_input.b, u_input.b)), Struct_2(Struct_1(-u_input.c.x, ~u_input.a), _wgslsmith_f_op_vec3_f32(trunc(global1.zzy)))), true, func_4(Struct_2(func_2(firstTrailingBit(vec4<u32>(37149u, u_input.b, 4294967295u, u_input.b)), func_2(vec4<u32>(u_input.b, 1u, 26934u, 25766u), Struct_1(-1i, u_input.c.yyx), vec2<u32>(u_input.b, 1u)).a, ~vec2<u32>(53692u, u_input.b)).a, func_4(func_2(vec4<u32>(1u, 0u, u_input.b, u_input.b), Struct_1(u_input.c.x, u_input.a), vec2<u32>(u_input.b, u_input.b)), func_2(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), Struct_1(1i, vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)), vec2<u32>(15169u, 0u))).b), func_4(Struct_2(func_2(vec4<u32>(11302u, u_input.b, 0u, u_input.b), Struct_1(-34875i, u_input.c.zwy), vec2<u32>(u_input.b, u_input.b)).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-598f, global1.x, global1.x))), Struct_2(func_2(vec4<u32>(25546u, 0u, 0u, 33092u), Struct_1(-20969i, vec3<i32>(1i, -1i, -1i)), vec2<u32>(u_input.b, u_input.b)).a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * vec3<f32>(global1.x, global1.x, global1.x))))).a);
    let var_2 = reverseBits(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, var_1.b.x, var_1.b.x)), u_input.c.wxx));
    let var_3 = ~(~vec3<u32>(u_input.b, 22371u, ~u_input.b ^ _wgslsmith_div_u32(1u, 1u)));
    let var_4 = false;
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.x;
    var var_1 = vec4<u32>(u_input.b | ~u_input.b, 0u, max(firstTrailingBit(89397u >> (u_input.b % 32u)), _wgslsmith_clamp_u32(~min(u_input.b, 1u), ~u_input.b, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), _wgslsmith_sub_u32(u_input.b, u_input.b)))), 61038u);
    let var_2 = Struct_2(Struct_1(-2147483647i, u_input.c.yxw), vec3<f32>(-1397f, 395f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(floor(global1.x))) * 1449f)));
    let var_3 = global0.x;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(363f, 287f, global1.x, -799f), vec4<f32>(-843f, global1.x, global1.x, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(377f, -276f, global1.x, global1.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-697f, 1188f, global1.x, var_2.b.x))), vec4<f32>(-397f, -1014f, global1.x, var_2.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(var_2.b.x, -822f), var_2.b.x))));
    global2 = global0.x;
    var var_4 = reverseBits(vec4<u32>(abs(u_input.b), abs(14506u), 44371u, u_input.b));
    var var_5 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b, min(reverseBits(~17821u), ~_wgslsmith_div_u32(var_1.x, u_input.b)), any(select(select(vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(true, global0.x, global0.x, false)), select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), select(global0.x, false, global0.x)))), _wgslsmith_f_op_f32(max(-366f, _wgslsmith_f_op_f32(min(504f, var_2.b.x)))), ~(~(vec2<u32>(4294967295u, var_1.x) << (vec2<u32>(60922u, var_4.x) % vec2<u32>(32u)))) ^ ~vec2<u32>(var_4.x >> (var_1.x % 32u), 17545u), _wgslsmith_add_vec4_i32(~countOneBits(u_input.c) ^ ~min(u_input.c, vec4<i32>(2935i, var_2.a.b.x, -1i, var_2.a.a)), _wgslsmith_mod_vec4_i32(u_input.c, -_wgslsmith_add_vec4_i32(vec4<i32>(-40053i, 30468i, var_2.a.a, u_input.d.x), vec4<i32>(u_input.d.x, 1i, u_input.c.x, u_input.d.x)))), _wgslsmith_f_op_vec3_f32(-global1.xzx));
}

