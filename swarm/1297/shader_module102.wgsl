struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(1679f, -396f, -413f, -267f), vec4<f32>(-1000f, 317f, -907f, -2316f), vec4<f32>(835f, 2392f, -2051f, 1547f), vec4<f32>(-912f, 891f, -2396f, -377f), vec4<f32>(-1325f, 175f, -1000f, -1061f), vec4<f32>(1837f, -1374f, -999f, 1084f), vec4<f32>(1411f, -1244f, 992f, 1164f), vec4<f32>(-564f, -2001f, -416f, 868f), vec4<f32>(-973f, 372f, 106f, -583f), vec4<f32>(1108f, -1022f, -304f, 700f), vec4<f32>(-747f, 409f, -1077f, -1000f), vec4<f32>(1489f, -1203f, 481f, -748f), vec4<f32>(-2114f, 883f, 1000f, 175f), vec4<f32>(594f, -1618f, 645f, -358f), vec4<f32>(-2155f, 1000f, 296f, 1533f), vec4<f32>(-1336f, -165f, -445f, 490f), vec4<f32>(1000f, 1114f, -1249f, 350f), vec4<f32>(-1647f, 909f, 429f, 576f), vec4<f32>(-426f, -372f, -669f, -1309f), vec4<f32>(1771f, 716f, -2092f, -1387f), vec4<f32>(739f, -978f, -167f, 1807f), vec4<f32>(550f, -649f, -1000f, -912f), vec4<f32>(-629f, 966f, 315f, 472f), vec4<f32>(1350f, -558f, -1000f, 1573f));

var<private> global1: i32 = 15737i;

var<private> global2: array<f32, 6> = array<f32, 6>(-1169f, 655f, -247f, -171f, -1631f, -2694f);

var<private> global3: array<f32, 31> = array<f32, 31>(642f, -1457f, -185f, -229f, 418f, -1407f, 992f, -1000f, -1060f, 1144f, 118f, -1183f, 494f, 1066f, 811f, -215f, 1000f, -870f, -351f, 628f, -923f, 742f, -561f, -643f, -605f, 1165f, 240f, 449f, -1303f, 345f, -711f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<u32>, arg_3: u32) -> u32 {
    global0 = array<vec4<f32>, 24>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(1u, 24u)] + _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(58324u, 24u)]))), global0[_wgslsmith_index_u32(~1u, 24u)])), ((_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, -25843i), vec3<i32>(u_input.b, u_input.b, u_input.b)) ^ ~vec3<i32>(u_input.b, -2147483647i, u_input.b)) >> (arg_0 % vec3<u32>(32u))) & reverseBits(firstTrailingBit(vec3<i32>(u_input.b, -1i, u_input.b))), _wgslsmith_dot_vec4_u32(min(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(35514u, 4294967295u, arg_1, 1u), vec4<u32>(u_input.c, arg_2.x, 35945u, arg_0.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u))), u_input.a), countOneBits(arg_2 | u_input.a)), arg_0.x);
    global0 = array<vec4<f32>, 24>();
    global0 = array<vec4<f32>, 24>();
    global3 = array<f32, 31>();
    return _wgslsmith_dot_vec3_u32(arg_0, ~vec3<u32>(~arg_1, ~_wgslsmith_mult_u32(arg_0.x, u_input.c), 86539u));
}

fn func_2(arg_0: u32, arg_1: Struct_5, arg_2: Struct_1, arg_3: u32) -> bool {
    global0 = array<vec4<f32>, 24>();
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_3, u_input.c, ~1u | _wgslsmith_mult_u32(abs(arg_3), 1u), firstTrailingBit(4294967295u)), ~u_input.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(func_3(u_input.a.xzz, arg_3, vec4<u32>(arg_0, 31217u, u_input.a.x, 46748u), arg_1.b.d.b), 6u)], global3[_wgslsmith_index_u32(u_input.a.x, 31u)], false)) * 1811f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 31u)]))));
    let var_2 = arg_2.a.zw;
    global1 = 0i;
    return !(!select(any(vec2<bool>(true, true)), true, any(!vec3<bool>(false, true, arg_2.a.x))));
}

fn func_1() -> Struct_3 {
    var var_0 = -1539f;
    let var_1 = select(vec3<u32>(u_input.c, select(_wgslsmith_div_u32(u_input.c, _wgslsmith_dot_vec3_u32(u_input.a.ywy, vec3<u32>(0u, 4294967295u, 1u))), u_input.c, select(func_2(14685u, Struct_5(false, Struct_3(1198f, vec2<bool>(true, true), Struct_1(vec4<bool>(true, true, false, false), 4294967295u), Struct_1(vec4<bool>(true, true, true, false), 1u), vec2<f32>(1326f, global2[_wgslsmith_index_u32(u_input.a.x, 6u)])), vec3<i32>(u_input.b, u_input.b, u_input.b), vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 31u)], -1000f), vec4<i32>(u_input.b, u_input.b, -1i, 16550i)), Struct_1(vec4<bool>(false, false, false, false), u_input.a.x), 4294967295u), true, true)), u_input.c), u_input.a.zwy, all(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), true), vec2<bool>(any(vec2<bool>(false, false)), true))));
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(0i, _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -16216i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), abs(31404i))), vec2<i32>(2147483647i, _wgslsmith_clamp_i32(-1i, firstLeadingBit(u_input.b << (var_1.x % 32u)), u_input.b)));
    var_0 = -1550f;
    return Struct_3(global3[_wgslsmith_index_u32(1u, 31u)], !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(func_2(1u, Struct_5(true, Struct_3(-433f, vec2<bool>(false, true), Struct_1(vec4<bool>(false, true, false, true), var_1.x), Struct_1(vec4<bool>(false, false, true, false), 0u), vec2<f32>(814f, 1000f)), vec3<i32>(u_input.b, 25177i, 18602i), vec2<f32>(global3[_wgslsmith_index_u32(1u, 31u)], 645f), vec4<i32>(var_2.x, var_2.x, u_input.b, 42580i)), Struct_1(vec4<bool>(true, false, true, true), var_1.x), var_1.x), true)), Struct_1(vec4<bool>(true, true, true, true), ~72795u), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), ~0u >> (_wgslsmith_mod_u32(max(u_input.a.x, 1u), ~u_input.a.x) % 32u)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 6u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1102f * -941f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 6u)] * 643f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-536f, -683f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(22099u, 31u)])))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.xy;
    var var_1 = Struct_5(true, func_1(), -_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, u_input.b, u_input.b), ~vec3<i32>(-2147483647i, -2147483647i, u_input.b)), countOneBits(~vec3<i32>(u_input.b, -2147483647i, 2647i))), vec2<f32>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(abs(u_input.a.x), ~13935u), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, var_0.x, 5373u, 0u)) | 1u), 31u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(169f, 689f)), _wgslsmith_f_op_f32(max(-951f, _wgslsmith_f_op_f32(round(-875f))))))), select(vec4<i32>(u_input.b >> (_wgslsmith_mult_u32(63902u, 0u) % 32u), -u_input.b, min(-18461i, u_input.b) ^ (i32(-1i) * -1i), abs(-u_input.b)), reverseBits(~vec4<i32>(-27496i, 0i, 2147483647i, -3786i) >> ((u_input.a & vec4<u32>(var_0.x, 4294967295u, 1u, var_0.x)) % vec4<u32>(32u))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true))));
    let var_2 = Struct_4(global0[_wgslsmith_index_u32(16505u, 24u)], Struct_2(global0[_wgslsmith_index_u32(23598u, 24u)], var_1.c, 45615u, func_3(~u_input.a.zwy, u_input.c, ~u_input.a, 4294967295u) ^ reverseBits(_wgslsmith_dot_vec3_u32(u_input.a.xww, vec3<u32>(var_0.x, 4294967295u, 50335u)))));
    let var_3 = ~(~_wgslsmith_mult_u32(var_2.b.d, ~_wgslsmith_mod_u32(var_2.b.c, var_2.b.d)));
    var_0 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.b.c, 4294967295u | var_1.b.d.b), _wgslsmith_clamp_vec2_u32(u_input.a.xy, u_input.a.zw | vec2<u32>(var_1.b.c.b, u_input.a.x), ~u_input.a.zy)), u_input.a.wz);
    var_1 = Struct_5(var_1.a, var_1.b, vec3<i32>(countOneBits(-_wgslsmith_div_i32(40753i, -28141i)), 0i << (countOneBits(1u) % 32u), var_2.b.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-743f, -1894f) - _wgslsmith_f_op_vec2_f32(round(var_1.d))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(var_3, 31u)])), -519f) * vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_1.b.d.b, 31u)]), _wgslsmith_f_op_f32(var_2.b.a.x - var_1.b.a)))), _wgslsmith_mult_vec4_i32(var_1.e, var_1.e));
    let var_4 = var_2.b.c;
    global1 = -44433i;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(var_2.b.d, 24u)]);
}

